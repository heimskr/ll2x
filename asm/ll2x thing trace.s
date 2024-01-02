leaq -384(%rbp), %r15
movq %r15, -464(%rbp)
# LowerGetelementptr(674:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* ^7 -> ^107, indices=0,1,2,0,0
movq -464(%rbp), %rax
addq $8, %rax
addq $72, %rax
# LowerGetelementptr(674:3): type of ^107 is i8**
# LowerLoad(675:3).2: (^107) into ^108
movq (%rax), %rcx
# SetupCalls(680:3): move argument i8* ^108
movq %rcx, %rdi
callq _ZdlPv@PLT