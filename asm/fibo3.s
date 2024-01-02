.section .rodata
.align 8
.str:
.ascii "%d -> %d\x0A\x00"

.section .text
.global main
.p2align 4, 0x90
main:
	.__main__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(64 + 0, 16)
	subq $64, %rsp
	movq %rbx, -32(%rbp)
	movq %r12, -40(%rbp)
	movq %r13, -56(%rbp)
	# LowerAlloca(64:3): size = 4, type = i32*, var = ^3
	leaq -4(%rbp), %rax
	# LowerAlloca(65:3): size = 4, type = i32*, var = ^4
	leaq -8(%rbp), %rbx
	# LowerAlloca(66:3): size = 8, type = i8***, var = ^5
	leaq -16(%rbp), %rcx
	# LowerAlloca(67:3): size = 4, type = i32*, var = ^6
	leaq -20(%rbp), %r12
	# LowerStore(68:3).3: mov $imm, ^3
	movl $0, (%rax)
	# LowerStore(69:3).9: mov %edi, (^4)
	movl %edi, (%rbx)
	# LowerStore(70:3).9: mov %rsi, (^5)
	movq %rsi, (%rcx)
	# LowerStore(71:3).3: mov $imm, ^6
	movl $0, (%r12)
	.__main__M17:
	# LowerLoad(75:3).2: (^6) into ^8
	movl (%r12), %eax
	# LowerIcmp(76:3): ^8 vs. intlike 10
	cmpl $10, %eax
	setle %al
	cmpb $0, %al
	jne .__main__M23
	jmp .__main__M86
	.__main__M23:
	# LowerLoad(80:3).2: (^6) into ^11
	movl (%r12), %ebx
	# LowerLoad(81:3).2: (^6) into ^12
	movl (%r12), %eax
	# SetupCalls(82:3): move argument i32 ^12
	movl %eax, %edi
	callq fibonacci
	# SetupCalls(82:3): move result from %rax
	movl %eax, %r13d
	# SetupCalls(83:3): move argument i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)
	movq .str@GOTPCREL(%rip), %rdi
	# SetupCalls(83:3): move argument i32 ^11
	movl %ebx, %esi
	# SetupCalls(83:3): move argument i32 ^13
	movl %r13d, %edx
	movq $0, %rax
	callq printf@PLT
	# SetupCalls(83:3): move result from %rax
	movl %eax, %eax
	# LowerLoad(87:3).2: (^6) into ^16
	movl (%r12), %eax
	movl %eax, %ebx
	addl $1, %ebx
	# LowerStore(89:3).9: mov ^17, (^6)
	movl %ebx, (%r12)
	jmp .__main__M17
	.__main__M86:
	movq $42, %rax
	movq -56(%rbp), %r13
	movq -40(%rbp), %r12
	movq -32(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global fibonacci
.p2align 4, 0x90
fibonacci:
	.__fibonacci__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(96 + 0, 16)
	subq $96, %rsp
	movq %rbx, -8(%rbp)
	movq %r12, -64(%rbp)
	movq %r13, -72(%rbp)
	movq %r14, -80(%rbp)
	movq %r15, -88(%rbp)
	# LowerIcmp(12:3): %rdi vs. intlike 1
	cmpl $1, %edi
	setg %bl
	cmpb $0, %bl
	jne .__fibonacci__M7
	.__fibonacci__M4:
	# MovePhi: intlike -> ^36 (in new block 42 whose parent is 1)
	movl $1, %eax
	jmp .__fibonacci__M97
	.__fibonacci__M7:
	movl %edi, %ebx
	addl $-1, %ebx
	movl %edi, %r8d
	andl $7, %r8d
	# LowerIcmp(18:3): ^4 vs. intlike 7
	cmpl $7, %ebx
	setb %bl
	cmpb $0, %bl
	jne .__fibonacci__M15
	jmp .__fibonacci__M20
	.__fibonacci__M15:
	# MovePhi: intlike -> ^25 (in new block 39 whose parent is 3)
	movl $1, %edx
	# MovePhi: intlike -> ^26
	movl $1, %esi
	jmp .__fibonacci__M65
	.__fibonacci__M20:
	movl %edi, %ebx
	andl $-8, %ebx
	# MovePhi: intlike -> ^10
	movl $1, %eax
	# MovePhi: intlike -> ^11
	movl $1, %r9d
	# MovePhi: ^8 -> ^12
	movl %ebx, %r10d
	.__fibonacci__M29:
	movl %eax, %ebx
	addl %r9d, %ebx
	movl %r9d, %edi
	addl %ebx, %edi
	movl %ebx, %r11d
	addl %edi, %r11d
	movl %edi, %ebx
	addl %r11d, %ebx
	movl %r11d, %edi
	addl %ebx, %edi
	movl %ebx, %r11d
	addl %edi, %r11d
	movl %edi, %ebx
	addl %r11d, %ebx
	movl %r11d, %edi
	addl %ebx, %edi
	movl %r10d, %r11d
	addl $-8, %r11d
	# LowerIcmp(38:3): ^21 vs. intlike 0
	cmpl $0, %r11d
	sete %r12b
	cmpb $0, %r12b
	jne .__fibonacci__M51
	jmp .__fibonacci__M58
	.__fibonacci__M51:
	# MovePhi: ^19 -> ^24 (in new block 38 whose parent is 9)
	movl %ebx, %ecx
	# MovePhi: ^19 -> ^25
	movl %ebx, %edx
	# MovePhi: ^20 -> ^26
	movl %edi, %esi
	jmp .__fibonacci__M65
	.__fibonacci__M58:
	# MovePhi: ^19 -> ^10 (in new block 37 whose parent is 9)
	movl %ebx, %eax
	# MovePhi: ^20 -> ^11
	movl %edi, %r9d
	# MovePhi: ^21 -> ^12
	movl %r11d, %r10d
	jmp .__fibonacci__M29
	.__fibonacci__M65:
	# LowerIcmp(45:3): ^5 vs. intlike 0
	cmpl $0, %r8d
	sete %al
	cmpb $0, %al
	jne .__fibonacci__M69
	jmp .__fibonacci__M72
	.__fibonacci__M69:
	# MovePhi: ^24 -> ^36 (in new block 43 whose parent is 23)
	movl %ecx, %eax
	jmp .__fibonacci__M97
	.__fibonacci__M72:
	# MovePhi: ^25 -> ^29 (in new block 41 whose parent is 23)
	movl %edx, %r13d
	# MovePhi: ^26 -> ^30
	movl %esi, %r14d
	# MovePhi: ^5 -> ^31
	movl %r8d, %r15d
	.__fibonacci__M79:
	movl %r13d, %eax
	addl %r14d, %eax
	movl %r15d, %ebx
	addl $-1, %ebx
	# LowerIcmp(54:3): ^33 vs. intlike 0
	cmpl $0, %ebx
	sete %cl
	cmpb $0, %cl
	jne .__fibonacci__M87
	jmp .__fibonacci__M90
	.__fibonacci__M87:
	# MovePhi: ^30 -> ^36 (in new block 44 whose parent is 28)
	movl %r14d, %eax
	jmp .__fibonacci__M97
	.__fibonacci__M90:
	# MovePhi: ^30 -> ^29 (in new block 40 whose parent is 28)
	movl %r14d, %r13d
	# MovePhi: ^32 -> ^30
	movl %eax, %r14d
	# MovePhi: ^33 -> ^31
	movl %ebx, %r15d
	jmp .__fibonacci__M79
	.__fibonacci__M97:
	movq -88(%rbp), %r15
	movq -80(%rbp), %r14
	movq -72(%rbp), %r13
	movq -64(%rbp), %r12
	movq -8(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

