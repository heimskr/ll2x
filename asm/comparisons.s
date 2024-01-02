.section .rodata
.align 8
.str:
.ascii "big < small: \x00"

.section .rodata
.align 8
.str.1:
.ascii "true\x00"

.section .rodata
.align 8
.str.10:
.ascii "ubig > usmall: \x00"

.section .rodata
.align 8
.str.11:
.ascii "ubig >= usmall: \x00"

.section .rodata
.align 8
.str.12:
.ascii "ubig <= usmall: \x00"

.section .rodata
.align 8
.str.13:
.ascii "ubig == usmall: \x00"

.section .rodata
.align 8
.str.14:
.ascii "ubig != usmall: \x00"

.section .rodata
.align 8
.str.15:
.ascii "big < big: \x00"

.section .rodata
.align 8
.str.16:
.ascii "big > big: \x00"

.section .rodata
.align 8
.str.17:
.ascii "big >= big: \x00"

.section .rodata
.align 8
.str.18:
.ascii "big <= big: \x00"

.section .rodata
.align 8
.str.19:
.ascii "big == big: \x00"

.section .rodata
.align 8
.str.2:
.ascii "false\x00"

.section .rodata
.align 8
.str.20:
.ascii "big != big: \x00"

.section .rodata
.align 8
.str.21:
.ascii "ubig < ubig: \x00"

.section .rodata
.align 8
.str.22:
.ascii "ubig > ubig: \x00"

.section .rodata
.align 8
.str.23:
.ascii "ubig >= ubig: \x00"

.section .rodata
.align 8
.str.24:
.ascii "ubig <= ubig: \x00"

.section .rodata
.align 8
.str.25:
.ascii "ubig == ubig: \x00"

.section .rodata
.align 8
.str.26:
.ascii "ubig != ubig: \x00"

.section .rodata
.align 8
.str.3:
.ascii "big > small: \x00"

.section .rodata
.align 8
.str.4:
.ascii "big >= small: \x00"

.section .rodata
.align 8
.str.5:
.ascii "big <= small: \x00"

.section .rodata
.align 8
.str.6:
.ascii "big == small: \x00"

.section .rodata
.align 8
.str.7:
.ascii "big != small: \x00"

.section .data
.align 8
.str.8:
.fill 1, 1, 0

.section .rodata
.align 8
.str.9:
.ascii "ubig < usmall: \x00"

