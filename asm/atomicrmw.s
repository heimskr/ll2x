	.text
	.file	"atomicrmw.ll"
	.globl	atomique                        # -- Begin function atomique
	.p2align	4, 0x90
	.type	atomique,@function
atomique:                               # @atomique
# %bb.0:
	lock		xaddq	%rdi, (%rsi)
	movq	%rdi, (%rsi)
	retq
.Lfunc_end0:
	.size	atomique, .Lfunc_end0-atomique
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
