	.text
	.file	"select.ll"
	.globl	select                          # -- Begin function select
	.p2align	4, 0x90
	.type	select,@function
select:                                 # @select
# %bb.0:
	testb	$1, %dil
	movl	$42, %eax
	cmoveq	%rsi, %rax
	retq
.Lfunc_end0:
	.size	select, .Lfunc_end0-select
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