.section .text
.global main
.p2align 4, 0x90
main:
	.__main__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(216 + 0, 16)
	subq $224, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -32(%rbp)
	movq %r12, -56(%rbp)
	movq %r13, -40(%rbp)
	movq %r14, -48(%rbp)
	# LowerAlloca(36:3): size = 4, type = i32*, var = ^1
	leaq -4(%rbp), %rbx
	# LowerAlloca(37:3): size = 4, type = i32*, var = ^2
	leaq -8(%rbp), %r13
	# LowerAlloca(38:3): size = 4, type = i32*, var = ^3
	leaq -12(%rbp), %r14
	# LowerAlloca(39:3): size = 4, type = i32*, var = ^4
	leaq -16(%rbp), %r12
	# LowerStore(40:3).3: mov $imm, (^1)
	movl $1000000000, (%rbx)
	# LowerStore(41:3).3: mov $imm, (^2)
	movl $-1000, (%r13)
	# LowerStore(42:3).3: mov $imm, (^3)
	movl $-1294967296, (%r14)
	# LowerStore(43:3).3: mov $imm, (^4)
	movl $1, (%r12)
	# SetupCalls(47:3): move argument ptr @.str
	leaq .str(%rip), %rdi
	movq $0, %rax
	callq printf@PLT
	# SetupCalls(47:3): move result from %rax
	movl %eax, %eax
	# LowerLoad(48:3).2: (^1) into ^7
	movl (%rbx), %eax
	# LowerLoad(49:3).2: (^2) into ^8
	movl (%r13), %ecx
	# LowerIcmp(50:3): i32 ^7 vs. operand i32 ^8
	cmpl %ecx, %eax
	setl %al
	andq $1, %rax
	# LowerBasicConversion(51:3): ^9 (32) -> ^10 (64)
	movq %rax, %rcx
	cmpl $0, %eax
	leaq .str.1(%rip), %rax
	leaq .str.2(%rip), %rcx
	jne .__main__RC0
	movq %rcx, %rax
	.__main__RC0:
	# Clobber %rax
	movq %rax, -24(%rbp)
	# SetupCalls(53:3): move argument ptr ^11
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq puts@PLT
	# SetupCalls(53:3): move result from %rax
	movl %eax, %eax
	# Unclobber %rax
	movq -24(%rbp), %rax
	# SetupCalls(60:3): move argument ptr @.str.3
	leaq .str.3(%rip), %rdi
	movq $0, %rax
	callq printf@PLT
	# SetupCalls(60:3): move result from %rax
	movl %eax, %eax
	# LowerLoad(61:3).2: (^1) into ^16
	movl (%rbx), %eax
	# LowerLoad(62:3).2: (^2) into ^17
	movl (%r13), %ecx
	# LowerIcmp(63:3): i32 ^16 vs. operand i32 ^17
	cmpl %ecx, %eax
	setg %al
	andq $1, %rax
	# LowerBasicConversion(64:3): ^18 (32) -> ^19 (64)
	movq %rax, %rcx
	cmpl $0, %eax
	leaq .str.1(%rip), %rax
	leaq .str.2(%rip), %rcx
	jne .__main__RC1
	movq %rcx, %rax
	.__main__RC1:
	# Clobber %rax
	movq %rax, -24(%rbp)
	# SetupCalls(66:3): move argument ptr ^20
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq puts@PLT
	# SetupCalls(66:3): move result from %rax
	movl %eax, %eax
	# Unclobber %rax
	movq -24(%rbp), %rax
	# SetupCalls(73:3): move argument ptr @.str.4
	leaq .str.4(%rip), %rdi
	movq $0, %rax
	callq printf@PLT
	# SetupCalls(73:3): move result from %rax
	movl %eax, %eax
	# LowerLoad(74:3).2: (^1) into ^25
	movl (%rbx), %eax
	# LowerLoad(75:3).2: (^2) into ^26
	movl (%r13), %ecx
	# LowerIcmp(76:3): i32 ^25 vs. operand i32 ^26
	cmpl %ecx, %eax
	setge %al
	andq $1, %rax
	# LowerBasicConversion(77:3): ^27 (32) -> ^28 (64)
	movq %rax, %rcx
	cmpl $0, %eax
	leaq .str.1(%rip), %rax
	leaq .str.2(%rip), %rcx
	jne .__main__RC2
	movq %rcx, %rax
	.__main__RC2:
	# Clobber %rax
	movq %rax, -24(%rbp)
	# SetupCalls(79:3): move argument ptr ^29
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq puts@PLT
	# SetupCalls(79:3): move result from %rax
	movl %eax, %eax
	# Unclobber %rax
	movq -24(%rbp), %rax
	# SetupCalls(86:3): move argument ptr @.str.5
	leaq .str.5(%rip), %rdi
	movq $0, %rax
	callq printf@PLT
	# SetupCalls(86:3): move result from %rax
	movl %eax, %eax
	# LowerLoad(87:3).2: (^1) into ^34
	movl (%rbx), %eax
	# LowerLoad(88:3).2: (^2) into ^35
	movl (%r13), %ecx
	# LowerIcmp(89:3): i32 ^34 vs. operand i32 ^35
	cmpl %ecx, %eax
	setle %al
	andq $1, %rax
	# LowerBasicConversion(90:3): ^36 (32) -> ^37 (64)
	movq %rax, %rcx
	cmpl $0, %eax
	leaq .str.1(%rip), %rax
	leaq .str.2(%rip), %rcx
	jne .__main__RC3
	movq %rcx, %rax
	.__main__RC3:
	# Clobber %rax
	movq %rax, -24(%rbp)
	# SetupCalls(92:3): move argument ptr ^38
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq puts@PLT
	# SetupCalls(92:3): move result from %rax
	movl %eax, %eax
	# Unclobber %rax
	movq -24(%rbp), %rax
	# SetupCalls(99:3): move argument ptr @.str.6
	leaq .str.6(%rip), %rdi
	movq $0, %rax
	callq printf@PLT
	# SetupCalls(99:3): move result from %rax
	movl %eax, %eax
	# LowerLoad(100:3).2: (^1) into ^43
	movl (%rbx), %eax
	# LowerLoad(101:3).2: (^2) into ^44
	movl (%r13), %ecx
	# LowerIcmp(102:3): i32 ^43 vs. operand i32 ^44
	cmpl %ecx, %eax
	sete %al
	andq $1, %rax
	# LowerBasicConversion(103:3): ^45 (32) -> ^46 (64)
	movq %rax, %rcx
	cmpl $0, %eax
	leaq .str.1(%rip), %rax
	leaq .str.2(%rip), %rcx
	jne .__main__RC4
	movq %rcx, %rax
	.__main__RC4:
	# Clobber %rax
	movq %rax, -24(%rbp)
	# SetupCalls(105:3): move argument ptr ^47
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq puts@PLT
	# SetupCalls(105:3): move result from %rax
	movl %eax, %eax
	# Unclobber %rax
	movq -24(%rbp), %rax
	# SetupCalls(112:3): move argument ptr @.str.7
	leaq .str.7(%rip), %rdi
	movq $0, %rax
	callq printf@PLT
	# SetupCalls(112:3): move result from %rax
	movl %eax, %eax
	# LowerLoad(113:3).2: (^1) into ^52
	movl (%rbx), %eax
	# LowerLoad(114:3).2: (^2) into ^53
	movl (%r13), %ecx
	# LowerIcmp(115:3): i32 ^52 vs. operand i32 ^53
	cmpl %ecx, %eax
	setne %al
	andq $1, %rax
	# LowerBasicConversion(116:3): ^54 (32) -> ^55 (64)
	movq %rax, %rcx
	cmpl $0, %eax
	leaq .str.1(%rip), %rax
	leaq .str.2(%rip), %rcx
	jne .__main__RC5
	movq %rcx, %rax
	.__main__RC5:
	# Clobber %rax
	movq %rax, -24(%rbp)
	# SetupCalls(118:3): move argument ptr ^56
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq puts@PLT
	# SetupCalls(118:3): move result from %rax
	movl %eax, %eax
	# Unclobber %rax
	movq -24(%rbp), %rax
	# SetupCalls(122:3): move argument ptr @.str.8
	leaq .str.8(%rip), %rdi
	callq puts@PLT
	# SetupCalls(122:3): move result from %rax
	movl %eax, %eax
	# SetupCalls(126:3): move argument ptr @.str.9
	leaq .str.9(%rip), %rdi
	movq $0, %rax
	callq printf@PLT
	# SetupCalls(126:3): move result from %rax
	movl %eax, %eax
	# LowerLoad(127:3).2: (^3) into ^62
	movl (%r14), %ecx
	# LowerLoad(128:3).2: (^4) into ^63
	movl (%r12), %eax
	# LowerIcmp(129:3): i32 ^62 vs. operand i32 ^63
	cmpl %eax, %ecx
	setb %al
	andq $1, %rax
	# LowerBasicConversion(130:3): ^64 (32) -> ^65 (64)
	movq %rax, %rcx
	cmpl $0, %eax
	leaq .str.1(%rip), %rax
	leaq .str.2(%rip), %rcx
	jne .__main__RC6
	movq %rcx, %rax
	.__main__RC6:
	# Clobber %rax
	movq %rax, -24(%rbp)
	# SetupCalls(132:3): move argument ptr ^66
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq puts@PLT
	# SetupCalls(132:3): move result from %rax
	movl %eax, %eax
	# Unclobber %rax
	movq -24(%rbp), %rax
	# SetupCalls(139:3): move argument ptr @.str.10
	leaq .str.10(%rip), %rdi
	movq $0, %rax
	callq printf@PLT
	# SetupCalls(139:3): move result from %rax
	movl %eax, %eax
	# LowerLoad(140:3).2: (^3) into ^71
	movl (%r14), %eax
	# LowerLoad(141:3).2: (^4) into ^72
	movl (%r12), %ecx
	# LowerIcmp(142:3): i32 ^71 vs. operand i32 ^72
	cmpl %ecx, %eax
	seta %al
	andq $1, %rax
	# LowerBasicConversion(143:3): ^73 (32) -> ^74 (64)
	movq %rax, %rcx
	cmpl $0, %eax
	leaq .str.1(%rip), %rax
	leaq .str.2(%rip), %rcx
	jne .__main__RC7
	movq %rcx, %rax
	.__main__RC7:
	# Clobber %rax
	movq %rax, -24(%rbp)
	# SetupCalls(145:3): move argument ptr ^75
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq puts@PLT
	# SetupCalls(145:3): move result from %rax
	movl %eax, %eax
	# Unclobber %rax
	movq -24(%rbp), %rax
	# SetupCalls(152:3): move argument ptr @.str.11
	leaq .str.11(%rip), %rdi
	movq $0, %rax
	callq printf@PLT
	# SetupCalls(152:3): move result from %rax
	movl %eax, %eax
	# LowerLoad(153:3).2: (^3) into ^80
	movl (%r14), %eax
	# LowerLoad(154:3).2: (^4) into ^81
	movl (%r12), %ecx
	# LowerIcmp(155:3): i32 ^80 vs. operand i32 ^81
	cmpl %ecx, %eax
	setae %al
	andq $1, %rax
	# LowerBasicConversion(156:3): ^82 (32) -> ^83 (64)
	movq %rax, %rcx
	cmpl $0, %eax
	leaq .str.1(%rip), %rax
	leaq .str.2(%rip), %rcx
	jne .__main__RC8
	movq %rcx, %rax
	.__main__RC8:
	# Clobber %rax
	movq %rax, -24(%rbp)
	# SetupCalls(158:3): move argument ptr ^84
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq puts@PLT
	# SetupCalls(158:3): move result from %rax
	movl %eax, %eax
	# Unclobber %rax
	movq -24(%rbp), %rax
	# SetupCalls(165:3): move argument ptr @.str.12
	leaq .str.12(%rip), %rdi
	movq $0, %rax
	callq printf@PLT
	# SetupCalls(165:3): move result from %rax
	movl %eax, %eax
	# LowerLoad(166:3).2: (^3) into ^89
	movl (%r14), %eax
	# LowerLoad(167:3).2: (^4) into ^90
	movl (%r12), %ecx
	# LowerIcmp(168:3): i32 ^89 vs. operand i32 ^90
	cmpl %ecx, %eax
	setbe %al
	andq $1, %rax
	# LowerBasicConversion(169:3): ^91 (32) -> ^92 (64)
	movq %rax, %rcx
	cmpl $0, %eax
	leaq .str.1(%rip), %rax
	leaq .str.2(%rip), %rcx
	jne .__main__RC9
	movq %rcx, %rax
	.__main__RC9:
	# Clobber %rax
	movq %rax, -24(%rbp)
	# SetupCalls(171:3): move argument ptr ^93
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq puts@PLT
	# SetupCalls(171:3): move result from %rax
	movl %eax, %eax
	# Unclobber %rax
	movq -24(%rbp), %rax
	# SetupCalls(178:3): move argument ptr @.str.13
	leaq .str.13(%rip), %rdi
	movq $0, %rax
	callq printf@PLT
	# SetupCalls(178:3): move result from %rax
	movl %eax, %eax
	# LowerLoad(179:3).2: (^3) into ^98
	movl (%r14), %eax
	# LowerLoad(180:3).2: (^4) into ^99
	movl (%r12), %ecx
	# LowerIcmp(181:3): i32 ^98 vs. operand i32 ^99
	cmpl %ecx, %eax
	sete %al
	andq $1, %rax
	# LowerBasicConversion(182:3): ^100 (32) -> ^101 (64)
	movq %rax, %rcx
	cmpl $0, %eax
	leaq .str.1(%rip), %rax
	leaq .str.2(%rip), %rcx
	jne .__main__RC10
	movq %rcx, %rax
	.__main__RC10:
	# Clobber %rax
	movq %rax, -24(%rbp)
	# SetupCalls(184:3): move argument ptr ^102
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq puts@PLT
	# SetupCalls(184:3): move result from %rax
	movl %eax, %eax
	# Unclobber %rax
	movq -24(%rbp), %rax
	# SetupCalls(191:3): move argument ptr @.str.14
	leaq .str.14(%rip), %rdi
	movq $0, %rax
	callq printf@PLT
	# SetupCalls(191:3): move result from %rax
	movl %eax, %eax
	# LowerLoad(192:3).2: (^3) into ^107
	movl (%r14), %eax
	# LowerLoad(193:3).2: (^4) into ^108
	movl (%r12), %ecx
	# LowerIcmp(194:3): i32 ^107 vs. operand i32 ^108
	cmpl %ecx, %eax
	setne %al
	andq $1, %rax
	# LowerBasicConversion(195:3): ^109 (32) -> ^110 (64)
	movq %rax, %rcx
	cmpl $0, %eax
	leaq .str.1(%rip), %rax
	leaq .str.2(%rip), %rcx
	jne .__main__RC11
	movq %rcx, %rax
	.__main__RC11:
	# Clobber %rax
	movq %rax, -24(%rbp)
	# SetupCalls(197:3): move argument ptr ^111
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq puts@PLT
	# SetupCalls(197:3): move result from %rax
	movl %eax, %eax
	# Unclobber %rax
	movq -24(%rbp), %rax
	# SetupCalls(201:3): move argument ptr @.str.8
	leaq .str.8(%rip), %rdi
	callq puts@PLT
	# SetupCalls(201:3): move result from %rax
	movl %eax, %eax
	# SetupCalls(205:3): move argument ptr @.str.15
	leaq .str.15(%rip), %rdi
	movq $0, %rax
	callq printf@PLT
	# SetupCalls(205:3): move result from %rax
	movl %eax, %eax
	# LowerLoad(206:3).2: (^1) into ^117
	movl (%rbx), %eax
	# LowerLoad(207:3).2: (^1) into ^118
	movl (%rbx), %ecx
	# LowerIcmp(208:3): i32 ^117 vs. operand i32 ^118
	cmpl %ecx, %eax
	setl %al
	andq $1, %rax
	# LowerBasicConversion(209:3): ^119 (32) -> ^120 (64)
	movq %rax, %rcx
	cmpl $0, %eax
	leaq .str.1(%rip), %rax
	leaq .str.2(%rip), %rcx
	jne .__main__RC12
	movq %rcx, %rax
	.__main__RC12:
	# Clobber %rax
	movq %rax, -24(%rbp)
	# SetupCalls(211:3): move argument ptr ^121
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq puts@PLT
	# SetupCalls(211:3): move result from %rax
	movl %eax, %eax
	# Unclobber %rax
	movq -24(%rbp), %rax
	# SetupCalls(218:3): move argument ptr @.str.16
	leaq .str.16(%rip), %rdi
	movq $0, %rax
	callq printf@PLT
	# SetupCalls(218:3): move result from %rax
	movl %eax, %eax
	# LowerLoad(219:3).2: (^1) into ^126
	movl (%rbx), %eax
	# LowerLoad(220:3).2: (^1) into ^127
	movl (%rbx), %ecx
	# LowerIcmp(221:3): i32 ^126 vs. operand i32 ^127
	cmpl %ecx, %eax
	setg %al
	andq $1, %rax
	# LowerBasicConversion(222:3): ^128 (32) -> ^129 (64)
	movq %rax, %rcx
	cmpl $0, %eax
	leaq .str.1(%rip), %rax
	leaq .str.2(%rip), %rcx
	jne .__main__RC13
	movq %rcx, %rax
	.__main__RC13:
	# Clobber %rax
	movq %rax, -24(%rbp)
	# SetupCalls(224:3): move argument ptr ^130
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq puts@PLT
	# SetupCalls(224:3): move result from %rax
	movl %eax, %eax
	# Unclobber %rax
	movq -24(%rbp), %rax
	# SetupCalls(231:3): move argument ptr @.str.17
	leaq .str.17(%rip), %rdi
	movq $0, %rax
	callq printf@PLT
	# SetupCalls(231:3): move result from %rax
	movl %eax, %eax
	# LowerLoad(232:3).2: (^1) into ^135
	movl (%rbx), %eax
	# LowerLoad(233:3).2: (^1) into ^136
	movl (%rbx), %ecx
	# LowerIcmp(234:3): i32 ^135 vs. operand i32 ^136
	cmpl %ecx, %eax
	setge %al
	andq $1, %rax
	# LowerBasicConversion(235:3): ^137 (32) -> ^138 (64)
	movq %rax, %rcx
	cmpl $0, %eax
	leaq .str.1(%rip), %rax
	leaq .str.2(%rip), %rcx
	jne .__main__RC14
	movq %rcx, %rax
	.__main__RC14:
	# Clobber %rax
	movq %rax, -24(%rbp)
	# SetupCalls(237:3): move argument ptr ^139
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq puts@PLT
	# SetupCalls(237:3): move result from %rax
	movl %eax, %eax
	# Unclobber %rax
	movq -24(%rbp), %rax
	# SetupCalls(244:3): move argument ptr @.str.18
	leaq .str.18(%rip), %rdi
	movq $0, %rax
	callq printf@PLT
	# SetupCalls(244:3): move result from %rax
	movl %eax, %eax
	# LowerLoad(245:3).2: (^1) into ^144
	movl (%rbx), %eax
	# LowerLoad(246:3).2: (^1) into ^145
	movl (%rbx), %ecx
	# LowerIcmp(247:3): i32 ^144 vs. operand i32 ^145
	cmpl %ecx, %eax
	setle %al
	andq $1, %rax
	# LowerBasicConversion(248:3): ^146 (32) -> ^147 (64)
	movq %rax, %rcx
	cmpl $0, %eax
	leaq .str.1(%rip), %rax
	leaq .str.2(%rip), %rcx
	jne .__main__RC15
	movq %rcx, %rax
	.__main__RC15:
	# Clobber %rax
	movq %rax, -24(%rbp)
	# SetupCalls(250:3): move argument ptr ^148
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq puts@PLT
	# SetupCalls(250:3): move result from %rax
	movl %eax, %eax
	# Unclobber %rax
	movq -24(%rbp), %rax
	# SetupCalls(257:3): move argument ptr @.str.19
	leaq .str.19(%rip), %rdi
	movq $0, %rax
	callq printf@PLT
	# SetupCalls(257:3): move result from %rax
	movl %eax, %eax
	# LowerLoad(258:3).2: (^1) into ^153
	movl (%rbx), %eax
	# LowerLoad(259:3).2: (^1) into ^154
	movl (%rbx), %ecx
	# LowerIcmp(260:3): i32 ^153 vs. operand i32 ^154
	cmpl %ecx, %eax
	sete %al
	andq $1, %rax
	# LowerBasicConversion(261:3): ^155 (32) -> ^156 (64)
	movq %rax, %rcx
	cmpl $0, %eax
	leaq .str.1(%rip), %rax
	leaq .str.2(%rip), %rcx
	jne .__main__RC16
	movq %rcx, %rax
	.__main__RC16:
	# Clobber %rax
	movq %rax, -24(%rbp)
	# SetupCalls(263:3): move argument ptr ^157
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq puts@PLT
	# SetupCalls(263:3): move result from %rax
	movl %eax, %eax
	# Unclobber %rax
	movq -24(%rbp), %rax
	# SetupCalls(270:3): move argument ptr @.str.20
	leaq .str.20(%rip), %rdi
	movq $0, %rax
	callq printf@PLT
	# SetupCalls(270:3): move result from %rax
	movl %eax, %eax
	# LowerLoad(271:3).2: (^1) into ^162
	movl (%rbx), %eax
	# LowerLoad(272:3).2: (^1) into ^163
	movl (%rbx), %ecx
	# LowerIcmp(273:3): i32 ^162 vs. operand i32 ^163
	cmpl %ecx, %eax
	setne %al
	andq $1, %rax
	# LowerBasicConversion(274:3): ^164 (32) -> ^165 (64)
	movq %rax, %rbx
	cmpl $0, %eax
	leaq .str.1(%rip), %rax
	leaq .str.2(%rip), %rbx
	jne .__main__RC17
	movq %rbx, %rax
	.__main__RC17:
	# Clobber %rax
	movq %rax, -24(%rbp)
	# SetupCalls(276:3): move argument ptr ^166
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq puts@PLT
	# SetupCalls(276:3): move result from %rax
	movl %eax, %eax
	# Unclobber %rax
	movq -24(%rbp), %rax
	# SetupCalls(280:3): move argument ptr @.str.8
	leaq .str.8(%rip), %rdi
	callq puts@PLT
	# SetupCalls(280:3): move result from %rax
	movl %eax, %eax
	# SetupCalls(284:3): move argument ptr @.str.21
	leaq .str.21(%rip), %rdi
	movq $0, %rax
	callq printf@PLT
	# SetupCalls(284:3): move result from %rax
	movl %eax, %eax
	# LowerLoad(285:3).2: (^3) into ^172
	movl (%r14), %eax
	# LowerLoad(286:3).2: (^3) into ^173
	movl (%r14), %ebx
	# LowerIcmp(287:3): i32 ^172 vs. operand i32 ^173
	cmpl %ebx, %eax
	setb %al
	andq $1, %rax
	# LowerBasicConversion(288:3): ^174 (32) -> ^175 (64)
	movq %rax, %rbx
	cmpl $0, %eax
	leaq .str.1(%rip), %rax
	leaq .str.2(%rip), %rbx
	jne .__main__RC18
	movq %rbx, %rax
	.__main__RC18:
	# Clobber %rax
	movq %rax, -24(%rbp)
	# SetupCalls(290:3): move argument ptr ^176
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq puts@PLT
	# SetupCalls(290:3): move result from %rax
	movl %eax, %eax
	# Unclobber %rax
	movq -24(%rbp), %rax
	# SetupCalls(297:3): move argument ptr @.str.22
	leaq .str.22(%rip), %rdi
	movq $0, %rax
	callq printf@PLT
	# SetupCalls(297:3): move result from %rax
	movl %eax, %eax
	# LowerLoad(298:3).2: (^3) into ^181
	movl (%r14), %eax
	# LowerLoad(299:3).2: (^3) into ^182
	movl (%r14), %ebx
	# LowerIcmp(300:3): i32 ^181 vs. operand i32 ^182
	cmpl %ebx, %eax
	seta %al
	andq $1, %rax
	# LowerBasicConversion(301:3): ^183 (32) -> ^184 (64)
	movq %rax, %rbx
	cmpl $0, %eax
	leaq .str.1(%rip), %rax
	leaq .str.2(%rip), %rbx
	jne .__main__RC19
	movq %rbx, %rax
	.__main__RC19:
	# Clobber %rax
	movq %rax, -24(%rbp)
	# SetupCalls(303:3): move argument ptr ^185
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq puts@PLT
	# SetupCalls(303:3): move result from %rax
	movl %eax, %eax
	# Unclobber %rax
	movq -24(%rbp), %rax
	# SetupCalls(310:3): move argument ptr @.str.23
	leaq .str.23(%rip), %rdi
	movq $0, %rax
	callq printf@PLT
	# SetupCalls(310:3): move result from %rax
	movl %eax, %eax
	# LowerLoad(311:3).2: (^3) into ^190
	movl (%r14), %eax
	# LowerLoad(312:3).2: (^3) into ^191
	movl (%r14), %ebx
	# LowerIcmp(313:3): i32 ^190 vs. operand i32 ^191
	cmpl %ebx, %eax
	setae %al
	andq $1, %rax
	# LowerBasicConversion(314:3): ^192 (32) -> ^193 (64)
	movq %rax, %rbx
	cmpl $0, %eax
	leaq .str.1(%rip), %rax
	leaq .str.2(%rip), %rbx
	jne .__main__RC20
	movq %rbx, %rax
	.__main__RC20:
	# Clobber %rax
	movq %rax, -24(%rbp)
	# SetupCalls(316:3): move argument ptr ^194
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq puts@PLT
	# SetupCalls(316:3): move result from %rax
	movl %eax, %eax
	# Unclobber %rax
	movq -24(%rbp), %rax
	# SetupCalls(323:3): move argument ptr @.str.24
	leaq .str.24(%rip), %rdi
	movq $0, %rax
	callq printf@PLT
	# SetupCalls(323:3): move result from %rax
	movl %eax, %eax
	# LowerLoad(324:3).2: (^3) into ^199
	movl (%r14), %eax
	# LowerLoad(325:3).2: (^3) into ^200
	movl (%r14), %ebx
	# LowerIcmp(326:3): i32 ^199 vs. operand i32 ^200
	cmpl %ebx, %eax
	setbe %al
	andq $1, %rax
	# LowerBasicConversion(327:3): ^201 (32) -> ^202 (64)
	movq %rax, %rbx
	cmpl $0, %eax
	leaq .str.1(%rip), %rax
	leaq .str.2(%rip), %rbx
	jne .__main__RC21
	movq %rbx, %rax
	.__main__RC21:
	# Clobber %rax
	movq %rax, -24(%rbp)
	# SetupCalls(329:3): move argument ptr ^203
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq puts@PLT
	# SetupCalls(329:3): move result from %rax
	movl %eax, %eax
	# Unclobber %rax
	movq -24(%rbp), %rax
	# SetupCalls(336:3): move argument ptr @.str.25
	leaq .str.25(%rip), %rdi
	movq $0, %rax
	callq printf@PLT
	# SetupCalls(336:3): move result from %rax
	movl %eax, %eax
	# LowerLoad(337:3).2: (^3) into ^208
	movl (%r14), %eax
	# LowerLoad(338:3).2: (^3) into ^209
	movl (%r14), %ebx
	# LowerIcmp(339:3): i32 ^208 vs. operand i32 ^209
	cmpl %ebx, %eax
	sete %al
	andq $1, %rax
	# LowerBasicConversion(340:3): ^210 (32) -> ^211 (64)
	movq %rax, %rbx
	cmpl $0, %eax
	leaq .str.1(%rip), %rax
	leaq .str.2(%rip), %rbx
	jne .__main__RC22
	movq %rbx, %rax
	.__main__RC22:
	# Clobber %rax
	movq %rax, -24(%rbp)
	# SetupCalls(342:3): move argument ptr ^212
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq puts@PLT
	# SetupCalls(342:3): move result from %rax
	movl %eax, %eax
	# Unclobber %rax
	movq -24(%rbp), %rax
	# SetupCalls(349:3): move argument ptr @.str.26
	leaq .str.26(%rip), %rdi
	movq $0, %rax
	callq printf@PLT
	# SetupCalls(349:3): move result from %rax
	movl %eax, %eax
	# LowerLoad(350:3).2: (^3) into ^217
	movl (%r14), %eax
	# LowerLoad(351:3).2: (^3) into ^218
	movl (%r14), %ebx
	# LowerIcmp(352:3): i32 ^217 vs. operand i32 ^218
	cmpl %ebx, %eax
	setne %al
	andq $1, %rax
	# LowerBasicConversion(353:3): ^219 (32) -> ^220 (64)
	movq %rax, %rbx
	cmpl $0, %eax
	leaq .str.1(%rip), %rax
	leaq .str.2(%rip), %rbx
	jne .__main__RC23
	movq %rbx, %rax
	.__main__RC23:
	# Clobber %rax
	movq %rax, -24(%rbp)
	# SetupCalls(355:3): move argument ptr ^221
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq puts@PLT
	# SetupCalls(355:3): move result from %rax
	movl %eax, %eax
	# Unclobber %rax
	movq -24(%rbp), %rax
	movq $0, %rax
	movq -48(%rbp), %r14
	movq -40(%rbp), %r13
	movq -56(%rbp), %r12
	movq -32(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

