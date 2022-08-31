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
	# upalign(184 + 0, 16)
	subq $192, %rsp
	movq %rbx, -56(%rbp)
	movq %r12, -96(%rbp)
	movq %r13, -72(%rbp)
	movq %r14, -80(%rbp)
	movq %r15, -152(%rbp)
	# LowerIcmp(1091:3): %rdi vs. operand %rsi
	cmpq %rsi, %rdi
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M228
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M4:
	# LowerGetelementptr(1095:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^5, indices=0,1
	movq %rsi, %rax
	addq $8, %rax
	# LowerLoad(1096:3).2: (^5) into ^6
	# Fixing movq (%rax), -16(%rbp)
	pushq %r15
	movq (%rax), %r15
	movq %r15, -16(%rbp)
	popq %r15
	# LowerGetelementptr(1097:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^7, indices=0,0,0
	movq %rdi, -24(%rbp)
	# LowerLoad(1098:3).2: (^7) into ^8
	movq -24(%rbp), %rbx
	movq (%rbx), %rax
	# LowerGetelementptr(1099:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^9, indices=0,2
	movq %rdi, %rbx
	addq $16, %rbx
	movq %rbx, %r13
	# LowerIcmp(1101:3): ^8 vs. operand ^10
	cmpq %r13, %rax
	sete %cl
	# LowerGetelementptr(1102:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^12, indices=0,2,0
	movq %rdi, %r14
	addq $16, %r14
	# LowerLoad(1103:3).2: (^12) into ^13
	movq (%r14), %rbx
	cmpq $0, %rcx
	movq $15, %r12
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___RC0
	movq %rbx, %r12
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___RC0:
	# LowerIcmp(1105:3): ^6 vs. operand ^14
	cmpq %r12, -16(%rbp)
	seta %bl
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M32
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M158
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M32:
	# LowerIcmp(1109:3): ^6 vs. intlike 0
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
	# SetupCalls(1113:3): move argument getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)
	movq .str.3@GOTPCREL(%rip), %rdi
	callq _ZSt20__throw_length_errorPKc@PLT
	# Unclobber %rsi
	movq -40(%rbp), %rsi
	# Unclobber %rdi
	movq -32(%rbp), %rdi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M58:
	movq %r12, %rbx
	shlq $1, %rbx
	# LowerIcmp(1118:3): ^6 vs. operand ^20
	cmpq %rbx, -16(%rbp)
	setb %cl
	# LowerIcmp(1119:3): ^20 vs. intlike 9223372036854775807
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
	# LowerIcmp(1123:3): ^25 vs. intlike 0
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
	# SetupCalls(1131:3): move argument ^25
	movq %r12, %rdi
	callq _Znwm@PLT
	# SetupCalls(1131:3): move result from %rax
	movq %rax, %r12
	# Unclobber %rsi
	movq -40(%rbp), %rsi
	# Unclobber %rdi
	movq -32(%rbp), %rdi
	# LowerLoad(1132:3).2: (^7) into ^30
	movq -24(%rbp), %rax
	movq (%rax), %rcx
	# LowerIcmp(1133:3): ^30 vs. operand ^10
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
	# SetupCalls(1137:3): move argument ^30
	movq %rcx, %rdi
	callq _ZdlPv@PLT
	# Unclobber %rcx
	movq -48(%rbp), %rcx
	# Unclobber %rsi
	movq -40(%rbp), %rsi
	# Unclobber %rdi
	movq -32(%rbp), %rdi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M151:
	# LowerStore(1141:3).9: mov ^29, (^7)
	movq -24(%rbp), %rax
	movq %r12, (%rax)
	# LowerStore(1142:3).9: mov ^24, (^12)
	movq %rbx, (%r14)
	# MovePhi: ^29 -> ^39
	movq %r12, %r15
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M173
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M158:
	# LowerIcmp(1146:3): ^6 vs. intlike 0
	cmpq $0, -16(%rbp)
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M165
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M162:
	# MovePhi: ^8 -> ^39 (in new block 53 whose parent is 34)
	movq %rax, %r15
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M173
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M165:
	# LowerGetelementptr(1150:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^37, indices=0,1
	movq %rdi, %rbx
	addq $8, %rbx
	# LowerStore(1151:3).3: mov $imm, ^37
	movq $0, (%rbx)
	# MovePhi: ^8 -> ^51
	movq %rax, -8(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M225
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M173:
	# LowerGetelementptr(1156:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^40, indices=0,0,0
	movq %rsi, %rax
	# LowerLoad(1157:3).2: (^40) into ^41
	movq (%rax), %rbx
	# LowerIcmp(1158:3): ^6 vs. intlike 1
	cmpq $1, -16(%rbp)
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M181
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M186
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M181:
	# LowerLoad(1162:3).2: (^41) into ^44
	movb (%rbx), %al
	# LowerStore(1163:3).9: mov ^44, (^39)
	movb %al, (%r15)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M212
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M186:
	# Clobber %rdi
	movq %rdi, -32(%rbp)
	# SetupCalls(1167:3): move argument ^39
	movq %r15, %rdi
	# SetupCalls(1167:3): move argument ^41
	movq %rbx, %rsi
	# SetupCalls(1167:3): move argument ^6
	movq -16(%rbp), %rdx
	callq memcpy@PLT
	# Unclobber %rdi
	movq -32(%rbp), %rdi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M212:
	# LowerGetelementptr(1171:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^47, indices=0,1
	movq %rdi, %rax
	addq $8, %rax
	# LowerStore(1172:3).9: mov ^6, (^47)
	# Fixing movq -16(%rbp), (%rax)
	movq -16(%rbp), %r15
	movq %r15, (%rax)
	# LowerLoad(1173:3).2: (^7) into ^48
	movq -24(%rbp), %rax
	movq (%rax), %rbx
	# LowerGetelementptr(1174:3): pointer-type -> ^49
	movq -16(%rbp), %rax
	addq %rbx, %rax
	# MovePhi: ^49 -> ^51
	movq %rax, -8(%rbp)
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4___M225:
	# LowerStore(1179:3).3: mov $imm, ^51
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
	# SetupCalls(1194:3): move argument @_ZStL8__ioinit
	movq _ZStL8__ioinit@GOTPCREL(%rip), %rdi
	callq _ZNSt8ios_base4InitC1Ev@PLT
	# SetupCalls(1195:3): move argument @_ZNSt8ios_base4InitD1Ev
	movq _ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	# SetupCalls(1195:3): move argument getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0)
	movq _ZStL8__ioinit@GOTPCREL(%rip), %rsi
	# SetupCalls(1195:3): move argument @__dso_handle
	movq __dso_handle@GOTPCREL(%rip), %rdx
	callq __cxa_atexit@PLT
	# SetupCalls(1195:3): move result from %rax
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
	movq %r12, -120(%rbp)
	movq %r13, -88(%rbp)
	movq %r14, -96(%rbp)
	movq %r15, -136(%rbp)
	# LowerGetelementptr(961:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^6, indices=0,1
	movq %rdi, %rax
	addq $8, %rax
	# LowerLoad(962:3).2: (^6) into ^7
	movq (%rax), %rbx
	movq %rdx, %rax
	addq %rsi, %rax
	movq %rbx, %r13
	subq %rax, %r13
	movq %r8, %rax
	subq %rdx, %rax
	movq %rax, %r14
	addq %rbx, %r14
	# LowerGetelementptr(967:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^12, indices=0,0,0
	movq %rdi, -24(%rbp)
	# LowerLoad(968:3).2: (^12) into ^13
	movq -24(%rbp), %rbx
	movq (%rbx), %rax
	# LowerGetelementptr(969:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^14, indices=0,2
	movq %rdi, %rbx
	addq $16, %rbx
	movq %rbx, %r12
	# LowerIcmp(971:3): ^13 vs. operand ^15
	cmpq %r12, %rax
	sete %al
	# LowerGetelementptr(972:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^17, indices=0,2,0
	movq %rdi, %rbx
	addq $16, %rbx
	# LowerLoad(973:3).2: (^17) into ^18
	movq (%rbx), %rdi
	cmpq $0, %rax
	movq $15, %r15
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__RC0
	movq %rdi, %r15
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__RC0:
	# LowerIcmp(975:3): ^11 vs. intlike 0
	cmpq $0, %r14
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
	# SetupCalls(979:3): move argument getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)
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
	# LowerIcmp(983:3): ^11 vs. operand ^19
	cmpq %r15, %r14
	seta %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M66
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M63:
	# MovePhi: ^11 -> ^31 (in new block 75 whose parent is 22)
	movq %r14, -8(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M86
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M66:
	movq %r15, %rax
	shlq $1, %rax
	# LowerIcmp(988:3): ^11 vs. operand ^25
	cmpq %rax, %r14
	setb %dil
	cmpb $0, %dil
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M75
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M72:
	# MovePhi: ^11 -> ^31 (in new block 74 whose parent is 24)
	movq %r14, -8(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M86
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M75:
	# LowerIcmp(992:3): ^25 vs. intlike 9223372036854775807
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
	movq -8(%rbp), %r14
	addq $1, %r14
	# LowerIcmp(999:3): ^32 vs. intlike 0
	cmpq $0, %r14
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
	# SetupCalls(1007:3): move argument ^32
	movq %r14, %rdi
	callq _Znwm@PLT
	# SetupCalls(1007:3): move result from %rax
	movq %rax, %r14
	# Unclobber %r8
	movq -56(%rbp), %r8
	# Unclobber %rcx
	movq -48(%rbp), %rcx
	# Unclobber %rdx
	movq -40(%rbp), %rdx
	# Unclobber %rsi
	movq -32(%rbp), %rsi
	# LowerIcmp(1008:3): %rsi vs. intlike 0
	cmpq $0, %rsi
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M176
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M139:
	# LowerLoad(1012:3).2: (^12) into ^39
	movq -24(%rbp), %rax
	movq (%rax), %r9
	# LowerIcmp(1013:3): %rsi vs. intlike 1
	cmpq $1, %rsi
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M145
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M150
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M145:
	# LowerLoad(1017:3).2: (^39) into ^42
	movb (%r9), %al
	# LowerStore(1018:3).9: mov ^42, (^36)
	movb %al, (%r14)
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
	# SetupCalls(1022:3): move argument ^36
	movq %r14, %rdi
	# SetupCalls(1022:3): move argument ^39
	movq %r9, %rsi
	# SetupCalls(1022:3): move argument %rsi
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
	# LowerIcmp(1026:3): %rcx vs. intlike 0
	cmpq $0, %rcx
	setne %al
	# LowerIcmp(1027:3): %r8 vs. intlike 0
	cmpq $0, %r8
	setne %dil
	movb %al, %r9b
	andb %dil, %r9b
	cmpb $0, %r9b
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M185
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M223
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M185:
	# LowerGetelementptr(1032:3): pointer-type -> ^49
	movq %rsi, %rax
	addq %r14, %rax
	# LowerIcmp(1033:3): %r8 vs. intlike 1
	cmpq $1, %r8
	sete %dil
	cmpb $0, %dil
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M192
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M197
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M192:
	# LowerLoad(1037:3).2: (%rcx) into ^52
	movb (%rcx), %dil
	# LowerStore(1038:3).9: mov ^52, (^49)
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
	# SetupCalls(1042:3): move argument ^49
	movq %rax, %rdi
	# SetupCalls(1042:3): move argument %rcx
	# Semiunclobber %rcx into %rsi
	movq -48(%rbp), %rsi
	# SetupCalls(1042:3): move argument %r8
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
	# LowerIcmp(1046:3): ^9 vs. intlike 0
	cmpq $0, %r13
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M227
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M232
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M227:
	# LowerLoad(1050:3).2: (^12) into ^57
	movq -24(%rbp), %rax
	movq (%rax), %rcx
	# MovePhi: ^57 -> ^69
	movq %rcx, -16(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M285
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M232:
	# LowerGetelementptr(1054:3): pointer-type -> ^59
	movq %rsi, %rax
	addq %r14, %rax
	# LowerGetelementptr(1055:3): pointer-type -> ^60
	movq %r8, %r9
	addq %rax, %r9
	# LowerLoad(1056:3).2: (^12) into ^61
	movq -24(%rbp), %rax
	movq (%rax), %r15
	# LowerGetelementptr(1057:3): pointer-type -> ^62
	movq %rsi, %rcx
	addq %r15, %rcx
	# LowerGetelementptr(1058:3): pointer-type -> ^63
	movq %rdx, %rax
	addq %rcx, %rax
	# LowerIcmp(1059:3): ^9 vs. intlike 1
	cmpq $1, %r13
	sete %cl
	cmpb $0, %cl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M250
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M257
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M250:
	# LowerLoad(1063:3).2: (^63) into ^66
	movb (%rax), %cl
	# LowerStore(1064:3).9: mov ^66, (^60)
	movb %cl, (%r9)
	# MovePhi: ^61 -> ^69
	movq %r15, -16(%rbp)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M285
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M257:
	# Clobber %r9
	movq %r9, -64(%rbp)
	# Clobber %rax
	movq %rax, -72(%rbp)
	# SetupCalls(1068:3): move argument ^60
	movq %r9, %rdi
	# SetupCalls(1068:3): move argument ^63
	movq %rax, %rsi
	# SetupCalls(1068:3): move argument ^9
	movq %r13, %rdx
	callq memcpy@PLT
	# Unclobber %rax
	movq -72(%rbp), %rax
	# Unclobber %r9
	movq -64(%rbp), %r9
	# MovePhi: ^61 -> ^69
	movq %r15, -16(%rbp)
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M285:
	# LowerIcmp(1073:3): ^69 vs. operand ^15
	cmpq %r12, -16(%rbp)
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M311
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M289:
	# SetupCalls(1077:3): move argument ^69
	movq -16(%rbp), %rdi
	callq _ZdlPv@PLT
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm__M311:
	# LowerStore(1081:3).9: mov ^36, (^12)
	movq -24(%rbp), %rax
	movq %r14, (%rax)
	# LowerStore(1082:3).9: mov ^31, (^17)
	# Fixing movq -8(%rbp), (%rbx)
	movq -8(%rbp), %r15
	movq %r15, (%rbx)
	movq -136(%rbp), %r15
	movq -96(%rbp), %r14
	movq -88(%rbp), %r13
	movq -120(%rbp), %r12
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
	movq %r13, -80(%rbp)
	movq %r14, -72(%rbp)
	movq %r15, -96(%rbp)
	# LowerGetelementptr(755:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^6, indices=0,1
	movq %rdi, -8(%rbp)
	addq $8, -8(%rbp)
	# LowerLoad(756:3).2: (^6) into ^7
	movq -8(%rbp), %rax
	movq (%rax), %rbx
	movq %rdx, %rax
	movabsq $9223372036854775807, %r9
	addq %r9, %rax
	movq %rax, %r9
	subq %rbx, %r9
	# LowerIcmp(759:3): ^9 vs. operand %r8
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
	# SetupCalls(763:3): move argument getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0)
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
	movq %rax, %r14
	addq %rbx, %r14
	# LowerGetelementptr(769:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^15, indices=0,0,0
	movq %rdi, %r13
	# LowerLoad(770:3).2: (^15) into ^16
	movq (%r13), %rax
	# LowerGetelementptr(771:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^17, indices=0,2
	movq %rdi, %r9
	addq $16, %r9
	movq %r9, %r10
	# LowerIcmp(773:3): ^16 vs. operand ^18
	cmpq %r10, %rax
	sete %r9b
	# LowerGetelementptr(774:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^20, indices=0,2,0
	movq %rdi, %r10
	addq $16, %r10
	# LowerLoad(775:3).2: (^20) into ^21
	movq (%r10), %r11
	cmpq $0, %r9
	movq $15, %r9
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__RC0
	movq %r11, %r9
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__RC0:
	# LowerIcmp(777:3): ^14 vs. operand ^22
	cmpq %r9, %r14
	seta %r9b
	cmpb $0, %r9b
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M449
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M63:
	# LowerGetelementptr(781:3): pointer-type -> ^25
	movq %rsi, %r12
	addq %rax, %r12
	movq %rdx, %rdi
	addq %rsi, %rdi
	movq %rbx, %r15
	subq %rdi, %r15
	# LowerIcmp(784:3): ^16 vs. operand %rcx
	cmpq %rcx, %rax
	seta %sil
	# LowerGetelementptr(785:3): pointer-type -> ^29
	movq %rbx, %rdi
	addq %rax, %rdi
	# LowerIcmp(786:3): ^29 vs. operand %rcx
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
	# LowerIcmp(791:3): ^27 vs. intlike 0
	cmpq $0, %r15
	sete %al
	# LowerIcmp(792:3): %r8 vs. operand %rdx
	cmpq %rdx, %r8
	sete %bl
	movb %bl, %sil
	orb %al, %sil
	cmpb $0, %sil
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M133
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M92:
	# LowerGetelementptr(797:3): pointer-type -> ^37
	movq %r8, %rax
	addq %r12, %rax
	# LowerGetelementptr(798:3): pointer-type -> ^38
	movq %rdx, %rbx
	addq %r12, %rbx
	# LowerIcmp(799:3): ^27 vs. intlike 1
	cmpq $1, %r15
	sete %dl
	cmpb $0, %dl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M102
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M107
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M102:
	# LowerLoad(803:3).2: (^38) into ^41
	movb (%rbx), %dl
	# LowerStore(804:3).9: mov ^41, (^37)
	movb %dl, (%rax)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M133
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M107:
	# Clobber %rcx
	movq %rcx, -40(%rbp)
	# Clobber %r8
	movq %r8, -48(%rbp)
	# Clobber %rax
	movq %rax, -56(%rbp)
	# SetupCalls(808:3): move argument ^37
	movq %rax, %rdi
	# SetupCalls(808:3): move argument ^38
	movq %rbx, %rsi
	# SetupCalls(808:3): move argument ^27
	movq %r15, %rdx
	callq memmove@PLT
	# Unclobber %rax
	movq -56(%rbp), %rax
	# Unclobber %r8
	movq -48(%rbp), %r8
	# Unclobber %rcx
	movq -40(%rbp), %rcx
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M133:
	# LowerSwitch(812:3): begin conditions
	cmpq $0, %r8
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	cmpq $1, %r8
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M140
	# LowerSwitch(812:3): default
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M145
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M140:
	# LowerLoad(818:3).2: (%rcx) into ^45
	movb (%rcx), %al
	# LowerStore(819:3).9: mov ^45, (^25)
	movb %al, (%r12)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M145:
	# Clobber %rcx
	movq %rcx, -40(%rbp)
	# Clobber %r8
	movq %r8, -48(%rbp)
	# SetupCalls(823:3): move argument ^25
	movq %r12, %rdi
	# SetupCalls(823:3): move argument %rcx
	# Semiunclobber %rcx into %rsi
	movq -40(%rbp), %rsi
	# SetupCalls(823:3): move argument %r8
	# Semiunclobber %r8 into %rdx
	movq -48(%rbp), %rdx
	callq memcpy@PLT
	# Unclobber %r8
	movq -48(%rbp), %r8
	# Unclobber %rcx
	movq -40(%rbp), %rcx
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M171:
	# LowerIcmp(827:3): %r8 vs. operand %rdx
	cmpq %rdx, %r8
	seta %al
	movq %r8, %rax
	addq $-1, %rax
	# LowerIcmp(829:3): ^49 vs. operand %rdx
	cmpq %rdx, %rax
	setb %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M180
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M215
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M180:
	# LowerIcmp(833:3): %r8 vs. intlike 1
	cmpq $1, %r8
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M184
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M189
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M184:
	# LowerLoad(837:3).2: (%rcx) into ^54
	movb (%rcx), %al
	# LowerStore(838:3).9: mov ^54, (^25)
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
	# SetupCalls(842:3): move argument ^25
	movq %r12, %rdi
	# SetupCalls(842:3): move argument %rcx
	# Semiunclobber %rcx into %rsi
	movq -40(%rbp), %rsi
	# SetupCalls(842:3): move argument %r8
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
	# LowerIcmp(846:3): ^27 vs. intlike 0
	cmpq $0, %r15
	sete %al
	# LowerIcmp(847:3): %r8 vs. operand %rdx
	cmpq %rdx, %r8
	sete %bl
	movb %bl, %sil
	orb %al, %sil
	cmpb $0, %sil
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M265
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M224:
	# LowerGetelementptr(852:3): pointer-type -> ^61
	movq %r8, %rsi
	addq %r12, %rsi
	# LowerGetelementptr(853:3): pointer-type -> ^62
	movq %rdx, %rbx
	addq %r12, %rbx
	# LowerIcmp(854:3): ^27 vs. intlike 1
	cmpq $1, %r15
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M234
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M239
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M234:
	# LowerLoad(858:3).2: (^62) into ^65
	movb (%rbx), %al
	# LowerStore(859:3).9: mov ^65, (^61)
	movb %al, (%rsi)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M265
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M239:
	# Clobber %rsi
	movq %rsi, -24(%rbp)
	# Clobber %rdx
	movq %rdx, -32(%rbp)
	# Clobber %rcx
	movq %rcx, -40(%rbp)
	# Clobber %r8
	movq %r8, -48(%rbp)
	# Clobber %rax
	movq %rax, -56(%rbp)
	# SetupCalls(863:3): move argument ^61
	movq %rsi, %rdi
	# SetupCalls(863:3): move argument ^62
	movq %rbx, %rsi
	# SetupCalls(863:3): move argument ^27
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
	# Unclobber %rsi
	movq -24(%rbp), %rsi
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M265:
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M266
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M266:
	# LowerGetelementptr(870:3): pointer-type -> ^69
	movq %r8, %rax
	addq %rcx, %rax
	# LowerGetelementptr(871:3): pointer-type -> ^70
	movq %rdx, %rbx
	addq %r12, %rbx
	# LowerIcmp(872:3): ^69 vs. operand ^70
	cmpq %rbx, %rax
	seta %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M311
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M276:
	# LowerIcmp(876:3): %r8 vs. intlike 1
	cmpq $1, %r8
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M280
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M285
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M280:
	# LowerLoad(880:3).2: (%rcx) into ^75
	movb (%rcx), %al
	# LowerStore(881:3).9: mov ^75, (^25)
	movb %al, (%r12)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M285:
	# Clobber %rcx
	movq %rcx, -40(%rbp)
	# Clobber %r8
	movq %r8, -48(%rbp)
	# SetupCalls(885:3): move argument ^25
	movq %r12, %rdi
	# SetupCalls(885:3): move argument %rcx
	# Semiunclobber %rcx into %rsi
	movq -40(%rbp), %rsi
	# SetupCalls(885:3): move argument %r8
	# Semiunclobber %r8 into %rdx
	movq -48(%rbp), %rdx
	callq memmove@PLT
	# Unclobber %r8
	movq -48(%rbp), %r8
	# Unclobber %rcx
	movq -40(%rbp), %rcx
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M311:
	# LowerIcmp(889:3): ^70 vs. operand %rcx
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
	# LowerGetelementptr(898:3): pointer-type -> ^85
	movq %rbx, %rax
	addq %r12, %rax
	# LowerIcmp(899:3): %r8 vs. intlike 1
	cmpq $1, %r8
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M330
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M335
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M330:
	# LowerLoad(903:3).2: (^85) into ^88
	movb (%rax), %bl
	# LowerStore(904:3).9: mov ^88, (^25)
	movb %bl, (%r12)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M335:
	# Clobber %r8
	movq %r8, -48(%rbp)
	# Clobber %rax
	movq %rax, -56(%rbp)
	# SetupCalls(908:3): move argument ^25
	movq %r12, %rdi
	# SetupCalls(908:3): move argument ^85
	movq %rax, %rsi
	# SetupCalls(908:3): move argument %r8
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
	# LowerSwitch(915:3): begin conditions
	cmpq $1, %r15
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M372
	cmpq $0, %r15
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M403
	# LowerSwitch(915:3): default
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M377
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M372:
	# LowerLoad(921:3).2: (%rcx) into ^95
	movb (%rcx), %al
	# LowerStore(922:3).9: mov ^95, (^25)
	movb %al, (%r12)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M403
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M377:
	# Clobber %rcx
	movq %rcx, -40(%rbp)
	# Clobber %r8
	movq %r8, -48(%rbp)
	# SetupCalls(926:3): move argument ^25
	movq %r12, %rdi
	# SetupCalls(926:3): move argument %rcx
	# Semiunclobber %rcx into %rsi
	movq -40(%rbp), %rsi
	# SetupCalls(926:3): move argument ^93
	movq %r15, %rdx
	callq memmove@PLT
	# Unclobber %r8
	movq -48(%rbp), %r8
	# Unclobber %rcx
	movq -40(%rbp), %rcx
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M403:
	# LowerGetelementptr(930:3): pointer-type -> ^98
	movq %r15, %rbx
	addq %r12, %rbx
	# LowerGetelementptr(931:3): pointer-type -> ^99
	movq %r8, %rcx
	addq %r12, %rcx
	movq %r8, %rax
	subq %r15, %rax
	# LowerSwitch(933:3): begin conditions
	cmpq $1, %rax
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M418
	cmpq $0, %rax
	je .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	# LowerSwitch(933:3): default
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M423
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M418:
	# LowerLoad(939:3).2: (^99) into ^102
	movb (%rcx), %al
	# LowerStore(940:3).9: mov ^102, (^98)
	movb %al, (%rbx)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M479
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm__M423:
	# Clobber %rcx
	movq %rcx, -40(%rbp)
	# Clobber %rax
	movq %rax, -56(%rbp)
	# SetupCalls(944:3): move argument ^98
	movq %rbx, %rdi
	# SetupCalls(944:3): move argument ^99
	movq %rcx, %rsi
	# SetupCalls(944:3): move argument ^100
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
	# SetupCalls(948:3): move argument %rdi
	# Semiunclobber %rdi into %rdi
	movq -16(%rbp), %rdi
	# SetupCalls(948:3): move argument %rsi
	# Semiunclobber %rsi into %rsi
	movq -24(%rbp), %rsi
	# SetupCalls(948:3): move argument %rdx
	# Semiunclobber %rdx into %rdx
	movq -32(%rbp), %rdx
	# SetupCalls(948:3): move argument %rcx
	# Semiunclobber %rcx into %rcx
	movq -40(%rbp), %rcx
	# SetupCalls(948:3): move argument %r8
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
	# LowerStore(952:3).9: mov ^14, (^6)
	movq -8(%rbp), %rax
	movq %r14, (%rax)
	# LowerLoad(953:3).2: (^15) into ^106
	movq (%r13), %rax
	# LowerGetelementptr(954:3): pointer-type -> ^107
	movq %r14, %rbx
	addq %rax, %rbx
	# LowerStore(955:3).3: mov $imm, ^107
	movb $0, (%rbx)
	movq %rdi, %rax
	movq -96(%rbp), %r15
	movq -72(%rbp), %r14
	movq -80(%rbp), %r13
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
	# upalign(740 + 0, 16)
	subq $752, %rsp
	movq %rbx, -564(%rbp)
	movq %r12, -572(%rbp)
	movq %r13, -580(%rbp)
	movq %r14, -604(%rbp)
	movq %r15, -676(%rbp)
	# LowerAlloca(536:3): size = 1, type = i8*, var = ^3
	# Fixing leaq -1(%rbp), -428(%rbp)
	leaq -1(%rbp), %r15
	movq %r15, -428(%rbp)
	# LowerAlloca(537:3): size = 1, type = i8*, var = ^4
	# Fixing leaq -2(%rbp), -444(%rbp)
	leaq -2(%rbp), %r15
	movq %r15, -444(%rbp)
	# LowerAlloca(538:3): size = 1, type = i8*, var = ^5
	# Fixing leaq -3(%rbp), -452(%rbp)
	leaq -3(%rbp), %r15
	movq %r15, -452(%rbp)
	# LowerAlloca(539:3): size = 1, type = i8*, var = ^6
	leaq -4(%rbp), %rbx
	# LowerAlloca(540:3): size = 376, type = %"class.std::__cxx11::basic_ostringstream"*, var = ^7
	# Fixing leaq -380(%rbp), -460(%rbp)
	leaq -380(%rbp), %r15
	movq %r15, -460(%rbp)
	# LowerAlloca(541:3): size = 32, type = %"class.std::__cxx11::basic_string"*, var = ^8
	# Fixing leaq -412(%rbp), -468(%rbp)
	leaq -412(%rbp), %r15
	movq %r15, -468(%rbp)
	# Fixing movq -460(%rbp), -476(%rbp)
	movq -460(%rbp), %r15
	movq %r15, -476(%rbp)
	# LowerGetelementptr(545:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^10, indices=0,2
	movq -460(%rbp), %r12
	addq $112, %r12
	# LowerGetelementptr(546:3): struct-type: %"class.std::basic_ios"* -> ^11, indices=0,0
	movq %r12, %rax
	# Clobber %rdi
	movq %rdi, -524(%rbp)
	# Clobber %rsi
	movq %rsi, -532(%rbp)
	# SetupCalls(547:3): move argument ^11
	movq %rax, %rdi
	callq _ZNSt8ios_baseC2Ev@PLT
	# Unclobber %rsi
	movq -532(%rbp), %rsi
	# Unclobber %rdi
	movq -524(%rbp), %rdi
	# LowerGetelementptr(548:3): struct-type: %"class.std::basic_ios"* -> ^12, indices=0,0,0
	movq %r12, %r13
	movq _ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(549:3).9: mov ^132, (^12)
	movq %rax, (%r13)
	# LowerGetelementptr(550:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^13, indices=0,2,1
	movq -460(%rbp), %rax
	addq $112, %rax
	addq $216, %rax
	# LowerStore(551:3).3: mov $imm, ^13
	movq $0, (%rax)
	# LowerGetelementptr(552:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^14, indices=0,2,2
	movq -460(%rbp), %rax
	addq $112, %rax
	addq $224, %rax
	# LowerStore(553:3).3: mov $imm, ^14
	movb $0, (%rax)
	# LowerGetelementptr(554:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^15, indices=0,2,3
	movq -460(%rbp), %rax
	addq $112, %rax
	addq $225, %rax
	# LowerStore(555:3).3: mov $imm, ^15
	movb $0, (%rax)
	# LowerGetelementptr(556:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^16, indices=0,2,4
	movq -460(%rbp), %rax
	addq $112, %rax
	addq $232, %rax
	movq %rax, %rcx
	# Clobber %rdi
	movq %rdi, -524(%rbp)
	# Clobber %rsi
	movq %rsi, -532(%rbp)
	# SetupCalls(558:3): move argument ^17
	movq %rcx, %rdi
	# SetupCalls(558:3): move argument 0
	movl $0, %esi
	# SetupCalls(558:3): move argument 32
	movq $32, %rdx
	callq memset@PLT
	# Unclobber %rsi
	movq -532(%rbp), %rsi
	# Unclobber %rdi
	movq -524(%rbp), %rdi
	movq _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $8, %rax
	# LowerLoad(559:3).2: (^133) into ^18
	movq (%rax), %rcx
	# LowerGetelementptr(560:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^19, indices=0,0,0
	# Fixing movq -460(%rbp), -484(%rbp)
	movq -460(%rbp), %r15
	movq %r15, -484(%rbp)
	# LowerStore(561:3).9: mov ^18, (^19)
	movq -484(%rbp), %rax
	movq %rcx, (%rax)
	movq _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerLoad(562:3).2: (^134) into ^20
	movq (%rax), %rdx
	movq -460(%rbp), %r12
	# LowerGetelementptr(564:3): struct-type: i32 () *** -> ^22, indices=-3
	movq %rcx, %rax
	addq $-24, %rax
	movq %rax, %rcx
	# LowerLoad(566:3).2: (^23) into ^24
	movq (%rcx), %rax
	# LowerGetelementptr(567:3): pointer-type -> ^25
	movq %rax, %rcx
	addq -476(%rbp), %rcx
	movq %rcx, %rax
	# LowerStore(569:3).9: mov ^20, (^26)
	movq %rdx, (%rax)
	# LowerLoad(570:3).2: (^21) into ^27
	movq (%r12), %rax
	# LowerGetelementptr(571:3): struct-type: i8* -> ^28, indices=-24
	movq %rax, %rcx
	addq $-24, %rcx
	movq %rcx, %rax
	# LowerLoad(573:3).2: (^29) into ^30
	movq (%rax), %rcx
	# LowerGetelementptr(574:3): pointer-type -> ^31
	movq %rcx, %rax
	addq -476(%rbp), %rax
	movq %rax, %rcx
	# Clobber %rdi
	movq %rdi, -524(%rbp)
	# Clobber %rsi
	movq %rsi, -532(%rbp)
	# SetupCalls(576:3): move argument ^32
	movq %rcx, %rdi
	# SetupCalls(576:3): move argument null
	movq $0, %rsi
	callq _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
	# Unclobber %rsi
	movq -532(%rbp), %rsi
	# Unclobber %rdi
	movq -524(%rbp), %rdi
	movq _ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rcx
	addq $24, %rcx
	# LowerStore(577:3).9: mov ^135, (^19)
	movq -484(%rbp), %rax
	movq %rcx, (%rax)
	movq _ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $64, %rax
	# LowerStore(578:3).9: mov ^136, (^12)
	movq %rax, (%r13)
	# LowerGetelementptr(579:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^33, indices=0,1
	movq -460(%rbp), %r13
	addq $8, %r13
	# LowerGetelementptr(580:3): struct-type: %"class.std::__cxx11::basic_stringbuf"* -> ^34, indices=0,0,0
	movq %r13, %r14
	movq _ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(581:3).9: mov ^137, (^34)
	movq %rax, (%r14)
	# LowerGetelementptr(582:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^35, indices=0,1,0,1
	movq -460(%rbp), %rax
	addq $8, %rax
	addq $8, %rax
	# LowerGetelementptr(583:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^36, indices=0,1,0,7
	# Fixing movq -460(%rbp), -492(%rbp)
	movq -460(%rbp), %r15
	movq %r15, -492(%rbp)
	addq $8, -492(%rbp)
	addq $56, -492(%rbp)
	movq %rax, %rcx
	# Clobber %rdi
	movq %rdi, -524(%rbp)
	# Clobber %rsi
	movq %rsi, -532(%rbp)
	# SetupCalls(585:3): move argument ^37
	movq %rcx, %rdi
	# SetupCalls(585:3): move argument 0
	movl $0, %esi
	# SetupCalls(585:3): move argument 48
	movq $48, %rdx
	callq memset@PLT
	# Unclobber %rsi
	movq -532(%rbp), %rsi
	# Unclobber %rdi
	movq -524(%rbp), %rdi
	# Clobber %rdi
	movq %rdi, -524(%rbp)
	# Clobber %rsi
	movq %rsi, -532(%rbp)
	# SetupCalls(586:3): move argument ^36
	movq -492(%rbp), %rdi
	callq _ZNSt6localeC1Ev@PLT
	# Unclobber %rsi
	movq -532(%rbp), %rsi
	# Unclobber %rdi
	movq -524(%rbp), %rdi
	movq _ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(587:3).9: mov ^138, (^34)
	movq %rax, (%r14)
	# LowerGetelementptr(588:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^38, indices=0,1,1
	movq -460(%rbp), %rax
	addq $8, %rax
	addq $64, %rax
	# LowerStore(589:3).3: mov $imm, ^38
	movl $16, (%rax)
	# LowerGetelementptr(590:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^39, indices=0,1,2
	# Fixing movq -460(%rbp), -500(%rbp)
	movq -460(%rbp), %r15
	movq %r15, -500(%rbp)
	addq $8, -500(%rbp)
	addq $72, -500(%rbp)
	# LowerGetelementptr(591:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^40, indices=0,1,2,2
	movq -460(%rbp), %rax
	addq $8, %rax
	addq $72, %rax
	addq $16, %rax
	movq -500(%rbp), %rcx
	# LowerStore(593:3).9: mov ^40, (^41)
	movq %rax, (%rcx)
	# LowerGetelementptr(594:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^42, indices=0,1,2,1
	movq -460(%rbp), %rcx
	addq $8, %rcx
	addq $72, %rcx
	addq $8, %rcx
	# LowerStore(595:3).3: mov $imm, ^42
	movq $0, (%rcx)
	movq %rax, -508(%rbp)
	# LowerStore(597:3).3: mov $imm, ^43
	movq -508(%rbp), %rax
	movb $0, (%rax)
	# LowerLoad(598:3).2: (^21) into ^44
	movq (%r12), %rax
	# LowerGetelementptr(599:3): struct-type: i8* -> ^45, indices=-24
	movq %rax, %rcx
	addq $-24, %rcx
	movq %rcx, %rax
	# LowerLoad(601:3).2: (^46) into ^47
	movq (%rax), %rcx
	# LowerGetelementptr(602:3): pointer-type -> ^48
	movq %rcx, %rax
	addq -476(%rbp), %rax
	movq %rax, %rcx
	# LowerGetelementptr(604:3): struct-type: %"class.std::__cxx11::basic_stringbuf"* -> ^50, indices=0,0
	movq %r13, %rax
	# Clobber %rdi
	movq %rdi, -524(%rbp)
	# Clobber %rsi
	movq %rsi, -532(%rbp)
	# SetupCalls(605:3): move argument ^49
	movq %rcx, %rdi
	# SetupCalls(605:3): move argument ^50
	movq %rax, %rsi
	callq _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
	# Unclobber %rsi
	movq -532(%rbp), %rsi
	# Unclobber %rdi
	movq -524(%rbp), %rdi
	# Fixing movq -460(%rbp), -516(%rbp)
	movq -460(%rbp), %r15
	movq %r15, -516(%rbp)
	# LowerGetelementptr(607:3): struct-type: %"struct.std::__detail::_Quoted_string"* -> ^52, indices=0,1
	movq %rsi, %r12
	addq $8, %r12
	# LowerLoad(608:3).2: (^52) into ^53
	movb (%r12), %al
	# LowerStore(610:3).9: mov ^53, (^6)
	movb %al, (%rbx)
	# Clobber %rdi
	movq %rdi, -524(%rbp)
	# Clobber %rsi
	movq %rsi, -532(%rbp)
	# SetupCalls(611:3): move argument ^51
	movq -516(%rbp), %rdi
	# SetupCalls(611:3): move argument ^6
	movq %rbx, %rsi
	# SetupCalls(611:3): move argument 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(611:3): move result from %rax
	movq %rax, %rax
	# Unclobber %rsi
	movq -532(%rbp), %rsi
	# Unclobber %rdi
	movq -524(%rbp), %rdi
	# LowerGetelementptr(613:3): struct-type: %"struct.std::__detail::_Quoted_string"* -> ^55, indices=0,0
	movq %rsi, %rax
	# LowerLoad(614:3).2: (^55) into ^56
	movq (%rax), %rbx
	# LowerGetelementptr(615:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^57, indices=0,0,0
	movq %rbx, %rax
	# LowerLoad(616:3).2: (^57) into ^58
	movq (%rax), %rcx
	# LowerGetelementptr(617:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^59, indices=0,1
	movq %rbx, %rax
	addq $8, %rax
	# LowerLoad(618:3).2: (^59) into ^60
	movq (%rax), %rbx
	# LowerGetelementptr(619:3): pointer-type -> ^61
	movq %rbx, %r13
	addq %rcx, %r13
	# LowerIcmp(620:3): ^60 vs. intlike 0
	cmpq $0, %rbx
	sete %al
	cmpb $0, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M359
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M353:
	# LowerGetelementptr(624:3): struct-type: %"struct.std::__detail::_Quoted_string"* -> ^64, indices=0,2
	movq %rsi, -436(%rbp)
	addq $9, -436(%rbp)
	# MovePhi: ^58 -> ^114
	movq %rcx, -420(%rbp)
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M671
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M359:
	# LowerLoad(628:3).2: (^52) into ^66
	movb (%r12), %al
	# LowerStore(630:3).9: mov ^66, (^5)
	movq -452(%rbp), %rbx
	movb %al, (%rbx)
	# Clobber %rdi
	movq %rdi, -524(%rbp)
	# SetupCalls(631:3): move argument ^51
	movq -516(%rbp), %rdi
	# SetupCalls(631:3): move argument ^5
	movq -452(%rbp), %rsi
	# SetupCalls(631:3): move argument 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(631:3): move result from %rax
	movq %rax, %rax
	# Unclobber %rdi
	movq -524(%rbp), %rdi
	movq -468(%rbp), %rax
	# LowerGetelementptr(637:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^69, indices=0,2
	movq -468(%rbp), %rax
	addq $16, %rax
	movq -468(%rbp), %rbx
	# LowerStore(639:3).9: mov ^69, (^70)
	movq %rax, (%rbx)
	# LowerGetelementptr(640:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^71, indices=0,1
	movq -468(%rbp), %rbx
	addq $8, %rbx
	# LowerStore(641:3).3: mov $imm, ^71
	movq $0, (%rbx)
	movq %rax, %r14
	# LowerStore(643:3).3: mov $imm, ^72
	movb $0, (%r14)
	# LowerGetelementptr(644:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^73, indices=0,1,0,5
	movq -460(%rbp), %rax
	addq $8, %rax
	addq $40, %rax
	# LowerLoad(645:3).2: (^73) into ^74
	movq (%rax), %rcx
	# LowerIcmp(646:3): ^74 vs. intlike 0
	cmpq $0, %rcx
	sete %al
	# LowerGetelementptr(647:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^76, indices=0,1,0,3
	movq -460(%rbp), %rdx
	addq $8, %rdx
	addq $24, %rdx
	# LowerLoad(648:3).2: (^76) into ^77
	movq (%rdx), %rsi
	# LowerIcmp(649:3): ^74 vs. operand ^77
	cmpq %rsi, %rcx
	seta %dl
	cmpq $0, %rdx
	movq %rcx, %rdx
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC0
	movq %rsi, %rdx
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC0:
	# LowerIcmp(651:3): ^79 vs. intlike 0
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
	# LowerGetelementptr(656:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^83, indices=0,1,0,4
	movq -460(%rbp), %rax
	addq $8, %rax
	addq $32, %rax
	# LowerLoad(657:3).2: (^83) into ^84
	movq (%rax), %r8
	movq %rdx, %rax
	movq %r8, %rcx
	movq %rax, %r9
	subq %rcx, %r9
	# Clobber %rdi
	movq %rdi, -524(%rbp)
	# Clobber %rdx
	movq %rdx, -540(%rbp)
	# SetupCalls(661:3): move argument ^8
	movq -468(%rbp), %rdi
	# SetupCalls(661:3): move argument 0
	movq $0, %rsi
	# SetupCalls(661:3): move argument 0
	movq $0, %rdx
	# SetupCalls(661:3): move argument ^84
	movq %r8, %rcx
	# SetupCalls(661:3): move argument ^87
	movq %r9, %r8
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	# SetupCalls(661:3): move result from %rax
	movq %rax, %rax
	# Unclobber %rdx
	movq -540(%rbp), %rdx
	# Unclobber %rdi
	movq -524(%rbp), %rdi
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M500
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M476:
	# Clobber %rdi
	movq %rdi, -524(%rbp)
	# SetupCalls(665:3): move argument ^8
	movq -468(%rbp), %rdi
	# SetupCalls(665:3): move argument ^39
	movq -500(%rbp), %rsi
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	# Unclobber %rdi
	movq -524(%rbp), %rdi
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M500:
	# LowerGetelementptr(669:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^91, indices=0,0,0
	movq -468(%rbp), %r15
	# LowerLoad(670:3).2: (^91) into ^92
	movq (%r15), %rax
	# LowerLoad(671:3).2: (^71) into ^93
	movq (%rbx), %rcx
	# Clobber %rdi
	movq %rdi, -524(%rbp)
	# SetupCalls(672:3): move argument %rdi
	# Semiunclobber %rdi into %rdi
	movq -524(%rbp), %rdi
	# SetupCalls(672:3): move argument ^92
	movq %rax, %rsi
	# SetupCalls(672:3): move argument ^93
	movq %rcx, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(672:3): move result from %rax
	movq %rax, %rax
	# Unclobber %rdi
	movq -524(%rbp), %rdi
	# LowerLoad(673:3).2: (^91) into ^95
	movq (%r15), %rax
	# LowerIcmp(674:3): ^95 vs. operand ^72
	cmpq %r14, %rax
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M561
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M539:
	# Clobber %rdi
	movq %rdi, -524(%rbp)
	# Clobber %rax
	movq %rax, -548(%rbp)
	# SetupCalls(678:3): move argument ^95
	movq %rax, %rdi
	callq _ZdlPv@PLT
	# Unclobber %rax
	movq -548(%rbp), %rax
	# Unclobber %rdi
	movq -524(%rbp), %rdi
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M561:
	# LowerLoad(683:3).4: _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE into ^99
	movq _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rcx
	movq (%rcx), %rcx
	# LowerStore(684:3).9: mov ^99, (^19)
	movq -484(%rbp), %rax
	movq %rcx, (%rax)
	movq _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rbx
	addq $24, %rbx
	# LowerLoad(685:3).2: (^139) into ^100
	movq (%rbx), %rax
	# LowerGetelementptr(686:3): struct-type: i32 () *** -> ^101, indices=-3
	movq %rcx, %rbx
	addq $-24, %rbx
	movq %rbx, %rcx
	# LowerLoad(688:3).2: (^102) into ^103
	movq (%rcx), %rbx
	# LowerGetelementptr(689:3): pointer-type -> ^104
	movq %rbx, %rcx
	addq -476(%rbp), %rcx
	movq %rcx, %rbx
	# LowerStore(691:3).9: mov ^100, (^105)
	movq %rax, (%rbx)
	# LowerGetelementptr(692:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^106, indices=0,1,0,0
	movq -460(%rbp), %rbx
	addq $8, %rbx
	movq _ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(693:3).9: mov ^140, (^106)
	movq %rax, (%rbx)
	# LowerGetelementptr(694:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^107, indices=0,1,2,0,0
	movq -460(%rbp), %rax
	addq $8, %rax
	addq $72, %rax
	# LowerLoad(695:3).2: (^107) into ^108
	movq (%rax), %rcx
	# LowerIcmp(696:3): ^108 vs. operand ^43
	cmpq %rax, %rcx
	sete %al
	cmpb $0, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M621
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M599:
	# Clobber %rdi
	movq %rdi, -524(%rbp)
	# Clobber %rcx
	movq %rcx, -556(%rbp)
	# SetupCalls(700:3): move argument ^108
	movq %rcx, %rdi
	callq _ZdlPv@PLT
	# Unclobber %rcx
	movq -556(%rbp), %rcx
	# Unclobber %rdi
	movq -524(%rbp), %rdi
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M621:
	movq _ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(704:3).9: mov ^141, (^106)
	movq %rax, (%rbx)
	# Clobber %rdi
	movq %rdi, -524(%rbp)
	# SetupCalls(705:3): move argument ^36
	movq -492(%rbp), %rdi
	callq _ZNSt6localeD1Ev@PLT
	# Unclobber %rdi
	movq -524(%rbp), %rdi
	# LowerGetelementptr(706:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* -> ^112, indices=0,2,0
	movq -460(%rbp), %rax
	addq $112, %rax
	# Clobber %rdi
	movq %rdi, -524(%rbp)
	# SetupCalls(707:3): move argument ^112
	movq %rax, %rdi
	callq _ZNSt8ios_baseD2Ev@PLT
	# Unclobber %rdi
	movq -524(%rbp), %rdi
	movq -676(%rbp), %r15
	movq -604(%rbp), %r14
	movq -580(%rbp), %r13
	movq -572(%rbp), %r12
	movq -564(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M671:
	# LowerLoad(714:3).2: (^114) into ^115
	movq -420(%rbp), %rax
	movb (%rax), %bl
	# LowerLoad(718:3).2: (^52) into ^116
	movb (%r12), %al
	# LowerIcmp(719:3): ^115 vs. operand ^116
	cmpb %al, %bl
	sete %cl
	# LowerLoad(720:3).2: (^64) into ^118
	movq -436(%rbp), %rax
	movb (%rax), %dl
	# LowerIcmp(722:3): ^115 vs. operand ^118
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
	# LowerStore(730:3).9: mov ^118, (^4)
	movq -444(%rbp), %rax
	movb %dl, (%rax)
	# Clobber %rdi
	movq %rdi, -524(%rbp)
	# Clobber %rdx
	movq %rdx, -540(%rbp)
	# SetupCalls(731:3): move argument ^51
	movq -516(%rbp), %rdi
	# SetupCalls(731:3): move argument ^4
	movq -444(%rbp), %rsi
	# SetupCalls(731:3): move argument 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(731:3): move result from %rax
	movq %rax, %rax
	# Unclobber %rdx
	movq -540(%rbp), %rdx
	# Unclobber %rdi
	movq -524(%rbp), %rdi
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M717:
	# LowerStore(737:3).9: mov ^115, (^3)
	movq -428(%rbp), %rax
	movb %bl, (%rax)
	# Clobber %rdi
	movq %rdi, -524(%rbp)
	# SetupCalls(738:3): move argument ^51
	movq -516(%rbp), %rdi
	# SetupCalls(738:3): move argument ^3
	movq -428(%rbp), %rsi
	# SetupCalls(738:3): move argument 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(738:3): move result from %rax
	movq %rax, %rax
	# Unclobber %rdi
	movq -524(%rbp), %rdi
	# LowerGetelementptr(740:3): struct-type: i8* -> ^125, indices=1
	movq -420(%rbp), %rax
	addq $1, %rax
	# LowerIcmp(741:3): ^125 vs. operand ^61
	cmpq %r13, %rax
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M359
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M753:
	# MovePhi: ^125 -> ^114 (in new block 142 whose parent is 123)
	movq %rax, -420(%rbp)
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
	# LowerGetelementptr(333:3): struct-type: [2 x i8]* -> ^4, indices=0,0
	movq %rsi, %rbx
	# Clobber %rdi
	movq %rdi, -8(%rbp)
	# SetupCalls(334:3): move argument ^4
	movq %rbx, %rdi
	callq strlen@PLT
	# SetupCalls(334:3): move result from %rax
	movq %rax, %r12
	# Unclobber %rdi
	movq -8(%rbp), %rdi
	# LowerGetelementptr(335:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^6, indices=0,0,2
	movq %rdi, %rcx
	addq $16, %rcx
	movq %rdi, %rax
	# LowerStore(337:3).9: mov ^6, (^7)
	movq %rcx, (%rax)
	# LowerIcmp(340:3): ^5 vs. intlike 15
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
	# LowerIcmp(348:3): ^5 vs. intlike 0
	cmpq $0, %r12
	setl %al
	cmpb $0, %al
	jne .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M43
	jmp .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M65
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M43:
	# Clobber %rdi
	movq %rdi, -8(%rbp)
	# SetupCalls(352:3): move argument getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)
	movq .str.3@GOTPCREL(%rip), %rdi
	callq _ZSt20__throw_length_errorPKc@PLT
	# Unclobber %rdi
	movq -8(%rbp), %rdi
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M65:
	movq %r12, %r13
	addq $1, %r13
	# LowerIcmp(357:3): ^15 vs. intlike 0
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
	# SetupCalls(365:3): move argument ^15
	movq %r13, %rdi
	callq _Znwm@PLT
	# SetupCalls(365:3): move result from %rax
	movq %rax, %r13
	# Unclobber %rdi
	movq -8(%rbp), %rdi
	# LowerGetelementptr(366:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^20, indices=0,0,0,0
	movq %rdi, %rax
	# LowerStore(367:3).9: mov ^19, (^20)
	movq %r13, (%rax)
	# LowerGetelementptr(368:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^21, indices=0,0,2,0
	movq %rdi, %rax
	addq $16, %rax
	# LowerStore(369:3).9: mov ^5, (^21)
	movq %r12, (%rax)
	# MovePhi: ^19 -> ^23
	movq %r13, %r14
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M126:
	# LowerSwitch(374:3): begin conditions
	cmpq $1, %r12
	je .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M133
	cmpq $0, %r12
	je .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M164
	# LowerSwitch(374:3): default
	jmp .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M138
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M133:
	# LowerLoad(380:3).2: (^4) into ^25
	movb (%rbx), %al
	# LowerStore(381:3).9: mov ^25, (^23)
	movb %al, (%r14)
	jmp .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M164
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M138:
	# Clobber %rdi
	movq %rdi, -8(%rbp)
	# SetupCalls(385:3): move argument ^23
	movq %r14, %rdi
	# SetupCalls(385:3): move argument ^4
	movq %rbx, %rsi
	# SetupCalls(385:3): move argument ^5
	movq %r12, %rdx
	callq memcpy@PLT
	# Unclobber %rdi
	movq -8(%rbp), %rdi
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M164:
	# LowerGetelementptr(389:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^28, indices=0,0,1
	movq %rdi, %rax
	addq $8, %rax
	# LowerStore(390:3).9: mov ^5, (^28)
	movq %r12, (%rax)
	# LowerGetelementptr(391:3): pointer-type -> ^29
	movq %r12, %rax
	addq %r14, %rax
	# LowerStore(392:3).3: mov $imm, ^29
	movb $0, (%rax)
	# LowerGetelementptr(393:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^30, indices=0,1
	movq %rdi, %rax
	addq $32, %rax
	# Clobber %rdi
	movq %rdi, -8(%rbp)
	# SetupCalls(394:3): move argument ^30
	movq %rax, %rdi
	callq _ZNSt10filesystem7__cxx114path5_ListC1Ev@PLT
	# Unclobber %rdi
	movq -8(%rbp), %rdi
	# Clobber %rdi
	movq %rdi, -8(%rbp)
	# SetupCalls(395:3): move argument %rdi
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
	# LowerAlloca(404:3): size = 16, type = {%"class.std::__cxx11::basic_string"*, i64}*, var = ^3
	leaq -16(%rbp), %rbx
	movq %rbx, -72(%rbp)
	# LowerAlloca(406:3): size = 32, type = %"class.std::__cxx11::basic_string"*, var = ^5
	# Fixing leaq -48(%rbp), -56(%rbp)
	pushq %r15
	leaq -48(%rbp), %r15
	movq %r15, -56(%rbp)
	popq %r15
	movq %rbx, %rax
	movq -56(%rbp), %rax
	# LowerGetelementptr(412:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^8, indices=0,0,0,0
	movq %rsi, %rax
	# LowerLoad(413:3).2: (^8) into ^9
	movq (%rax), %r13
	# LowerGetelementptr(414:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^10, indices=0,0,1
	movq %rsi, %rax
	addq $8, %rax
	# LowerLoad(415:3).2: (^10) into ^11
	movq (%rax), %r14
	# LowerGetelementptr(416:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^12, indices=0,2
	# Fixing movq -56(%rbp), -64(%rbp)
	pushq %r15
	movq -56(%rbp), %r15
	movq %r15, -64(%rbp)
	popq %r15
	addq $16, -64(%rbp)
	movq -56(%rbp), %rax
	# LowerStore(418:3).9: mov ^12, (^13)
	# Fixing movq -64(%rbp), (%rax)
	pushq %r15
	movq -64(%rbp), %r15
	movq %r15, (%rax)
	popq %r15
	# LowerIcmp(421:3): ^11 vs. intlike 15
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
	# LowerIcmp(429:3): ^11 vs. intlike 0
	cmpq $0, %r14
	setl %al
	cmpb $0, %al
	jne .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M34
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M56
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M34:
	# Clobber %rdi
	movq %rdi, -80(%rbp)
	# SetupCalls(433:3): move argument getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)
	movq .str.3@GOTPCREL(%rip), %rdi
	callq _ZSt20__throw_length_errorPKc@PLT
	# Unclobber %rdi
	movq -80(%rbp), %rdi
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M56:
	movq %r14, %r12
	addq $1, %r12
	# LowerIcmp(438:3): ^21 vs. intlike 0
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
	# SetupCalls(446:3): move argument ^21
	movq %r12, %rdi
	callq _Znwm@PLT
	# SetupCalls(446:3): move result from %rax
	movq %rax, %r12
	# Unclobber %rdi
	movq -80(%rbp), %rdi
	# LowerGetelementptr(447:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^26, indices=0,0,0
	movq -56(%rbp), %rax
	# LowerStore(448:3).9: mov ^25, (^26)
	movq %r12, (%rax)
	# LowerGetelementptr(449:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^27, indices=0,2,0
	movq -56(%rbp), %rax
	addq $16, %rax
	# LowerStore(450:3).9: mov ^11, (^27)
	movq %r14, (%rax)
	# MovePhi: ^25 -> ^29
	movq %r12, %r15
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M117:
	# LowerSwitch(455:3): begin conditions
	cmpq $1, %r14
	je .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M124
	cmpq $0, %r14
	je .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M155
	# LowerSwitch(455:3): default
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M129
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M124:
	# LowerLoad(461:3).2: (^9) into ^31
	movb (%r13), %al
	# LowerStore(462:3).9: mov ^31, (^29)
	movb %al, (%r15)
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M155
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M129:
	# Clobber %rdi
	movq %rdi, -80(%rbp)
	# SetupCalls(466:3): move argument ^29
	movq %r15, %rdi
	# SetupCalls(466:3): move argument ^9
	movq %r13, %rsi
	# SetupCalls(466:3): move argument ^11
	movq %r14, %rdx
	callq memcpy@PLT
	# Unclobber %rdi
	movq -80(%rbp), %rdi
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M155:
	# LowerGetelementptr(470:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^34, indices=0,1
	movq -56(%rbp), %rax
	addq $8, %rax
	# LowerStore(471:3).9: mov ^11, (^34)
	movq %r14, (%rax)
	# LowerGetelementptr(472:3): pointer-type -> ^35
	movq %r14, %rax
	addq %r15, %rax
	# LowerStore(473:3).3: mov $imm, ^35
	movb $0, (%rax)
	# LowerGetelementptr(474:3): struct-type: {%"class.std::__cxx11::basic_string"*, i64}* -> ^36, indices=0,0
	movq %rbx, %rax
	# LowerStore(475:3).9: mov ^5, (^36)
	# Fixing movq -56(%rbp), (%rax)
	pushq %r15
	movq -56(%rbp), %r15
	movq %r15, (%rax)
	popq %r15
	# LowerGetelementptr(476:3): struct-type: {%"class.std::__cxx11::basic_string"*, i64}* -> ^37, indices=0,1
	movq %rbx, %rax
	addq $8, %rax
	# LowerStore(477:3).3: mov $imm, ^37
	movq $23586, (%rax)
	# Clobber %rdi
	movq %rdi, -80(%rbp)
	# SetupCalls(478:3): move argument %rdi
	# Semiunclobber %rdi into %rdi
	movq -80(%rbp), %rdi
	# SetupCalls(478:3): move argument ^4
	movq -72(%rbp), %rsi
	callq _ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE
	# SetupCalls(478:3): move result from %rax
	movq %rax, %rax
	# Unclobber %rdi
	movq -80(%rbp), %rdi
	# LowerGetelementptr(479:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^39, indices=0,0,0
	movq -56(%rbp), %rbx
	# LowerLoad(480:3).2: (^39) into ^40
	movq (%rbx), %rax
	movq -64(%rbp), %rbx
	# LowerIcmp(482:3): ^40 vs. operand ^41
	cmpq %rbx, %rax
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M230
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M208:
	# Clobber %rax
	movq %rax, -88(%rbp)
	# SetupCalls(486:3): move argument ^40
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
	# upalign(313 + 0, 16)
	subq $320, %rsp
	movq %rbx, -161(%rbp)
	movq %r12, -241(%rbp)
	movq %r13, -177(%rbp)
	movq %r14, -185(%rbp)
	movq %r15, -225(%rbp)
	# LowerAlloca(93:3): size = 1, type = i8*, var = ^1
	# Fixing leaq -1(%rbp), -113(%rbp)
	pushq %r15
	leaq -1(%rbp), %r15
	movq %r15, -113(%rbp)
	popq %r15
	# LowerAlloca(94:3): size = 40, type = %"class.std::filesystem::__cxx11::path"*, var = ^2
	# Fixing leaq -41(%rbp), -121(%rbp)
	pushq %r15
	leaq -41(%rbp), %r15
	movq %r15, -121(%rbp)
	popq %r15
	# LowerAlloca(95:3): size = 16, type = %"class.std::filesystem::__cxx11::directory_iterator"*, var = ^3
	leaq -57(%rbp), %rbx
	# LowerAlloca(96:3): size = 16, type = %"class.std::filesystem::__cxx11::directory_iterator"*, var = ^4
	# Fixing leaq -73(%rbp), -129(%rbp)
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
	# SetupCalls(103:3): move argument ^3
	movq %rbx, %rdi
	# SetupCalls(103:3): move argument ^2
	movq -121(%rbp), %rsi
	# SetupCalls(103:3): move argument 0
	movb $0, %dl
	andq $255, %rdx
	# SetupCalls(103:3): move argument null
	movq $0, %rcx
	callq _ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code@PLT
	movq -129(%rbp), %rax
	# LowerGetelementptr(107:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^8, indices=0,0,0
	movq %rbx, %rax
	# LowerLoad(108:3).2: (^8) into ^9
	movq (%rax), %rcx
	# LowerGetelementptr(109:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^10, indices=0,0,1,0
	movq %rbx, -137(%rbp)
	addq $8, -137(%rbp)
	# LowerLoad(110:3).2: (^10) into ^11
	movq -137(%rbp), %rax
	movq (%rax), %rdx
	# LowerIcmp(111:3): ^11 vs. intlike 0
	cmpq $0, %rdx
	sete %al
	cmpb $0, %al
	jne .__main__M277
	.__main__M78:
	# LowerGetelementptr(115:3): struct-type: %"class.std::_Sp_counted_base"* -> ^14, indices=0,1
	movq %rdx, %rbx
	addq $8, %rbx
	# LowerLoad(116:3).4: __libc_single_threaded into ^15
	movq __libc_single_threaded@GOTPCREL(%rip), %rax
	movb (%rax), %al
	# LowerIcmp(117:3): ^15 vs. intlike 0
	cmpb $0, %al
	sete %al
	cmpb $0, %al
	jne .__main__M108
	.__main__M88:
	# LowerLoad(121:3).2: (^14) into ^18
	movl (%rbx), %eax
	movl %eax, %esi
	addl $1, %esi
	# LowerStore(123:3).9: mov ^19, (^14)
	movl %esi, (%rbx)
	# LowerGetelementptr(124:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^20, indices=0,0,0
	movq -129(%rbp), %rax
	# LowerStore(125:3).9: mov ^9, (^20)
	movq %rcx, (%rax)
	# LowerGetelementptr(126:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^21, indices=0,0,1,0
	movq -129(%rbp), %rax
	addq $8, %rax
	# LowerStore(127:3).9: mov ^11, (^21)
	movq %rdx, (%rax)
	# MovePhi: ^21 -> ^29
	movq %rax, %r13
	# MovePhi: ^11 -> ^30
	movq %rdx, %r14
	jmp .__main__M133
	.__main__M108:
	movl $1, %eax
	lock addl %eax, (%rbx)
	# LowerLoad(132:3).2: (^10) into ^24
	movq -137(%rbp), %rbx
	movq (%rbx), %rax
	# LowerGetelementptr(133:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^25, indices=0,0,0
	movq -129(%rbp), %rbx
	# LowerStore(134:3).9: mov ^9, (^25)
	movq %rcx, (%rbx)
	# LowerGetelementptr(135:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^26, indices=0,0,1,0
	movq -129(%rbp), %rbx
	addq $8, %rbx
	# LowerStore(136:3).9: mov ^11, (^26)
	movq %rdx, (%rbx)
	# LowerIcmp(137:3): ^24 vs. intlike 0
	cmpq $0, %rax
	sete %cl
	cmpb $0, %cl
	jne .__main__M125
	jmp .__main__M128
	.__main__M125:
	# MovePhi: ^26 -> ^73 (in new block 138 whose parent is 22)
	movq %rbx, -81(%rbp)
	jmp .__main__M274
	.__main__M128:
	# MovePhi: ^26 -> ^29 (in new block 136 whose parent is 22)
	movq %rbx, %r13
	# MovePhi: ^24 -> ^30
	movq %rax, %r14
	.__main__M133:
	# LowerGetelementptr(143:3): struct-type: %"class.std::_Sp_counted_base"* -> ^31, indices=0,1
	movq %r14, %rbx
	addq $8, %rbx
	# LowerLoad(144:3).4: __libc_single_threaded into ^32
	movq __libc_single_threaded@GOTPCREL(%rip), %rax
	movb (%rax), %al
	# LowerIcmp(145:3): ^32 vs. intlike 0
	cmpb $0, %al
	sete %al
	cmpb $0, %al
	jne .__main__M150
	.__main__M143:
	# LowerLoad(149:3).2: (^31) into ^35
	movl (%rbx), %eax
	movl %eax, %ecx
	addl $1, %ecx
	# LowerStore(151:3).9: mov ^36, (^31)
	movl %ecx, (%rbx)
	jmp .__main__M159
	.__main__M150:
	movl $1, %eax
	lock addl %eax, (%rbx)
	# LowerLoad(156:3).4: __libc_single_threaded into ^39
	movq __libc_single_threaded@GOTPCREL(%rip), %rax
	movb (%rax), %al
	# LowerIcmp(157:3): ^39 vs. intlike 0
	cmpb $0, %al
	sete %al
	cmpb $0, %al
	jne .__main__M168
	.__main__M159:
	# LowerLoad(161:3).2: (^31) into ^42
	movl (%rbx), %eax
	movl %eax, %ecx
	addl $-1, %ecx
	# LowerStore(163:3).9: mov ^43, (^31)
	movl %ecx, (%rbx)
	# MovePhi: ^42 -> ^47
	movl %eax, %r15d
	jmp .__main__M173
	.__main__M168:
	movl $-1, %eax
	lock addl %eax, (%rbx)
	# MovePhi: ^45 -> ^47
	movl %eax, %r15d
	.__main__M173:
	# LowerIcmp(172:3): ^47 vs. intlike 1
	cmpl $1, %r15d
	sete %al
	cmpb $0, %al
	jne .__main__M177
	jmp .__main__M265
	.__main__M177:
	movq %r14, %rbx
	# LowerLoad(177:3).2: (^50) into ^51
	movq (%rbx), %rax
	# LowerGetelementptr(178:3): struct-type: void (%"class.std::_Sp_counted_base"*) *** -> ^52, indices=2
	movq %rax, %rcx
	addq $16, %rcx
	# LowerLoad(179:3).2: (^52) into ^53
	movq (%rcx), %rax
	# SetupCalls(180:3): move argument ^30
	movq %r14, %rdi
	# SetupCalls(180:3): jump to function operand ^53
	callq *%rax
	# LowerGetelementptr(181:3): struct-type: %"class.std::_Sp_counted_base"* -> ^54, indices=0,2
	movq %r14, %rax
	addq $12, %rax
	# LowerLoad(182:3).4: __libc_single_threaded into ^55
	movq __libc_single_threaded@GOTPCREL(%rip), %rcx
	movb (%rcx), %cl
	# LowerIcmp(183:3): ^55 vs. intlike 0
	cmpb $0, %cl
	sete %cl
	cmpb $0, %cl
	jne .__main__M226
	.__main__M217:
	# LowerLoad(187:3).2: (^54) into ^58
	movl (%rax), %ecx
	movl %ecx, %edx
	addl $-1, %edx
	# LowerStore(189:3).9: mov ^59, (^54)
	movl %edx, (%rax)
	# MovePhi: ^58 -> ^63
	movl %ecx, %r12d
	jmp .__main__M231
	.__main__M226:
	movl $-1, %ecx
	lock addl %ecx, (%rax)
	# MovePhi: ^61 -> ^63
	movl %ecx, %r12d
	.__main__M231:
	# LowerIcmp(198:3): ^63 vs. intlike 1
	cmpl $1, %r12d
	sete %al
	cmpb $0, %al
	jne .__main__M235
	jmp .__main__M265
	.__main__M235:
	# LowerLoad(202:3).2: (^50) into ^66
	movq (%rbx), %rax
	# LowerGetelementptr(203:3): struct-type: void (%"class.std::_Sp_counted_base"*) *** -> ^67, indices=3
	movq %rax, %rbx
	addq $24, %rbx
	# LowerLoad(204:3).2: (^67) into ^68
	movq (%rbx), %rax
	# SetupCalls(205:3): move argument ^30
	movq %r14, %rdi
	# SetupCalls(205:3): jump to function operand ^68
	callq *%rax
	.__main__M265:
	# LowerLoad(209:3).2: (^29) into ^70
	movq (%r13), %rax
	# LowerIcmp(210:3): ^70 vs. intlike 0
	cmpq $0, %rax
	sete %al
	cmpb $0, %al
	jne .__main__M277
	.__main__M271:
	# MovePhi: ^29 -> ^73 (in new block 137 whose parent is 69)
	movq %r13, -81(%rbp)
	.__main__M274:
	# MovePhi: intlike -> ^125
	movl $0, -105(%rbp)
	jmp .__main__M472
	.__main__M277:
	# LowerLoad(219:3).2: (^10) into ^75
	movq -137(%rbp), %rax
	movq (%rax), %rbx
	# LowerIcmp(220:3): ^75 vs. intlike 0
	cmpq $0, %rbx
	sete %al
	cmpb $0, %al
	jne .__main__M399
	.__main__M283:
	# LowerGetelementptr(224:3): struct-type: %"class.std::_Sp_counted_base"* -> ^78, indices=0,1
	movq %rbx, %rax
	addq $8, %rax
	# LowerLoad(225:3).4: __libc_single_threaded into ^79
	movq __libc_single_threaded@GOTPCREL(%rip), %rcx
	movb (%rcx), %cl
	# LowerIcmp(226:3): ^79 vs. intlike 0
	cmpb $0, %cl
	sete %cl
	cmpb $0, %cl
	jne .__main__M302
	.__main__M293:
	# LowerLoad(230:3).2: (^78) into ^82
	movl (%rax), %ecx
	movl %ecx, %edx
	addl $-1, %edx
	# LowerStore(232:3).9: mov ^83, (^78)
	movl %edx, (%rax)
	# MovePhi: ^82 -> ^87
	movl %ecx, -89(%rbp)
	jmp .__main__M307
	.__main__M302:
	movl $-1, %ecx
	lock addl %ecx, (%rax)
	# MovePhi: ^85 -> ^87
	movl %ecx, -89(%rbp)
	.__main__M307:
	# LowerIcmp(241:3): ^87 vs. intlike 1
	cmpl $1, -89(%rbp)
	sete %al
	cmpb $0, %al
	jne .__main__M311
	jmp .__main__M399
	.__main__M311:
	movq %rbx, %r12
	# LowerLoad(246:3).2: (^90) into ^91
	movq (%r12), %rax
	# LowerGetelementptr(247:3): struct-type: void (%"class.std::_Sp_counted_base"*) *** -> ^92, indices=2
	movq %rax, %rcx
	addq $16, %rcx
	# LowerLoad(248:3).2: (^92) into ^93
	movq (%rcx), %rax
	# SetupCalls(249:3): move argument ^75
	movq %rbx, %rdi
	# SetupCalls(249:3): jump to function operand ^93
	callq *%rax
	# LowerGetelementptr(250:3): struct-type: %"class.std::_Sp_counted_base"* -> ^94, indices=0,2
	movq %rbx, %rcx
	addq $12, %rcx
	# LowerLoad(251:3).4: __libc_single_threaded into ^95
	movq __libc_single_threaded@GOTPCREL(%rip), %rax
	movb (%rax), %al
	# LowerIcmp(252:3): ^95 vs. intlike 0
	cmpb $0, %al
	sete %al
	cmpb $0, %al
	jne .__main__M360
	.__main__M351:
	# LowerLoad(256:3).2: (^94) into ^98
	movl (%rcx), %eax
	movl %eax, %edx
	addl $-1, %edx
	# LowerStore(258:3).9: mov ^99, (^94)
	movl %edx, (%rcx)
	# MovePhi: ^98 -> ^103
	movl %eax, -97(%rbp)
	jmp .__main__M365
	.__main__M360:
	movl $-1, %eax
	lock addl %eax, (%rcx)
	# MovePhi: ^101 -> ^103
	movl %eax, -97(%rbp)
	.__main__M365:
	# LowerIcmp(267:3): ^103 vs. intlike 1
	cmpl $1, -97(%rbp)
	sete %al
	cmpb $0, %al
	jne .__main__M369
	jmp .__main__M399
	.__main__M369:
	# LowerLoad(271:3).2: (^90) into ^106
	movq (%r12), %rax
	# LowerGetelementptr(272:3): struct-type: void (%"class.std::_Sp_counted_base"*) *** -> ^107, indices=3
	movq %rax, %rcx
	addq $24, %rcx
	# LowerLoad(273:3).2: (^107) into ^108
	movq (%rcx), %rax
	# SetupCalls(274:3): move argument ^75
	movq %rbx, %rdi
	# SetupCalls(274:3): jump to function operand ^108
	callq *%rax
	.__main__M399:
	# LowerGetelementptr(279:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^110, indices=0,1
	movq -121(%rbp), %rax
	addq $32, %rax
	# LowerGetelementptr(280:3): struct-type: %"struct.std::filesystem::__cxx11::path::_List"* -> ^111, indices=0,0,0,0,0,0,0,0
	movq %rax, %rbx
	# LowerLoad(281:3).2: (^111) into ^112
	movq (%rbx), %rcx
	# LowerIcmp(282:3): ^112 vs. intlike 0
	cmpq $0, %rcx
	sete %dl
	cmpb $0, %dl
	jne .__main__M435
	.__main__M410:
	movq %rax, %rdx
	# Clobber %rcx
	movq %rcx, -145(%rbp)
	# Clobber %rax
	movq %rax, -153(%rbp)
	# SetupCalls(287:3): move argument ^115
	movq %rdx, %rdi
	# SetupCalls(287:3): move argument ^112
	movq %rcx, %rsi
	callq _ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@PLT
	# Unclobber %rax
	movq -153(%rbp), %rax
	# Unclobber %rcx
	movq -145(%rbp), %rcx
	.__main__M435:
	# LowerStore(291:3).3: mov $imm, ^111
	movq $0, (%rbx)
	# LowerGetelementptr(292:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^117, indices=0,0,0,0
	movq -121(%rbp), %rax
	# LowerLoad(293:3).2: (^117) into ^118
	movq (%rax), %rbx
	# LowerGetelementptr(294:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^119, indices=0,0,2
	movq -121(%rbp), %rax
	addq $16, %rax
	movq %rax, %rcx
	# LowerIcmp(296:3): ^118 vs. operand ^120
	cmpq %rcx, %rbx
	sete %al
	cmpb $0, %al
	jne .__main__M471
	.__main__M449:
	# SetupCalls(300:3): move argument ^118
	movq %rbx, %rdi
	callq _ZdlPv@PLT
	.__main__M471:
	movq $0, %rax
	movq -225(%rbp), %r15
	movq -185(%rbp), %r14
	movq -177(%rbp), %r13
	movq -241(%rbp), %r12
	movq -161(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq
	.__main__M472:
	# SetupCalls(309:3): move argument ^4
	movq -129(%rbp), %rdi
	callq _ZNKSt10filesystem7__cxx1118directory_iteratordeEv@PLT
	# SetupCalls(309:3): move result from %rax
	movq %rax, %r12
	movl -105(%rbp), %ebx
	addl $1, %ebx
	# SetupCalls(311:3): move argument @_ZSt4cout
	movq _ZSt4cout@GOTPCREL(%rip), %rdi
	# SetupCalls(311:3): move argument ^125
	movl -105(%rbp), %esi
	callq _ZNSolsEi@PLT
	# SetupCalls(311:3): move result from %rax
	movq %rax, %r13
	# SetupCalls(312:3): move argument ^128
	movq %r13, %rdi
	# SetupCalls(312:3): move argument getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
	movq .str.1@GOTPCREL(%rip), %rsi
	# SetupCalls(312:3): move argument 2
	movq $2, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(312:3): move result from %rax
	movq %rax, %rax
	# LowerGetelementptr(313:3): struct-type: %"class.std::filesystem::__cxx11::directory_entry"* -> ^130, indices=0,0
	movq %r12, %rax
	# SetupCalls(314:3): move argument ^128
	movq %r13, %rdi
	# SetupCalls(314:3): move argument ^130
	movq %rax, %rsi
	callq _ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE
	# SetupCalls(314:3): move result from %rax
	movq %rax, %r12
	# LowerStore(316:3).3: mov $imm, ^1
	movq -113(%rbp), %rax
	movb $10, (%rax)
	# SetupCalls(317:3): move argument ^131
	movq %r12, %rdi
	# SetupCalls(317:3): move argument ^1
	movq -113(%rbp), %rsi
	# SetupCalls(317:3): move argument 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(317:3): move result from %rax
	movq %rax, %rax
	# SetupCalls(319:3): move argument ^4
	movq -129(%rbp), %rdi
	callq _ZNSt10filesystem7__cxx1118directory_iteratorppEv@PLT
	# SetupCalls(319:3): move result from %rax
	movq %rax, %rax
	# LowerLoad(320:3).2: (^73) into ^134
	movq -81(%rbp), %rax
	movq (%rax), %rcx
	# LowerIcmp(321:3): ^134 vs. intlike 0
	cmpq $0, %rcx
	sete %al
	cmpb $0, %al
	jne .__main__M277
	.__main__M634:
	# MovePhi: ^127 -> ^125 (in new block 139 whose parent is 124)
	movl %ebx, -105(%rbp)
	jmp .__main__M472


.section .init_array
.p2align 3
.quad _GLOBAL__sub_I_diriter.cpp
