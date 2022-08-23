.align 8
.str:
.ascii "%d\x0A\x00"

.global main
main:
	.__main_labelmini__0:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	movq %rbx, -8(%rbp)
	andq $-4, %rsp
	# LowerAlloca: %rsp -= to_sub
	subq $8, %rsp
	# LowerAlloca: mov %rsp, ^3
	movq %rsp, %rbx
	andq $-4, %rsp
	# LowerAlloca: %rsp -= to_sub
	subq $8, %rsp
	# LowerAlloca: mov %rsp, ^4
	movq %rsp, %rax
	andq $-8, %rsp
	# LowerAlloca: %rsp -= to_sub
	subq $8, %rsp
	# LowerAlloca: mov %rsp, ^5
	movq %rsp, %rcx
	andq $-4, %rsp
	# LowerAlloca: %rsp -= to_sub
	subq $8, %rsp
	# LowerAlloca: mov %rsp, ^6
	movq %rsp, %rdx
	# LowerMemory.1: mov $imm, (^3)
	movq $0, (%rbx)
	# LowerMemory.7: mov %rdi:0, (^4)
	movl %edi, (%rax)
	# LowerMemory.7: mov %rsi:1, (^5)
	movq %rsi, (%rcx)
	# LowerMemory.1: mov $imm, (^6)
	movq $2, (%rdx)
	jmp .__main_labelmini__29
	.__main_labelmini__29:
	# LowerMemory(load @ 64:3): load (^6) into ^8
	movl (%rdx), %eax
	cmpl $10, %eax
	movl $1, %ebx
	cmovlel %ebx, %eax
	cmpb $0, %al
	jne .__main_labelmini__35
	jmp .__main_labelmini__90
	.__main_labelmini__35:
	# LowerMemory(load @ 69:3): load (^6) into ^11
	movl (%rdx), %eax
	pushq %rdi
	# Clobber rdx
	movq %rdx, (%rsp)
	pushq %rax
	movq %rax, %rdi
	callq fibonacci
	# SetupCalls: move result from %rax
	movl %eax, %eax
	popq %rax
	movq (%rsp), %rdx
	popq %rdi
	pushq %rdi
	pushq %rsi
	# Clobber rdx
	movq %rdx, (%rsp)
	pushq %rax
	movq .str@GOTPCREL(%rip), %rdi
	movq %rax, %rsi
	callq printf
	# SetupCalls: move result from %rax
	movl %eax, %eax
	popq %rax
	movq (%rsp), %rdx
	popq %rsi
	popq %rdi
	jmp .__main_labelmini__83
	.__main_labelmini__83:
	# LowerMemory(load @ 75:3): load (^6) into ^15
	movl (%rdx), %eax
	movl %eax, %ebx
	addl $1, %ebx
	# LowerMemory.7: mov ^16, (^6)
	movl %ebx, (%rdx)
	jmp .__main_labelmini__29
	.__main_labelmini__90:
	movq $42, %rax
	movq -8(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.global fibonacci
fibonacci:
	.__fibonacci_labelmini__0:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq %rbx, (%rbp)
	andq $-4, %rsp
	# LowerAlloca: %rsp -= to_sub
	subq $8, %rsp
	# LowerAlloca: mov %rsp, ^2
	movq %rsp, %rbx
	andq $-4, %rsp
	# LowerAlloca: %rsp -= to_sub
	subq $8, %rsp
	# LowerAlloca: mov %rsp, ^3
	movq %rsp, %rcx
	andq $-4, %rsp
	# LowerAlloca: %rsp -= to_sub
	subq $8, %rsp
	# LowerAlloca: mov %rsp, ^4
	movq %rsp, %rax
	andq $-4, %rsp
	# LowerAlloca: %rsp -= to_sub
	subq $8, %rsp
	# LowerAlloca: mov %rsp, ^5
	movq %rsp, %rdx
	andq $-4, %rsp
	# LowerAlloca: %rsp -= to_sub
	subq $8, %rsp
	# LowerAlloca: mov %rsp, ^6
	movq %rsp, %rsi
	andq $-4, %rsp
	# LowerAlloca: %rsp -= to_sub
	subq $8, %rsp
	# LowerAlloca: mov %rsp, ^7
	movq %rsp, %rdi
	# LowerMemory.7: mov %rdi:0, (^2)
	movl %edi, (%rbx)
	# LowerMemory.1: mov $imm, (^3)
	movq $0, (%rcx)
	# LowerMemory.1: mov $imm, (^4)
	movq $0, (%rax)
	# LowerMemory.1: mov $imm, (^5)
	movq $1, (%rdx)
	# LowerMemory.1: mov $imm, (^6)
	movq $2, (%rsi)
	jmp .__fibonacci_labelmini__41
	.__fibonacci_labelmini__41:
	# LowerMemory(load @ 24:3): load (^6) into ^9
	movl (%rsi), %ecx
	# LowerMemory(load @ 25:3): load (^2) into ^10
	movl (%rbx), %r8d
	cmpl %r8d, %ecx
	movl $1, %r8d
	cmovll %r8d, %ecx
	cmpb $0, %cl
	jne .__fibonacci_labelmini__49
	jmp .__fibonacci_labelmini__73
	.__fibonacci_labelmini__49:
	# LowerMemory(load @ 30:3): load (^4) into ^13
	movl (%rax), %ecx
	# LowerMemory(load @ 31:3): load (^5) into ^14
	movl (%rdx), %r8d
	movl %ecx, %r9d
	addl %r8d, %r9d
	# LowerMemory.7: mov ^15, (^7)
	movl %r9d, (%rdi)
	# LowerMemory(load @ 34:3): load (^4) into ^16
	movl (%rax), %ecx
	# LowerMemory.7: mov ^16, (^5)
	movl %ecx, (%rdx)
	# LowerMemory(load @ 36:3): load (^7) into ^17
	movl (%rdi), %ecx
	# LowerMemory.7: mov ^17, (^4)
	movl %ecx, (%rax)
	jmp .__fibonacci_labelmini__66
	.__fibonacci_labelmini__66:
	# LowerMemory(load @ 41:3): load (^6) into ^19
	movl (%rsi), %ecx
	movl %ecx, %r8d
	addl $1, %r8d
	# LowerMemory.7: mov ^20, (^6)
	movl %r8d, (%rsi)
	jmp .__fibonacci_labelmini__41
	.__fibonacci_labelmini__73:
	# LowerMemory(load @ 47:3): load (^5) into ^22
	movl (%rdx), %eax
	movq %rax, %rax
	movq (%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

