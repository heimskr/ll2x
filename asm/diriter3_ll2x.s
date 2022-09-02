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
.str.dbgp:
.ascii "[%p]\n\x00"

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
	# LowerIcmp(1062:3): %rdi vs. operand %rsi
	cmpq %rsi, %rdi
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M257
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M4:
	# LowerGetelementptr(1066:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^5, indices=0,1
	movq %rsi, %rax
	addq $8, %rax
	# LowerLoad(1067:3).2: (^5) into ^6
	# Fixing movq (%rax), -16(%rbp)
	pushq %r15
	movq (%rax), %r15
	movq %r15, -16(%rbp)
	popq %r15
	# LowerGetelementptr(1068:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^7, indices=0,0,0
	movq %rdi, -24(%rbp)
	# LowerLoad(1069:3).2: (^7) into ^8
	movq -24(%rbp), %rbx
	movq (%rbx), %rax
	# LowerGetelementptr(1070:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^9, indices=0,2
	movq %rdi, %rbx
	addq $16, %rbx
	movq %rbx, %r13
	# LowerIcmp(1072:3): ^8 vs. operand ^10
	cmpq %r13, %rax
	sete %cl
	# LowerGetelementptr(1073:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^12, indices=0,2,0
	movq %rdi, %r14
	addq $16, %r14
	# LowerLoad(1074:3).2: (^12) into ^13
	movq (%r14), %rbx
	cmpq $0, %rcx
	movq $15, %r12
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___RC0
	movq %rbx, %r12
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___RC0:
	# LowerIcmp(1076:3): ^6 vs. operand ^14
	cmpq %r12, -16(%rbp)
	seta %bl
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M32
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M187
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M32:
	# LowerIcmp(1080:3): ^6 vs. intlike 0
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
	# SetupCalls(1084:3): move argument i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)
	movq .str.3@GOTPCREL(%rip), %rdi
	callq _ZSt20__throw_length_errorPKc@PLT
	# Unclobber %rsi
	movq -40(%rbp), %rsi
	# Unclobber %rdi
	movq -32(%rbp), %rdi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M58:
	movq %r12, %rbx
	shlq $1, %rbx
	# LowerIcmp(1089:3): ^6 vs. operand ^20
	cmpq %rbx, -16(%rbp)
	setb %al
	# LowerIcmp(1090:3): ^20 vs. intlike 9223372036854775807
	movabsq $9223372036854775807, %rcx
	cmpq %rcx, %rbx
	setb %cl
	cmpq $0, %rcx
	movq %rbx, %rcx
	movabsq $9223372036854775807, %rbx
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___RC1
	movq %rbx, %rcx
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___RC1:
	cmpq $0, %rax
	movq %rcx, %rbx
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___RC2
	movq -16(%rbp), %rbx
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___RC2:
	movq %rbx, %r12
	addq $1, %r12
	# LowerIcmp(1094:3): ^25 vs. intlike 0
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
	# SetupCalls(1102:3): move argument i64 ^25
	movq %r12, %rdi
	callq _Znwm@PLT
	# SetupCalls(1102:3): move result from %rax
	movq %rax, %r12
	# Unclobber %rsi
	movq -40(%rbp), %rsi
	# Unclobber %rdi
	movq -32(%rbp), %rdi
	# LowerLoad(1104:3).4: stderr into ^_err
	movq stderr@GOTPCREL(%rip), %rax
	movq (%rax), %rax
	# Clobber %rdi
	movq %rdi, -32(%rbp)
	# Clobber %rsi
	movq %rsi, -40(%rbp)
	# SetupCalls(1105:3): move argument %struct._IO_FILE* ^_err
	movq %rax, %rdi
	# SetupCalls(1105:3): move argument i8* @.str.dbgp
	movq .str.dbgp@GOTPCREL(%rip), %rsi
	# SetupCalls(1105:3): move argument i32 ^29
	movl %r12d, %edx
	movq $0, %rax
	callq fprintf@PLT
	# Unclobber %rsi
	movq -40(%rbp), %rsi
	# Unclobber %rdi
	movq -32(%rbp), %rdi
	# LowerLoad(1106:3).2: (^7) into ^30
	movq -24(%rbp), %rax
	movq (%rax), %rcx
	# LowerIcmp(1107:3): ^30 vs. operand ^10
	cmpq %r13, %rcx
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M180
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M158:
	# Clobber %rdi
	movq %rdi, -32(%rbp)
	# Clobber %rsi
	movq %rsi, -40(%rbp)
	# Clobber %rcx
	movq %rcx, -48(%rbp)
	# SetupCalls(1111:3): move argument i8* ^30
	movq %rcx, %rdi
	callq _ZdlPv@PLT
	# Unclobber %rcx
	movq -48(%rbp), %rcx
	# Unclobber %rsi
	movq -40(%rbp), %rsi
	# Unclobber %rdi
	movq -32(%rbp), %rdi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M180:
	# LowerStore(1115:3).9: mov ^29, (^7)
	movq -24(%rbp), %rax
	movq %r12, (%rax)
	# LowerStore(1116:3).9: mov ^24, (^12)
	movq %rbx, (%r14)
	# MovePhi: ^29 -> ^39
	movq %r12, %r15
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M202
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M187:
	# LowerIcmp(1120:3): ^6 vs. intlike 0
	cmpq $0, -16(%rbp)
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M194
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M191:
	# MovePhi: ^8 -> ^39 (in new block 53 whose parent is 34)
	movq %rax, %r15
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M202
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M194:
	# LowerGetelementptr(1124:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^37, indices=0,1
	movq %rdi, %rbx
	addq $8, %rbx
	# LowerStore(1125:3).3: mov $imm, ^37
	movq $0, (%rbx)
	# MovePhi: ^8 -> ^51
	movq %rax, -8(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M254
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M202:
	# LowerGetelementptr(1130:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^40, indices=0,0,0
	movq %rsi, %rax
	# LowerLoad(1131:3).2: (^40) into ^41
	movq (%rax), %rbx
	# LowerIcmp(1132:3): ^6 vs. intlike 1
	cmpq $1, -16(%rbp)
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M210
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M215
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M210:
	# LowerLoad(1136:3).2: (^41) into ^44
	movb (%rbx), %al
	# LowerStore(1137:3).9: mov ^44, (^39)
	movb %al, (%r15)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M241
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M215:
	# Clobber %rdi
	movq %rdi, -32(%rbp)
	# SetupCalls(1141:3): move argument i8* ^39
	movq %r15, %rdi
	# SetupCalls(1141:3): move argument i8* ^41
	movq %rbx, %rsi
	# SetupCalls(1141:3): move argument i64 ^6
	movq -16(%rbp), %rdx
	callq memcpy@PLT
	# Unclobber %rdi
	movq -32(%rbp), %rdi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M241:
	# LowerGetelementptr(1145:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^47, indices=0,1
	movq %rdi, %rax
	addq $8, %rax
	# LowerStore(1146:3).9: mov ^6, (^47)
	# Fixing movq -16(%rbp), (%rax)
	movq -16(%rbp), %r15
	movq %r15, (%rax)
	# LowerLoad(1147:3).2: (^7) into ^48
	movq -24(%rbp), %rax
	movq (%rax), %rbx
	# LowerGetelementptr(1148:3): pointer-type -> ^49
	movq -16(%rbp), %rax
	addq %rbx, %rax
	# MovePhi: ^49 -> ^51
	movq %rax, -8(%rbp)
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M254:
	# LowerStore(1153:3).3: mov $imm, ^51
	movq -8(%rbp), %rax
	movb $0, (%rax)
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M257:
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
	# SetupCalls(1168:3): move argument %"class.std::ios_base::Init"* @_ZStL8__ioinit
	movq _ZStL8__ioinit@GOTPCREL(%rip), %rdi
	callq _ZNSt8ios_base4InitC1Ev@PLT
	# SetupCalls(1169:3): move argument void (i8*) ** @_ZNSt8ios_base4InitD1Ev
	movq _ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	# SetupCalls(1169:3): move argument i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0)
	movq _ZStL8__ioinit@GOTPCREL(%rip), %rsi
	# SetupCalls(1169:3): move argument i8* @__dso_handle
	movq __dso_handle@GOTPCREL(%rip), %rdx
	callq __cxa_atexit@PLT
	# SetupCalls(1169:3): move result from %rax
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
	# LowerGetelementptr(929:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^6, indices=0,1
	movq %rdi, %rax
	addq $8, %rax
	# LowerLoad(930:3).2: (^6) into ^7
	movq (%rax), %rbx
	movq %rdx, %rax
	addq %rsi, %rax
	movq %rbx, %r12
	subq %rax, %r12
	movq %r8, %rax
	subq %rdx, %rax
	movq %rax, %r13
	addq %rbx, %r13
	# LowerGetelementptr(935:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^12, indices=0,0,0
	movq %rdi, -24(%rbp)
	# LowerLoad(936:3).2: (^12) into ^13
	movq -24(%rbp), %rbx
	movq (%rbx), %rax
	# LowerGetelementptr(937:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^14, indices=0,2
	movq %rdi, %rbx
	addq $16, %rbx
	movq %rbx, %r14
	# LowerIcmp(939:3): ^13 vs. operand ^15
	cmpq %r14, %rax
	sete %al
	# LowerGetelementptr(940:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^17, indices=0,2,0
	movq %rdi, %rbx
	addq $16, %rbx
	# LowerLoad(941:3).2: (^17) into ^18
	movq (%rbx), %rdi
	cmpq $0, %rax
	movq $15, %r15
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__RC0
	movq %rdi, %r15
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__RC0:
	# LowerIcmp(943:3): ^11 vs. intlike 0
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
	# SetupCalls(947:3): move argument i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)
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
	# LowerIcmp(951:3): ^11 vs. operand ^19
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
	# LowerIcmp(956:3): ^11 vs. operand ^25
	cmpq %rax, %r13
	setb %dil
	cmpb $0, %dil
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M75
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M72:
	# MovePhi: ^11 -> ^31 (in new block 74 whose parent is 24)
	movq %r13, -8(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M86
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M75:
	# LowerIcmp(960:3): ^25 vs. intlike 9223372036854775807
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
	# LowerIcmp(967:3): ^32 vs. intlike 0
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
	# SetupCalls(975:3): move argument i64 ^32
	movq %r13, %rdi
	callq _Znwm@PLT
	# SetupCalls(975:3): move result from %rax
	movq %rax, %r13
	# Unclobber %r8
	movq -56(%rbp), %r8
	# Unclobber %rcx
	movq -48(%rbp), %rcx
	# Unclobber %rdx
	movq -40(%rbp), %rdx
	# Unclobber %rsi
	movq -32(%rbp), %rsi
	# LowerLoad(977:3).4: stderr into ^_err
	movq stderr@GOTPCREL(%rip), %rax
	movq (%rax), %rax
	# Clobber %rsi
	movq %rsi, -32(%rbp)
	# Clobber %rdx
	movq %rdx, -40(%rbp)
	# Clobber %rcx
	movq %rcx, -48(%rbp)
	# Clobber %r8
	movq %r8, -56(%rbp)
	# SetupCalls(978:3): move argument %struct._IO_FILE* ^_err
	movq %rax, %rdi
	# SetupCalls(978:3): move argument i8* @.str.dbgp
	movq .str.dbgp@GOTPCREL(%rip), %rsi
	# SetupCalls(978:3): move argument i32 ^36
	movl %r13d, %edx
	movq $0, %rax
	callq fprintf@PLT
	# Unclobber %r8
	movq -56(%rbp), %r8
	# Unclobber %rcx
	movq -48(%rbp), %rcx
	# Unclobber %rdx
	movq -40(%rbp), %rdx
	# Unclobber %rsi
	movq -32(%rbp), %rsi
	# LowerIcmp(979:3): %rsi vs. intlike 0
	cmpq $0, %rsi
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M205
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M168:
	# LowerLoad(983:3).2: (^12) into ^39
	movq -24(%rbp), %rax
	movq (%rax), %r9
	# LowerIcmp(984:3): %rsi vs. intlike 1
	cmpq $1, %rsi
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M174
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M179
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M174:
	# LowerLoad(988:3).2: (^39) into ^42
	movb (%r9), %al
	# LowerStore(989:3).9: mov ^42, (^36)
	movb %al, (%r13)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M205
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M179:
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
	# SetupCalls(993:3): move argument i8* ^36
	movq %r13, %rdi
	# SetupCalls(993:3): move argument i8* ^39
	movq %r9, %rsi
	# SetupCalls(993:3): move argument i64 %rsi
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
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M205:
	# LowerIcmp(997:3): %rcx vs. intlike 0
	cmpq $0, %rcx
	setne %al
	# LowerIcmp(998:3): %r8 vs. intlike 0
	cmpq $0, %r8
	setne %dil
	movb %al, %r9b
	andb %dil, %r9b
	cmpb $0, %r9b
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M214
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M252
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M214:
	# LowerGetelementptr(1003:3): pointer-type -> ^49
	movq %rsi, %rax
	addq %r13, %rax
	# LowerIcmp(1004:3): %r8 vs. intlike 1
	cmpq $1, %r8
	sete %dil
	cmpb $0, %dil
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M221
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M226
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M221:
	# LowerLoad(1008:3).2: (%rcx) into ^52
	movb (%rcx), %dil
	# LowerStore(1009:3).9: mov ^52, (^49)
	movb %dil, (%rax)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M252
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M226:
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
	# SetupCalls(1013:3): move argument i8* ^49
	movq %rax, %rdi
	# SetupCalls(1013:3): move argument i8* %rcx
	# Semiunclobber %rcx into %rsi
	movq -48(%rbp), %rsi
	# SetupCalls(1013:3): move argument i64 %r8
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
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M252:
	# LowerIcmp(1017:3): ^9 vs. intlike 0
	cmpq $0, %r12
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M256
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M261
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M256:
	# LowerLoad(1021:3).2: (^12) into ^57
	movq -24(%rbp), %rax
	movq (%rax), %rcx
	# MovePhi: ^57 -> ^69
	movq %rcx, -16(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M314
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M261:
	# LowerGetelementptr(1025:3): pointer-type -> ^59
	movq %rsi, %rax
	addq %r13, %rax
	# LowerGetelementptr(1026:3): pointer-type -> ^60
	movq %r8, %rcx
	addq %rax, %rcx
	# LowerLoad(1027:3).2: (^12) into ^61
	movq -24(%rbp), %rax
	movq (%rax), %r15
	# LowerGetelementptr(1028:3): pointer-type -> ^62
	movq %rsi, %rax
	addq %r15, %rax
	# LowerGetelementptr(1029:3): pointer-type -> ^63
	movq %rdx, %r8
	addq %rax, %r8
	# LowerIcmp(1030:3): ^9 vs. intlike 1
	cmpq $1, %r12
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M279
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M286
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M279:
	# LowerLoad(1034:3).2: (^63) into ^66
	movb (%r8), %al
	# LowerStore(1035:3).9: mov ^66, (^60)
	movb %al, (%rcx)
	# MovePhi: ^61 -> ^69
	movq %r15, -16(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M314
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M286:
	# Clobber %rcx
	movq %rcx, -48(%rbp)
	# Clobber %r8
	movq %r8, -56(%rbp)
	# SetupCalls(1039:3): move argument i8* ^60
	movq %rcx, %rdi
	# SetupCalls(1039:3): move argument i8* ^63
	movq %r8, %rsi
	# SetupCalls(1039:3): move argument i64 ^9
	movq %r12, %rdx
	callq memcpy@PLT
	# Unclobber %r8
	movq -56(%rbp), %r8
	# Unclobber %rcx
	movq -48(%rbp), %rcx
	# MovePhi: ^61 -> ^69
	movq %r15, -16(%rbp)
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M314:
	# LowerIcmp(1044:3): ^69 vs. operand ^15
	cmpq %r14, -16(%rbp)
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M340
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M318:
	# SetupCalls(1048:3): move argument i8* ^69
	movq -16(%rbp), %rdi
	callq _ZdlPv@PLT
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M340:
	# LowerStore(1052:3).9: mov ^36, (^12)
	movq -24(%rbp), %rax
	movq %r13, (%rax)
	# LowerStore(1053:3).9: mov ^31, (^17)
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
	# LowerGetelementptr(723:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^6, indices=0,1
	movq %rdi, -8(%rbp)
	addq $8, -8(%rbp)
	# LowerLoad(724:3).2: (^6) into ^7
	movq -8(%rbp), %rax
	movq (%rax), %rbx
	movq %rdx, %rax
	movabsq $9223372036854775807, %r9
	addq %r9, %rax
	movq %rax, %r9
	subq %rbx, %r9
	# LowerIcmp(727:3): ^9 vs. operand %r8
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
	# SetupCalls(731:3): move argument i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0)
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
	# LowerGetelementptr(737:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^15, indices=0,0,0
	movq %rdi, %r14
	# LowerLoad(738:3).2: (^15) into ^16
	movq (%r14), %rax
	# LowerGetelementptr(739:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^17, indices=0,2
	movq %rdi, %r9
	addq $16, %r9
	movq %r9, %r10
	# LowerIcmp(741:3): ^16 vs. operand ^18
	cmpq %r10, %rax
	sete %r10b
	# LowerGetelementptr(742:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^20, indices=0,2,0
	movq %rdi, %r11
	addq $16, %r11
	# LowerLoad(743:3).2: (^20) into ^21
	movq (%r11), %r9
	cmpq $0, %r10
	movq $15, %r10
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__RC0
	movq %r9, %r10
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__RC0:
	# LowerIcmp(745:3): ^14 vs. operand ^22
	cmpq %r10, %r13
	seta %r9b
	cmpb $0, %r9b
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M449
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M63:
	# LowerGetelementptr(749:3): pointer-type -> ^25
	movq %rsi, %r12
	addq %rax, %r12
	movq %rdx, %rdi
	addq %rsi, %rdi
	movq %rbx, %r15
	subq %rdi, %r15
	# LowerIcmp(752:3): ^16 vs. operand %rcx
	cmpq %rcx, %rax
	seta %sil
	# LowerGetelementptr(753:3): pointer-type -> ^29
	movq %rbx, %rdi
	addq %rax, %rdi
	# LowerIcmp(754:3): ^29 vs. operand %rcx
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
	# LowerIcmp(759:3): ^27 vs. intlike 0
	cmpq $0, %r15
	sete %al
	# LowerIcmp(760:3): %r8 vs. operand %rdx
	cmpq %rdx, %r8
	sete %bl
	movb %bl, %sil
	orb %al, %sil
	cmpb $0, %sil
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M133
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M92:
	# LowerGetelementptr(765:3): pointer-type -> ^37
	movq %r8, %rax
	addq %r12, %rax
	# LowerGetelementptr(766:3): pointer-type -> ^38
	movq %rdx, %rbx
	addq %r12, %rbx
	# LowerIcmp(767:3): ^27 vs. intlike 1
	cmpq $1, %r15
	sete %dl
	cmpb $0, %dl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M102
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M107
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M102:
	# LowerLoad(771:3).2: (^38) into ^41
	movb (%rbx), %dl
	# LowerStore(772:3).9: mov ^41, (^37)
	movb %dl, (%rax)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M133
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M107:
	# Clobber %rcx
	movq %rcx, -40(%rbp)
	# Clobber %r8
	movq %r8, -48(%rbp)
	# Clobber %rax
	movq %rax, -56(%rbp)
	# SetupCalls(776:3): move argument i8* ^37
	movq %rax, %rdi
	# SetupCalls(776:3): move argument i8* ^38
	movq %rbx, %rsi
	# SetupCalls(776:3): move argument i64 ^27
	movq %r15, %rdx
	callq memmove@PLT
	# Unclobber %rax
	movq -56(%rbp), %rax
	# Unclobber %r8
	movq -48(%rbp), %r8
	# Unclobber %rcx
	movq -40(%rbp), %rcx
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M133:
	# LowerSwitch(780:3): begin conditions
	cmpq $0, %r8
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	cmpq $1, %r8
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M140
	# LowerSwitch(780:3): default
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M145
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M140:
	# LowerLoad(786:3).2: (%rcx) into ^45
	movb (%rcx), %al
	# LowerStore(787:3).9: mov ^45, (^25)
	movb %al, (%r12)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M145:
	# Clobber %rcx
	movq %rcx, -40(%rbp)
	# Clobber %r8
	movq %r8, -48(%rbp)
	# SetupCalls(791:3): move argument i8* ^25
	movq %r12, %rdi
	# SetupCalls(791:3): move argument i8* %rcx
	# Semiunclobber %rcx into %rsi
	movq -40(%rbp), %rsi
	# SetupCalls(791:3): move argument i64 %r8
	# Semiunclobber %r8 into %rdx
	movq -48(%rbp), %rdx
	callq memcpy@PLT
	# Unclobber %r8
	movq -48(%rbp), %r8
	# Unclobber %rcx
	movq -40(%rbp), %rcx
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M171:
	# LowerIcmp(795:3): %r8 vs. operand %rdx
	cmpq %rdx, %r8
	seta %al
	movq %r8, %rax
	addq $-1, %rax
	# LowerIcmp(797:3): ^49 vs. operand %rdx
	cmpq %rdx, %rax
	setb %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M180
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M215
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M180:
	# LowerIcmp(801:3): %r8 vs. intlike 1
	cmpq $1, %r8
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M184
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M189
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M184:
	# LowerLoad(805:3).2: (%rcx) into ^54
	movb (%rcx), %al
	# LowerStore(806:3).9: mov ^54, (^25)
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
	# SetupCalls(810:3): move argument i8* ^25
	movq %r12, %rdi
	# SetupCalls(810:3): move argument i8* %rcx
	# Semiunclobber %rcx into %rsi
	movq -40(%rbp), %rsi
	# SetupCalls(810:3): move argument i64 %r8
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
	# LowerIcmp(814:3): ^27 vs. intlike 0
	cmpq $0, %r15
	sete %al
	# LowerIcmp(815:3): %r8 vs. operand %rdx
	cmpq %rdx, %r8
	sete %bl
	movb %bl, %sil
	orb %al, %sil
	cmpb $0, %sil
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M265
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M224:
	# LowerGetelementptr(820:3): pointer-type -> ^61
	movq %r8, %rax
	addq %r12, %rax
	# LowerGetelementptr(821:3): pointer-type -> ^62
	movq %rdx, %rbx
	addq %r12, %rbx
	# LowerIcmp(822:3): ^27 vs. intlike 1
	cmpq $1, %r15
	sete %sil
	cmpb $0, %sil
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M234
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M239
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M234:
	# LowerLoad(826:3).2: (^62) into ^65
	movb (%rbx), %sil
	# LowerStore(827:3).9: mov ^65, (^61)
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
	# SetupCalls(831:3): move argument i8* ^61
	movq %rax, %rdi
	# SetupCalls(831:3): move argument i8* ^62
	movq %rbx, %rsi
	# SetupCalls(831:3): move argument i64 ^27
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
	# LowerGetelementptr(838:3): pointer-type -> ^69
	movq %r8, %rax
	addq %rcx, %rax
	# LowerGetelementptr(839:3): pointer-type -> ^70
	movq %rdx, %rbx
	addq %r12, %rbx
	# LowerIcmp(840:3): ^69 vs. operand ^70
	cmpq %rbx, %rax
	seta %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M311
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M276:
	# LowerIcmp(844:3): %r8 vs. intlike 1
	cmpq $1, %r8
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M280
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M285
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M280:
	# LowerLoad(848:3).2: (%rcx) into ^75
	movb (%rcx), %al
	# LowerStore(849:3).9: mov ^75, (^25)
	movb %al, (%r12)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M285:
	# Clobber %rcx
	movq %rcx, -40(%rbp)
	# Clobber %r8
	movq %r8, -48(%rbp)
	# SetupCalls(853:3): move argument i8* ^25
	movq %r12, %rdi
	# SetupCalls(853:3): move argument i8* %rcx
	# Semiunclobber %rcx into %rsi
	movq -40(%rbp), %rsi
	# SetupCalls(853:3): move argument i64 %r8
	# Semiunclobber %r8 into %rdx
	movq -48(%rbp), %rdx
	callq memmove@PLT
	# Unclobber %r8
	movq -48(%rbp), %r8
	# Unclobber %rcx
	movq -40(%rbp), %rcx
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M311:
	# LowerIcmp(857:3): ^70 vs. operand %rcx
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
	# LowerGetelementptr(866:3): pointer-type -> ^85
	movq %rbx, %rax
	addq %r12, %rax
	# LowerIcmp(867:3): %r8 vs. intlike 1
	cmpq $1, %r8
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M330
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M335
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M330:
	# LowerLoad(871:3).2: (^85) into ^88
	movb (%rax), %bl
	# LowerStore(872:3).9: mov ^88, (^25)
	movb %bl, (%r12)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M335:
	# Clobber %r8
	movq %r8, -48(%rbp)
	# Clobber %rax
	movq %rax, -56(%rbp)
	# SetupCalls(876:3): move argument i8* ^25
	movq %r12, %rdi
	# SetupCalls(876:3): move argument i8* ^85
	movq %rax, %rsi
	# SetupCalls(876:3): move argument i64 %r8
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
	# LowerSwitch(883:3): begin conditions
	cmpq $1, %r15
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M372
	cmpq $0, %r15
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M403
	# LowerSwitch(883:3): default
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M377
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M372:
	# LowerLoad(889:3).2: (%rcx) into ^95
	movb (%rcx), %al
	# LowerStore(890:3).9: mov ^95, (^25)
	movb %al, (%r12)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M403
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M377:
	# Clobber %rcx
	movq %rcx, -40(%rbp)
	# Clobber %r8
	movq %r8, -48(%rbp)
	# SetupCalls(894:3): move argument i8* ^25
	movq %r12, %rdi
	# SetupCalls(894:3): move argument i8* %rcx
	# Semiunclobber %rcx into %rsi
	movq -40(%rbp), %rsi
	# SetupCalls(894:3): move argument i64 ^93
	movq %r15, %rdx
	callq memmove@PLT
	# Unclobber %r8
	movq -48(%rbp), %r8
	# Unclobber %rcx
	movq -40(%rbp), %rcx
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M403:
	# LowerGetelementptr(898:3): pointer-type -> ^98
	movq %r15, %rbx
	addq %r12, %rbx
	# LowerGetelementptr(899:3): pointer-type -> ^99
	movq %r8, %rcx
	addq %r12, %rcx
	movq %r8, %rax
	subq %r15, %rax
	# LowerSwitch(901:3): begin conditions
	cmpq $1, %rax
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M418
	cmpq $0, %rax
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	# LowerSwitch(901:3): default
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M423
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M418:
	# LowerLoad(907:3).2: (^99) into ^102
	movb (%rcx), %al
	# LowerStore(908:3).9: mov ^102, (^98)
	movb %al, (%rbx)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M423:
	# Clobber %rcx
	movq %rcx, -40(%rbp)
	# Clobber %rax
	movq %rax, -56(%rbp)
	# SetupCalls(912:3): move argument i8* ^98
	movq %rbx, %rdi
	# SetupCalls(912:3): move argument i8* ^99
	movq %rcx, %rsi
	# SetupCalls(912:3): move argument i64 ^100
	movq %rax, %rdx
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
	# SetupCalls(916:3): move argument %"class.std::__cxx11::basic_string"* %rdi
	# Semiunclobber %rdi into %rdi
	movq -16(%rbp), %rdi
	# SetupCalls(916:3): move argument i64 %rsi
	# Semiunclobber %rsi into %rsi
	movq -24(%rbp), %rsi
	# SetupCalls(916:3): move argument i64 %rdx
	# Semiunclobber %rdx into %rdx
	movq -32(%rbp), %rdx
	# SetupCalls(916:3): move argument i8* %rcx
	# Semiunclobber %rcx into %rcx
	movq -40(%rbp), %rcx
	# SetupCalls(916:3): move argument i64 %r8
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
	# LowerStore(920:3).9: mov ^14, (^6)
	movq -8(%rbp), %rax
	movq %r13, (%rax)
	# LowerLoad(921:3).2: (^15) into ^106
	movq (%r14), %rax
	# LowerGetelementptr(922:3): pointer-type -> ^107
	movq %r13, %rbx
	addq %rax, %rbx
	# LowerStore(923:3).3: mov $imm, ^107
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
	# LowerAlloca(524:3): size = 1, type = i8*, var = ^3
	# Fixing leaq -1(%rbp), -432(%rbp)
	leaq -1(%rbp), %r15
	movq %r15, -432(%rbp)
	# LowerAlloca(525:3): size = 1, type = i8*, var = ^4
	# Fixing leaq -2(%rbp), -448(%rbp)
	leaq -2(%rbp), %r15
	movq %r15, -448(%rbp)
	# LowerAlloca(526:3): size = 1, type = i8*, var = ^5
	# Fixing leaq -3(%rbp), -456(%rbp)
	leaq -3(%rbp), %r15
	movq %r15, -456(%rbp)
	# LowerAlloca(527:3): size = 1, type = i8*, var = ^6
	leaq -4(%rbp), %rbx
	# LowerAlloca(528:3): size = 376, type = %"class.std::__cxx11::basic_ostringstream"*, var = ^7
	# Fixing leaq -384(%rbp), -464(%rbp)
	leaq -384(%rbp), %r15
	movq %r15, -464(%rbp)
	# LowerAlloca(529:3): size = 32, type = %"class.std::__cxx11::basic_string"*, var = ^8
	# Fixing leaq -416(%rbp), -472(%rbp)
	leaq -416(%rbp), %r15
	movq %r15, -472(%rbp)
	# Fixing movq -464(%rbp), -480(%rbp)
	movq -464(%rbp), %r15
	movq %r15, -480(%rbp)
	# LowerGetelementptr(531:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^10, indices=0,2
	movq -464(%rbp), %r12
	addq $112, %r12
	# LowerGetelementptr(532:3): struct-type: %"class.std::basic_ios"* -> ^11, indices=0,0
	movq %r12, %rax
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# Clobber %rsi
	movq %rsi, -536(%rbp)
	# SetupCalls(533:3): move argument %"class.std::ios_base"* ^11
	movq %rax, %rdi
	callq _ZNSt8ios_baseC2Ev@PLT
	# Unclobber %rsi
	movq -536(%rbp), %rsi
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	# LowerGetelementptr(534:3): struct-type: %"class.std::basic_ios"* -> ^12, indices=0,0,0
	movq %r12, %r13
	movq _ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(535:3).9: mov ^132, (^12)
	movq %rax, (%r13)
	# LowerGetelementptr(536:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^13, indices=0,2,1
	movq -464(%rbp), %rax
	addq $112, %rax
	addq $216, %rax
	# LowerStore(537:3).3: mov $imm, ^13
	movq $0, (%rax)
	# LowerGetelementptr(538:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^14, indices=0,2,2
	movq -464(%rbp), %rax
	addq $112, %rax
	addq $224, %rax
	# LowerStore(539:3).3: mov $imm, ^14
	movb $0, (%rax)
	# LowerGetelementptr(540:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^15, indices=0,2,3
	movq -464(%rbp), %rax
	addq $112, %rax
	addq $225, %rax
	# LowerStore(541:3).3: mov $imm, ^15
	movb $0, (%rax)
	# LowerGetelementptr(542:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^16, indices=0,2,4
	movq -464(%rbp), %rax
	addq $112, %rax
	addq $232, %rax
	movq %rax, %rcx
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# Clobber %rsi
	movq %rsi, -536(%rbp)
	# SetupCalls(544:3): move argument i8* ^17
	movq %rcx, %rdi
	# SetupCalls(544:3): move argument i32 0
	movq $0, %rsi
	# SetupCalls(544:3): move argument i64 32
	movq $32, %rdx
	callq memset@PLT
	# Unclobber %rsi
	movq -536(%rbp), %rsi
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	movq _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rcx
	addq $8, %rcx
	# LowerLoad(545:3).2: (^133) into ^18
	movq (%rcx), %rax
	# LowerGetelementptr(546:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^19, indices=0,0,0
	# Fixing movq -464(%rbp), -488(%rbp)
	movq -464(%rbp), %r15
	movq %r15, -488(%rbp)
	# LowerStore(547:3).9: mov ^18, (^19)
	movq -488(%rbp), %rcx
	movq %rax, (%rcx)
	movq _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rcx
	addq $16, %rcx
	# LowerLoad(548:3).2: (^134) into ^20
	movq (%rcx), %rdx
	movq -464(%rbp), %r12
	# LowerGetelementptr(550:3): struct-type: i32 () *** -> ^22, indices=-3
	movq %rax, %rcx
	addq $-24, %rcx
	movq %rcx, %r8
	# LowerLoad(552:3).2: (^23) into ^24
	movq (%r8), %rax
	# LowerGetelementptr(553:3): pointer-type -> ^25
	movq %rax, %rcx
	addq -480(%rbp), %rcx
	movq %rcx, %rax
	# LowerStore(555:3).9: mov ^20, (^26)
	movq %rdx, (%rax)
	# LowerLoad(556:3).2: (^21) into ^27
	movq (%r12), %rax
	# LowerGetelementptr(557:3): struct-type: i8* -> ^28, indices=-24
	movq %rax, %rcx
	addq $-24, %rcx
	movq %rcx, %rax
	# LowerLoad(559:3).2: (^29) into ^30
	movq (%rax), %rcx
	# LowerGetelementptr(560:3): pointer-type -> ^31
	movq %rcx, %rax
	addq -480(%rbp), %rax
	movq %rax, %rcx
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# Clobber %rsi
	movq %rsi, -536(%rbp)
	# SetupCalls(562:3): move argument %"class.std::basic_ios"* ^32
	movq %rcx, %rdi
	# SetupCalls(562:3): move argument %"class.std::basic_streambuf"* null
	movq $0, %rsi
	callq _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
	# Unclobber %rsi
	movq -536(%rbp), %rsi
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	movq _ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rcx
	addq $24, %rcx
	# LowerStore(563:3).9: mov ^135, (^19)
	movq -488(%rbp), %rax
	movq %rcx, (%rax)
	movq _ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $64, %rax
	# LowerStore(564:3).9: mov ^136, (^12)
	movq %rax, (%r13)
	# LowerGetelementptr(565:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^33, indices=0,1
	movq -464(%rbp), %r13
	addq $8, %r13
	# LowerGetelementptr(566:3): struct-type: %"class.std::__cxx11::basic_stringbuf"* -> ^34, indices=0,0,0
	movq %r13, %r14
	movq _ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(567:3).9: mov ^137, (^34)
	movq %rax, (%r14)
	# LowerGetelementptr(568:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^35, indices=0,1,0,1
	movq -464(%rbp), %rax
	addq $8, %rax
	addq $8, %rax
	# LowerGetelementptr(569:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^36, indices=0,1,0,7
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
	# SetupCalls(571:3): move argument i8* ^37
	movq %rcx, %rdi
	# SetupCalls(571:3): move argument i32 0
	movq $0, %rsi
	# SetupCalls(571:3): move argument i64 48
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
	# SetupCalls(572:3): move argument %"class.std::locale"* ^36
	movq -496(%rbp), %rdi
	callq _ZNSt6localeC1Ev@PLT
	# Unclobber %rsi
	movq -536(%rbp), %rsi
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	movq _ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(573:3).9: mov ^138, (^34)
	movq %rax, (%r14)
	# LowerGetelementptr(574:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^38, indices=0,1,1
	movq -464(%rbp), %rax
	addq $8, %rax
	addq $64, %rax
	# LowerStore(575:3).3: mov $imm, ^38
	movl $16, (%rax)
	# LowerGetelementptr(576:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^39, indices=0,1,2
	# Fixing movq -464(%rbp), -504(%rbp)
	movq -464(%rbp), %r15
	movq %r15, -504(%rbp)
	addq $8, -504(%rbp)
	addq $72, -504(%rbp)
	# LowerGetelementptr(577:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^40, indices=0,1,2,2
	movq -464(%rbp), %rax
	addq $8, %rax
	addq $72, %rax
	addq $16, %rax
	movq -504(%rbp), %rcx
	# LowerStore(579:3).9: mov ^40, (^41)
	movq %rax, (%rcx)
	# LowerGetelementptr(580:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^42, indices=0,1,2,1
	movq -464(%rbp), %rcx
	addq $8, %rcx
	addq $72, %rcx
	addq $8, %rcx
	# LowerStore(581:3).3: mov $imm, ^42
	movq $0, (%rcx)
	movq %rax, -512(%rbp)
	# LowerStore(583:3).3: mov $imm, ^43
	movq -512(%rbp), %rax
	movb $0, (%rax)
	# LowerLoad(584:3).2: (^21) into ^44
	movq (%r12), %rax
	# LowerGetelementptr(585:3): struct-type: i8* -> ^45, indices=-24
	movq %rax, %rcx
	addq $-24, %rcx
	movq %rcx, %rax
	# LowerLoad(587:3).2: (^46) into ^47
	movq (%rax), %rcx
	# LowerGetelementptr(588:3): pointer-type -> ^48
	movq %rcx, %rax
	addq -480(%rbp), %rax
	movq %rax, %rcx
	# LowerGetelementptr(590:3): struct-type: %"class.std::__cxx11::basic_stringbuf"* -> ^50, indices=0,0
	movq %r13, %rax
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# Clobber %rsi
	movq %rsi, -536(%rbp)
	# SetupCalls(591:3): move argument %"class.std::basic_ios"* ^49
	movq %rcx, %rdi
	# SetupCalls(591:3): move argument %"class.std::basic_streambuf"* ^50
	movq %rax, %rsi
	callq _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
	# Unclobber %rsi
	movq -536(%rbp), %rsi
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	# Fixing movq -464(%rbp), -520(%rbp)
	movq -464(%rbp), %r15
	movq %r15, -520(%rbp)
	# LowerGetelementptr(593:3): struct-type: %"struct.std::__detail::_Quoted_string"* -> ^52, indices=0,1
	movq %rsi, %r12
	addq $8, %r12
	# LowerLoad(594:3).2: (^52) into ^53
	movb (%r12), %al
	# LowerStore(595:3).9: mov ^53, (^6)
	movb %al, (%rbx)
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# Clobber %rsi
	movq %rsi, -536(%rbp)
	# SetupCalls(596:3): move argument %"class.std::basic_ostream"* ^51
	movq -520(%rbp), %rdi
	# SetupCalls(596:3): move argument i8* ^6
	movq %rbx, %rsi
	# SetupCalls(596:3): move argument i64 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(596:3): move result from %rax
	movq %rax, %rax
	# Unclobber %rsi
	movq -536(%rbp), %rsi
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	# LowerGetelementptr(597:3): struct-type: %"struct.std::__detail::_Quoted_string"* -> ^55, indices=0,0
	movq %rsi, %rax
	# LowerLoad(598:3).2: (^55) into ^56
	movq (%rax), %rbx
	# LowerGetelementptr(599:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^57, indices=0,0,0
	movq %rbx, %rax
	# LowerLoad(600:3).2: (^57) into ^58
	movq (%rax), %rcx
	# LowerGetelementptr(601:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^59, indices=0,1
	movq %rbx, %rax
	addq $8, %rax
	# LowerLoad(602:3).2: (^59) into ^60
	movq (%rax), %rbx
	# LowerGetelementptr(603:3): pointer-type -> ^61
	movq %rbx, %r13
	addq %rcx, %r13
	# LowerIcmp(604:3): ^60 vs. intlike 0
	cmpq $0, %rbx
	sete %al
	cmpb $0, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M359
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M353:
	# LowerGetelementptr(608:3): struct-type: %"struct.std::__detail::_Quoted_string"* -> ^64, indices=0,2
	movq %rsi, -440(%rbp)
	addq $9, -440(%rbp)
	# MovePhi: ^58 -> ^114
	movq %rcx, -424(%rbp)
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M671
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M359:
	# LowerLoad(612:3).2: (^52) into ^66
	movb (%r12), %al
	# LowerStore(613:3).9: mov ^66, (^5)
	movq -456(%rbp), %rbx
	movb %al, (%rbx)
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# SetupCalls(614:3): move argument %"class.std::basic_ostream"* ^51
	movq -520(%rbp), %rdi
	# SetupCalls(614:3): move argument i8* ^5
	movq -456(%rbp), %rsi
	# SetupCalls(614:3): move argument i64 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(614:3): move result from %rax
	movq %rax, %rax
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	movq -472(%rbp), %rax
	# LowerGetelementptr(618:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^69, indices=0,2
	movq -472(%rbp), %rax
	addq $16, %rax
	movq -472(%rbp), %rbx
	# LowerStore(620:3).9: mov ^69, (^70)
	movq %rax, (%rbx)
	# LowerGetelementptr(621:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^71, indices=0,1
	movq -472(%rbp), %rbx
	addq $8, %rbx
	# LowerStore(622:3).3: mov $imm, ^71
	movq $0, (%rbx)
	movq %rax, %r14
	# LowerStore(624:3).3: mov $imm, ^72
	movb $0, (%r14)
	# LowerGetelementptr(625:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^73, indices=0,1,0,5
	movq -464(%rbp), %rax
	addq $8, %rax
	addq $40, %rax
	# LowerLoad(626:3).2: (^73) into ^74
	movq (%rax), %rcx
	# LowerIcmp(627:3): ^74 vs. intlike 0
	cmpq $0, %rcx
	sete %al
	# LowerGetelementptr(628:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^76, indices=0,1,0,3
	movq -464(%rbp), %rdx
	addq $8, %rdx
	addq $24, %rdx
	# LowerLoad(629:3).2: (^76) into ^77
	movq (%rdx), %rsi
	# LowerIcmp(630:3): ^74 vs. operand ^77
	cmpq %rsi, %rcx
	seta %dl
	cmpq $0, %rdx
	movq %rcx, %rdx
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC0
	movq %rsi, %rdx
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC0:
	# LowerIcmp(632:3): ^79 vs. intlike 0
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
	# LowerGetelementptr(637:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^83, indices=0,1,0,4
	movq -464(%rbp), %rax
	addq $8, %rax
	addq $32, %rax
	# LowerLoad(638:3).2: (^83) into ^84
	movq (%rax), %r8
	movq %rdx, %rax
	movq %r8, %rcx
	movq %rax, %r9
	subq %rcx, %r9
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# Clobber %rdx
	movq %rdx, -544(%rbp)
	# SetupCalls(642:3): move argument %"class.std::__cxx11::basic_string"* ^8
	movq -472(%rbp), %rdi
	# SetupCalls(642:3): move argument i64 0
	movq $0, %rsi
	# SetupCalls(642:3): move argument i64 0
	movq $0, %rdx
	# SetupCalls(642:3): move argument i8* ^84
	movq %r8, %rcx
	# SetupCalls(642:3): move argument i64 ^87
	movq %r9, %r8
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	# SetupCalls(642:3): move result from %rax
	movq %rax, %rax
	# Unclobber %rdx
	movq -544(%rbp), %rdx
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M500
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M476:
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# SetupCalls(646:3): move argument %"class.std::__cxx11::basic_string"* ^8
	movq -472(%rbp), %rdi
	# SetupCalls(646:3): move argument %"class.std::__cxx11::basic_string"* ^39
	movq -504(%rbp), %rsi
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M500:
	# LowerGetelementptr(650:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^91, indices=0,0,0
	movq -472(%rbp), %r15
	# LowerLoad(651:3).2: (^91) into ^92
	movq (%r15), %rax
	# LowerLoad(652:3).2: (^71) into ^93
	movq (%rbx), %rcx
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# SetupCalls(653:3): move argument %"class.std::basic_ostream"* %rdi
	# Semiunclobber %rdi into %rdi
	movq -528(%rbp), %rdi
	# SetupCalls(653:3): move argument i8* ^92
	movq %rax, %rsi
	# SetupCalls(653:3): move argument i64 ^93
	movq %rcx, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(653:3): move result from %rax
	movq %rax, %rax
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	# LowerLoad(654:3).2: (^91) into ^95
	movq (%r15), %rax
	# LowerIcmp(655:3): ^95 vs. operand ^72
	cmpq %r14, %rax
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M561
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M539:
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# Clobber %rax
	movq %rax, -552(%rbp)
	# SetupCalls(659:3): move argument i8* ^95
	movq %rax, %rdi
	callq _ZdlPv@PLT
	# Unclobber %rax
	movq -552(%rbp), %rax
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M561:
	# LowerLoad(663:3).4: _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE into ^99
	movq _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rbx
	movq (%rbx), %rbx
	# LowerStore(664:3).9: mov ^99, (^19)
	movq -488(%rbp), %rax
	movq %rbx, (%rax)
	movq _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $24, %rax
	# LowerLoad(665:3).2: (^139) into ^100
	movq (%rax), %rcx
	# LowerGetelementptr(666:3): struct-type: i32 () *** -> ^101, indices=-3
	movq %rbx, %rax
	addq $-24, %rax
	movq %rax, %rbx
	# LowerLoad(668:3).2: (^102) into ^103
	movq (%rbx), %rax
	# LowerGetelementptr(669:3): pointer-type -> ^104
	movq %rax, %rbx
	addq -480(%rbp), %rbx
	movq %rbx, %rax
	# LowerStore(671:3).9: mov ^100, (^105)
	movq %rcx, (%rax)
	# LowerGetelementptr(672:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^106, indices=0,1,0,0
	movq -464(%rbp), %rbx
	addq $8, %rbx
	movq _ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(673:3).9: mov ^140, (^106)
	movq %rax, (%rbx)
	# LowerGetelementptr(674:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^107, indices=0,1,2,0,0
	movq -464(%rbp), %rax
	addq $8, %rax
	addq $72, %rax
	# LowerLoad(675:3).2: (^107) into ^108
	movq (%rax), %rcx
	# LowerIcmp(676:3): ^108 vs. operand ^43
	cmpq %rax, %rcx
	sete %al
	cmpb $0, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M621
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M599:
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# Clobber %rcx
	movq %rcx, -560(%rbp)
	# SetupCalls(680:3): move argument i8* ^108
	movq %rcx, %rdi
	callq _ZdlPv@PLT
	# Unclobber %rcx
	movq -560(%rbp), %rcx
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M621:
	movq _ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(684:3).9: mov ^141, (^106)
	movq %rax, (%rbx)
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# SetupCalls(685:3): move argument %"class.std::locale"* ^36
	movq -496(%rbp), %rdi
	callq _ZNSt6localeD1Ev@PLT
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	# LowerGetelementptr(686:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^112, indices=0,2,0
	movq -464(%rbp), %rax
	addq $112, %rax
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# SetupCalls(687:3): move argument %"class.std::ios_base"* ^112
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
	# LowerLoad(692:3).2: (^114) into ^115
	movq -424(%rbp), %rax
	movb (%rax), %bl
	# LowerLoad(693:3).2: (^52) into ^116
	movb (%r12), %al
	# LowerIcmp(694:3): ^115 vs. operand ^116
	cmpb %al, %bl
	sete %cl
	# LowerLoad(695:3).2: (^64) into ^118
	movq -440(%rbp), %rax
	movb (%rax), %dl
	# LowerIcmp(696:3): ^115 vs. operand ^118
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
	# LowerStore(701:3).9: mov ^118, (^4)
	movq -448(%rbp), %rax
	movb %dl, (%rax)
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# Clobber %rdx
	movq %rdx, -544(%rbp)
	# SetupCalls(702:3): move argument %"class.std::basic_ostream"* ^51
	movq -520(%rbp), %rdi
	# SetupCalls(702:3): move argument i8* ^4
	movq -448(%rbp), %rsi
	# SetupCalls(702:3): move argument i64 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(702:3): move result from %rax
	movq %rax, %rax
	# Unclobber %rdx
	movq -544(%rbp), %rdx
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M717:
	# LowerStore(706:3).9: mov ^115, (^3)
	movq -432(%rbp), %rax
	movb %bl, (%rax)
	# Clobber %rdi
	movq %rdi, -528(%rbp)
	# SetupCalls(707:3): move argument %"class.std::basic_ostream"* ^51
	movq -520(%rbp), %rdi
	# SetupCalls(707:3): move argument i8* ^3
	movq -432(%rbp), %rsi
	# SetupCalls(707:3): move argument i64 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(707:3): move result from %rax
	movq %rax, %rax
	# Unclobber %rdi
	movq -528(%rbp), %rdi
	# LowerGetelementptr(708:3): struct-type: i8* -> ^125, indices=1
	movq -424(%rbp), %rax
	addq $1, %rax
	# LowerIcmp(709:3): ^125 vs. operand ^61
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
	# LowerGetelementptr(323:3): struct-type: [2 x i8]* -> ^4, indices=0,0
	movq %rsi, %rbx
	# Clobber %rdi
	movq %rdi, -8(%rbp)
	# SetupCalls(324:3): move argument i8* ^4
	movq %rbx, %rdi
	callq strlen@PLT
	# SetupCalls(324:3): move result from %rax
	movq %rax, %r12
	# Unclobber %rdi
	movq -8(%rbp), %rdi
	# LowerGetelementptr(325:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^6, indices=0,0,2
	movq %rdi, %rcx
	addq $16, %rcx
	movq %rdi, %rax
	# LowerStore(327:3).9: mov ^6, (^7)
	movq %rcx, (%rax)
	# LowerIcmp(328:3): ^5 vs. intlike 15
	cmpq $15, %r12
	seta %al
	cmpb $0, %al
	jne .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M39
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M35:
	movq %rcx, %rax
	# MovePhi: ^10 -> ^23
	movq %rax, %r14
	jmp .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M155
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M39:
	# LowerIcmp(336:3): ^5 vs. intlike 0
	cmpq $0, %r12
	setl %al
	cmpb $0, %al
	jne .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M43
	jmp .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M65
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M43:
	# Clobber %rdi
	movq %rdi, -8(%rbp)
	# SetupCalls(340:3): move argument i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)
	movq .str.3@GOTPCREL(%rip), %rdi
	callq _ZSt20__throw_length_errorPKc@PLT
	# Unclobber %rdi
	movq -8(%rbp), %rdi
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M65:
	movq %r12, %r13
	addq $1, %r13
	# LowerIcmp(345:3): ^15 vs. intlike 0
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
	# SetupCalls(353:3): move argument i64 ^15
	movq %r13, %rdi
	callq _Znwm@PLT
	# SetupCalls(353:3): move result from %rax
	movq %rax, %r13
	# Unclobber %rdi
	movq -8(%rbp), %rdi
	# LowerLoad(355:3).4: stderr into ^_err
	movq stderr@GOTPCREL(%rip), %rax
	movq (%rax), %rax
	# Clobber %rdi
	movq %rdi, -8(%rbp)
	# SetupCalls(356:3): move argument %struct._IO_FILE* ^_err
	movq %rax, %rdi
	# SetupCalls(356:3): move argument i8* @.str.dbgp
	movq .str.dbgp@GOTPCREL(%rip), %rsi
	# SetupCalls(356:3): move argument i32 ^19
	movl %r13d, %edx
	movq $0, %rax
	callq fprintf@PLT
	# Unclobber %rdi
	movq -8(%rbp), %rdi
	# LowerGetelementptr(357:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^20, indices=0,0,0,0
	movq %rdi, %rax
	# LowerStore(358:3).9: mov ^19, (^20)
	movq %r13, (%rax)
	# LowerGetelementptr(359:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^21, indices=0,0,2,0
	movq %rdi, %rax
	addq $16, %rax
	# LowerStore(360:3).9: mov ^5, (^21)
	movq %r12, (%rax)
	# MovePhi: ^19 -> ^23
	movq %r13, %r14
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M155:
	# LowerSwitch(365:3): begin conditions
	cmpq $1, %r12
	je .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M162
	cmpq $0, %r12
	je .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M193
	# LowerSwitch(365:3): default
	jmp .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M167
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M162:
	# LowerLoad(371:3).2: (^4) into ^25
	movb (%rbx), %al
	# LowerStore(372:3).9: mov ^25, (^23)
	movb %al, (%r14)
	jmp .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M193
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M167:
	# Clobber %rdi
	movq %rdi, -8(%rbp)
	# SetupCalls(376:3): move argument i8* ^23
	movq %r14, %rdi
	# SetupCalls(376:3): move argument i8* ^4
	movq %rbx, %rsi
	# SetupCalls(376:3): move argument i64 ^5
	movq %r12, %rdx
	callq memcpy@PLT
	# Unclobber %rdi
	movq -8(%rbp), %rdi
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M193:
	# LowerGetelementptr(380:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^28, indices=0,0,1
	movq %rdi, %rax
	addq $8, %rax
	# LowerStore(381:3).9: mov ^5, (^28)
	movq %r12, (%rax)
	# LowerGetelementptr(382:3): pointer-type -> ^29
	movq %r12, %rax
	addq %r14, %rax
	# LowerStore(383:3).3: mov $imm, ^29
	movb $0, (%rax)
	# LowerGetelementptr(384:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^30, indices=0,1
	movq %rdi, %rax
	addq $32, %rax
	# Clobber %rdi
	movq %rdi, -8(%rbp)
	# SetupCalls(385:3): move argument %"struct.std::filesystem::__cxx11::path::_List"* ^30
	movq %rax, %rdi
	callq _ZNSt10filesystem7__cxx114path5_ListC1Ev@PLT
	# Unclobber %rdi
	movq -8(%rbp), %rdi
	# Clobber %rdi
	movq %rdi, -8(%rbp)
	# SetupCalls(386:3): move argument %"class.std::filesystem::__cxx11::path"* %rdi
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
	# LowerAlloca(395:3): size = 16, type = {%"class.std::__cxx11::basic_string"*, i64}*, var = ^3
	leaq -16(%rbp), %rbx
	movq %rbx, -72(%rbp)
	# LowerAlloca(397:3): size = 32, type = %"class.std::__cxx11::basic_string"*, var = ^5
	# Fixing leaq -48(%rbp), -56(%rbp)
	pushq %r15
	leaq -48(%rbp), %r15
	movq %r15, -56(%rbp)
	popq %r15
	movq %rbx, %rax
	movq -56(%rbp), %rax
	# LowerGetelementptr(401:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^8, indices=0,0,0,0
	movq %rsi, %rax
	# LowerLoad(402:3).2: (^8) into ^9
	movq (%rax), %r13
	# LowerGetelementptr(403:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^10, indices=0,0,1
	movq %rsi, %rax
	addq $8, %rax
	# LowerLoad(404:3).2: (^10) into ^11
	movq (%rax), %r14
	# LowerGetelementptr(405:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^12, indices=0,2
	# Fixing movq -56(%rbp), -64(%rbp)
	pushq %r15
	movq -56(%rbp), %r15
	movq %r15, -64(%rbp)
	popq %r15
	addq $16, -64(%rbp)
	movq -56(%rbp), %rax
	# LowerStore(407:3).9: mov ^12, (^13)
	# Fixing movq -64(%rbp), (%rax)
	pushq %r15
	movq -64(%rbp), %r15
	movq %r15, (%rax)
	popq %r15
	# LowerIcmp(408:3): ^11 vs. intlike 15
	cmpq $15, %r14
	seta %al
	cmpb $0, %al
	jne .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M30
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M26:
	movq -64(%rbp), %rax
	# MovePhi: ^16 -> ^29
	movq %rax, %r15
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M146
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M30:
	# LowerIcmp(416:3): ^11 vs. intlike 0
	cmpq $0, %r14
	setl %al
	cmpb $0, %al
	jne .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M34
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M56
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M34:
	# Clobber %rdi
	movq %rdi, -80(%rbp)
	# SetupCalls(420:3): move argument i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)
	movq .str.3@GOTPCREL(%rip), %rdi
	callq _ZSt20__throw_length_errorPKc@PLT
	# Unclobber %rdi
	movq -80(%rbp), %rdi
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M56:
	movq %r14, %r12
	addq $1, %r12
	# LowerIcmp(425:3): ^21 vs. intlike 0
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
	# SetupCalls(433:3): move argument i64 ^21
	movq %r12, %rdi
	callq _Znwm@PLT
	# SetupCalls(433:3): move result from %rax
	movq %rax, %r12
	# Unclobber %rdi
	movq -80(%rbp), %rdi
	# LowerLoad(435:3).4: stderr into ^_err
	movq stderr@GOTPCREL(%rip), %rax
	movq (%rax), %rax
	# Clobber %rdi
	movq %rdi, -80(%rbp)
	# SetupCalls(436:3): move argument %struct._IO_FILE* ^_err
	movq %rax, %rdi
	# SetupCalls(436:3): move argument i8* @.str.dbgp
	movq .str.dbgp@GOTPCREL(%rip), %rsi
	# SetupCalls(436:3): move argument i32 ^25
	movl %r12d, %edx
	movq $0, %rax
	callq fprintf@PLT
	# Unclobber %rdi
	movq -80(%rbp), %rdi
	# LowerGetelementptr(437:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^26, indices=0,0,0
	movq -56(%rbp), %rax
	# LowerStore(438:3).9: mov ^25, (^26)
	movq %r12, (%rax)
	# LowerGetelementptr(439:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^27, indices=0,2,0
	movq -56(%rbp), %rax
	addq $16, %rax
	# LowerStore(440:3).9: mov ^11, (^27)
	movq %r14, (%rax)
	# MovePhi: ^25 -> ^29
	movq %r12, %r15
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M146:
	# LowerSwitch(445:3): begin conditions
	cmpq $1, %r14
	je .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M153
	cmpq $0, %r14
	je .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M184
	# LowerSwitch(445:3): default
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M158
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M153:
	# LowerLoad(451:3).2: (^9) into ^31
	movb (%r13), %al
	# LowerStore(452:3).9: mov ^31, (^29)
	movb %al, (%r15)
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M184
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M158:
	# Clobber %rdi
	movq %rdi, -80(%rbp)
	# SetupCalls(456:3): move argument i8* ^29
	movq %r15, %rdi
	# SetupCalls(456:3): move argument i8* ^9
	movq %r13, %rsi
	# SetupCalls(456:3): move argument i64 ^11
	movq %r14, %rdx
	callq memcpy@PLT
	# Unclobber %rdi
	movq -80(%rbp), %rdi
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M184:
	# LowerGetelementptr(460:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^34, indices=0,1
	movq -56(%rbp), %rax
	addq $8, %rax
	# LowerStore(461:3).9: mov ^11, (^34)
	movq %r14, (%rax)
	# LowerGetelementptr(462:3): pointer-type -> ^35
	movq %r14, %rax
	addq %r15, %rax
	# LowerStore(463:3).3: mov $imm, ^35
	movb $0, (%rax)
	# LowerGetelementptr(464:3): struct-type: {%"class.std::__cxx11::basic_string"*, i64}* -> ^36, indices=0,0
	movq %rbx, %rax
	# LowerStore(465:3).9: mov ^5, (^36)
	# Fixing movq -56(%rbp), (%rax)
	pushq %r15
	movq -56(%rbp), %r15
	movq %r15, (%rax)
	popq %r15
	# LowerGetelementptr(466:3): struct-type: {%"class.std::__cxx11::basic_string"*, i64}* -> ^37, indices=0,1
	movq %rbx, %rax
	addq $8, %rax
	# LowerStore(467:3).3: mov $imm, ^37
	movq $23586, (%rax)
	# Clobber %rdi
	movq %rdi, -80(%rbp)
	# SetupCalls(468:3): move argument %"class.std::basic_ostream"* %rdi
	# Semiunclobber %rdi into %rdi
	movq -80(%rbp), %rdi
	# SetupCalls(468:3): move argument %"struct.std::__detail::_Quoted_string"* ^4
	movq -72(%rbp), %rsi
	callq _ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE
	# SetupCalls(468:3): move result from %rax
	movq %rax, %rax
	# Unclobber %rdi
	movq -80(%rbp), %rdi
	# LowerGetelementptr(469:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^39, indices=0,0,0
	movq -56(%rbp), %rbx
	# LowerLoad(470:3).2: (^39) into ^40
	movq (%rbx), %rax
	movq -64(%rbp), %rbx
	# LowerIcmp(472:3): ^40 vs. operand ^41
	cmpq %rbx, %rax
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M259
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M237:
	# Clobber %rax
	movq %rax, -88(%rbp)
	# SetupCalls(476:3): move argument i8* ^40
	movq %rax, %rdi
	callq _ZdlPv@PLT
	# Unclobber %rax
	movq -88(%rbp), %rax
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M259:
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
	# upalign(320 + 0, 16)
	subq $320, %rsp
	movq %rbx, -168(%rbp)
	movq %r12, -184(%rbp)
	movq %r13, -192(%rbp)
	movq %r14, -232(%rbp)
	movq %r15, -248(%rbp)
	# LowerAlloca(93:3): size = 1, type = i8*, var = ^1
	# Fixing leaq -1(%rbp), -120(%rbp)
	pushq %r15
	leaq -1(%rbp), %r15
	movq %r15, -120(%rbp)
	popq %r15
	# LowerAlloca(94:3): size = 40, type = %"class.std::filesystem::__cxx11::path"*, var = ^2
	# Fixing leaq -48(%rbp), -128(%rbp)
	pushq %r15
	leaq -48(%rbp), %r15
	movq %r15, -128(%rbp)
	popq %r15
	# LowerAlloca(95:3): size = 16, type = %"class.std::filesystem::__cxx11::directory_iterator"*, var = ^3
	leaq -64(%rbp), %rbx
	# LowerAlloca(96:3): size = 16, type = %"class.std::filesystem::__cxx11::directory_iterator"*, var = ^4
	# Fixing leaq -80(%rbp), -136(%rbp)
	pushq %r15
	leaq -80(%rbp), %r15
	movq %r15, -136(%rbp)
	popq %r15
	movq -128(%rbp), %rax
	# SetupCalls(98:3): move argument %"class.std::filesystem::__cxx11::path"* ^2
	movq -128(%rbp), %rdi
	# SetupCalls(98:3): move argument [2 x i8]* @.str
	movq .str@GOTPCREL(%rip), %rsi
	# SetupCalls(98:3): move argument i8 2
	movq $2, %rdx
	andq $255, %rdx
	callq _ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE
	movq %rbx, %rax
	# SetupCalls(100:3): move argument %"class.std::filesystem::__cxx11::directory_iterator"* ^3
	movq %rbx, %rdi
	# SetupCalls(100:3): move argument %"class.std::filesystem::__cxx11::path"* ^2
	movq -128(%rbp), %rsi
	# SetupCalls(100:3): move argument i8 0
	movq $0, %rdx
	andq $255, %rdx
	# SetupCalls(100:3): move argument %"class.std::error_code"* null
	movq $0, %rcx
	callq _ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code@PLT
	movq -136(%rbp), %rax
	# LowerGetelementptr(102:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^8, indices=0,0,0
	movq %rbx, %rax
	# LowerLoad(103:3).2: (^8) into ^9
	movq (%rax), %rcx
	# LowerGetelementptr(104:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^10, indices=0,0,1,0
	movq %rbx, -144(%rbp)
	addq $8, -144(%rbp)
	# LowerLoad(105:3).2: (^10) into ^11
	movq -144(%rbp), %rax
	movq (%rax), %rdx
	# LowerIcmp(106:3): ^11 vs. intlike 0
	cmpq $0, %rdx
	sete %al
	cmpb $0, %al
	jne .__main__M277
	.__main__M78:
	# LowerGetelementptr(110:3): struct-type: %"class.std::_Sp_counted_base"* -> ^14, indices=0,1
	movq %rdx, %rbx
	addq $8, %rbx
	# LowerLoad(111:3).4: __libc_single_threaded into ^15
	movq __libc_single_threaded@GOTPCREL(%rip), %rax
	movb (%rax), %al
	# LowerIcmp(112:3): ^15 vs. intlike 0
	cmpb $0, %al
	sete %al
	cmpb $0, %al
	jne .__main__M108
	.__main__M88:
	# LowerLoad(116:3).2: (^14) into ^18
	movl (%rbx), %eax
	movl %eax, %esi
	addl $1, %esi
	# LowerStore(118:3).9: mov ^19, (^14)
	movl %esi, (%rbx)
	# LowerGetelementptr(119:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^20, indices=0,0,0
	movq -136(%rbp), %rax
	# LowerStore(120:3).9: mov ^9, (^20)
	movq %rcx, (%rax)
	# LowerGetelementptr(121:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^21, indices=0,0,1,0
	movq -136(%rbp), %rax
	addq $8, %rax
	# LowerStore(122:3).9: mov ^11, (^21)
	movq %rdx, (%rax)
	# MovePhi: ^21 -> ^29
	movq %rax, %r12
	# MovePhi: ^11 -> ^30
	movq %rdx, %r13
	jmp .__main__M133
	.__main__M108:
	movl $1, %eax
	lock addl %eax, (%rbx)
	# LowerLoad(127:3).2: (^10) into ^24
	movq -144(%rbp), %rbx
	movq (%rbx), %rax
	# LowerGetelementptr(128:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^25, indices=0,0,0
	movq -136(%rbp), %rbx
	# LowerStore(129:3).9: mov ^9, (^25)
	movq %rcx, (%rbx)
	# LowerGetelementptr(130:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^26, indices=0,0,1,0
	movq -136(%rbp), %rbx
	addq $8, %rbx
	# LowerStore(131:3).9: mov ^11, (^26)
	movq %rdx, (%rbx)
	# LowerIcmp(132:3): ^24 vs. intlike 0
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
	# LowerGetelementptr(138:3): struct-type: %"class.std::_Sp_counted_base"* -> ^31, indices=0,1
	movq %r13, %rbx
	addq $8, %rbx
	# LowerLoad(139:3).4: __libc_single_threaded into ^32
	movq __libc_single_threaded@GOTPCREL(%rip), %rax
	movb (%rax), %al
	# LowerIcmp(140:3): ^32 vs. intlike 0
	cmpb $0, %al
	sete %al
	cmpb $0, %al
	jne .__main__M150
	.__main__M143:
	# LowerLoad(144:3).2: (^31) into ^35
	movl (%rbx), %eax
	movl %eax, %ecx
	addl $1, %ecx
	# LowerStore(146:3).9: mov ^36, (^31)
	movl %ecx, (%rbx)
	jmp .__main__M159
	.__main__M150:
	movl $1, %eax
	lock addl %eax, (%rbx)
	# LowerLoad(151:3).4: __libc_single_threaded into ^39
	movq __libc_single_threaded@GOTPCREL(%rip), %rax
	movb (%rax), %al
	# LowerIcmp(152:3): ^39 vs. intlike 0
	cmpb $0, %al
	sete %al
	cmpb $0, %al
	jne .__main__M168
	.__main__M159:
	# LowerLoad(156:3).2: (^31) into ^42
	movl (%rbx), %eax
	movl %eax, %ecx
	addl $-1, %ecx
	# LowerStore(158:3).9: mov ^43, (^31)
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
	# LowerIcmp(167:3): ^47 vs. intlike 1
	cmpl $1, %r14d
	sete %al
	cmpb $0, %al
	jne .__main__M177
	jmp .__main__M265
	.__main__M177:
	movq %r13, %rbx
	# LowerLoad(172:3).2: (^50) into ^51
	movq (%rbx), %rax
	# LowerGetelementptr(173:3): struct-type: void (%"class.std::_Sp_counted_base"*) *** -> ^52, indices=2
	movq %rax, %rcx
	addq $16, %rcx
	# LowerLoad(174:3).2: (^52) into ^53
	movq (%rcx), %rax
	# SetupCalls(175:3): move argument %"class.std::_Sp_counted_base"* ^30
	movq %r13, %rdi
	# SetupCalls(175:3): jump to function operand ^53
	callq *%rax
	# LowerGetelementptr(176:3): struct-type: %"class.std::_Sp_counted_base"* -> ^54, indices=0,2
	movq %r13, %rax
	addq $12, %rax
	# LowerLoad(177:3).4: __libc_single_threaded into ^55
	movq __libc_single_threaded@GOTPCREL(%rip), %rcx
	movb (%rcx), %cl
	# LowerIcmp(178:3): ^55 vs. intlike 0
	cmpb $0, %cl
	sete %cl
	cmpb $0, %cl
	jne .__main__M226
	.__main__M217:
	# LowerLoad(182:3).2: (^54) into ^58
	movl (%rax), %ecx
	movl %ecx, %edx
	addl $-1, %edx
	# LowerStore(184:3).9: mov ^59, (^54)
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
	# LowerIcmp(193:3): ^63 vs. intlike 1
	cmpl $1, %r15d
	sete %al
	cmpb $0, %al
	jne .__main__M235
	jmp .__main__M265
	.__main__M235:
	# LowerLoad(197:3).2: (^50) into ^66
	movq (%rbx), %rax
	# LowerGetelementptr(198:3): struct-type: void (%"class.std::_Sp_counted_base"*) *** -> ^67, indices=3
	movq %rax, %rbx
	addq $24, %rbx
	# LowerLoad(199:3).2: (^67) into ^68
	movq (%rbx), %rax
	# SetupCalls(200:3): move argument %"class.std::_Sp_counted_base"* ^30
	movq %r13, %rdi
	# SetupCalls(200:3): jump to function operand ^68
	callq *%rax
	.__main__M265:
	# LowerLoad(204:3).2: (^29) into ^70
	movq (%r12), %rax
	# LowerIcmp(205:3): ^70 vs. intlike 0
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
	# LowerLoad(213:3).2: (^10) into ^75
	movq -144(%rbp), %rax
	movq (%rax), %rbx
	# LowerIcmp(214:3): ^75 vs. intlike 0
	cmpq $0, %rbx
	sete %al
	cmpb $0, %al
	jne .__main__M399
	.__main__M283:
	# LowerGetelementptr(218:3): struct-type: %"class.std::_Sp_counted_base"* -> ^78, indices=0,1
	movq %rbx, %rax
	addq $8, %rax
	# LowerLoad(219:3).4: __libc_single_threaded into ^79
	movq __libc_single_threaded@GOTPCREL(%rip), %rcx
	movb (%rcx), %cl
	# LowerIcmp(220:3): ^79 vs. intlike 0
	cmpb $0, %cl
	sete %cl
	cmpb $0, %cl
	jne .__main__M302
	.__main__M293:
	# LowerLoad(224:3).2: (^78) into ^82
	movl (%rax), %ecx
	movl %ecx, %edx
	addl $-1, %edx
	# LowerStore(226:3).9: mov ^83, (^78)
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
	# LowerIcmp(235:3): ^87 vs. intlike 1
	cmpl $1, -104(%rbp)
	sete %al
	cmpb $0, %al
	jne .__main__M311
	jmp .__main__M399
	.__main__M311:
	movq %rbx, %r12
	# LowerLoad(240:3).2: (^90) into ^91
	movq (%r12), %rax
	# LowerGetelementptr(241:3): struct-type: void (%"class.std::_Sp_counted_base"*) *** -> ^92, indices=2
	movq %rax, %rcx
	addq $16, %rcx
	# LowerLoad(242:3).2: (^92) into ^93
	movq (%rcx), %rax
	# SetupCalls(243:3): move argument %"class.std::_Sp_counted_base"* ^75
	movq %rbx, %rdi
	# SetupCalls(243:3): jump to function operand ^93
	callq *%rax
	# LowerGetelementptr(244:3): struct-type: %"class.std::_Sp_counted_base"* -> ^94, indices=0,2
	movq %rbx, %rax
	addq $12, %rax
	# LowerLoad(245:3).4: __libc_single_threaded into ^95
	movq __libc_single_threaded@GOTPCREL(%rip), %rcx
	movb (%rcx), %cl
	# LowerIcmp(246:3): ^95 vs. intlike 0
	cmpb $0, %cl
	sete %cl
	cmpb $0, %cl
	jne .__main__M360
	.__main__M351:
	# LowerLoad(250:3).2: (^94) into ^98
	movl (%rax), %ecx
	movl %ecx, %edx
	addl $-1, %edx
	# LowerStore(252:3).9: mov ^99, (^94)
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
	# LowerIcmp(261:3): ^103 vs. intlike 1
	cmpl $1, -88(%rbp)
	sete %al
	cmpb $0, %al
	jne .__main__M369
	jmp .__main__M399
	.__main__M369:
	# LowerLoad(265:3).2: (^90) into ^106
	movq (%r12), %rax
	# LowerGetelementptr(266:3): struct-type: void (%"class.std::_Sp_counted_base"*) *** -> ^107, indices=3
	movq %rax, %rcx
	addq $24, %rcx
	# LowerLoad(267:3).2: (^107) into ^108
	movq (%rcx), %rax
	# SetupCalls(268:3): move argument %"class.std::_Sp_counted_base"* ^75
	movq %rbx, %rdi
	# SetupCalls(268:3): jump to function operand ^108
	callq *%rax
	.__main__M399:
	# LowerGetelementptr(272:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^110, indices=0,1
	movq -128(%rbp), %rax
	addq $32, %rax
	# LowerGetelementptr(273:3): struct-type: %"struct.std::filesystem::__cxx11::path::_List"* -> ^111, indices=0,0,0,0,0,0,0,0
	movq %rax, %rbx
	# LowerLoad(274:3).2: (^111) into ^112
	movq (%rbx), %rcx
	# LowerIcmp(275:3): ^112 vs. intlike 0
	cmpq $0, %rcx
	sete %dl
	cmpb $0, %dl
	jne .__main__M435
	.__main__M410:
	movq %rax, %rdx
	# Clobber %rcx
	movq %rcx, -152(%rbp)
	# Clobber %rax
	movq %rax, -160(%rbp)
	# SetupCalls(280:3): move argument %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* ^115
	movq %rdx, %rdi
	# SetupCalls(280:3): move argument %"struct.std::filesystem::__cxx11::path::_List::_Impl"* ^112
	movq %rcx, %rsi
	callq _ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@PLT
	# Unclobber %rax
	movq -160(%rbp), %rax
	# Unclobber %rcx
	movq -152(%rbp), %rcx
	.__main__M435:
	# LowerStore(284:3).3: mov $imm, ^111
	movq $0, (%rbx)
	# LowerGetelementptr(285:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^117, indices=0,0,0,0
	movq -128(%rbp), %rax
	# LowerLoad(286:3).2: (^117) into ^118
	movq (%rax), %rbx
	# LowerGetelementptr(287:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^119, indices=0,0,2
	movq -128(%rbp), %rax
	addq $16, %rax
	movq %rax, %rcx
	# LowerIcmp(289:3): ^118 vs. operand ^120
	cmpq %rcx, %rbx
	sete %al
	cmpb $0, %al
	jne .__main__M471
	.__main__M449:
	# SetupCalls(293:3): move argument i8* ^118
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
	# SetupCalls(301:3): move argument %"class.std::filesystem::__cxx11::directory_iterator"* ^4
	movq -136(%rbp), %rdi
	callq _ZNKSt10filesystem7__cxx1118directory_iteratordeEv@PLT
	# SetupCalls(301:3): move result from %rax
	movq %rax, %r12
	movl -112(%rbp), %ebx
	addl $1, %ebx
	# SetupCalls(303:3): move argument %"class.std::basic_ostream"* @_ZSt4cerr
	movq _ZSt4cerr@GOTPCREL(%rip), %rdi
	# SetupCalls(303:3): move argument i32 ^125
	movl -112(%rbp), %esi
	callq _ZNSolsEi@PLT
	# SetupCalls(303:3): move result from %rax
	movq %rax, %r13
	# SetupCalls(304:3): move argument %"class.std::basic_ostream"* ^128
	movq %r13, %rdi
	# SetupCalls(304:3): move argument i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
	movq .str.1@GOTPCREL(%rip), %rsi
	# SetupCalls(304:3): move argument i64 2
	movq $2, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(304:3): move result from %rax
	movq %rax, %rax
	# LowerGetelementptr(305:3): struct-type: %"class.std::filesystem::__cxx11::directory_entry"* -> ^130, indices=0,0
	movq %r12, %rax
	# SetupCalls(306:3): move argument %"class.std::basic_ostream"* ^128
	movq %r13, %rdi
	# SetupCalls(306:3): move argument %"class.std::filesystem::__cxx11::path"* ^130
	movq %rax, %rsi
	callq _ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE
	# SetupCalls(306:3): move result from %rax
	movq %rax, %r12
	# LowerStore(307:3).3: mov $imm, ^1
	movq -120(%rbp), %rax
	movb $10, (%rax)
	# SetupCalls(308:3): move argument %"class.std::basic_ostream"* ^131
	movq %r12, %rdi
	# SetupCalls(308:3): move argument i8* ^1
	movq -120(%rbp), %rsi
	# SetupCalls(308:3): move argument i64 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(308:3): move result from %rax
	movq %rax, %rax
	# SetupCalls(309:3): move argument %"class.std::filesystem::__cxx11::directory_iterator"* ^4
	movq -136(%rbp), %rdi
	callq _ZNSt10filesystem7__cxx1118directory_iteratorppEv@PLT
	# SetupCalls(309:3): move result from %rax
	movq %rax, %rax
	# LowerLoad(310:3).2: (^73) into ^134
	movq -96(%rbp), %rax
	movq (%rax), %rcx
	# LowerIcmp(311:3): ^134 vs. intlike 0
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
