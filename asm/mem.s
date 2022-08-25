	.text
	.file	"mem.ll"
	.globl	copy                            # -- Begin function copy
	.p2align	4, 0x90
	.type	copy,@function
copy:                                   # @copy
# %bb.0:
	pushq	%rax
	movl	$500, %edx                      # imm = 0x1F4
	callq	memcpy@PLT
	popq	%rax
	retq
.Lfunc_end0:
	.size	copy, .Lfunc_end0-copy
                                        # -- End function
	.globl	set                             # -- Begin function set
	.p2align	4, 0x90
	.type	set,@function
set:                                    # @set
# %bb.0:
	pushq	%rax
	movl	$500, %edx                      # imm = 0x1F4
	callq	memset@PLT
	popq	%rax
	retq
.Lfunc_end1:
	.size	set, .Lfunc_end1-set
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
