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
	# upalign(184 + 0, 16)
	subq $192, %rsp
	movq %rbx, -56(%rbp)
	movq %r12, -96(%rbp)
	movq %r13, -72(%rbp)
	movq %r14, -80(%rbp)
	movq %r15, -152(%rbp)
	# LowerIcmp(1051:3): %rdi vs. operand %rsi
	cmpq %rsi, %rdi
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M228
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M4:
	# LowerGetelementptr(1055:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^5, indices=0,1
	movq %rsi, %rax
	addq $8, %rax
	# LowerLoad(1056:3).2: (^5) into ^6
	# Fixing movq (%rax), -16(%rbp)
	pushq %r15
	movq (%rax), %r15
	movq %r15, -16(%rbp)
	popq %r15
	# LowerGetelementptr(1057:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^7, indices=0,0,0
	movq %rdi, -24(%rbp)
	# LowerLoad(1058:3).2: (^7) into ^8
	movq -24(%rbp), %rbx
	movq (%rbx), %rax
	# LowerGetelementptr(1059:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^9, indices=0,2
	movq %rdi, %rbx
	addq $16, %rbx
	movq %rbx, %r13
	# LowerIcmp(1061:3): ^8 vs. operand ^10
	cmpq %r13, %rax
	sete %cl
	# LowerGetelementptr(1062:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^12, indices=0,2,0
	movq %rdi, %r14
	addq $16, %r14
	# LowerLoad(1063:3).2: (^12) into ^13
	movq (%r14), %rbx
	cmpq $0, %rcx
	movq $15, %r12
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___RC0
	movq %rbx, %r12
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___RC0:
	# LowerIcmp(1065:3): ^6 vs. operand ^14
	cmpq %r12, -16(%rbp)
	seta %bl
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M32
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M158
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M32:
	# LowerIcmp(1069:3): ^6 vs. intlike 0
	cmpq $0, -16(%rbp)
	setl %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M36
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M58
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M36:
	# Clobber %rdi
	movq %rdi, -32(%rbp)
	# Clobber %rsi
	movq %rsi, -40(%rbp)
	# SetupCalls(1073:3): move argument i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)
	movq .str.3@GOTPCREL(%rip), %rdi
	callq _ZSt20__throw_length_errorPKc@PLT
	# Unclobber %rsi
	movq -40(%rbp), %rsi
	# Unclobber %rdi
	movq -32(%rbp), %rdi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M58:
	movq %r12, %rbx
	shlq $1, %rbx
	# LowerIcmp(1078:3): ^6 vs. operand ^20
	cmpq %rbx, -16(%rbp)
	setb %cl
	# LowerIcmp(1079:3): ^20 vs. intlike 9223372036854775807
	movabsq $9223372036854775807, %rax
	cmpq %rax, %rbx
	setb %al
	cmpq $0, %rax
	movq %rbx, %rax
	movabsq $9223372036854775807, %rbx
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___RC1
	movq %rbx, %rax
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___RC1:
	cmpq $0, %rcx
	movq %rax, %rbx
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___RC2
	movq -16(%rbp), %rbx
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___RC2:
	movq %rbx, %r12
	addq $1, %r12
	# LowerIcmp(1083:3): ^25 vs. intlike 0
	cmpq $0, %r12
	setl %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M80
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M100
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M80:
	# Clobber %rdi
	movq %rdi, -32(%rbp)
	# Clobber %rsi
	movq %rsi, -40(%rbp)
	callq _ZSt17__throw_bad_allocv@PLT
	# Unclobber %rsi
	movq -40(%rbp), %rsi
	# Unclobber %rdi
	movq -32(%rbp), %rdi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M100:
	# Clobber %rdi
	movq %rdi, -32(%rbp)
	# Clobber %rsi
	movq %rsi, -40(%rbp)
	# SetupCalls(1091:3): move argument i64 ^25
	movq %r12, %rdi
	callq _Znwm@PLT
	# SetupCalls(1091:3): move result from %rax
	movq %rax, %r12
	# Unclobber %rsi
	movq -40(%rbp), %rsi
	# Unclobber %rdi
	movq -32(%rbp), %rdi
	# LowerLoad(1092:3).2: (^7) into ^30
	movq -24(%rbp), %rax
	movq (%rax), %rcx
	# LowerIcmp(1093:3): ^30 vs. operand ^10
	cmpq %r13, %rcx
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M151
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M129:
	# Clobber %rdi
	movq %rdi, -32(%rbp)
	# Clobber %rsi
	movq %rsi, -40(%rbp)
	# Clobber %rcx
	movq %rcx, -48(%rbp)
	# SetupCalls(1097:3): move argument i8* ^30
	movq %rcx, %rdi
	callq _ZdlPv@PLT
	# Unclobber %rcx
	movq -48(%rbp), %rcx
	# Unclobber %rsi
	movq -40(%rbp), %rsi
	# Unclobber %rdi
	movq -32(%rbp), %rdi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M151:
	# LowerStore(1101:3).9: mov ^29, (^7)
	movq -24(%rbp), %rax
	movq %r12, (%rax)
	# LowerStore(1102:3).9: mov ^24, (^12)
	movq %rbx, (%r14)
	# MovePhi: ^29 -> ^39
	movq %r12, %r15
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M173
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M158:
	# LowerIcmp(1106:3): ^6 vs. intlike 0
	cmpq $0, -16(%rbp)
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M165
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M162:
	# MovePhi: ^8 -> ^39 (in new block 53 whose parent is 34)
	movq %rax, %r15
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M173
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M165:
	# LowerGetelementptr(1110:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^37, indices=0,1
	movq %rdi, %rbx
	addq $8, %rbx
	# LowerStore(1111:3).3: mov $imm, ^37
	movq $0, (%rbx)
	# MovePhi: ^8 -> ^51
	movq %rax, -8(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M225
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M173:
	# LowerGetelementptr(1116:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^40, indices=0,0,0
	movq %rsi, %rax
	# LowerLoad(1117:3).2: (^40) into ^41
	movq (%rax), %rbx
	# LowerIcmp(1118:3): ^6 vs. intlike 1
	cmpq $1, -16(%rbp)
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M181
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M186
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M181:
	# LowerLoad(1122:3).2: (^41) into ^44
	movb (%rbx), %al
	# LowerStore(1123:3).9: mov ^44, (^39)
	movb %al, (%r15)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M212
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M186:
	# Clobber %rdi
	movq %rdi, -32(%rbp)
	# SetupCalls(1127:3): move argument i8* ^39
	movq %r15, %rdi
	# SetupCalls(1127:3): move argument i8* ^41
	movq %rbx, %rsi
	# SetupCalls(1127:3): move argument i64 ^6
	movq -16(%rbp), %rdx
	callq memcpy@PLT
	# Unclobber %rdi
	movq -32(%rbp), %rdi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M212:
	# LowerGetelementptr(1131:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^47, indices=0,1
	movq %rdi, %rax
	addq $8, %rax
	# LowerStore(1132:3).9: mov ^6, (^47)
	# Fixing movq -16(%rbp), (%rax)
	movq -16(%rbp), %r15
	movq %r15, (%rax)
	# LowerLoad(1133:3).2: (^7) into ^48
	movq -24(%rbp), %rax
	movq (%rax), %rbx
	# LowerGetelementptr(1134:3): pointer-type -> ^49
	movq -16(%rbp), %rax
	addq %rbx, %rax
	# MovePhi: ^49 -> ^51
	movq %rax, -8(%rbp)
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M225:
	# LowerStore(1139:3).3: mov $imm, ^51
	movq -8(%rbp), %rax
	movb $0, (%rax)
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M228:
	movq -152(%rbp), %r15
	movq -80(%rbp), %r14
	movq -72(%rbp), %r13
	movq -96(%rbp), %r12
	movq -56(%rbp), %rbx
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
	# SetupCalls(1154:3): move argument %"class.std::ios_base::Init"* @_ZStL8__ioinit
	movq _ZStL8__ioinit@GOTPCREL(%rip), %rdi
	callq _ZNSt8ios_base4InitC1Ev@PLT
	# SetupCalls(1155:3): move argument void (i8*) ** @_ZNSt8ios_base4InitD1Ev
	movq _ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	# SetupCalls(1155:3): move argument i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0)
	movq _ZStL8__ioinit@GOTPCREL(%rip), %rsi
	# SetupCalls(1155:3): move argument i8* @__dso_handle
	movq __dso_handle@GOTPCREL(%rip), %rdx
	callq __cxa_atexit@PLT
	# SetupCalls(1155:3): move result from %rax
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
	# upalign(160 + 0, 16)
	subq $160, %rsp
	movq %rbx, -80(%rbp)
	movq %r12, -88(%rbp)
	movq %r13, -96(%rbp)
	movq %r14, -120(%rbp)
	movq %r15, -136(%rbp)
	# LowerGetelementptr(921:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^6, indices=0,1
	movq %rdi, %rax
	addq $8, %rax
	# LowerLoad(922:3).2: (^6) into ^7
	movq (%rax), %rbx
	movq %rdx, %rax
	addq %rsi, %rax
	movq %rbx, %r12
	subq %rax, %r12
	movq %r8, %rax
	subq %rdx, %rax
	movq %rax, %r13
	addq %rbx, %r13
	# LowerGetelementptr(927:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^12, indices=0,0,0
	movq %rdi, -24(%rbp)
	# LowerLoad(928:3).2: (^12) into ^13
	movq -24(%rbp), %rbx
	movq (%rbx), %rax
	# LowerGetelementptr(929:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^14, indices=0,2
	movq %rdi, %rbx
	addq $16, %rbx
	movq %rbx, %r14
	# LowerIcmp(931:3): ^13 vs. operand ^15
	cmpq %r14, %rax
	sete %al
	# LowerGetelementptr(932:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^17, indices=0,2,0
	movq %rdi, %rbx
	addq $16, %rbx
	# LowerLoad(933:3).2: (^17) into ^18
	movq (%rbx), %rdi
	cmpq $0, %rax
	movq $15, %r15
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__RC0
	movq %rdi, %r15
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__RC0:
	# LowerIcmp(935:3): ^11 vs. intlike 0
	cmpq $0, %r13
	setl %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M37
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M59
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M37:
	# Clobber %rsi
	movq %rsi, -32(%rbp)
	# Clobber %rdx
	movq %rdx, -40(%rbp)
	# Clobber %rcx
	movq %rcx, -48(%rbp)
	# Clobber %r8
	movq %r8, -56(%rbp)
	# SetupCalls(939:3): move argument i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)
	movq .str.3@GOTPCREL(%rip), %rdi
	callq _ZSt20__throw_length_errorPKc@PLT
	# Unclobber %r8
	movq -56(%rbp), %r8
	# Unclobber %rcx
	movq -48(%rbp), %rcx
	# Unclobber %rdx
	movq -40(%rbp), %rdx
	# Unclobber %rsi
	movq -32(%rbp), %rsi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M59:
	# LowerIcmp(943:3): ^11 vs. operand ^19
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
	# LowerIcmp(948:3): ^11 vs. operand ^25
	cmpq %rax, %r13
	setb %dil
	cmpb $0, %dil
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M75
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M72:
	# MovePhi: ^11 -> ^31 (in new block 74 whose parent is 24)
	movq %r13, -8(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M86
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M75:
	# LowerIcmp(952:3): ^25 vs. intlike 9223372036854775807
	movabsq $9223372036854775807, %rdi
	cmpq %rdi, %rax
	setb %dil
	cmpq $0, %rdi
	movq %rax, %rdi
	movabsq $9223372036854775807, %rax
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__RC1
	movq %rax, %rdi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__RC1:
	# MovePhi: ^29 -> ^31
	movq %rdi, -8(%rbp)
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M86:
	movq -8(%rbp), %r13
	addq $1, %r13
	# LowerIcmp(959:3): ^32 vs. intlike 0
	cmpq $0, %r13
	setl %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M92
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M112
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M92:
	# Clobber %rsi
	movq %rsi, -32(%rbp)
	# Clobber %rdx
	movq %rdx, -40(%rbp)
	# Clobber %rcx
	movq %rcx, -48(%rbp)
	# Clobber %r8
	movq %r8, -56(%rbp)
	callq _ZSt17__throw_bad_allocv@PLT
	# Unclobber %r8
	movq -56(%rbp), %r8
	# Unclobber %rcx
	movq -48(%rbp), %rcx
	# Unclobber %rdx
	movq -40(%rbp), %rdx
	# Unclobber %rsi
	movq -32(%rbp), %rsi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M112:
	# Clobber %rsi
	movq %rsi, -32(%rbp)
	# Clobber %rdx
	movq %rdx, -40(%rbp)
	# Clobber %rcx
	movq %rcx, -48(%rbp)
	# Clobber %r8
	movq %r8, -56(%rbp)
	# SetupCalls(967:3): move argument i64 ^32
	movq %r13, %rdi
	callq _Znwm@PLT
	# SetupCalls(967:3): move result from %rax
	movq %rax, %r13
	# Unclobber %r8
	movq -56(%rbp), %r8
	# Unclobber %rcx
	movq -48(%rbp), %rcx
	# Unclobber %rdx
	movq -40(%rbp), %rdx
	# Unclobber %rsi
	movq -32(%rbp), %rsi
	# LowerIcmp(968:3): %rsi vs. intlike 0
	cmpq $0, %rsi
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M176
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M139:
	# LowerLoad(972:3).2: (^12) into ^39
	movq -24(%rbp), %rax
	movq (%rax), %r9
	# LowerIcmp(973:3): %rsi vs. intlike 1
	cmpq $1, %rsi
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M145
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M150
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M145:
	# LowerLoad(977:3).2: (^39) into ^42
	movb (%r9), %al
	# LowerStore(978:3).9: mov ^42, (^36)
	movb %al, (%r13)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M176
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M150:
	# Clobber %rsi
	movq %rsi, -32(%rbp)
	# Clobber %rdx
	movq %rdx, -40(%rbp)
	# Clobber %rcx
	movq %rcx, -48(%rbp)
	# Clobber %r8
	movq %r8, -56(%rbp)
	# Clobber %r9
	movq %r9, -64(%rbp)
	# SetupCalls(982:3): move argument i8* ^36
	movq %r13, %rdi
	# SetupCalls(982:3): move argument i8* ^39
	movq %r9, %rsi
	# SetupCalls(982:3): move argument i64 %rsi
	# Semiunclobber %rsi into %rdx
	movq -32(%rbp), %rdx
	callq memcpy@PLT
	# Unclobber %r9
	movq -64(%rbp), %r9
	# Unclobber %r8
	movq -56(%rbp), %r8
	# Unclobber %rcx
	movq -48(%rbp), %rcx
	# Unclobber %rdx
	movq -40(%rbp), %rdx
	# Unclobber %rsi
	movq -32(%rbp), %rsi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M176:
	# LowerIcmp(986:3): %rcx vs. intlike 0
	cmpq $0, %rcx
	setne %al
	# LowerIcmp(987:3): %r8 vs. intlike 0
	cmpq $0, %r8
	setne %dil
	movb %al, %r9b
	andb %dil, %r9b
	cmpb $0, %r9b
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M185
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M223
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M185:
	# LowerGetelementptr(992:3): pointer-type -> ^49
	movq %rsi, %rax
	addq %r13, %rax
	# LowerIcmp(993:3): %r8 vs. intlike 1
	cmpq $1, %r8
	sete %dil
	cmpb $0, %dil
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M192
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M197
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M192:
	# LowerLoad(997:3).2: (%rcx) into ^52
	movb (%rcx), %dil
	# LowerStore(998:3).9: mov ^52, (^49)
	movb %dil, (%rax)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M223
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M197:
	# Clobber %rsi
	movq %rsi, -32(%rbp)
	# Clobber %rdx
	movq %rdx, -40(%rbp)
	# Clobber %rcx
	movq %rcx, -48(%rbp)
	# Clobber %r8
	movq %r8, -56(%rbp)
	# Clobber %rax
	movq %rax, -72(%rbp)
	# SetupCalls(1002:3): move argument i8* ^49
	movq %rax, %rdi
	# SetupCalls(1002:3): move argument i8* %rcx
	# Semiunclobber %rcx into %rsi
	movq -48(%rbp), %rsi
	# SetupCalls(1002:3): move argument i64 %r8
	# Semiunclobber %r8 into %rdx
	movq -56(%rbp), %rdx
	callq memcpy@PLT
	# Unclobber %rax
	movq -72(%rbp), %rax
	# Unclobber %r8
	movq -56(%rbp), %r8
	# Unclobber %rcx
	movq -48(%rbp), %rcx
	# Unclobber %rdx
	movq -40(%rbp), %rdx
	# Unclobber %rsi
	movq -32(%rbp), %rsi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M223:
	# LowerIcmp(1006:3): ^9 vs. intlike 0
	cmpq $0, %r12
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M227
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M232
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M227:
	# LowerLoad(1010:3).2: (^12) into ^57
	movq -24(%rbp), %rax
	movq (%rax), %rcx
	# MovePhi: ^57 -> ^69
	movq %rcx, -16(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M285
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M232:
	# LowerGetelementptr(1014:3): pointer-type -> ^59
	movq %rsi, %rax
	addq %r13, %rax
	# LowerGetelementptr(1015:3): pointer-type -> ^60
	movq %r8, %rcx
	addq %rax, %rcx
	# LowerLoad(1016:3).2: (^12) into ^61
	movq -24(%rbp), %rax
	movq (%rax), %r15
	# LowerGetelementptr(1017:3): pointer-type -> ^62
	movq %rsi, %rax
	addq %r15, %rax
	# LowerGetelementptr(1018:3): pointer-type -> ^63
	movq %rdx, %r8
	addq %rax, %r8
	# LowerIcmp(1019:3): ^9 vs. intlike 1
	cmpq $1, %r12
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M250
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M257
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M250:
	# LowerLoad(1023:3).2: (^63) into ^66
	movb (%r8), %al
	# LowerStore(1024:3).9: mov ^66, (^60)
	movb %al, (%rcx)
	# MovePhi: ^61 -> ^69
	movq %r15, -16(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M285
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M257:
	# Clobber %rcx
	movq %rcx, -48(%rbp)
	# Clobber %r8
	movq %r8, -56(%rbp)
	# SetupCalls(1028:3): move argument i8* ^60
	movq %rcx, %rdi
	# SetupCalls(1028:3): move argument i8* ^63
	movq %r8, %rsi
	# SetupCalls(1028:3): move argument i64 ^9
	movq %r12, %rdx
	callq memcpy@PLT
	# Unclobber %r8
	movq -56(%rbp), %r8
	# Unclobber %rcx
	movq -48(%rbp), %rcx
	# MovePhi: ^61 -> ^69
	movq %r15, -16(%rbp)
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M285:
	# LowerIcmp(1033:3): ^69 vs. operand ^15
	cmpq %r14, -16(%rbp)
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M311
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M289:
	# SetupCalls(1037:3): move argument i8* ^69
	movq -16(%rbp), %rdi
	callq _ZdlPv@PLT
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M311:
	# LowerStore(1041:3).9: mov ^36, (^12)
	movq -24(%rbp), %rax
	movq %r13, (%rax)
	# LowerStore(1042:3).9: mov ^31, (^17)
	# Fixing movq -8(%rbp), (%rbx)
	movq -8(%rbp), %r15
	movq %r15, (%rbx)
	movq -136(%rbp), %r15
	movq -120(%rbp), %r14
	movq -96(%rbp), %r13
	movq -88(%rbp), %r12
	movq -80(%rbp), %rbx
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
	# upalign(208 + 0, 16)
	subq $208, %rsp
	movq %rbx, -64(%rbp)
	movq %r12, -88(%rbp)
	movq %r13, -72(%rbp)
	movq %r14, -80(%rbp)
	movq %r15, -96(%rbp)
	# LowerGetelementptr(715:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^6, indices=0,1
	movq %rdi, -8(%rbp)
	addq $8, -8(%rbp)
	# LowerLoad(716:3).2: (^6) into ^7
	movq -8(%rbp), %rax
	movq (%rax), %rbx
	movq %rdx, %rax
	movabsq $9223372036854775807, %r9
	addq %r9, %rax
	movq %rax, %r9
	subq %rbx, %r9
	# LowerIcmp(719:3): ^9 vs. operand %r8
	cmpq %r8, %r9
	setb %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M14
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M36
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M14:
	# Clobber %rdi
	movq %rdi, -16(%rbp)
	# Clobber %rsi
	movq %rsi, -24(%rbp)
	# Clobber %rdx
	movq %rdx, -32(%rbp)
	# Clobber %rcx
	movq %rcx, -40(%rbp)
	# Clobber %r8
	movq %r8, -48(%rbp)
	# SetupCalls(723:3): move argument i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0)
	movq .str.5@GOTPCREL(%rip), %rdi
	callq _ZSt20__throw_length_errorPKc@PLT
	# Unclobber %r8
	movq -48(%rbp), %r8
	# Unclobber %rcx
	movq -40(%rbp), %rcx
	# Unclobber %rdx
	movq -32(%rbp), %rdx
	# Unclobber %rsi
	movq -24(%rbp), %rsi
	# Unclobber %rdi
	movq -16(%rbp), %rdi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M36:
	movq %r8, %rax
	subq %rdx, %rax
	movq %rax, %r13
	addq %rbx, %r13
	# LowerGetelementptr(729:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^15, indices=0,0,0
	movq %rdi, %r14
	# LowerLoad(730:3).2: (^15) into ^16
	movq (%r14), %rax
	# LowerGetelementptr(731:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^17, indices=0,2
	movq %rdi, %r9
	addq $16, %r9
	movq %r9, %r10
	# LowerIcmp(733:3): ^16 vs. operand ^18
	cmpq %r10, %rax
	sete %r9b
	# LowerGetelementptr(734:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^20, indices=0,2,0
	movq %rdi, %r10
	addq $16, %r10
	# LowerLoad(735:3).2: (^20) into ^21
	movq (%r10), %r11
	cmpq $0, %r9
	movq $15, %r9
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__RC0
	movq %r11, %r9
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__RC0:
	# LowerIcmp(737:3): ^14 vs. operand ^22
	cmpq %r9, %r13
	seta %r9b
	cmpb $0, %r9b
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M449
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M63:
	# LowerGetelementptr(741:3): pointer-type -> ^25
	movq %rsi, %r12
	addq %rax, %r12
	movq %rdx, %rdi
	addq %rsi, %rdi
	movq %rbx, %r15
	subq %rdi, %r15
	# LowerIcmp(744:3): ^16 vs. operand %rcx
	cmpq %rcx, %rax
	seta %sil
	# LowerGetelementptr(745:3): pointer-type -> ^29
	movq %rbx, %rdi
	addq %rax, %rdi
	# LowerIcmp(746:3): ^29 vs. operand %rcx
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
	# LowerIcmp(751:3): ^27 vs. intlike 0
	cmpq $0, %r15
	sete %al
	# LowerIcmp(752:3): %r8 vs. operand %rdx
	cmpq %rdx, %r8
	sete %bl
	movb %bl, %sil
	orb %al, %sil
	cmpb $0, %sil
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M133
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M92:
	# LowerGetelementptr(757:3): pointer-type -> ^37
	movq %r8, %rax
	addq %r12, %rax
	# LowerGetelementptr(758:3): pointer-type -> ^38
	movq %rdx, %rbx
	addq %r12, %rbx
	# LowerIcmp(759:3): ^27 vs. intlike 1
	cmpq $1, %r15
	sete %dl
	cmpb $0, %dl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M102
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M107
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M102:
	# LowerLoad(763:3).2: (^38) into ^41
	movb (%rbx), %dl
	# LowerStore(764:3).9: mov ^41, (^37)
	movb %dl, (%rax)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M133
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M107:
	# Clobber %rcx
	movq %rcx, -40(%rbp)
	# Clobber %r8
	movq %r8, -48(%rbp)
	# Clobber %rax
	movq %rax, -56(%rbp)
	# SetupCalls(768:3): move argument i8* ^37
	movq %rax, %rdi
	# SetupCalls(768:3): move argument i8* ^38
	movq %rbx, %rsi
	# SetupCalls(768:3): move argument i64 ^27
	movq %r15, %rdx
	callq memmove@PLT
	# Unclobber %rax
	movq -56(%rbp), %rax
	# Unclobber %r8
	movq -48(%rbp), %r8
	# Unclobber %rcx
	movq -40(%rbp), %rcx
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M133:
	# LowerSwitch(772:3): begin conditions
	cmpq $0, %r8
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	cmpq $1, %r8
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M140
	# LowerSwitch(772:3): default
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M145
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M140:
	# LowerLoad(778:3).2: (%rcx) into ^45
	movb (%rcx), %al
	# LowerStore(779:3).9: mov ^45, (^25)
	movb %al, (%r12)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M145:
	# Clobber %rcx
	movq %rcx, -40(%rbp)
	# Clobber %r8
	movq %r8, -48(%rbp)
	# SetupCalls(783:3): move argument i8* ^25
	movq %r12, %rdi
	# SetupCalls(783:3): move argument i8* %rcx
	# Semiunclobber %rcx into %rsi
	movq -40(%rbp), %rsi
	# SetupCalls(783:3): move argument i64 %r8
	# Semiunclobber %r8 into %rdx
	movq -48(%rbp), %rdx
	callq memcpy@PLT
	# Unclobber %r8
	movq -48(%rbp), %r8
	# Unclobber %rcx
	movq -40(%rbp), %rcx
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M171:
	# LowerIcmp(787:3): %r8 vs. operand %rdx
	cmpq %rdx, %r8
	seta %al
	movq %r8, %rax
	addq $-1, %rax
	# LowerIcmp(789:3): ^49 vs. operand %rdx
	cmpq %rdx, %rax
	setb %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M180
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M215
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M180:
	# LowerIcmp(793:3): %r8 vs. intlike 1
	cmpq $1, %r8
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M184
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M189
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M184:
	# LowerLoad(797:3).2: (%rcx) into ^54
	movb (%rcx), %al
	# LowerStore(798:3).9: mov ^54, (^25)
	movb %al, (%r12)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M215
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M189:
	# Clobber %rdx
	movq %rdx, -32(%rbp)
	# Clobber %rcx
	movq %rcx, -40(%rbp)
	# Clobber %r8
	movq %r8, -48(%rbp)
	# Clobber %rax
	movq %rax, -56(%rbp)
	# SetupCalls(802:3): move argument i8* ^25
	movq %r12, %rdi
	# SetupCalls(802:3): move argument i8* %rcx
	# Semiunclobber %rcx into %rsi
	movq -40(%rbp), %rsi
	# SetupCalls(802:3): move argument i64 %r8
	# Semiunclobber %r8 into %rdx
	movq -48(%rbp), %rdx
	callq memmove@PLT
	# Unclobber %rax
	movq -56(%rbp), %rax
	# Unclobber %r8
	movq -48(%rbp), %r8
	# Unclobber %rcx
	movq -40(%rbp), %rcx
	# Unclobber %rdx
	movq -32(%rbp), %rdx
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M215:
	# LowerIcmp(806:3): ^27 vs. intlike 0
	cmpq $0, %r15
	sete %al
	# LowerIcmp(807:3): %r8 vs. operand %rdx
	cmpq %rdx, %r8
	sete %bl
	movb %bl, %sil
	orb %al, %sil
	cmpb $0, %sil
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M265
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M224:
	# LowerGetelementptr(812:3): pointer-type -> ^61
	movq %r8, %rax
	addq %r12, %rax
	# LowerGetelementptr(813:3): pointer-type -> ^62
	movq %rdx, %rbx
	addq %r12, %rbx
	# LowerIcmp(814:3): ^27 vs. intlike 1
	cmpq $1, %r15
	sete %sil
	cmpb $0, %sil
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M234
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M239
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M234:
	# LowerLoad(818:3).2: (^62) into ^65
	movb (%rbx), %sil
	# LowerStore(819:3).9: mov ^65, (^61)
	movb %sil, (%rax)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M265
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M239:
	# Clobber %rdx
	movq %rdx, -32(%rbp)
	# Clobber %rcx
	movq %rcx, -40(%rbp)
	# Clobber %r8
	movq %r8, -48(%rbp)
	# Clobber %rax
	movq %rax, -56(%rbp)
	# SetupCalls(823:3): move argument i8* ^61
	movq %rax, %rdi
	# SetupCalls(823:3): move argument i8* ^62
	movq %rbx, %rsi
	# SetupCalls(823:3): move argument i64 ^27
	movq %r15, %rdx
	callq memmove@PLT
	# Unclobber %rax
	movq -56(%rbp), %rax
	# Unclobber %r8
	movq -48(%rbp), %r8
	# Unclobber %rcx
	movq -40(%rbp), %rcx
	# Unclobber %rdx
	movq -32(%rbp), %rdx
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M265:
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M266
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M266:
	# LowerGetelementptr(830:3): pointer-type -> ^69
	movq %r8, %rax
	addq %rcx, %rax
	# LowerGetelementptr(831:3): pointer-type -> ^70
	movq %rdx, %rbx
	addq %r12, %rbx
	# LowerIcmp(832:3): ^69 vs. operand ^70
	cmpq %rbx, %rax
	seta %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M311
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M276:
	# LowerIcmp(836:3): %r8 vs. intlike 1
	cmpq $1, %r8
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M280
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M285
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M280:
	# LowerLoad(840:3).2: (%rcx) into ^75
	movb (%rcx), %al
	# LowerStore(841:3).9: mov ^75, (^25)
	movb %al, (%r12)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M285:
	# Clobber %rcx
	movq %rcx, -40(%rbp)
	# Clobber %r8
	movq %r8, -48(%rbp)
	# SetupCalls(845:3): move argument i8* ^25
	movq %r12, %rdi
	# SetupCalls(845:3): move argument i8* %rcx
	# Semiunclobber %rcx into %rsi
	movq -40(%rbp), %rsi
	# SetupCalls(845:3): move argument i64 %r8
	# Semiunclobber %r8 into %rdx
	movq -48(%rbp), %rdx
	callq memmove@PLT
	# Unclobber %r8
	movq -48(%rbp), %r8
	# Unclobber %rcx
	movq -40(%rbp), %rcx
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M311:
	# LowerIcmp(849:3): ^70 vs. operand %rcx
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
	# LowerGetelementptr(858:3): pointer-type -> ^85
	movq %rbx, %rax
	addq %r12, %rax
	# LowerIcmp(859:3): %r8 vs. intlike 1
	cmpq $1, %r8
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M330
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M335
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M330:
	# LowerLoad(863:3).2: (^85) into ^88
	movb (%rax), %bl
	# LowerStore(864:3).9: mov ^88, (^25)
	movb %bl, (%r12)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M335:
	# Clobber %r8
	movq %r8, -48(%rbp)
	# Clobber %rax
	movq %rax, -56(%rbp)
	# SetupCalls(868:3): move argument i8* ^25
	movq %r12, %rdi
	# SetupCalls(868:3): move argument i8* ^85
	movq %rax, %rsi
	# SetupCalls(868:3): move argument i64 %r8
	# Semiunclobber %r8 into %rdx
	movq -48(%rbp), %rdx
	callq memcpy@PLT
	# Unclobber %rax
	movq -56(%rbp), %rax
	# Unclobber %r8
	movq -48(%rbp), %r8
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M361:
	movq %rbx, %rax
	movq %rcx, %rbx
	movq %rax, %r15
	subq %rbx, %r15
	# LowerSwitch(875:3): begin conditions
	cmpq $1, %r15
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M372
	cmpq $0, %r15
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M403
	# LowerSwitch(875:3): default
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M377
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M372:
	# LowerLoad(881:3).2: (%rcx) into ^95
	movb (%rcx), %al
	# LowerStore(882:3).9: mov ^95, (^25)
	movb %al, (%r12)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M403
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M377:
	# Clobber %rcx
	movq %rcx, -40(%rbp)
	# Clobber %r8
	movq %r8, -48(%rbp)
	# SetupCalls(886:3): move argument i8* ^25
	movq %r12, %rdi
	# SetupCalls(886:3): move argument i8* %rcx
	# Semiunclobber %rcx into %rsi
	movq -40(%rbp), %rsi
	# SetupCalls(886:3): move argument i64 ^93
	movq %r15, %rdx
	callq memmove@PLT
	# Unclobber %r8
	movq -48(%rbp), %r8
	# Unclobber %rcx
	movq -40(%rbp), %rcx
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M403:
	# LowerGetelementptr(890:3): pointer-type -> ^98
	movq %r15, %rax
	addq %r12, %rax
	# LowerGetelementptr(891:3): pointer-type -> ^99
	movq %r8, %rbx
	addq %r12, %rbx
	movq %r8, %rcx
	subq %r15, %rcx
	# LowerSwitch(893:3): begin conditions
	cmpq $1, %rcx
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M418
	cmpq $0, %rcx
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	# LowerSwitch(893:3): default
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M423
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M418:
	# LowerLoad(899:3).2: (^99) into ^102
	movb (%rbx), %cl
	# LowerStore(900:3).9: mov ^102, (^98)
	movb %cl, (%rax)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M423:
	# Clobber %rcx
	movq %rcx, -40(%rbp)
	# Clobber %rax
	movq %rax, -56(%rbp)
	# SetupCalls(904:3): move argument i8* ^98
	movq %rax, %rdi
	# SetupCalls(904:3): move argument i8* ^99
	movq %rbx, %rsi
	# SetupCalls(904:3): move argument i64 ^100
	movq %rcx, %rdx
	callq memcpy@PLT
	# Unclobber %rax
	movq -56(%rbp), %rax
	# Unclobber %rcx
	movq -40(%rbp), %rcx
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M449:
	# Clobber %rdi
	movq %rdi, -16(%rbp)
	# Clobber %rsi
	movq %rsi, -24(%rbp)
	# Clobber %rdx
	movq %rdx, -32(%rbp)
	# Clobber %rcx
	movq %rcx, -40(%rbp)
	# Clobber %r8
	movq %r8, -48(%rbp)
	# SetupCalls(908:3): move argument %"class.std::__cxx11::basic_string"* %rdi
	# Semiunclobber %rdi into %rdi
	movq -16(%rbp), %rdi
	# SetupCalls(908:3): move argument i64 %rsi
	# Semiunclobber %rsi into %rsi
	movq -24(%rbp), %rsi
	# SetupCalls(908:3): move argument i64 %rdx
	# Semiunclobber %rdx into %rdx
	movq -32(%rbp), %rdx
	# SetupCalls(908:3): move argument i8* %rcx
	# Semiunclobber %rcx into %rcx
	movq -40(%rbp), %rcx
	# SetupCalls(908:3): move argument i64 %r8
	# Semiunclobber %r8 into %r8
	movq -48(%rbp), %r8
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	# Unclobber %r8
	movq -48(%rbp), %r8
	# Unclobber %rcx
	movq -40(%rbp), %rcx
	# Unclobber %rdx
	movq -32(%rbp), %rdx
	# Unclobber %rsi
	movq -24(%rbp), %rsi
	# Unclobber %rdi
	movq -16(%rbp), %rdi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479:
	# LowerStore(912:3).9: mov ^14, (^6)
	movq -8(%rbp), %rax
	movq %r13, (%rax)
	# LowerLoad(913:3).2: (^15) into ^106
	movq (%r14), %rax
	# LowerGetelementptr(914:3): pointer-type -> ^107
	movq %r13, %rbx
	addq %rax, %rbx
	# LowerStore(915:3).3: mov $imm, ^107
	movb $0, (%rbx)
	movq %rdi, %rax
	movq -96(%rbp), %r15
	movq -80(%rbp), %r14
	movq -72(%rbp), %r13
	movq -88(%rbp), %r12
	movq -64(%rbp), %rbx
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
	# upalign(736 + 0, 16)
	subq $736, %rsp
	movq %rbx, -568(%rbp)
	movq %r12, -576(%rbp)
	movq %r13, -584(%rbp)
	movq %r14, -608(%rbp)
	movq %r15, -680(%rbp)
	# LowerAlloca(516:3): size = 1, type = i8*, var = ^3
	# Fixing leaq -1(%rbp), -432(%rbp)
	leaq -1(%rbp), %r15
	movq %r15, -432(%rbp)
	# LowerAlloca(517:3): size = 1, type = i8*, var = ^4
	# Fixing leaq -2(%rbp), -448(%rbp)
	leaq -2(%rbp), %r15
	movq %r15, -448(%rbp)
	# LowerAlloca(518:3): size = 1, type = i8*, var = ^5
	# Fixing leaq -3(%rbp), -456(%rbp)
	leaq -3(%rbp), %r15
	movq %r15, -456(%rbp)
	# LowerAlloca(519:3): size = 1, type = i8*, var = ^6
	leaq -4(%rbp), %rbx
	# LowerAlloca(520:3): size = 376, type = %"class.std::__cxx11::basic_ostringstream"*, var = ^7
	# Fixing leaq -384(%rbp), -464(%rbp)
	leaq -384(%rbp), %r15
	movq %r15, -464(%rbp)
	# LowerAlloca(521:3): size = 32, type = %"class.std::__cxx11::basic_string"*, var = ^8
	# Fixing leaq -416(%rbp), -472(%rbp)
	leaq -416(%rbp), %r15
	movq %r15, -472(%rbp)
	# Fixing movq -464(%rbp), -480(%rbp)
	movq -464(%rbp), %r15
	movq %r15, -480(%rbp)
	# LowerGetelementptr(523:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^10, indices=0,2
	movq -464(%rbp), %r12
	addq $112, %r12
	# LowerGetelementptr(524:3): struct-type: %"class.std::basic_ios"* -> ^11, indices=0,0
	movq %r12, %rax
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# Clobber %rsi
	movq %rsi, -536(%rbp)
	# SetupCalls(525:3): move argument %"class.std::ios_base"* ^11
	movq %rax, %rdi
	callq _ZNSt8ios_baseC2Ev@PLT
	# Unclobber %rsi
	movq -536(%rbp), %rsi
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	# LowerGetelementptr(526:3): struct-type: %"class.std::basic_ios"* -> ^12, indices=0,0,0
	movq %r12, %r13
	movq _ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(527:3).9: mov ^132, (^12)
	movq %rax, (%r13)
	# LowerGetelementptr(528:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^13, indices=0,2,1
	movq -464(%rbp), %rax
	addq $112, %rax
	addq $216, %rax
	# LowerStore(529:3).3: mov $imm, ^13
	movq $0, (%rax)
	# LowerGetelementptr(530:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^14, indices=0,2,2
	movq -464(%rbp), %rax
	addq $112, %rax
	addq $224, %rax
	# LowerStore(531:3).3: mov $imm, ^14
	movb $0, (%rax)
	# LowerGetelementptr(532:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^15, indices=0,2,3
	movq -464(%rbp), %rax
	addq $112, %rax
	addq $225, %rax
	# LowerStore(533:3).3: mov $imm, ^15
	movb $0, (%rax)
	# LowerGetelementptr(534:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^16, indices=0,2,4
	movq -464(%rbp), %rax
	addq $112, %rax
	addq $232, %rax
	movq %rax, %rcx
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# Clobber %rsi
	movq %rsi, -536(%rbp)
	# SetupCalls(536:3): move argument i8* ^17
	movq %rcx, %rdi
	# SetupCalls(536:3): move argument i32 0
	movq $0, %rsi
	# SetupCalls(536:3): move argument i64 32
	movq $32, %rdx
	callq memset@PLT
	# Unclobber %rsi
	movq -536(%rbp), %rsi
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	movq _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $8, %rax
	# LowerLoad(537:3).2: (^133) into ^18
	movq (%rax), %rcx
	# LowerGetelementptr(538:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^19, indices=0,0,0
	# Fixing movq -464(%rbp), -488(%rbp)
	movq -464(%rbp), %r15
	movq %r15, -488(%rbp)
	# LowerStore(539:3).9: mov ^18, (^19)
	movq -488(%rbp), %rax
	movq %rcx, (%rax)
	movq _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerLoad(540:3).2: (^134) into ^20
	movq (%rax), %rdx
	movq -464(%rbp), %r12
	# LowerGetelementptr(542:3): struct-type: i32 () *** -> ^22, indices=-3
	movq %rcx, %rax
	addq $-24, %rax
	movq %rax, %rcx
	# LowerLoad(544:3).2: (^23) into ^24
	movq (%rcx), %rax
	# LowerGetelementptr(545:3): pointer-type -> ^25
	movq %rax, %rcx
	addq -480(%rbp), %rcx
	movq %rcx, %rax
	# LowerStore(547:3).9: mov ^20, (^26)
	movq %rdx, (%rax)
	# LowerLoad(548:3).2: (^21) into ^27
	movq (%r12), %rax
	# LowerGetelementptr(549:3): struct-type: i8* -> ^28, indices=-24
	movq %rax, %rcx
	addq $-24, %rcx
	movq %rcx, %rax
	# LowerLoad(551:3).2: (^29) into ^30
	movq (%rax), %rcx
	# LowerGetelementptr(552:3): pointer-type -> ^31
	movq %rcx, %rax
	addq -480(%rbp), %rax
	movq %rax, %rcx
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# Clobber %rsi
	movq %rsi, -536(%rbp)
	# SetupCalls(554:3): move argument %"class.std::basic_ios"* ^32
	movq %rcx, %rdi
	# SetupCalls(554:3): move argument %"class.std::basic_streambuf"* null
	movq $0, %rsi
	callq _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
	# Unclobber %rsi
	movq -536(%rbp), %rsi
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	movq _ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rcx
	addq $24, %rcx
	# LowerStore(555:3).9: mov ^135, (^19)
	movq -488(%rbp), %rax
	movq %rcx, (%rax)
	movq _ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $64, %rax
	# LowerStore(556:3).9: mov ^136, (^12)
	movq %rax, (%r13)
	# LowerGetelementptr(557:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^33, indices=0,1
	movq -464(%rbp), %r13
	addq $8, %r13
	# LowerGetelementptr(558:3): struct-type: %"class.std::__cxx11::basic_stringbuf"* -> ^34, indices=0,0,0
	movq %r13, %r14
	movq _ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(559:3).9: mov ^137, (^34)
	movq %rax, (%r14)
	# LowerGetelementptr(560:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^35, indices=0,1,0,1
	movq -464(%rbp), %rax
	addq $8, %rax
	addq $8, %rax
	# LowerGetelementptr(561:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^36, indices=0,1,0,7
	# Fixing movq -464(%rbp), -496(%rbp)
	movq -464(%rbp), %r15
	movq %r15, -496(%rbp)
	addq $8, -496(%rbp)
	addq $56, -496(%rbp)
	movq %rax, %rcx
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# Clobber %rsi
	movq %rsi, -536(%rbp)
	# SetupCalls(563:3): move argument i8* ^37
	movq %rcx, %rdi
	# SetupCalls(563:3): move argument i32 0
	movq $0, %rsi
	# SetupCalls(563:3): move argument i64 48
	movq $48, %rdx
	callq memset@PLT
	# Unclobber %rsi
	movq -536(%rbp), %rsi
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# Clobber %rsi
	movq %rsi, -536(%rbp)
	# SetupCalls(564:3): move argument %"class.std::locale"* ^36
	movq -496(%rbp), %rdi
	callq _ZNSt6localeC1Ev@PLT
	# Unclobber %rsi
	movq -536(%rbp), %rsi
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	movq _ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(565:3).9: mov ^138, (^34)
	movq %rax, (%r14)
	# LowerGetelementptr(566:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^38, indices=0,1,1
	movq -464(%rbp), %rax
	addq $8, %rax
	addq $64, %rax
	# LowerStore(567:3).3: mov $imm, ^38
	movl $16, (%rax)
	# LowerGetelementptr(568:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^39, indices=0,1,2
	# Fixing movq -464(%rbp), -504(%rbp)
	movq -464(%rbp), %r15
	movq %r15, -504(%rbp)
	addq $8, -504(%rbp)
	addq $72, -504(%rbp)
	# LowerGetelementptr(569:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^40, indices=0,1,2,2
	movq -464(%rbp), %rax
	addq $8, %rax
	addq $72, %rax
	addq $16, %rax
	movq -504(%rbp), %rcx
	# LowerStore(571:3).9: mov ^40, (^41)
	movq %rax, (%rcx)
	# LowerGetelementptr(572:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^42, indices=0,1,2,1
	movq -464(%rbp), %rcx
	addq $8, %rcx
	addq $72, %rcx
	addq $8, %rcx
	# LowerStore(573:3).3: mov $imm, ^42
	movq $0, (%rcx)
	movq %rax, -512(%rbp)
	# LowerStore(575:3).3: mov $imm, ^43
	movq -512(%rbp), %rax
	movb $0, (%rax)
	# LowerLoad(576:3).2: (^21) into ^44
	movq (%r12), %rax
	# LowerGetelementptr(577:3): struct-type: i8* -> ^45, indices=-24
	movq %rax, %rcx
	addq $-24, %rcx
	movq %rcx, %rax
	# LowerLoad(579:3).2: (^46) into ^47
	movq (%rax), %rcx
	# LowerGetelementptr(580:3): pointer-type -> ^48
	movq %rcx, %rax
	addq -480(%rbp), %rax
	movq %rax, %rcx
	# LowerGetelementptr(582:3): struct-type: %"class.std::__cxx11::basic_stringbuf"* -> ^50, indices=0,0
	movq %r13, %rax
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# Clobber %rsi
	movq %rsi, -536(%rbp)
	# SetupCalls(583:3): move argument %"class.std::basic_ios"* ^49
	movq %rcx, %rdi
	# SetupCalls(583:3): move argument %"class.std::basic_streambuf"* ^50
	movq %rax, %rsi
	callq _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
	# Unclobber %rsi
	movq -536(%rbp), %rsi
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	# Fixing movq -464(%rbp), -520(%rbp)
	movq -464(%rbp), %r15
	movq %r15, -520(%rbp)
	# LowerGetelementptr(585:3): struct-type: %"struct.std::__detail::_Quoted_string"* -> ^52, indices=0,1
	movq %rsi, %r12
	addq $8, %r12
	# LowerLoad(586:3).2: (^52) into ^53
	movb (%r12), %al
	# LowerStore(587:3).9: mov ^53, (^6)
	movb %al, (%rbx)
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# Clobber %rsi
	movq %rsi, -536(%rbp)
	# SetupCalls(588:3): move argument %"class.std::basic_ostream"* ^51
	movq -520(%rbp), %rdi
	# SetupCalls(588:3): move argument i8* ^6
	movq %rbx, %rsi
	# SetupCalls(588:3): move argument i64 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(588:3): move result from %rax
	movq %rax, %rax
	# Unclobber %rsi
	movq -536(%rbp), %rsi
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	# LowerGetelementptr(589:3): struct-type: %"struct.std::__detail::_Quoted_string"* -> ^55, indices=0,0
	movq %rsi, %rax
	# LowerLoad(590:3).2: (^55) into ^56
	movq (%rax), %rbx
	# LowerGetelementptr(591:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^57, indices=0,0,0
	movq %rbx, %rax
	# LowerLoad(592:3).2: (^57) into ^58
	movq (%rax), %rcx
	# LowerGetelementptr(593:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^59, indices=0,1
	movq %rbx, %rax
	addq $8, %rax
	# LowerLoad(594:3).2: (^59) into ^60
	movq (%rax), %rbx
	# LowerGetelementptr(595:3): pointer-type -> ^61
	movq %rbx, %r13
	addq %rcx, %r13
	# LowerIcmp(596:3): ^60 vs. intlike 0
	cmpq $0, %rbx
	sete %al
	cmpb $0, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M359
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M353:
	# LowerGetelementptr(600:3): struct-type: %"struct.std::__detail::_Quoted_string"* -> ^64, indices=0,2
	movq %rsi, -440(%rbp)
	addq $9, -440(%rbp)
	# MovePhi: ^58 -> ^114
	movq %rcx, -424(%rbp)
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M671
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M359:
	# LowerLoad(604:3).2: (^52) into ^66
	movb (%r12), %al
	# LowerStore(605:3).9: mov ^66, (^5)
	movq -456(%rbp), %rbx
	movb %al, (%rbx)
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# SetupCalls(606:3): move argument %"class.std::basic_ostream"* ^51
	movq -520(%rbp), %rdi
	# SetupCalls(606:3): move argument i8* ^5
	movq -456(%rbp), %rsi
	# SetupCalls(606:3): move argument i64 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(606:3): move result from %rax
	movq %rax, %rax
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	movq -472(%rbp), %rax
	# LowerGetelementptr(610:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^69, indices=0,2
	movq -472(%rbp), %rax
	addq $16, %rax
	movq -472(%rbp), %rbx
	# LowerStore(612:3).9: mov ^69, (^70)
	movq %rax, (%rbx)
	# LowerGetelementptr(613:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^71, indices=0,1
	movq -472(%rbp), %rbx
	addq $8, %rbx
	# LowerStore(614:3).3: mov $imm, ^71
	movq $0, (%rbx)
	movq %rax, %r14
	# LowerStore(616:3).3: mov $imm, ^72
	movb $0, (%r14)
	# LowerGetelementptr(617:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^73, indices=0,1,0,5
	movq -464(%rbp), %rax
	addq $8, %rax
	addq $40, %rax
	# LowerLoad(618:3).2: (^73) into ^74
	movq (%rax), %rcx
	# LowerIcmp(619:3): ^74 vs. intlike 0
	cmpq $0, %rcx
	sete %al
	# LowerGetelementptr(620:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^76, indices=0,1,0,3
	movq -464(%rbp), %rdx
	addq $8, %rdx
	addq $24, %rdx
	# LowerLoad(621:3).2: (^76) into ^77
	movq (%rdx), %rsi
	# LowerIcmp(622:3): ^74 vs. operand ^77
	cmpq %rsi, %rcx
	seta %dl
	cmpq $0, %rdx
	movq %rcx, %rdx
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC0
	movq %rsi, %rdx
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC0:
	# LowerIcmp(624:3): ^79 vs. intlike 0
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
	# LowerGetelementptr(629:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^83, indices=0,1,0,4
	movq -464(%rbp), %rax
	addq $8, %rax
	addq $32, %rax
	# LowerLoad(630:3).2: (^83) into ^84
	movq (%rax), %r8
	movq %rdx, %rax
	movq %r8, %rcx
	movq %rax, %r9
	subq %rcx, %r9
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# Clobber %rdx
	movq %rdx, -544(%rbp)
	# SetupCalls(634:3): move argument %"class.std::__cxx11::basic_string"* ^8
	movq -472(%rbp), %rdi
	# SetupCalls(634:3): move argument i64 0
	movq $0, %rsi
	# SetupCalls(634:3): move argument i64 0
	movq $0, %rdx
	# SetupCalls(634:3): move argument i8* ^84
	movq %r8, %rcx
	# SetupCalls(634:3): move argument i64 ^87
	movq %r9, %r8
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	# SetupCalls(634:3): move result from %rax
	movq %rax, %rax
	# Unclobber %rdx
	movq -544(%rbp), %rdx
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M500
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M476:
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# SetupCalls(638:3): move argument %"class.std::__cxx11::basic_string"* ^8
	movq -472(%rbp), %rdi
	# SetupCalls(638:3): move argument %"class.std::__cxx11::basic_string"* ^39
	movq -504(%rbp), %rsi
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M500:
	# LowerGetelementptr(642:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^91, indices=0,0,0
	movq -472(%rbp), %r15
	# LowerLoad(643:3).2: (^91) into ^92
	movq (%r15), %rax
	# LowerLoad(644:3).2: (^71) into ^93
	movq (%rbx), %rcx
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# SetupCalls(645:3): move argument %"class.std::basic_ostream"* %rdi
	# Semiunclobber %rdi into %rdi
	movq -528(%rbp), %rdi
	# SetupCalls(645:3): move argument i8* ^92
	movq %rax, %rsi
	# SetupCalls(645:3): move argument i64 ^93
	movq %rcx, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(645:3): move result from %rax
	movq %rax, %rax
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	# LowerLoad(646:3).2: (^91) into ^95
	movq (%r15), %rax
	# LowerIcmp(647:3): ^95 vs. operand ^72
	cmpq %r14, %rax
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M561
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M539:
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# Clobber %rax
	movq %rax, -552(%rbp)
	# SetupCalls(651:3): move argument i8* ^95
	movq %rax, %rdi
	callq _ZdlPv@PLT
	# Unclobber %rax
	movq -552(%rbp), %rax
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M561:
	# LowerLoad(655:3).4: _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE into ^99
	movq _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rbx
	movq (%rbx), %rbx
	# LowerStore(656:3).9: mov ^99, (^19)
	movq -488(%rbp), %rax
	movq %rbx, (%rax)
	movq _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $24, %rax
	# LowerLoad(657:3).2: (^139) into ^100
	movq (%rax), %rcx
	# LowerGetelementptr(658:3): struct-type: i32 () *** -> ^101, indices=-3
	movq %rbx, %rax
	addq $-24, %rax
	movq %rax, %rbx
	# LowerLoad(660:3).2: (^102) into ^103
	movq (%rbx), %rax
	# LowerGetelementptr(661:3): pointer-type -> ^104
	movq %rax, %rbx
	addq -480(%rbp), %rbx
	movq %rbx, %rax
	# LowerStore(663:3).9: mov ^100, (^105)
	movq %rcx, (%rax)
	# LowerGetelementptr(664:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^106, indices=0,1,0,0
	movq -464(%rbp), %rbx
	addq $8, %rbx
	movq _ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(665:3).9: mov ^140, (^106)
	movq %rax, (%rbx)
	# LowerGetelementptr(666:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^107, indices=0,1,2,0,0
	movq -464(%rbp), %rax
	addq $8, %rax
	addq $72, %rax
	# LowerLoad(667:3).2: (^107) into ^108
	movq (%rax), %rcx
	# LowerIcmp(668:3): ^108 vs. operand ^43
	cmpq %rax, %rcx
	sete %al
	cmpb $0, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M621
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M599:
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# Clobber %rcx
	movq %rcx, -560(%rbp)
	# SetupCalls(672:3): move argument i8* ^108
	movq %rcx, %rdi
	callq _ZdlPv@PLT
	# Unclobber %rcx
	movq -560(%rbp), %rcx
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M621:
	movq _ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(676:3).9: mov ^141, (^106)
	movq %rax, (%rbx)
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# SetupCalls(677:3): move argument %"class.std::locale"* ^36
	movq -496(%rbp), %rdi
	callq _ZNSt6localeD1Ev@PLT
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	# LowerGetelementptr(678:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^112, indices=0,2,0
	movq -464(%rbp), %rax
	addq $112, %rax
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# SetupCalls(679:3): move argument %"class.std::ios_base"* ^112
	movq %rax, %rdi
	callq _ZNSt8ios_baseD2Ev@PLT
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	movq -680(%rbp), %r15
	movq -608(%rbp), %r14
	movq -584(%rbp), %r13
	movq -576(%rbp), %r12
	movq -568(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M671:
	# LowerLoad(684:3).2: (^114) into ^115
	movq -424(%rbp), %rax
	movb (%rax), %bl
	# LowerLoad(685:3).2: (^52) into ^116
	movb (%r12), %al
	# LowerIcmp(686:3): ^115 vs. operand ^116
	cmpb %al, %bl
	sete %cl
	# LowerLoad(687:3).2: (^64) into ^118
	movq -440(%rbp), %rax
	movb (%rax), %dl
	# LowerIcmp(688:3): ^115 vs. operand ^118
	cmpb %dl, %bl
	sete %al
	cmpb $0, %cl
	movb $1, %cl
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC2
	movb %al, %cl
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC2:
	cmpb $0, %cl
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M687
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M717
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M687:
	# LowerStore(693:3).9: mov ^118, (^4)
	movq -448(%rbp), %rax
	movb %dl, (%rax)
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# Clobber %rdx
	movq %rdx, -544(%rbp)
	# SetupCalls(694:3): move argument %"class.std::basic_ostream"* ^51
	movq -520(%rbp), %rdi
	# SetupCalls(694:3): move argument i8* ^4
	movq -448(%rbp), %rsi
	# SetupCalls(694:3): move argument i64 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(694:3): move result from %rax
	movq %rax, %rax
	# Unclobber %rdx
	movq -544(%rbp), %rdx
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M717:
	# LowerStore(698:3).9: mov ^115, (^3)
	movq -432(%rbp), %rax
	movb %bl, (%rax)
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# SetupCalls(699:3): move argument %"class.std::basic_ostream"* ^51
	movq -520(%rbp), %rdi
	# SetupCalls(699:3): move argument i8* ^3
	movq -432(%rbp), %rsi
	# SetupCalls(699:3): move argument i64 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(699:3): move result from %rax
	movq %rax, %rax
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	# LowerGetelementptr(700:3): struct-type: i8* -> ^125, indices=1
	movq -424(%rbp), %rax
	addq $1, %rax
	# LowerIcmp(701:3): ^125 vs. operand ^61
	cmpq %r13, %rax
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M359
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M753:
	# MovePhi: ^125 -> ^114 (in new block 142 whose parent is 123)
	movq %rax, -424(%rbp)
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M671

.section .text
.global _ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE
.p2align 4, 0x90
_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE:
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(48 + 0, 16)
	subq $48, %rsp
	movq %rbx, -16(%rbp)
	movq %r12, -24(%rbp)
	movq %r13, -40(%rbp)
	movq %r14, -32(%rbp)
	# LowerGetelementptr(321:3): struct-type: [2 x i8]* -> ^4, indices=0,0
	movq %rsi, %rbx
	# Clobber %rdi
	movq %rdi, -8(%rbp)
	# SetupCalls(322:3): move argument i8* ^4
	movq %rbx, %rdi
	callq strlen@PLT
	# SetupCalls(322:3): move result from %rax
	movq %rax, %r12
	# Unclobber %rdi
	movq -8(%rbp), %rdi
	# LowerGetelementptr(323:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^6, indices=0,0,2
	movq %rdi, %rcx
	addq $16, %rcx
	movq %rdi, %rax
	# LowerStore(325:3).9: mov ^6, (^7)
	movq %rcx, (%rax)
	# LowerIcmp(326:3): ^5 vs. intlike 15
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
	# LowerIcmp(334:3): ^5 vs. intlike 0
	cmpq $0, %r12
	setl %al
	cmpb $0, %al
	jne .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M43
	jmp .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M65
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M43:
	# Clobber %rdi
	movq %rdi, -8(%rbp)
	# SetupCalls(338:3): move argument i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)
	movq .str.3@GOTPCREL(%rip), %rdi
	callq _ZSt20__throw_length_errorPKc@PLT
	# Unclobber %rdi
	movq -8(%rbp), %rdi
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M65:
	movq %r12, %r13
	addq $1, %r13
	# LowerIcmp(343:3): ^15 vs. intlike 0
	cmpq $0, %r13
	setl %al
	cmpb $0, %al
	jne .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M71
	jmp .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M91
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M71:
	# Clobber %rdi
	movq %rdi, -8(%rbp)
	callq _ZSt17__throw_bad_allocv@PLT
	# Unclobber %rdi
	movq -8(%rbp), %rdi
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M91:
	# Clobber %rdi
	movq %rdi, -8(%rbp)
	# SetupCalls(351:3): move argument i64 ^15
	movq %r13, %rdi
	callq _Znwm@PLT
	# SetupCalls(351:3): move result from %rax
	movq %rax, %r13
	# Unclobber %rdi
	movq -8(%rbp), %rdi
	# LowerGetelementptr(352:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^20, indices=0,0,0,0
	movq %rdi, %rax
	# LowerStore(353:3).9: mov ^19, (^20)
	movq %r13, (%rax)
	# LowerGetelementptr(354:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^21, indices=0,0,2,0
	movq %rdi, %rax
	addq $16, %rax
	# LowerStore(355:3).9: mov ^5, (^21)
	movq %r12, (%rax)
	# MovePhi: ^19 -> ^23
	movq %r13, %r14
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M126:
	# LowerSwitch(360:3): begin conditions
	cmpq $1, %r12
	je .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M133
	cmpq $0, %r12
	je .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M164
	# LowerSwitch(360:3): default
	jmp .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M138
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M133:
	# LowerLoad(366:3).2: (^4) into ^25
	movb (%rbx), %al
	# LowerStore(367:3).9: mov ^25, (^23)
	movb %al, (%r14)
	jmp .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M164
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M138:
	# Clobber %rdi
	movq %rdi, -8(%rbp)
	# SetupCalls(371:3): move argument i8* ^23
	movq %r14, %rdi
	# SetupCalls(371:3): move argument i8* ^4
	movq %rbx, %rsi
	# SetupCalls(371:3): move argument i64 ^5
	movq %r12, %rdx
	callq memcpy@PLT
	# Unclobber %rdi
	movq -8(%rbp), %rdi
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M164:
	# LowerGetelementptr(375:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^28, indices=0,0,1
	movq %rdi, %rax
	addq $8, %rax
	# LowerStore(376:3).9: mov ^5, (^28)
	movq %r12, (%rax)
	# LowerGetelementptr(377:3): pointer-type -> ^29
	movq %r12, %rax
	addq %r14, %rax
	# LowerStore(378:3).3: mov $imm, ^29
	movb $0, (%rax)
	# LowerGetelementptr(379:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^30, indices=0,1
	movq %rdi, %rax
	addq $32, %rax
	# Clobber %rdi
	movq %rdi, -8(%rbp)
	# SetupCalls(380:3): move argument %"struct.std::filesystem::__cxx11::path::_List"* ^30
	movq %rax, %rdi
	callq _ZNSt10filesystem7__cxx114path5_ListC1Ev@PLT
	# Unclobber %rdi
	movq -8(%rbp), %rdi
	# Clobber %rdi
	movq %rdi, -8(%rbp)
	# SetupCalls(381:3): move argument %"class.std::filesystem::__cxx11::path"* %rdi
	# Semiunclobber %rdi into %rdi
	movq -8(%rbp), %rdi
	callq _ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@PLT
	# Unclobber %rdi
	movq -8(%rbp), %rdi
	movq -32(%rbp), %r14
	movq -40(%rbp), %r13
	movq -24(%rbp), %r12
	movq -16(%rbp), %rbx
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
	movq %r13, -104(%rbp)
	movq %r14, -112(%rbp)
	movq %r15, -120(%rbp)
	# LowerAlloca(390:3): size = 16, type = {%"class.std::__cxx11::basic_string"*, i64}*, var = ^3
	leaq -16(%rbp), %rbx
	movq %rbx, -72(%rbp)
	# LowerAlloca(392:3): size = 32, type = %"class.std::__cxx11::basic_string"*, var = ^5
	# Fixing leaq -48(%rbp), -56(%rbp)
	pushq %r15
	leaq -48(%rbp), %r15
	movq %r15, -56(%rbp)
	popq %r15
	movq %rbx, %rax
	movq -56(%rbp), %rax
	# LowerGetelementptr(396:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^8, indices=0,0,0,0
	movq %rsi, %rax
	# LowerLoad(397:3).2: (^8) into ^9
	movq (%rax), %r13
	# LowerGetelementptr(398:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^10, indices=0,0,1
	movq %rsi, %rax
	addq $8, %rax
	# LowerLoad(399:3).2: (^10) into ^11
	movq (%rax), %r14
	# LowerGetelementptr(400:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^12, indices=0,2
	# Fixing movq -56(%rbp), -64(%rbp)
	pushq %r15
	movq -56(%rbp), %r15
	movq %r15, -64(%rbp)
	popq %r15
	addq $16, -64(%rbp)
	movq -56(%rbp), %rax
	# LowerStore(402:3).9: mov ^12, (^13)
	# Fixing movq -64(%rbp), (%rax)
	pushq %r15
	movq -64(%rbp), %r15
	movq %r15, (%rax)
	popq %r15
	# LowerIcmp(403:3): ^11 vs. intlike 15
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
	# LowerIcmp(411:3): ^11 vs. intlike 0
	cmpq $0, %r14
	setl %al
	cmpb $0, %al
	jne .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M34
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M56
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M34:
	# Clobber %rdi
	movq %rdi, -80(%rbp)
	# SetupCalls(415:3): move argument i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)
	movq .str.3@GOTPCREL(%rip), %rdi
	callq _ZSt20__throw_length_errorPKc@PLT
	# Unclobber %rdi
	movq -80(%rbp), %rdi
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M56:
	movq %r14, %r12
	addq $1, %r12
	# LowerIcmp(420:3): ^21 vs. intlike 0
	cmpq $0, %r12
	setl %al
	cmpb $0, %al
	jne .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M62
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M82
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M62:
	# Clobber %rdi
	movq %rdi, -80(%rbp)
	callq _ZSt17__throw_bad_allocv@PLT
	# Unclobber %rdi
	movq -80(%rbp), %rdi
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M82:
	# Clobber %rdi
	movq %rdi, -80(%rbp)
	# SetupCalls(428:3): move argument i64 ^21
	movq %r12, %rdi
	callq _Znwm@PLT
	# SetupCalls(428:3): move result from %rax
	movq %rax, %r12
	# Unclobber %rdi
	movq -80(%rbp), %rdi
	# LowerGetelementptr(429:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^26, indices=0,0,0
	movq -56(%rbp), %rax
	# LowerStore(430:3).9: mov ^25, (^26)
	movq %r12, (%rax)
	# LowerGetelementptr(431:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^27, indices=0,2,0
	movq -56(%rbp), %rax
	addq $16, %rax
	# LowerStore(432:3).9: mov ^11, (^27)
	movq %r14, (%rax)
	# MovePhi: ^25 -> ^29
	movq %r12, %r15
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M117:
	# LowerSwitch(437:3): begin conditions
	cmpq $1, %r14
	je .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M124
	cmpq $0, %r14
	je .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M155
	# LowerSwitch(437:3): default
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M129
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M124:
	# LowerLoad(443:3).2: (^9) into ^31
	movb (%r13), %al
	# LowerStore(444:3).9: mov ^31, (^29)
	movb %al, (%r15)
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M155
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M129:
	# Clobber %rdi
	movq %rdi, -80(%rbp)
	# SetupCalls(448:3): move argument i8* ^29
	movq %r15, %rdi
	# SetupCalls(448:3): move argument i8* ^9
	movq %r13, %rsi
	# SetupCalls(448:3): move argument i64 ^11
	movq %r14, %rdx
	callq memcpy@PLT
	# Unclobber %rdi
	movq -80(%rbp), %rdi
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M155:
	# LowerGetelementptr(452:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^34, indices=0,1
	movq -56(%rbp), %rax
	addq $8, %rax
	# LowerStore(453:3).9: mov ^11, (^34)
	movq %r14, (%rax)
	# LowerGetelementptr(454:3): pointer-type -> ^35
	movq %r14, %rax
	addq %r15, %rax
	# LowerStore(455:3).3: mov $imm, ^35
	movb $0, (%rax)
	# LowerGetelementptr(456:3): struct-type: {%"class.std::__cxx11::basic_string"*, i64}* -> ^36, indices=0,0
	movq %rbx, %rax
	# LowerStore(457:3).9: mov ^5, (^36)
	# Fixing movq -56(%rbp), (%rax)
	pushq %r15
	movq -56(%rbp), %r15
	movq %r15, (%rax)
	popq %r15
	# LowerGetelementptr(458:3): struct-type: {%"class.std::__cxx11::basic_string"*, i64}* -> ^37, indices=0,1
	movq %rbx, %rax
	addq $8, %rax
	# LowerStore(459:3).3: mov $imm, ^37
	movq $23586, (%rax)
	# Clobber %rdi
	movq %rdi, -80(%rbp)
	# SetupCalls(460:3): move argument %"class.std::basic_ostream"* %rdi
	# Semiunclobber %rdi into %rdi
	movq -80(%rbp), %rdi
	# SetupCalls(460:3): move argument %"struct.std::__detail::_Quoted_string"* ^4
	movq -72(%rbp), %rsi
	callq _ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE
	# SetupCalls(460:3): move result from %rax
	movq %rax, %rax
	# Unclobber %rdi
	movq -80(%rbp), %rdi
	# LowerGetelementptr(461:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^39, indices=0,0,0
	movq -56(%rbp), %rbx
	# LowerLoad(462:3).2: (^39) into ^40
	movq (%rbx), %rax
	movq -64(%rbp), %rbx
	# LowerIcmp(464:3): ^40 vs. operand ^41
	cmpq %rbx, %rax
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M230
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M208:
	# Clobber %rax
	movq %rax, -88(%rbp)
	# SetupCalls(468:3): move argument i8* ^40
	movq %rax, %rdi
	callq _ZdlPv@PLT
	# Unclobber %rax
	movq -88(%rbp), %rax
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M230:
	movq %rdi, %rax
	movq -120(%rbp), %r15
	movq -112(%rbp), %r14
	movq -104(%rbp), %r13
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
	# upalign(336 + 0, 16)
	subq $336, %rsp
	movq %rbx, -168(%rbp)
	movq %r12, -184(%rbp)
	movq %r13, -192(%rbp)
	movq %r14, -232(%rbp)
	movq %r15, -248(%rbp)
	# LowerAlloca(91:3): size = 1, type = i8*, var = ^1
	# Fixing leaq -1(%rbp), -120(%rbp)
	pushq %r15
	leaq -1(%rbp), %r15
	movq %r15, -120(%rbp)
	popq %r15
	# LowerAlloca(92:3): size = 40, type = %"class.std::filesystem::__cxx11::path"*, var = ^2
	# Fixing leaq -48(%rbp), -128(%rbp)
	pushq %r15
	leaq -48(%rbp), %r15
	movq %r15, -128(%rbp)
	popq %r15
	# LowerAlloca(93:3): size = 16, type = %"class.std::filesystem::__cxx11::directory_iterator"*, var = ^3
	leaq -64(%rbp), %rbx
	# LowerAlloca(94:3): size = 16, type = %"class.std::filesystem::__cxx11::directory_iterator"*, var = ^4
	# Fixing leaq -80(%rbp), -136(%rbp)
	pushq %r15
	leaq -80(%rbp), %r15
	movq %r15, -136(%rbp)
	popq %r15
	movq -128(%rbp), %rax
	# SetupCalls(96:3): move argument %"class.std::filesystem::__cxx11::path"* ^2
	movq -128(%rbp), %rdi
	# SetupCalls(96:3): move argument [2 x i8]* @.str
	movq .str@GOTPCREL(%rip), %rsi
	# SetupCalls(96:3): move argument i8 2
	movq $2, %rdx
	andq $255, %rdx
	callq _ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE
	movq %rbx, %rax
	# SetupCalls(98:3): move argument %"class.std::filesystem::__cxx11::directory_iterator"* ^3
	movq %rbx, %rdi
	# SetupCalls(98:3): move argument %"class.std::filesystem::__cxx11::path"* ^2
	movq -128(%rbp), %rsi
	# SetupCalls(98:3): move argument i8 0
	movq $0, %rdx
	andq $255, %rdx
	# SetupCalls(98:3): move argument %"class.std::error_code"* null
	movq $0, %rcx
	callq _ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code@PLT
	movq -136(%rbp), %rax
	# LowerGetelementptr(100:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^8, indices=0,0,0
	movq %rbx, %rax
	# LowerLoad(101:3).2: (^8) into ^9
	movq (%rax), %rcx
	# LowerGetelementptr(102:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^10, indices=0,0,1,0
	movq %rbx, -144(%rbp)
	addq $8, -144(%rbp)
	# LowerLoad(103:3).2: (^10) into ^11
	movq -144(%rbp), %rax
	movq (%rax), %rdx
	# LowerIcmp(104:3): ^11 vs. intlike 0
	cmpq $0, %rdx
	sete %al
	cmpb $0, %al
	jne .__main__M277
	.__main__M78:
	# LowerGetelementptr(108:3): struct-type: %"class.std::_Sp_counted_base"* -> ^14, indices=0,1
	movq %rdx, %rbx
	addq $8, %rbx
	# LowerLoad(109:3).4: __libc_single_threaded into ^15
	movq __libc_single_threaded@GOTPCREL(%rip), %rax
	movb (%rax), %al
	# LowerIcmp(110:3): ^15 vs. intlike 0
	cmpb $0, %al
	sete %al
	cmpb $0, %al
	jne .__main__M108
	.__main__M88:
	# LowerLoad(114:3).2: (^14) into ^18
	movl (%rbx), %eax
	movl %eax, %esi
	addl $1, %esi
	# LowerStore(116:3).9: mov ^19, (^14)
	movl %esi, (%rbx)
	# LowerGetelementptr(117:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^20, indices=0,0,0
	movq -136(%rbp), %rax
	# LowerStore(118:3).9: mov ^9, (^20)
	movq %rcx, (%rax)
	# LowerGetelementptr(119:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^21, indices=0,0,1,0
	movq -136(%rbp), %rax
	addq $8, %rax
	# LowerStore(120:3).9: mov ^11, (^21)
	movq %rdx, (%rax)
	# MovePhi: ^21 -> ^29
	movq %rax, %r12
	# MovePhi: ^11 -> ^30
	movq %rdx, %r13
	jmp .__main__M133
	.__main__M108:
	movl $1, %eax
	lock addl %eax, (%rbx)
	# LowerLoad(125:3).2: (^10) into ^24
	movq -144(%rbp), %rbx
	movq (%rbx), %rax
	# LowerGetelementptr(126:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^25, indices=0,0,0
	movq -136(%rbp), %rbx
	# LowerStore(127:3).9: mov ^9, (^25)
	movq %rcx, (%rbx)
	# LowerGetelementptr(128:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^26, indices=0,0,1,0
	movq -136(%rbp), %rbx
	addq $8, %rbx
	# LowerStore(129:3).9: mov ^11, (^26)
	movq %rdx, (%rbx)
	# LowerIcmp(130:3): ^24 vs. intlike 0
	cmpq $0, %rax
	sete %cl
	cmpb $0, %cl
	jne .__main__M125
	jmp .__main__M128
	.__main__M125:
	# MovePhi: ^26 -> ^73 (in new block 138 whose parent is 22)
	movq %rbx, -96(%rbp)
	jmp .__main__M274
	.__main__M128:
	# MovePhi: ^26 -> ^29 (in new block 136 whose parent is 22)
	movq %rbx, %r12
	# MovePhi: ^24 -> ^30
	movq %rax, %r13
	.__main__M133:
	# LowerGetelementptr(136:3): struct-type: %"class.std::_Sp_counted_base"* -> ^31, indices=0,1
	movq %r13, %rbx
	addq $8, %rbx
	# LowerLoad(137:3).4: __libc_single_threaded into ^32
	movq __libc_single_threaded@GOTPCREL(%rip), %rax
	movb (%rax), %al
	# LowerIcmp(138:3): ^32 vs. intlike 0
	cmpb $0, %al
	sete %al
	cmpb $0, %al
	jne .__main__M150
	.__main__M143:
	# LowerLoad(142:3).2: (^31) into ^35
	movl (%rbx), %eax
	movl %eax, %ecx
	addl $1, %ecx
	# LowerStore(144:3).9: mov ^36, (^31)
	movl %ecx, (%rbx)
	jmp .__main__M159
	.__main__M150:
	movl $1, %eax
	lock addl %eax, (%rbx)
	# LowerLoad(149:3).4: __libc_single_threaded into ^39
	movq __libc_single_threaded@GOTPCREL(%rip), %rax
	movb (%rax), %al
	# LowerIcmp(150:3): ^39 vs. intlike 0
	cmpb $0, %al
	sete %al
	cmpb $0, %al
	jne .__main__M168
	.__main__M159:
	# LowerLoad(154:3).2: (^31) into ^42
	movl (%rbx), %eax
	movl %eax, %ecx
	addl $-1, %ecx
	# LowerStore(156:3).9: mov ^43, (^31)
	movl %ecx, (%rbx)
	# MovePhi: ^42 -> ^47
	movl %eax, %r14d
	jmp .__main__M173
	.__main__M168:
	movl $-1, %eax
	lock addl %eax, (%rbx)
	# MovePhi: ^45 -> ^47
	movl %eax, %r14d
	.__main__M173:
	# LowerIcmp(165:3): ^47 vs. intlike 1
	cmpl $1, %r14d
	sete %al
	cmpb $0, %al
	jne .__main__M177
	jmp .__main__M265
	.__main__M177:
	movq %r13, %rbx
	# LowerLoad(170:3).2: (^50) into ^51
	movq (%rbx), %rax
	# LowerGetelementptr(171:3): struct-type: void (%"class.std::_Sp_counted_base"*) *** -> ^52, indices=2
	movq %rax, %rcx
	addq $16, %rcx
	# LowerLoad(172:3).2: (^52) into ^53
	movq (%rcx), %rax
	# SetupCalls(173:3): move argument %"class.std::_Sp_counted_base"* ^30
	movq %r13, %rdi
	# SetupCalls(173:3): jump to function operand ^53
	callq *%rax
	# LowerGetelementptr(174:3): struct-type: %"class.std::_Sp_counted_base"* -> ^54, indices=0,2
	movq %r13, %rax
	addq $12, %rax
	# LowerLoad(175:3).4: __libc_single_threaded into ^55
	movq __libc_single_threaded@GOTPCREL(%rip), %rcx
	movb (%rcx), %cl
	# LowerIcmp(176:3): ^55 vs. intlike 0
	cmpb $0, %cl
	sete %cl
	cmpb $0, %cl
	jne .__main__M226
	.__main__M217:
	# LowerLoad(180:3).2: (^54) into ^58
	movl (%rax), %ecx
	movl %ecx, %edx
	addl $-1, %edx
	# LowerStore(182:3).9: mov ^59, (^54)
	movl %edx, (%rax)
	# MovePhi: ^58 -> ^63
	movl %ecx, %r15d
	jmp .__main__M231
	.__main__M226:
	movl $-1, %ecx
	lock addl %ecx, (%rax)
	# MovePhi: ^61 -> ^63
	movl %ecx, %r15d
	.__main__M231:
	# LowerIcmp(191:3): ^63 vs. intlike 1
	cmpl $1, %r15d
	sete %al
	cmpb $0, %al
	jne .__main__M235
	jmp .__main__M265
	.__main__M235:
	# LowerLoad(195:3).2: (^50) into ^66
	movq (%rbx), %rcx
	# LowerGetelementptr(196:3): struct-type: void (%"class.std::_Sp_counted_base"*) *** -> ^67, indices=3
	movq %rcx, %rax
	addq $24, %rax
	# LowerLoad(197:3).2: (^67) into ^68
	movq (%rax), %rbx
	# SetupCalls(198:3): move argument %"class.std::_Sp_counted_base"* ^30
	movq %r13, %rdi
	# SetupCalls(198:3): jump to function operand ^68
	callq *%rbx
	.__main__M265:
	# LowerLoad(202:3).2: (^29) into ^70
	movq (%r12), %rax
	# LowerIcmp(203:3): ^70 vs. intlike 0
	cmpq $0, %rax
	sete %al
	cmpb $0, %al
	jne .__main__M277
	.__main__M271:
	# MovePhi: ^29 -> ^73 (in new block 137 whose parent is 69)
	movq %r12, -96(%rbp)
	.__main__M274:
	# MovePhi: intlike -> ^125
	movl $0, -112(%rbp)
	jmp .__main__M472
	.__main__M277:
	# LowerLoad(211:3).2: (^10) into ^75
	movq -144(%rbp), %rax
	movq (%rax), %rbx
	# LowerIcmp(212:3): ^75 vs. intlike 0
	cmpq $0, %rbx
	sete %al
	cmpb $0, %al
	jne .__main__M399
	.__main__M283:
	# LowerGetelementptr(216:3): struct-type: %"class.std::_Sp_counted_base"* -> ^78, indices=0,1
	movq %rbx, %rax
	addq $8, %rax
	# LowerLoad(217:3).4: __libc_single_threaded into ^79
	movq __libc_single_threaded@GOTPCREL(%rip), %rcx
	movb (%rcx), %cl
	# LowerIcmp(218:3): ^79 vs. intlike 0
	cmpb $0, %cl
	sete %cl
	cmpb $0, %cl
	jne .__main__M302
	.__main__M293:
	# LowerLoad(222:3).2: (^78) into ^82
	movl (%rax), %ecx
	movl %ecx, %edx
	addl $-1, %edx
	# LowerStore(224:3).9: mov ^83, (^78)
	movl %edx, (%rax)
	# MovePhi: ^82 -> ^87
	movl %ecx, -104(%rbp)
	jmp .__main__M307
	.__main__M302:
	movl $-1, %ecx
	lock addl %ecx, (%rax)
	# MovePhi: ^85 -> ^87
	movl %ecx, -104(%rbp)
	.__main__M307:
	# LowerIcmp(233:3): ^87 vs. intlike 1
	cmpl $1, -104(%rbp)
	sete %al
	cmpb $0, %al
	jne .__main__M311
	jmp .__main__M399
	.__main__M311:
	movq %rbx, %r12
	# LowerLoad(238:3).2: (^90) into ^91
	movq (%r12), %rax
	# LowerGetelementptr(239:3): struct-type: void (%"class.std::_Sp_counted_base"*) *** -> ^92, indices=2
	movq %rax, %rcx
	addq $16, %rcx
	# LowerLoad(240:3).2: (^92) into ^93
	movq (%rcx), %rax
	# SetupCalls(241:3): move argument %"class.std::_Sp_counted_base"* ^75
	movq %rbx, %rdi
	# SetupCalls(241:3): jump to function operand ^93
	callq *%rax
	# LowerGetelementptr(242:3): struct-type: %"class.std::_Sp_counted_base"* -> ^94, indices=0,2
	movq %rbx, %rax
	addq $12, %rax
	# LowerLoad(243:3).4: __libc_single_threaded into ^95
	movq __libc_single_threaded@GOTPCREL(%rip), %rcx
	movb (%rcx), %cl
	# LowerIcmp(244:3): ^95 vs. intlike 0
	cmpb $0, %cl
	sete %cl
	cmpb $0, %cl
	jne .__main__M360
	.__main__M351:
	# LowerLoad(248:3).2: (^94) into ^98
	movl (%rax), %ecx
	movl %ecx, %edx
	addl $-1, %edx
	# LowerStore(250:3).9: mov ^99, (^94)
	movl %edx, (%rax)
	# MovePhi: ^98 -> ^103
	movl %ecx, -88(%rbp)
	jmp .__main__M365
	.__main__M360:
	movl $-1, %ecx
	lock addl %ecx, (%rax)
	# MovePhi: ^101 -> ^103
	movl %ecx, -88(%rbp)
	.__main__M365:
	# LowerIcmp(259:3): ^103 vs. intlike 1
	cmpl $1, -88(%rbp)
	sete %al
	cmpb $0, %al
	jne .__main__M369
	jmp .__main__M399
	.__main__M369:
	# LowerLoad(263:3).2: (^90) into ^106
	movq (%r12), %rax
	# LowerGetelementptr(264:3): struct-type: void (%"class.std::_Sp_counted_base"*) *** -> ^107, indices=3
	movq %rax, %rcx
	addq $24, %rcx
	# LowerLoad(265:3).2: (^107) into ^108
	movq (%rcx), %rax
	# SetupCalls(266:3): move argument %"class.std::_Sp_counted_base"* ^75
	movq %rbx, %rdi
	# SetupCalls(266:3): jump to function operand ^108
	callq *%rax
	.__main__M399:
	# LowerGetelementptr(270:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^110, indices=0,1
	movq -128(%rbp), %rax
	addq $32, %rax
	# LowerGetelementptr(271:3): struct-type: %"struct.std::filesystem::__cxx11::path::_List"* -> ^111, indices=0,0,0,0,0,0,0,0
	movq %rax, %r12
	# LowerLoad(272:3).2: (^111) into ^112
	movq (%r12), %rcx
	# LowerIcmp(273:3): ^112 vs. intlike 0
	cmpq $0, %rcx
	sete %bl
	cmpb $0, %bl
	jne .__main__M435
	.__main__M410:
	movq %rax, %rbx
	# Clobber %rcx
	movq %rcx, -152(%rbp)
	# Clobber %rax
	movq %rax, -160(%rbp)
	# SetupCalls(278:3): move argument %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* ^115
	movq %rbx, %rdi
	# SetupCalls(278:3): move argument %"struct.std::filesystem::__cxx11::path::_List::_Impl"* ^112
	movq %rcx, %rsi
	callq _ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@PLT
	# Unclobber %rax
	movq -160(%rbp), %rax
	# Unclobber %rcx
	movq -152(%rbp), %rcx
	.__main__M435:
	# LowerStore(282:3).3: mov $imm, ^111
	movq $0, (%r12)
	# LowerGetelementptr(283:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^117, indices=0,0,0,0
	movq -128(%rbp), %rax
	# LowerLoad(284:3).2: (^117) into ^118
	movq (%rax), %rbx
	# LowerGetelementptr(285:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^119, indices=0,0,2
	movq -128(%rbp), %rax
	addq $16, %rax
	movq %rax, %rcx
	# LowerIcmp(287:3): ^118 vs. operand ^120
	cmpq %rcx, %rbx
	sete %al
	cmpb $0, %al
	jne .__main__M471
	.__main__M449:
	# SetupCalls(291:3): move argument i8* ^118
	movq %rbx, %rdi
	callq _ZdlPv@PLT
	.__main__M471:
	movq $0, %rax
	movq -248(%rbp), %r15
	movq -232(%rbp), %r14
	movq -192(%rbp), %r13
	movq -184(%rbp), %r12
	movq -168(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq
	.__main__M472:
	# SetupCalls(299:3): move argument %"class.std::filesystem::__cxx11::directory_iterator"* ^4
	movq -136(%rbp), %rdi
	callq _ZNKSt10filesystem7__cxx1118directory_iteratordeEv@PLT
	# SetupCalls(299:3): move result from %rax
	movq %rax, %r12
	movl -112(%rbp), %ebx
	addl $1, %ebx
	# SetupCalls(301:3): move argument %"class.std::basic_ostream"* @_ZSt4cerr
	movq _ZSt4cerr@GOTPCREL(%rip), %rdi
	# SetupCalls(301:3): move argument i32 ^125
	movl -112(%rbp), %esi
	callq _ZNSolsEi@PLT
	# SetupCalls(301:3): move result from %rax
	movq %rax, %r13
	# SetupCalls(302:3): move argument %"class.std::basic_ostream"* ^128
	movq %r13, %rdi
	# SetupCalls(302:3): move argument i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
	movq .str.1@GOTPCREL(%rip), %rsi
	# SetupCalls(302:3): move argument i64 2
	movq $2, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(302:3): move result from %rax
	movq %rax, %rax
	# LowerGetelementptr(303:3): struct-type: %"class.std::filesystem::__cxx11::directory_entry"* -> ^130, indices=0,0
	movq %r12, %rax
	# SetupCalls(304:3): move argument %"class.std::basic_ostream"* ^128
	movq %r13, %rdi
	# SetupCalls(304:3): move argument %"class.std::filesystem::__cxx11::path"* ^130
	movq %rax, %rsi
	callq _ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE
	# SetupCalls(304:3): move result from %rax
	movq %rax, %r12
	# LowerStore(305:3).3: mov $imm, ^1
	movq -120(%rbp), %rax
	movb $10, (%rax)
	# SetupCalls(306:3): move argument %"class.std::basic_ostream"* ^131
	movq %r12, %rdi
	# SetupCalls(306:3): move argument i8* ^1
	movq -120(%rbp), %rsi
	# SetupCalls(306:3): move argument i64 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(306:3): move result from %rax
	movq %rax, %rax
	# SetupCalls(307:3): move argument %"class.std::filesystem::__cxx11::directory_iterator"* ^4
	movq -136(%rbp), %rdi
	callq _ZNSt10filesystem7__cxx1118directory_iteratorppEv@PLT
	# SetupCalls(307:3): move result from %rax
	movq %rax, %rax
	# LowerLoad(308:3).2: (^73) into ^134
	movq -96(%rbp), %rax
	movq (%rax), %rcx
	# LowerIcmp(309:3): ^134 vs. intlike 0
	cmpq $0, %rcx
	sete %al
	cmpb $0, %al
	jne .__main__M277
	.__main__M634:
	# MovePhi: ^127 -> ^125 (in new block 139 whose parent is 124)
	movl %ebx, -112(%rbp)
	jmp .__main__M472


.section .init_array
.p2align 3
.quad _GLOBAL__sub_I_diriter.cpp
