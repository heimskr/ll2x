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
.ascii "%d: %s\x0A\x00"

.section .rodata
.align 8
.str.3:
.ascii "basic_string::_M_create\x00"

.section .data
.align 8
_ZStL8__ioinit:
.fill 1, 1, 0

.section .data
.align 8
llvm.global_ctors:
.int 65535
.fill 4, 1, 0
.quad _GLOBAL__sub_I_diriter_printf.cpp
.fill 8, 1, 0

.section .text.startup
.global _GLOBAL__sub_I_diriter_printf.cpp
.p2align 4, 0x90
_GLOBAL__sub_I_diriter_printf.cpp:
	.___GLOBAL__sub_I_diriter_printf.cpp__M0:
	pushq %rbp
	movq %rsp, %rbp
	# SetupCalls(631:3): move argument @_ZStL8__ioinit
	movq _ZStL8__ioinit@GOTPCREL(%rip), %rdi
	callq _ZNSt8ios_base4InitC1Ev@PLT
	# SetupCalls(632:3): move argument @_ZNSt8ios_base4InitD1Ev
	movq _ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	# SetupCalls(632:3): move argument getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0)
	movq _ZStL8__ioinit@GOTPCREL(%rip), %rsi
	# SetupCalls(632:3): move argument @__dso_handle
	movq __dso_handle@GOTPCREL(%rip), %rdx
	callq __cxa_atexit@PLT
	# SetupCalls(632:3): move result from %rax
	movl %eax, %eax
	movq %rbp, %rsp
	popq %rbp
	retq

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
	# LowerGetelementptr(464:3): struct-type: [2 x i8]* -> ^4, indices=0,0
	movq %rsi, %rbx
	# Clobber rdi
	movq %rdi, -8(%rbp)
	# Clobber rsi
	movq %rsi, -16(%rbp)
	# SetupCalls(468:3): move argument ^4
	movq %rbx, %rdi
	callq strlen@PLT
	# SetupCalls(468:3): move result from %rax
	movq %rax, %r12
	# Unclobber rsi
	movq -16(%rbp), %rsi
	# Unclobber rdi
	movq -8(%rbp), %rdi
	# LowerGetelementptr(481:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^6, indices=0,0,2
	movq %rdi, %rcx
	addq $16, %rcx
	movq %rdi, %rax
	# LowerStore(486:3).9: mov ^6, (^7)
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
	# SetupCalls(517:3): move argument getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)
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
	# SetupCalls(537:3): move argument ^15
	movq %r13, %rdi
	callq _Znwm@PLT
	# SetupCalls(537:3): move result from %rax
	movq %rax, %r13
	# Unclobber rdi
	movq -8(%rbp), %rdi
	# LowerGetelementptr(540:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^20, indices=0,0,0,0
	movq %rdi, %rax
	# LowerStore(541:3).9: mov ^19, (^20)
	movq %r13, (%rax)
	# LowerGetelementptr(545:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^21, indices=0,0,2,0
	movq %rdi, %rax
	addq $16, %rax
	# LowerStore(546:3).9: mov ^5, (^21)
	movq %r12, (%rax)
	# MovePhi: ^19 -> ^23
	movq %r13, %r14
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M123:
	# LowerSwitch(557:3): begin conditions
	cmpq $1, %r12
	je .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M130
	cmpq $0, %r12
	je .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M161
	# LowerSwitch(557:3): default
	jmp .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M135
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M130:
	# LowerLoad(565:3).2: (^4) into ^25
	movb (%rbx), %al
	# LowerStore(566:3).9: mov ^25, (^23)
	movb %al, (%r14)
	jmp .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M161
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M135:
	# Clobber rdi
	movq %rdi, -8(%rbp)
	# SetupCalls(570:3): move argument ^23
	movq %r14, %rdi
	# SetupCalls(570:3): move argument ^4
	movq %rbx, %rsi
	# SetupCalls(570:3): move argument ^5
	movq %r12, %rdx
	callq memcpy@PLT
	# Unclobber rdi
	movq -8(%rbp), %rdi
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M161:
	# LowerGetelementptr(579:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^28, indices=0,0,1
	movq %rdi, %rax
	addq $8, %rax
	# LowerStore(580:3).9: mov ^5, (^28)
	movq %r12, (%rax)
	# LowerGetelementptr(581:3): pointer-type -> ^29
	movq %r12, %rax
	addq %r14, %rax
	# LowerStore(584:3).3: mov $imm, ^29
	movb $0, (%rax)
	# LowerGetelementptr(585:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^30, indices=0,1
	movq %rdi, %rax
	addq $32, %rax
	# Clobber rdi
	movq %rdi, -8(%rbp)
	# SetupCalls(586:3): move argument ^30
	movq %rax, %rdi
	callq _ZNSt10filesystem7__cxx114path5_ListC1Ev@PLT
	# Unclobber rdi
	movq -8(%rbp), %rdi
	# Clobber rdi
	movq %rdi, -8(%rbp)
	# SetupCalls(587:3): move argument %rdi
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
.global main
.p2align 4, 0x90
main:
	.__main__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(360 + 0, 16)
	subq $368, %rsp
	movq %rbx, -176(%rbp)
	movq %r12, -168(%rbp)
	movq %r14, -296(%rbp)
	movq %r15, -256(%rbp)
	# LowerAlloca(53:3): size = 40, type = %"class.std::filesystem::__cxx11::path"*, var = ^1
	pushq %r15
	leaq -40(%rbp), %r15
	movq %r15, -112(%rbp)
	popq %r15
	# LowerAlloca(54:3): size = 16, type = %"class.std::filesystem::__cxx11::directory_iterator"*, var = ^2
	leaq -56(%rbp), %r12
	# LowerAlloca(55:3): size = 16, type = %"class.std::filesystem::__cxx11::directory_iterator"*, var = ^3
	pushq %r15
	leaq -72(%rbp), %r15
	movq %r15, -120(%rbp)
	popq %r15
	movq -112(%rbp), %rax
	# SetupCalls(59:3): move argument ^1
	movq -112(%rbp), %rdi
	# SetupCalls(59:3): move argument @.str
	movq .str@GOTPCREL(%rip), %rsi
	# SetupCalls(59:3): move argument 2
	movq $2, %rdx
	andq $255, %rdx
	callq _ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE
	movq %r12, %rax
	# SetupCalls(65:3): move argument ^2
	movq %r12, %rdi
	# SetupCalls(65:3): move argument ^1
	movq -112(%rbp), %rsi
	# SetupCalls(65:3): move argument 0
	movq $0, %rdx
	andq $255, %rdx
	# SetupCalls(65:3): move argument null
	movq $0, %rcx
	callq _ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code@PLT
	movq -120(%rbp), %rax
	# LowerGetelementptr(74:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^7, indices=0,0,0
	movq %r12, %rbx
	# LowerLoad(75:3).2: (^7) into ^8
	movq (%rbx), %rax
	# LowerGetelementptr(79:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^9, indices=0,0,1,0
	movq %r12, -128(%rbp)
	addq $8, -128(%rbp)
	# LowerLoad(80:3).2: (^9) into ^10
	movq -128(%rbp), %rcx
	movq (%rcx), %rbx
	cmpq $0, %rbx
	sete %cl
	cmpb $0, %cl
	jne .__main__M262
	jmp .__main__M75
	.__main__M75:
	# LowerGetelementptr(87:3): struct-type: %"class.std::_Sp_counted_base"* -> ^13, indices=0,1
	movq %rbx, %rdx
	addq $8, %rdx
	# LowerLoad(90:3).4: __libc_single_threaded into ^14
	movb __libc_single_threaded@GOTPCREL(%rip), %cl
	cmpb $0, %cl
	sete %cl
	cmpb $0, %cl
	jne .__main__M103
	jmp .__main__M83
	.__main__M83:
	# LowerLoad(97:3).2: (^13) into ^17
	movl (%rdx), %ecx
	movl %ecx, %esi
	addl $1, %esi
	# LowerStore(99:3).9: mov ^18, (^13)
	movl %esi, (%rdx)
	# LowerGetelementptr(104:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^19, indices=0,0,0
	movq -120(%rbp), %rcx
	# LowerStore(105:3).9: mov ^8, (^19)
	movq %rax, (%rcx)
	# LowerGetelementptr(107:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^20, indices=0,0,1,0
	movq -120(%rbp), %rax
	addq $8, %rax
	# LowerStore(112:3).9: mov ^10, (^20)
	movq %rbx, (%rax)
	# MovePhi: ^20 -> ^28
	movq %rax, -136(%rbp)
	# MovePhi: ^10 -> ^29
	movq %rbx, -144(%rbp)
	jmp .__main__M127
	.__main__M103:
	movl $1, %ecx
	lock addl %ecx, (%rdx)
	# LowerLoad(129:3).2: (^9) into ^23
	movq -128(%rbp), %rcx
	movq (%rcx), %rdx
	# LowerGetelementptr(134:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^24, indices=0,0,0
	movq -120(%rbp), %rcx
	# LowerStore(135:3).9: mov ^8, (^24)
	movq %rax, (%rcx)
	# LowerGetelementptr(137:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^25, indices=0,0,1,0
	movq -120(%rbp), %rax
	addq $8, %rax
	# LowerStore(142:3).9: mov ^10, (^25)
	movq %rbx, (%rax)
	cmpq $0, %rdx
	sete %bl
	cmpb $0, %bl
	jne .__main__M119
	jmp .__main__M122
	.__main__M119:
	# MovePhi: ^25 -> ^72 (in new block 135 whose parent is 21)
	movq %rax, -80(%rbp)
	jmp .__main__M259
	.__main__M122:
	# MovePhi: ^25 -> ^28 (in new block 133 whose parent is 21)
	movq %rax, -136(%rbp)
	# MovePhi: ^23 -> ^29
	movq %rdx, -144(%rbp)
	jmp .__main__M127
	.__main__M127:
	# LowerGetelementptr(160:3): struct-type: %"class.std::_Sp_counted_base"* -> ^30, indices=0,1
	movq -144(%rbp), %rax
	addq $8, %rax
	# LowerLoad(163:3).4: __libc_single_threaded into ^31
	movb __libc_single_threaded@GOTPCREL(%rip), %bl
	cmpb $0, %bl
	sete %bl
	cmpb $0, %bl
	jne .__main__M142
	jmp .__main__M135
	.__main__M135:
	# LowerLoad(170:3).2: (^30) into ^34
	movl (%rax), %ebx
	movl %ebx, %ecx
	addl $1, %ecx
	# LowerStore(172:3).9: mov ^35, (^30)
	movl %ecx, (%rax)
	jmp .__main__M149
	.__main__M142:
	movl $1, %ebx
	lock addl %ebx, (%rax)
	# LowerLoad(188:3).4: __libc_single_threaded into ^38
	movb __libc_single_threaded@GOTPCREL(%rip), %bl
	cmpb $0, %bl
	sete %bl
	cmpb $0, %bl
	jne .__main__M158
	jmp .__main__M149
	.__main__M149:
	# LowerLoad(204:3).2: (^30) into ^41
	movl (%rax), %ebx
	movl %ebx, %ecx
	addl $-1, %ecx
	# LowerStore(207:3).9: mov ^42, (^30)
	movl %ecx, (%rax)
	# MovePhi: ^41 -> ^46
	movl %ebx, %r15d
	jmp .__main__M163
	.__main__M158:
	movl $-1, %ebx
	lock addl %ebx, (%rax)
	# MovePhi: ^44 -> ^46
	movl %ebx, %r15d
	.__main__M163:
	cmpl $1, %r15d
	sete %al
	cmpb $0, %al
	jne .__main__M166
	jmp .__main__M251
	.__main__M166:
	movq -144(%rbp), %r12
	# LowerLoad(223:3).2: (^49) into ^50
	movq (%r12), %rax
	# LowerGetelementptr(224:3): struct-type: void (%"class.std::_Sp_counted_base"*) *** -> ^51, indices=2
	movq %rax, %rbx
	addq $16, %rbx
	# LowerLoad(225:3).2: (^51) into ^52
	movq (%rbx), %rax
	# SetupCalls(226:3): move argument ^29
	movq -144(%rbp), %rdi
	# SetupCalls(226:3): jump to function operand ^52
	callq *%rax
	# LowerGetelementptr(227:3): struct-type: %"class.std::_Sp_counted_base"* -> ^53, indices=0,2
	movq -144(%rbp), %rcx
	addq $12, %rcx
	# LowerLoad(230:3).4: __libc_single_threaded into ^54
	movb __libc_single_threaded@GOTPCREL(%rip), %al
	cmpb $0, %al
	sete %al
	cmpb $0, %al
	jne .__main__M213
	jmp .__main__M204
	.__main__M204:
	# LowerLoad(237:3).2: (^53) into ^57
	movl (%rcx), %eax
	movl %eax, %ebx
	addl $-1, %ebx
	# LowerStore(240:3).9: mov ^58, (^53)
	movl %ebx, (%rcx)
	# MovePhi: ^57 -> ^62
	movl %eax, %r14d
	jmp .__main__M218
	.__main__M213:
	movl $-1, %eax
	lock addl %eax, (%rcx)
	# MovePhi: ^60 -> ^62
	movl %eax, %r14d
	.__main__M218:
	cmpl $1, %r14d
	sete %al
	cmpb $0, %al
	jne .__main__M221
	jmp .__main__M251
	.__main__M221:
	# LowerLoad(255:3).2: (^49) into ^65
	movq (%r12), %rax
	# LowerGetelementptr(256:3): struct-type: void (%"class.std::_Sp_counted_base"*) *** -> ^66, indices=3
	movq %rax, %rbx
	addq $24, %rbx
	# LowerLoad(257:3).2: (^66) into ^67
	movq (%rbx), %rax
	# SetupCalls(258:3): move argument ^29
	movq -144(%rbp), %rdi
	# SetupCalls(258:3): jump to function operand ^67
	callq *%rax
	.__main__M251:
	# LowerLoad(262:3).2: (^28) into ^69
	movq -136(%rbp), %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	sete %al
	cmpb $0, %al
	jne .__main__M262
	jmp .__main__M256
	.__main__M256:
	# MovePhi: ^28 -> ^72 (in new block 134 whose parent is 68)
	pushq %r15
	movq -136(%rbp), %r15
	movq %r15, -80(%rbp)
	popq %r15
	jmp .__main__M259
	.__main__M259:
	# MovePhi: intlike -> ^124
	movl $0, -104(%rbp)
	jmp .__main__M448
	.__main__M262:
	# LowerLoad(284:3).2: (^9) into ^74
	movq -128(%rbp), %rax
	movq (%rax), %rbx
	cmpq $0, %rbx
	sete %al
	cmpb $0, %al
	jne .__main__M377
	jmp .__main__M267
	.__main__M267:
	# LowerGetelementptr(290:3): struct-type: %"class.std::_Sp_counted_base"* -> ^77, indices=0,1
	movq %rbx, %rax
	addq $8, %rax
	# LowerLoad(293:3).4: __libc_single_threaded into ^78
	movb __libc_single_threaded@GOTPCREL(%rip), %cl
	cmpb $0, %cl
	sete %cl
	cmpb $0, %cl
	jne .__main__M284
	jmp .__main__M275
	.__main__M275:
	# LowerLoad(300:3).2: (^77) into ^81
	movl (%rax), %ecx
	movl %ecx, %edx
	addl $-1, %edx
	# LowerStore(303:3).9: mov ^82, (^77)
	movl %edx, (%rax)
	# MovePhi: ^81 -> ^86
	movl %ecx, -88(%rbp)
	jmp .__main__M289
	.__main__M284:
	movl $-1, %ecx
	lock addl %ecx, (%rax)
	# MovePhi: ^84 -> ^86
	movl %ecx, -88(%rbp)
	.__main__M289:
	cmpl $1, -88(%rbp)
	sete %al
	cmpb $0, %al
	jne .__main__M292
	jmp .__main__M377
	.__main__M292:
	movq %rbx, %r12
	# LowerLoad(319:3).2: (^89) into ^90
	movq (%r12), %rax
	# LowerGetelementptr(320:3): struct-type: void (%"class.std::_Sp_counted_base"*) *** -> ^91, indices=2
	movq %rax, %rcx
	addq $16, %rcx
	# LowerLoad(321:3).2: (^91) into ^92
	movq (%rcx), %rax
	# SetupCalls(322:3): move argument ^74
	movq %rbx, %rdi
	# SetupCalls(322:3): jump to function operand ^92
	callq *%rax
	# LowerGetelementptr(323:3): struct-type: %"class.std::_Sp_counted_base"* -> ^93, indices=0,2
	movq %rbx, %rax
	addq $12, %rax
	# LowerLoad(326:3).4: __libc_single_threaded into ^94
	movb __libc_single_threaded@GOTPCREL(%rip), %cl
	cmpb $0, %cl
	sete %cl
	cmpb $0, %cl
	jne .__main__M339
	jmp .__main__M330
	.__main__M330:
	# LowerLoad(333:3).2: (^93) into ^97
	movl (%rax), %ecx
	movl %ecx, %edx
	addl $-1, %edx
	# LowerStore(336:3).9: mov ^98, (^93)
	movl %edx, (%rax)
	# MovePhi: ^97 -> ^102
	movl %ecx, -96(%rbp)
	jmp .__main__M344
	.__main__M339:
	movl $-1, %ecx
	lock addl %ecx, (%rax)
	# MovePhi: ^100 -> ^102
	movl %ecx, -96(%rbp)
	.__main__M344:
	cmpl $1, -96(%rbp)
	sete %al
	cmpb $0, %al
	jne .__main__M347
	jmp .__main__M377
	.__main__M347:
	# LowerLoad(351:3).2: (^89) into ^105
	movq (%r12), %rax
	# LowerGetelementptr(352:3): struct-type: void (%"class.std::_Sp_counted_base"*) *** -> ^106, indices=3
	movq %rax, %rcx
	addq $24, %rcx
	# LowerLoad(353:3).2: (^106) into ^107
	movq (%rcx), %rax
	# SetupCalls(354:3): move argument ^74
	movq %rbx, %rdi
	# SetupCalls(354:3): jump to function operand ^107
	callq *%rax
	.__main__M377:
	# LowerGetelementptr(360:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^109, indices=0,1
	movq -112(%rbp), %rax
	addq $32, %rax
	# LowerGetelementptr(368:3): struct-type: %"struct.std::filesystem::__cxx11::path::_List"* -> ^110, indices=0,0,0,0,0,0,0,0
	movq %rax, %rbx
	# LowerLoad(370:3).2: (^110) into ^111
	movq (%rbx), %rcx
	cmpq $0, %rcx
	sete %dl
	cmpb $0, %dl
	jne .__main__M412
	jmp .__main__M387
	.__main__M387:
	movq %rax, %rdx
	# Clobber rdx
	movq %rdx, -152(%rbp)
	# Clobber rcx
	movq %rcx, -160(%rbp)
	# SetupCalls(388:3): move argument ^114
	movq %rdx, %rdi
	# SetupCalls(388:3): move argument ^111
	movq %rcx, %rsi
	callq _ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@PLT
	# Unclobber rcx
	movq -160(%rbp), %rcx
	# Unclobber rdx
	movq -152(%rbp), %rdx
	.__main__M412:
	# LowerStore(392:3).3: mov $imm, ^110
	movq $0, (%rbx)
	# LowerGetelementptr(397:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^116, indices=0,0,0,0
	movq -112(%rbp), %rax
	# LowerLoad(398:3).2: (^116) into ^117
	movq (%rax), %rbx
	# LowerGetelementptr(400:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^118, indices=0,0,2
	movq -112(%rbp), %rax
	addq $16, %rax
	movq %rax, %rcx
	cmpq %rcx, %rbx
	sete %al
	cmpb $0, %al
	jne .__main__M447
	jmp .__main__M425
	.__main__M425:
	# SetupCalls(418:3): move argument ^117
	movq %rbx, %rdi
	callq _ZdlPv@PLT
	.__main__M447:
	movq $0, %rax
	movq -256(%rbp), %r15
	movq -296(%rbp), %r14
	movq -168(%rbp), %r12
	movq -176(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq
	.__main__M448:
	# SetupCalls(428:3): move argument ^3
	movq -120(%rbp), %rdi
	callq _ZNKSt10filesystem7__cxx1118directory_iteratordeEv@PLT
	# SetupCalls(428:3): move result from %rax
	movq %rax, %rbx
	movl -104(%rbp), %r12d
	addl $1, %r12d
	# LowerGetelementptr(435:3): struct-type: %"class.std::filesystem::__cxx11::directory_entry"* -> ^127, indices=0,0,0,0,0
	movq %rbx, %rax
	# LowerLoad(436:3).2: (^127) into ^128
	movq (%rax), %rbx
	# SetupCalls(437:3): move argument getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
	movq .str.1@GOTPCREL(%rip), %rdi
	# SetupCalls(437:3): move argument ^124
	movq -104(%rbp), %rsi
	# SetupCalls(437:3): move argument ^128
	movq %rbx, %rdx
	movq $0, %rax
	callq printf@PLT
	# SetupCalls(437:3): move result from %rax
	movl %eax, %eax
	# SetupCalls(438:3): move argument ^3
	movq -120(%rbp), %rdi
	callq _ZNSt10filesystem7__cxx1118directory_iteratorppEv@PLT
	# SetupCalls(438:3): move result from %rax
	movq %rax, %rax
	# LowerLoad(447:3).2: (^72) into ^131
	movq -80(%rbp), %rax
	movq (%rax), %rcx
	cmpq $0, %rcx
	sete %al
	cmpb $0, %al
	jne .__main__M262
	jmp .__main__M533
	.__main__M533:
	# MovePhi: ^126 -> ^124 (in new block 136 whose parent is 123)
	movl %r12d, -104(%rbp)
	jmp .__main__M448


.section .init_array
.p2align 3
.quad _GLOBAL__sub_I_diriter_printf.cpp
