.section .data.rel
.align 8

__ctors_start:
.quad llvm.global_ctors

__ctors_end:
.quad (llvm.global_ctors + 24)

.section .data
.align 8
llvm.global_ctors:
.int 65535
.fill 4, 1, 0
.quad _GLOBAL__sub_I_noisy.cpp
.fill 8, 1, 0

.section .data
.align 8
noisy:
.fill 1, 1, 0

.section .rodata
.align 8
str:
.ascii "Noisy::Noisy()\x00"

.section .rodata
.align 8
str.3:
.ascii "Noisy::~Noisy()\x00"

.section .rodata
.align 8
str.4:
.ascii "Hello, World!\x00"

.section .text.startup
.global _GLOBAL__sub_I_noisy.cpp
.p2align 4, 0x90
_GLOBAL__sub_I_noisy.cpp:
	.___GLOBAL__sub_I_noisy.cpp__M0:
	pushq %rbp
	movq %rsp, %rbp
	# SetupCalls(36:3): move argument i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str, i64 0, i64 0)
	movq str@GOTPCREL(%rip), %rdi
	callq puts@PLT
	# SetupCalls(36:3): move result from %rax
	movl %eax, %eax
	# SetupCalls(37:3): move argument void (i8*) ** @_ZN5NoisyD2Ev
	movq _ZN5NoisyD2Ev@GOTPCREL(%rip), %rdi
	# SetupCalls(37:3): move argument i8* getelementptr inbounds (%struct.Noisy, %struct.Noisy* @noisy, i64 0, i32 0)
	movq noisy@GOTPCREL(%rip), %rsi
	# SetupCalls(37:3): move argument i8* @__dso_handle
	movq __dso_handle@GOTPCREL(%rip), %rdx
	callq __cxa_atexit@PLT
	# SetupCalls(37:3): move result from %rax
	movl %eax, %eax
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
	# SetupCalls(29:3): move argument i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.4, i64 0, i64 0)
	movq str.4@GOTPCREL(%rip), %rdi
	callq puts@PLT
	# SetupCalls(29:3): move result from %rax
	movl %eax, %eax
	movq $0, %rax
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZN5NoisyD2Ev
.p2align 4, 0x90
_ZN5NoisyD2Ev:
	.___ZN5NoisyD2Ev__M0:
	pushq %rbp
	movq %rsp, %rbp
	# SetupCalls(20:3): move argument i8* getelementptr inbounds ([16 x i8], [16 x i8]* @str.3, i64 0, i64 0)
	movq str.3@GOTPCREL(%rip), %rdi
	callq puts@PLT
	# SetupCalls(20:3): move result from %rax
	movl %eax, %eax
	movq %rbp, %rsp
	popq %rbp
	retq


.section .init_array
.p2align 3
.quad _GLOBAL__sub_I_noisy.cpp
