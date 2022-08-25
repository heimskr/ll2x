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
.str.2:
.ascii "basic_string::_M_construct null not valid\x00"

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
.quad _GLOBAL__sub_I_diriter.cpp
.fill 4, 1, 0
.fill 8, 1, 0

.section .text
.global _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv
.p2align 4, 0x90
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv:
	.___ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(80 + 0, 16)
	subq $80, %rsp
	movq %rbx, -48(%rbp)
	movq %r12, -56(%rbp)
	movq %r13, -64(%rbp)
	movq %r14, -40(%rbp)
	# LowerAlloca(2132:3): size=8, type=%"class.__gnu_cxx::__normal_iterator"*, var=^2
	leaq -8(%rbp), %r14
	# LowerAlloca(2133:3): size=8, type=%"class.std::__cxx11::basic_string"**, var=^3
	leaq -16(%rbp), %rax
	# LowerAlloca(2134:3): size=8, type=i8**, var=^4
	leaq -24(%rbp), %rbx
	# LowerMemory.S9: mov %rdi, (^3)
	movq %rdi, (%rax)
	# LowerMemory(load @ 2136:3): L2 (^3) into ^5
	movq (%rax), %r12
	# Clobber rdi
	movq %rdi, -32(%rbp)
	movq %r12, %rdi
	callq _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	# SetupCalls(2137:3: move result from %rax
	movq %rax, %r13
	# Unclobber rdi
	movq -32(%rbp), %rdi
	# Clobber rdi
	movq %rdi, -32(%rbp)
	movq %r12, %rdi
	callq _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
	# SetupCalls(2138:3: move result from %rax
	movq %rax, %r12
	# Unclobber rdi
	movq -32(%rbp), %rdi
	# LowerGetelementptr(2139:3): pointer-type -> ^8
	movq %r12, %rax
	addq %r13, %rax
	# LowerMemory.S9: mov ^8, (^4)
	movq %rax, (%rbx)
	# Clobber rdi
	movq %rdi, -32(%rbp)
	movq %r14, %rdi
	movq %rbx, %rsi
	callq _ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS2_
	# Unclobber rdi
	movq -32(%rbp), %rdi
	# LowerGetelementptr(2142:3): struct-type: %"class.__gnu_cxx::__normal_iterator"* -> ^9, indices=0,0
	movq %r14, %rax
	# LowerMemory(load @ 2143:3): L2 (^9) into ^10
	movq (%rax), %rbx
	movq %rbx, %rax
	movq -40(%rbp), %r14
	movq -64(%rbp), %r13
	movq -56(%rbp), %r12
	movq -48(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv
.p2align 4, 0x90
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv:
	.___ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(64 + 0, 16)
	subq $64, %rsp
	movq %rbx, -48(%rbp)
	movq %r12, -56(%rbp)
	movq %r13, -40(%rbp)
	# LowerAlloca(2117:3): size=8, type=%"class.__gnu_cxx::__normal_iterator"*, var=^2
	leaq -8(%rbp), %r13
	# LowerAlloca(2118:3): size=8, type=%"class.std::__cxx11::basic_string"**, var=^3
	leaq -16(%rbp), %rax
	# LowerAlloca(2119:3): size=8, type=i8**, var=^4
	leaq -24(%rbp), %rbx
	# LowerMemory.S9: mov %rdi, (^3)
	movq %rdi, (%rax)
	# LowerMemory(load @ 2121:3): L2 (^3) into ^5
	movq (%rax), %rcx
	# Clobber rdi
	movq %rdi, -32(%rbp)
	movq %rcx, %rdi
	callq _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	# SetupCalls(2122:3: move result from %rax
	movq %rax, %r12
	# Unclobber rdi
	movq -32(%rbp), %rdi
	# LowerMemory.S9: mov ^6, (^4)
	movq %r12, (%rbx)
	# Clobber rdi
	movq %rdi, -32(%rbp)
	movq %r13, %rdi
	movq %rbx, %rsi
	callq _ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS2_
	# Unclobber rdi
	movq -32(%rbp), %rdi
	# LowerGetelementptr(2125:3): struct-type: %"class.__gnu_cxx::__normal_iterator"* -> ^7, indices=0,0
	movq %r13, %rbx
	# LowerMemory(load @ 2126:3): L2 (^7) into ^8
	movq (%rbx), %rax
	movq -40(%rbp), %r13
	movq -56(%rbp), %r12
	movq -48(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_
.p2align 4, 0x90
_ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_:
	.___ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(74 + 0, 16)
	subq $80, %rsp
	movq %rbx, -66(%rbp)
	# LowerAlloca(2078:3): size=24, type=%"struct.std::__detail::_Quoted_string"*, var=^4
	leaq -24(%rbp), %rbx
	# LowerAlloca(2079:3): size=8, type=%"class.std::__cxx11::basic_string"**, var=^5
	leaq -32(%rbp), %rsi
	# LowerAlloca(2080:3): size=1, type=i8*, var=^6
	leaq -33(%rbp), %rdx
	# LowerAlloca(2081:3): size=1, type=i8*, var=^7
	leaq -34(%rbp), %rcx
	# LowerMemory.S9: mov %rdi, (^5)
	movq %rdi, (%rsi)
	# LowerMemory.S9: mov %sil, (^6)
	movb %sil, (%rdx)
	# LowerMemory.S9: mov %dl, (^7)
	movb %dl, (%rcx)
	# LowerMemory(load @ 2085:3): L2 (^5) into ^8
	movq (%rsi), %rax
	# LowerMemory(load @ 2086:3): L2 (^6) into ^9
	movb (%rdx), %sil
	# LowerMemory(load @ 2087:3): L2 (^7) into ^10
	movb (%rcx), %dl
	# Clobber rdi
	movq %rdi, -42(%rbp)
	# Clobber rsi
	movq %rsi, -50(%rbp)
	# Clobber rdx
	movq %rdx, -58(%rbp)
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rsi, %rdx
	movsbq %dl, %rdx
	movq %rdx, %rcx
	movsbq %cl, %rcx
	callq _ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC2ES8_cc
	# Unclobber rdx
	movq -58(%rbp), %rdx
	# Unclobber rsi
	movq -50(%rbp), %rsi
	# Unclobber rdi
	movq -42(%rbp), %rdi
	movq %rbx, %rax
	# LowerMemory(load @ 2090:3): L2 (^11) into ^12
	# FinishMultireg: mov (%reg), <%pack...>
	movq (%rax), %rbx
	movq 8(%rax), %rcx
	# LowerRet: two-register return
	movq %rbx, %rax
	movq %rcx, %rdx
	movq -66(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm
.p2align 4, 0x90
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm:
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(32 + 0, 16)
	subq $32, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(1973:3): size=8, type=%"class.std::__cxx11::basic_string"**, var=^3
	leaq -8(%rbp), %rbx
	# LowerAlloca(1974:3): size=8, type=i64*, var=^4
	leaq -16(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^3)
	movq %rdi, (%rbx)
	# LowerMemory.S9: mov %rsi, (^4)
	movq %rsi, (%rax)
	# LowerMemory(load @ 1977:3): L2 (^3) into ^5
	movq (%rbx), %rcx
	# LowerMemory(load @ 1978:3): L2 (^4) into ^6
	movq (%rax), %rbx
	# LowerGetelementptr(1979:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^7, indices=0,1
	movq %rcx, %rax
	addq $8, %rax
	# LowerMemory.S9: mov ^6, (^7)
	movq %rbx, (%rax)
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv
.p2align 4, 0x90
_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv:
	.___ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(16 + 0, 16)
	subq $16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(1883:3): size=8, type=%"class.__gnu_cxx::new_allocator"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 1885:3): L2 (^2) into ^3
	movq (%rax), %rbx
	movabsq $9223372036854775807, %rax
	movq -16(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
.p2align 4, 0x90
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv:
	.___ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(24 + 0, 16)
	subq $32, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(1839:3): size=8, type=%"class.std::__cxx11::basic_string"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 1841:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# LowerGetelementptr(1842:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^4, indices=0,0
	movq %rbx, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	movq -16(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm
.p2align 4, 0x90
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm:
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(64 + 0, 16)
	subq $64, %rsp
	movq %rbx, -48(%rbp)
	# LowerAlloca(1900:3): size=8, type=i8**, var=^4
	leaq -8(%rbp), %rbx
	# LowerAlloca(1901:3): size=8, type=i8**, var=^5
	leaq -16(%rbp), %rdx
	# LowerAlloca(1902:3): size=8, type=i64*, var=^6
	leaq -24(%rbp), %rcx
	# LowerMemory.S9: mov %rdi, (^4)
	movq %rdi, (%rbx)
	# LowerMemory.S9: mov %rsi, (^5)
	movq %rsi, (%rdx)
	# LowerMemory.S9: mov %rdx, (^6)
	movq %rdx, (%rcx)
	# LowerMemory(load @ 1906:3): L2 (^6) into ^7
	movq (%rcx), %rax
	cmpq $1, %rax
	sete %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm__M17
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm__M43
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm__M17:
	# LowerMemory(load @ 1911:3): L2 (^4) into ^10
	movq (%rbx), %rax
	# LowerMemory(load @ 1912:3): L2 (^5) into ^11
	movq (%rdx), %rbx
	# Clobber rdx
	movq %rdx, -32(%rbp)
	movq %rax, %rdi
	movq %rbx, %rsi
	callq _ZNSt11char_traitsIcE6assignERcRKc
	# Unclobber rdx
	movq -32(%rbp), %rdx
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm__M74
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm__M43:
	# LowerMemory(load @ 1917:3): L2 (^4) into ^13
	movq (%rbx), %rax
	# LowerMemory(load @ 1918:3): L2 (^5) into ^14
	movq (%rdx), %rbx
	# LowerMemory(load @ 1919:3): L2 (^6) into ^15
	movq (%rcx), %rdx
	# Clobber rdx
	movq %rdx, -32(%rbp)
	# Clobber rcx
	movq %rcx, -40(%rbp)
	movq %rax, %rdi
	movq %rbx, %rsi
	movq %rdx, %rdx
	callq _ZNSt11char_traitsIcE4copyEPcPKcm
	# SetupCalls(1920:3: move result from %rax
	movq %rax, %rax
	# Unclobber rcx
	movq -40(%rbp), %rcx
	# Unclobber rdx
	movq -32(%rbp), %rdx
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm__M74
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm__M74:
	movq -48(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv
.p2align 4, 0x90
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv:
	.___ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(48 + 0, 16)
	subq $48, %rsp
	movq %rbx, -24(%rbp)
	movq %r12, -40(%rbp)
	# LowerAlloca(1798:3): size=8, type=%"class.std::__cxx11::basic_string"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 1800:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %rbx, %rdi
	callq _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	# SetupCalls(1801:3: move result from %rax
	movq %rax, %rbx
	# Unclobber rdi
	movq -16(%rbp), %rdi
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %rbx, %rdi
	callq _ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_
	# SetupCalls(1802:3: move result from %rax
	movq %rax, %r12
	# Unclobber rdi
	movq -16(%rbp), %rdi
	movq %r12, %rbx
	subq $1, %rbx
	movq %rbx, %rax
	shrq $1, %rax
	movq -40(%rbp), %r12
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
.p2align 4, 0x90
_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_:
	.___ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(8 + 0, 16)
	subq $16, %rsp
	# LowerAlloca(1791:3): size=8, type=i8***, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
.p2align 4, 0x90
_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag:
	.___ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(41 + 0, 16)
	subq $48, %rsp
	movq %rbx, -25(%rbp)
	# LowerAlloca(1776:3): size=1, type=%"struct.std::random_access_iterator_tag"*, var=^3
	leaq -1(%rbp), %rax
	# LowerAlloca(1777:3): size=8, type=i8**, var=^4
	leaq -9(%rbp), %rax
	# LowerAlloca(1778:3): size=8, type=i8**, var=^5
	leaq -17(%rbp), %rbx
	# LowerMemory.S9: mov %rdi, (^4)
	movq %rdi, (%rax)
	# LowerMemory.S9: mov %rsi, (^5)
	movq %rsi, (%rbx)
	# LowerMemory(load @ 1781:3): L2 (^5) into ^6
	movq (%rbx), %rcx
	# LowerMemory(load @ 1782:3): L2 (^4) into ^7
	movq (%rax), %rbx
	movq %rcx, %rax
	movq %rbx, %rcx
	movq %rax, %rbx
	subq %rcx, %rbx
	movq %rbx, %rax
	movq -25(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_
.p2align 4, 0x90
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_:
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(56 + 0, 16)
	subq $64, %rsp
	movq %rbx, -56(%rbp)
	# LowerAlloca(1739:3): size=8, type=i8**, var=^4
	leaq -8(%rbp), %rax
	# LowerAlloca(1740:3): size=8, type=i8**, var=^5
	leaq -16(%rbp), %rdx
	# LowerAlloca(1741:3): size=8, type=i8**, var=^6
	leaq -24(%rbp), %rcx
	# LowerMemory.S9: mov %rdi, (^4)
	movq %rdi, (%rax)
	# LowerMemory.S9: mov %rsi, (^5)
	movq %rsi, (%rdx)
	# LowerMemory.S9: mov %rdx, (^6)
	movq %rdx, (%rcx)
	# LowerMemory(load @ 1745:3): L2 (^4) into ^7
	movq (%rax), %rbx
	# LowerMemory(load @ 1746:3): L2 (^5) into ^8
	movq (%rdx), %rax
	# LowerMemory(load @ 1747:3): L2 (^6) into ^9
	movq (%rcx), %rsi
	# LowerMemory(load @ 1748:3): L2 (^5) into ^10
	movq (%rdx), %rcx
	movq %rsi, %rdx
	movq %rcx, %rsi
	movq %rdx, %rcx
	subq %rsi, %rcx
	# Clobber rdi
	movq %rdi, -32(%rbp)
	# Clobber rsi
	movq %rsi, -40(%rbp)
	# Clobber rdx
	movq %rdx, -48(%rbp)
	movq %rbx, %rdi
	movq %rax, %rsi
	movq %rcx, %rdx
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm
	# Unclobber rdx
	movq -48(%rbp), %rdx
	# Unclobber rsi
	movq -40(%rbp), %rsi
	# Unclobber rdi
	movq -32(%rbp), %rdi
	movq -56(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
.p2align 4, 0x90
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv:
	.___ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(32 + 0, 16)
	subq $32, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(2250:3): size=8, type=%"class.std::__cxx11::basic_string"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 2252:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %rbx, %rdi
	callq _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	# SetupCalls(2253:3: move result from %rax
	movq %rax, %rbx
	# Unclobber rdi
	movq -16(%rbp), %rdi
	movq %rbx, %rax
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
.p2align 4, 0x90
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm:
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(128 + 0, 16)
	subq $128, %rsp
	movq %rbx, -72(%rbp)
	movq %r12, -64(%rbp)
	movq %r13, -56(%rbp)
	movq %r14, -80(%rbp)
	movq %r15, -88(%rbp)
	# LowerAlloca(1662:3): size=8, type=%"class.std::__cxx11::basic_string"**, var=^4
	leaq -8(%rbp), %rax
	# LowerAlloca(1663:3): size=8, type=i64**, var=^5
	leaq -16(%rbp), %r13
	# LowerAlloca(1664:3): size=8, type=i64*, var=^6
	leaq -24(%rbp), %r12
	# LowerMemory.S9: mov %rdi, (^4)
	movq %rdi, (%rax)
	# LowerMemory.S9: mov %rsi, (^5)
	movq %rsi, (%r13)
	# LowerMemory.S9: mov %rdx, (^6)
	movq %rdx, (%r12)
	# LowerMemory(load @ 1668:3): L2 (^4) into ^7
	movq (%rax), %rbx
	# LowerMemory(load @ 1669:3): L2 (^5) into ^8
	movq (%r13), %rax
	# LowerMemory(load @ 1670:3): L2 (^8) into ^9
	movq (%rax), %r14
	# Clobber rdi
	movq %rdi, -32(%rbp)
	# Clobber rsi
	movq %rsi, -40(%rbp)
	# Clobber rdx
	movq %rdx, -48(%rbp)
	movq %rbx, %rdi
	callq _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv
	# SetupCalls(1671:3: move result from %rax
	movq %rax, %r15
	# Unclobber rdx
	movq -48(%rbp), %rdx
	# Unclobber rsi
	movq -40(%rbp), %rsi
	# Unclobber rdi
	movq -32(%rbp), %rdi
	cmpq %r15, %r14
	seta %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm__M43
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm__M64
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm__M43:
	movq .str.3@GOTPCREL(%rip), %rdi
	callq _ZSt20__throw_length_errorPKc
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm__M64:
	# LowerMemory(load @ 1680:3): L2 (^5) into ^14
	movq (%r13), %rax
	# LowerMemory(load @ 1681:3): L2 (^14) into ^15
	movq (%rax), %rcx
	# LowerMemory(load @ 1682:3): L2 (^6) into ^16
	movq (%r12), %rax
	cmpq %rax, %rcx
	seta %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm__M73
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm__M159
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm__M73:
	# LowerMemory(load @ 1687:3): L2 (^5) into ^19
	movq (%r13), %rax
	# LowerMemory(load @ 1688:3): L2 (^19) into ^20
	movq (%rax), %rcx
	# LowerMemory(load @ 1689:3): L2 (^6) into ^21
	movq (%r12), %rax
	movq $2, %rax
	mulq %rax
	movq %rax, %rsi
	cmpq %rsi, %rcx
	setb %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm__M89
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm__M159
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm__M89:
	# LowerMemory(load @ 1695:3): L2 (^6) into ^25
	movq (%r12), %rax
	movq $2, %rax
	mulq %rax
	movq %rax, %rcx
	# LowerMemory(load @ 1697:3): L2 (^5) into ^27
	movq (%r13), %rax
	# LowerMemory.S9: mov ^26, (^27)
	movq %rcx, (%rax)
	# LowerMemory(load @ 1699:3): L2 (^5) into ^28
	movq (%r13), %rax
	# LowerMemory(load @ 1700:3): L2 (^28) into ^29
	movq (%rax), %r12
	movq %rbx, %rdi
	callq _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv
	# SetupCalls(1701:3: move result from %rax
	movq %rax, %r14
	cmpq %r14, %r12
	seta %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm__M131
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm__M158
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm__M131:
	movq %rbx, %rdi
	callq _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv
	# SetupCalls(1706:3: move result from %rax
	movq %rax, %r12
	# LowerMemory(load @ 1707:3): L2 (^5) into ^34
	movq (%r13), %rax
	# LowerMemory.S9: mov ^33, (^34)
	movq %r12, (%rax)
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm__M158
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm__M158:
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm__M159
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm__M159:
	movq %rbx, %rdi
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	# SetupCalls(1715:3: move result from %rax
	movq %rax, %rbx
	# LowerMemory(load @ 1716:3): L2 (^5) into ^38
	movq (%r13), %rax
	# LowerMemory(load @ 1717:3): L2 (^38) into ^39
	movq (%rax), %rcx
	movq %rcx, %rax
	addq $1, %rax
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _ZNSt16allocator_traitsISaIcEE8allocateERS0_m
	# SetupCalls(1719:3: move result from %rax
	movq %rax, %rbx
	movq %rbx, %rax
	movq -88(%rbp), %r15
	movq -80(%rbp), %r14
	movq -56(%rbp), %r13
	movq -64(%rbp), %r12
	movq -72(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
.p2align 4, 0x90
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc:
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(32 + 0, 16)
	subq $32, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(1648:3): size=8, type=%"class.std::__cxx11::basic_string"**, var=^3
	leaq -8(%rbp), %rbx
	# LowerAlloca(1649:3): size=8, type=i8**, var=^4
	leaq -16(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^3)
	movq %rdi, (%rbx)
	# LowerMemory.S9: mov %rsi, (^4)
	movq %rsi, (%rax)
	# LowerMemory(load @ 1652:3): L2 (^3) into ^5
	movq (%rbx), %rdx
	# LowerMemory(load @ 1653:3): L2 (^4) into ^6
	movq (%rax), %rcx
	# LowerGetelementptr(1654:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^7, indices=0,0
	movq %rdx, %rbx
	# LowerGetelementptr(1655:3): struct-type: %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* -> ^8, indices=0,0
	movq %rbx, %rax
	# LowerMemory.S9: mov ^6, (^8)
	movq %rcx, (%rax)
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
.p2align 4, 0x90
_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_:
	.___ZN9__gnu_cxx17__is_null_pointerIKcEEbPT___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(16 + 0, 16)
	subq $16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(1621:3): size=8, type=i8**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 1623:3): L2 (^2) into ^3
	movq (%rax), %rbx
	cmpq $0, %rbx
	sete %al
	movq -16(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
.p2align 4, 0x90
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag:
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(121 + 0, 16)
	subq $128, %rsp
	movq %rbx, -81(%rbp)
	movq %r12, -73(%rbp)
	movq %r13, -65(%rbp)
	movq %r14, -97(%rbp)
	movq %r15, -89(%rbp)
	# LowerAlloca(1570:3): size=1, type=%"struct.std::forward_iterator_tag"*, var=^4
	leaq -1(%rbp), %rax
	# LowerAlloca(1571:3): size=8, type=%"class.std::__cxx11::basic_string"**, var=^5
	leaq -9(%rbp), %rax
	# LowerAlloca(1572:3): size=8, type=i8**, var=^6
	leaq -17(%rbp), %r13
	# LowerAlloca(1573:3): size=8, type=i8**, var=^7
	leaq -25(%rbp), %r12
	# LowerAlloca(1574:3): size=8, type=i64*, var=^8
	leaq -33(%rbp), %rbx
	# LowerMemory.S9: mov %rdi, (^5)
	movq %rdi, (%rax)
	# LowerMemory.S9: mov %rsi, (^6)
	movq %rsi, (%r13)
	# LowerMemory.S9: mov %rdx, (^7)
	movq %rdx, (%r12)
	# LowerMemory(load @ 1578:3): L2 (^5) into ^9
	movq (%rax), %r15
	# LowerMemory(load @ 1579:3): L2 (^6) into ^10
	movq (%r13), %rax
	# Clobber rdi
	movq %rdi, -41(%rbp)
	# Clobber rsi
	movq %rsi, -49(%rbp)
	# Clobber rdx
	movq %rdx, -57(%rbp)
	movq %rax, %rdi
	callq _ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	# SetupCalls(1580:3: move result from %rax
	movb %al, %r14b
	# Unclobber rdx
	movq -57(%rbp), %rdx
	# Unclobber rsi
	movq -49(%rbp), %rsi
	# Unclobber rdi
	movq -41(%rbp), %rdi
	cmpb $0, %r14b
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag__M43
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag__M71
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag__M43:
	# LowerMemory(load @ 1584:3): L2 (^6) into ^13
	movq (%r13), %rax
	# LowerMemory(load @ 1585:3): L2 (^7) into ^14
	movq (%r12), %rcx
	cmpq %rcx, %rax
	setne %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag__M50
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag__M71
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag__M50:
	movq .str.2@GOTPCREL(%rip), %rdi
	callq _ZSt19__throw_logic_errorPKc
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag__M71:
	# LowerMemory(load @ 1594:3): L2 (^6) into ^18
	movq (%r13), %rax
	# LowerMemory(load @ 1595:3): L2 (^7) into ^19
	movq (%r12), %rcx
	movq %rax, %rdi
	movq %rcx, %rsi
	callq _ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	# SetupCalls(1596:3: move result from %rax
	movq %rax, %r14
	# LowerMemory.S9: mov ^20, (^8)
	movq %r14, (%rbx)
	# LowerMemory(load @ 1598:3): L2 (^8) into ^21
	movq (%rbx), %rax
	cmpq $15, %rax
	seta %al
	cmpb $0, %al
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag__M105
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag__M174
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag__M105:
	movq %r15, %rdi
	movq %rbx, %rsi
	movq $0, %rdx
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	# SetupCalls(1603:3: move result from %rax
	movq %rax, %r14
	movq %r15, %rdi
	movq %r14, %rsi
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc
	# LowerMemory(load @ 1605:3): L2 (^8) into ^25
	movq (%rbx), %rax
	movq %r15, %rdi
	movq %rax, %rsi
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag__M174
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag__M174:
	movq %r15, %rdi
	callq _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	# SetupCalls(1610:3: move result from %rax
	movq %rax, %r14
	# LowerMemory(load @ 1611:3): L2 (^6) into ^28
	movq (%r13), %rax
	# LowerMemory(load @ 1612:3): L2 (^7) into ^29
	movq (%r12), %rcx
	movq %r14, %rdi
	movq %rax, %rsi
	movq %rcx, %rdx
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_
	# LowerMemory(load @ 1614:3): L2 (^8) into ^30
	movq (%rbx), %rax
	movq %r15, %rdi
	movq %rax, %rsi
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm
	movq -89(%rbp), %r15
	movq -97(%rbp), %r14
	movq -65(%rbp), %r13
	movq -73(%rbp), %r12
	movq -81(%rbp), %rbx
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
	callq __cxx_global_var_init
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
.p2align 4, 0x90
_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv:
	.___ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(24 + 0, 16)
	subq $32, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(2165:3): size=8, type=%"class.__gnu_cxx::__normal_iterator"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 2167:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# LowerGetelementptr(2168:3): struct-type: %"class.__gnu_cxx::__normal_iterator"* -> ^4, indices=0,0
	movq %rbx, %rax
	# LowerMemory(load @ 2169:3): L2 (^4) into ^5
	movq (%rax), %rbx
	movq %rbx, %rax
	movq -16(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZSt11__addressofIcEPT_RS0_
.p2align 4, 0x90
_ZSt11__addressofIcEPT_RS0_:
	.___ZSt11__addressofIcEPT_RS0___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(16 + 0, 16)
	subq $16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(1540:3): size=8, type=i8**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 1542:3): L2 (^2) into ^3
	movq (%rax), %rbx
	movq %rbx, %rax
	movq -16(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt14pointer_traitsIPcE10pointer_toERc
.p2align 4, 0x90
_ZNSt14pointer_traitsIPcE10pointer_toERc:
	.___ZNSt14pointer_traitsIPcE10pointer_toERc__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(32 + 0, 16)
	subq $32, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(1522:3): size=8, type=i8**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 1524:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %rbx, %rdi
	callq _ZSt9addressofIcEPT_RS0_
	# SetupCalls(1525:3: move result from %rax
	movq %rax, %rbx
	# Unclobber rdi
	movq -16(%rbp), %rdi
	movq %rbx, %rax
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_
.p2align 4, 0x90
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_:
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(65 + 0, 16)
	subq $80, %rsp
	movq %rbx, -57(%rbp)
	# LowerAlloca(1506:3): size=8, type=%"class.std::__cxx11::basic_string"**, var=^4
	leaq -8(%rbp), %rbx
	# LowerAlloca(1507:3): size=8, type=i8**, var=^5
	leaq -16(%rbp), %rdx
	# LowerAlloca(1508:3): size=8, type=i8**, var=^6
	leaq -24(%rbp), %rcx
	# LowerAlloca(1509:3): size=1, type=%"struct.std::__false_type"*, var=^7
	leaq -25(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^4)
	movq %rdi, (%rbx)
	# LowerMemory.S9: mov %rsi, (^5)
	movq %rsi, (%rdx)
	# LowerMemory.S9: mov %rdx, (^6)
	movq %rdx, (%rcx)
	# LowerMemory(load @ 1513:3): L2 (^4) into ^8
	movq (%rbx), %rax
	# LowerMemory(load @ 1514:3): L2 (^5) into ^9
	movq (%rdx), %rbx
	# LowerMemory(load @ 1515:3): L2 (^6) into ^10
	movq (%rcx), %rdx
	# Clobber rdi
	movq %rdi, -33(%rbp)
	# Clobber rsi
	movq %rsi, -41(%rbp)
	# Clobber rdx
	movq %rdx, -49(%rbp)
	movq %rax, %rdi
	movq %rbx, %rsi
	movq %rdx, %rdx
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type
	# Unclobber rdx
	movq -49(%rbp), %rdx
	# Unclobber rsi
	movq -41(%rbp), %rsi
	# Unclobber rdi
	movq -33(%rbp), %rdi
	movq -57(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_
.p2align 4, 0x90
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_:
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(72 + 0, 16)
	subq $80, %rsp
	movq %rbx, -64(%rbp)
	movq %r12, -56(%rbp)
	# LowerAlloca(1488:3): size=8, type=%"struct.std::__cxx11::basic_string<char>::_Alloc_hider"**, var=^4
	leaq -8(%rbp), %rax
	# LowerAlloca(1489:3): size=8, type=i8**, var=^5
	leaq -16(%rbp), %r12
	# LowerAlloca(1490:3): size=8, type=%"class.std::allocator"**, var=^6
	leaq -24(%rbp), %rcx
	# LowerMemory.S9: mov %rdi, (^4)
	movq %rdi, (%rax)
	# LowerMemory.S9: mov %rsi, (^5)
	movq %rsi, (%r12)
	# LowerMemory.S9: mov %rdx, (^6)
	movq %rdx, (%rcx)
	# LowerMemory(load @ 1494:3): L2 (^4) into ^7
	movq (%rax), %rbx
	movq %rbx, %rax
	# LowerMemory(load @ 1496:3): L2 (^6) into ^9
	movq (%rcx), %rdx
	# Clobber rdi
	movq %rdi, -32(%rbp)
	# Clobber rsi
	movq %rsi, -40(%rbp)
	# Clobber rdx
	movq %rdx, -48(%rbp)
	movq %rax, %rdi
	movq %rdx, %rsi
	callq _ZNSaIcEC2ERKS_
	# Unclobber rdx
	movq -48(%rbp), %rdx
	# Unclobber rsi
	movq -40(%rbp), %rsi
	# Unclobber rdi
	movq -32(%rbp), %rdi
	# LowerGetelementptr(1498:3): struct-type: %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* -> ^10, indices=0,0
	movq %rbx, %rax
	# LowerMemory(load @ 1499:3): L2 (^5) into ^11
	movq (%r12), %rbx
	# LowerMemory.S9: mov ^11, (^10)
	movq %rbx, (%rax)
	movq -56(%rbp), %r12
	movq -64(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv
.p2align 4, 0x90
_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv:
	.___ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(24 + 0, 16)
	subq $32, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(1466:3): size=8, type=%"class.std::basic_string_view"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 1468:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# LowerGetelementptr(1469:3): struct-type: %"class.std::basic_string_view"* -> ^4, indices=0,0
	movq %rbx, %rax
	# LowerMemory(load @ 1470:3): L2 (^4) into ^5
	movq (%rax), %rbx
	movq %rbx, %rax
	movq -16(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_
.p2align 4, 0x90
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_:
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(104 + 0, 16)
	subq $112, %rsp
	movq %rbx, -80(%rbp)
	movq %r12, -96(%rbp)
	movq %r13, -72(%rbp)
	movq %r14, -88(%rbp)
	# LowerAlloca(1434:3): size=16, type=%"struct.std::__cxx11::basic_string<char>::__sv_wrapper"*, var=^5
	leaq -16(%rbp), %r13
	# LowerAlloca(1435:3): size=8, type=%"class.std::__cxx11::basic_string"**, var=^6
	leaq -24(%rbp), %rcx
	# LowerAlloca(1436:3): size=8, type=%"class.std::allocator"**, var=^7
	leaq -32(%rbp), %rbx
	movq %r13, %rax
	# LowerGetelementptr(1438:3): struct-type: {i64, i8*}* -> ^9, indices=0,0
	movq %rax, %rdx
	# LowerMemory.S9: mov %rsi, (^9)
	movq %rsi, (%rdx)
	# LowerGetelementptr(1440:3): struct-type: {i64, i8*}* -> ^10, indices=0,1
	movq %rax, %rdx
	addq $8, %rdx
	# LowerMemory.S9: mov %rdx, (^10)
	movq %rdx, (%rdx)
	# LowerMemory.S9: mov %rdi, (^6)
	movq %rdi, (%rcx)
	# LowerMemory.S9: mov %rcx, (^7)
	movq %rcx, (%rbx)
	# LowerMemory(load @ 1444:3): L2 (^6) into ^11
	movq (%rcx), %r14
	# LowerGetelementptr(1445:3): struct-type: %"struct.std::__cxx11::basic_string<char>::__sv_wrapper"* -> ^12, indices=0,0
	movq %r13, %rax
	# Clobber rdi
	movq %rdi, -40(%rbp)
	# Clobber rsi
	movq %rsi, -48(%rbp)
	# Clobber rdx
	movq %rdx, -56(%rbp)
	# Clobber rcx
	movq %rcx, -64(%rbp)
	movq %rax, %rdi
	callq _ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv
	# SetupCalls(1446:3: move result from %rax
	movq %rax, %r12
	# Unclobber rcx
	movq -64(%rbp), %rcx
	# Unclobber rdx
	movq -56(%rbp), %rdx
	# Unclobber rsi
	movq -48(%rbp), %rsi
	# Unclobber rdi
	movq -40(%rbp), %rdi
	# LowerGetelementptr(1447:3): struct-type: %"struct.std::__cxx11::basic_string<char>::__sv_wrapper"* -> ^14, indices=0,0
	movq %r13, %rax
	# Clobber rdi
	movq %rdi, -40(%rbp)
	# Clobber rsi
	movq %rsi, -48(%rbp)
	# Clobber rdx
	movq %rdx, -56(%rbp)
	# Clobber rcx
	movq %rcx, -64(%rbp)
	movq %rax, %rdi
	callq _ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv
	# SetupCalls(1448:3: move result from %rax
	movq %rax, %r13
	# Unclobber rcx
	movq -64(%rbp), %rcx
	# Unclobber rdx
	movq -56(%rbp), %rdx
	# Unclobber rsi
	movq -48(%rbp), %rsi
	# Unclobber rdi
	movq -40(%rbp), %rdi
	# LowerMemory(load @ 1449:3): L2 (^7) into ^16
	movq (%rbx), %rax
	# Clobber rdi
	movq %rdi, -40(%rbp)
	# Clobber rsi
	movq %rsi, -48(%rbp)
	# Clobber rdx
	movq %rdx, -56(%rbp)
	# Clobber rcx
	movq %rcx, -64(%rbp)
	movq %r14, %rdi
	movq %r12, %rsi
	movq %r13, %rdx
	movq %rax, %rcx
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_
	# Unclobber rcx
	movq -64(%rbp), %rcx
	# Unclobber rdx
	movq -56(%rbp), %rdx
	# Unclobber rsi
	movq -48(%rbp), %rsi
	# Unclobber rdi
	movq -40(%rbp), %rdi
	movq -88(%rbp), %r14
	movq -72(%rbp), %r13
	movq -96(%rbp), %r12
	movq -80(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv
.p2align 4, 0x90
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv:
	.___ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(24 + 0, 16)
	subq $32, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(2208:3): size=8, type=%"class.std::__cxx11::basic_string"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 2210:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# LowerGetelementptr(2211:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^4, indices=0,1
	movq %rbx, %rax
	addq $8, %rax
	# LowerMemory(load @ 2212:3): L2 (^4) into ^5
	movq (%rax), %rbx
	movq %rbx, %rax
	movq -16(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
.p2align 4, 0x90
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv:
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(40 + 0, 16)
	subq $48, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(1476:3): size=8, type=%"class.std::__cxx11::basic_string"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 1478:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# LowerGetelementptr(1479:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^4, indices=0,2
	movq %rbx, %rax
	addq $16, %rax
	movq %rax, %rbx
	# LowerGetelementptr(1481:3): struct-type: [16 x i8]* -> ^6, indices=0,0
	movq %rbx, %rax
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %rax, %rdi
	callq _ZNSt14pointer_traitsIPcE10pointer_toERc
	# SetupCalls(1482:3: move result from %rax
	movq %rax, %rbx
	# Unclobber rdi
	movq -16(%rbp), %rdi
	movq %rbx, %rax
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv
.p2align 4, 0x90
_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv:
	.___ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(40 + 0, 16)
	subq $48, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(955:3): size=8, type=%"class.std::unique_ptr"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 957:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# LowerGetelementptr(958:3): struct-type: %"class.std::unique_ptr"* -> ^4, indices=0,0
	movq %rbx, %rax
	movq %rax, %rbx
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %rbx, %rdi
	callq _ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv
	# SetupCalls(960:3: move result from %rax
	movq %rax, %rbx
	# Unclobber rdi
	movq -16(%rbp), %rdi
	movq %rbx, %rax
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE
.p2align 4, 0x90
_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE:
	.___ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(48 + 0, 16)
	subq $48, %rsp
	movq %rbx, -40(%rbp)
	# LowerAlloca(393:3): size=8, type=%"class.std::filesystem::__cxx11::directory_iterator"**, var=^3
	leaq -8(%rbp), %rbx
	# LowerAlloca(394:3): size=8, type=%"class.std::filesystem::__cxx11::path"**, var=^4
	leaq -16(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^3)
	movq %rdi, (%rbx)
	# LowerMemory.S9: mov %rsi, (^4)
	movq %rsi, (%rax)
	# LowerMemory(load @ 397:3): L2 (^3) into ^5
	movq (%rbx), %rcx
	# LowerMemory(load @ 398:3): L2 (^4) into ^6
	movq (%rax), %rbx
	# Clobber rdi
	movq %rdi, -24(%rbp)
	# Clobber rsi
	movq %rsi, -32(%rbp)
	movq %rcx, %rdi
	movq %rbx, %rsi
	movq $0, %rdx
	andq $255, %rdx
	movq $0, %rcx
	callq _ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code
	# Unclobber rsi
	movq -32(%rbp), %rsi
	# Unclobber rdi
	movq -24(%rbp), %rdi
	movq -40(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_
.p2align 4, 0x90
_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_:
	.___ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(16 + 0, 16)
	subq $16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(1006:3): size=8, type=%"struct.std::_Head_base.1"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 1008:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# LowerGetelementptr(1009:3): struct-type: %"struct.std::_Head_base.1"* -> ^4, indices=0,0
	movq %rbx, %rax
	movq -16(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev
.p2align 4, 0x90
_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev:
	.___ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(64 + 0, 16)
	subq $64, %rsp
	movq %rbx, -40(%rbp)
	movq %r12, -48(%rbp)
	movq %r13, -32(%rbp)
	# LowerAlloca(916:3): size=8, type=%"class.std::unique_ptr"**, var=^2
	leaq -8(%rbp), %rax
	# LowerAlloca(917:3): size=8, type=%"struct.std::filesystem::__cxx11::path::_List::_Impl"***, var=^3
	leaq -16(%rbp), %r13
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 919:3): L2 (^2) into ^4
	movq (%rax), %rbx
	# LowerGetelementptr(920:3): struct-type: %"class.std::unique_ptr"* -> ^5, indices=0,0
	movq %rbx, %rcx
	movq %rcx, %rax
	# Clobber rdi
	movq %rdi, -24(%rbp)
	movq %rax, %rdi
	callq _ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv
	# SetupCalls(922:3: move result from %rax
	movq %rax, %r12
	# Unclobber rdi
	movq -24(%rbp), %rdi
	# LowerMemory.S9: mov ^7, (^3)
	movq %r12, (%r13)
	# LowerMemory(load @ 924:3): L2 (^3) into ^8
	movq (%r13), %rax
	# LowerMemory(load @ 925:3): L2 (^8) into ^9
	movq (%rax), %rcx
	cmpq $0, %rcx
	setne %al
	cmpb $0, %al
	jne .___ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev__M42
	jmp .___ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev__M112
	.___ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev__M42:
	movq %rbx, %rdi
	callq _ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv
	# SetupCalls(930:3: move result from %rax
	movq %rax, %rbx
	# LowerMemory(load @ 931:3): L2 (^3) into ^13
	movq (%r13), %rax
	movq %rax, %rdi
	callq _ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_
	# SetupCalls(932:3: move result from %rax
	movq %rax, %r12
	# LowerMemory(load @ 933:3): L2 (^14) into ^15
	movq (%r12), %rax
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE
	jmp .___ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev__M112
	.___ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev__M112:
	# LowerMemory(load @ 938:3): L2 (^3) into ^17
	movq (%r13), %rax
	# LowerMemory.S3: mov $imm, ^17
	movq $0, (%rax)
	movq -32(%rbp), %r13
	movq -48(%rbp), %r12
	movq -40(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
.p2align 4, 0x90
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv:
	.___ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(24 + 0, 16)
	subq $32, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(2259:3): size=8, type=%"class.std::__cxx11::basic_string"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 2261:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# LowerGetelementptr(2262:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^4, indices=0,1
	movq %rbx, %rax
	addq $8, %rax
	# LowerMemory(load @ 2263:3): L2 (^4) into ^5
	movq (%rax), %rbx
	movq %rbx, %rax
	movq -16(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_
.p2align 4, 0x90
_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_:
	.___ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(88 + 0, 16)
	subq $96, %rsp
	movq %rbx, -64(%rbp)
	movq %r12, -56(%rbp)
	movq %r13, -80(%rbp)
	# LowerAlloca(2096:3): size=8, type=i8**, var=^4
	leaq -8(%rbp), %rax
	# LowerAlloca(2097:3): size=8, type=%"class.std::filesystem::__cxx11::path"**, var=^5
	leaq -16(%rbp), %rcx
	# LowerAlloca(2098:3): size=8, type=%"class.std::allocator"**, var=^6
	leaq -24(%rbp), %r12
	movq %rdi, %rbx
	# LowerMemory.S9: mov ^7, (^4)
	movq %rbx, (%rax)
	# LowerMemory.S9: mov %rsi, (^5)
	movq %rsi, (%rcx)
	# LowerMemory.S9: mov %rdx, (^6)
	movq %rdx, (%r12)
	# LowerMemory(load @ 2103:3): L2 (^5) into ^8
	movq (%rcx), %rbx
	# LowerGetelementptr(2104:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^9, indices=0,0
	movq %rbx, %rax
	# Clobber rdi
	movq %rdi, -32(%rbp)
	# Clobber rsi
	movq %rsi, -40(%rbp)
	# Clobber rdx
	movq %rdx, -48(%rbp)
	movq %rax, %rdi
	callq _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
	# SetupCalls(2105:3: move result from %rax
	movq %rax, %r13
	# Unclobber rdx
	movq -48(%rbp), %rdx
	# Unclobber rsi
	movq -40(%rbp), %rsi
	# Unclobber rdi
	movq -32(%rbp), %rdi
	# LowerGetelementptr(2106:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^11, indices=0,0
	movq %rbx, %rax
	# Clobber rdi
	movq %rdi, -32(%rbp)
	# Clobber rsi
	movq %rsi, -40(%rbp)
	# Clobber rdx
	movq %rdx, -48(%rbp)
	movq %rax, %rdi
	callq _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
	# SetupCalls(2107:3: move result from %rax
	movq %rax, %rbx
	# Unclobber rdx
	movq -48(%rbp), %rdx
	# Unclobber rsi
	movq -40(%rbp), %rsi
	# Unclobber rdi
	movq -32(%rbp), %rdi
	# LowerMemory(load @ 2108:3): L2 (^6) into ^13
	movq (%r12), %rax
	# Clobber rdi
	movq %rdi, -32(%rbp)
	# Clobber rsi
	movq %rsi, -40(%rbp)
	# Clobber rdx
	movq %rdx, -48(%rbp)
	movq %rdi, %rdi
	movq %r13, %rsi
	movq %rbx, %rdx
	movq %rax, %rcx
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_
	# Unclobber rdx
	movq -48(%rbp), %rdx
	# Unclobber rsi
	movq -40(%rbp), %rsi
	# Unclobber rdi
	movq -32(%rbp), %rdi
	movq -80(%rbp), %r13
	movq -56(%rbp), %r12
	movq -64(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt11char_traitsIcE4copyEPcPKcm
.p2align 4, 0x90
_ZNSt11char_traitsIcE4copyEPcPKcm:
	.___ZNSt11char_traitsIcE4copyEPcPKcm__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(72 + 0, 16)
	subq $80, %rsp
	movq %rbx, -64(%rbp)
	movq %r12, -72(%rbp)
	# LowerAlloca(1942:3): size=8, type=i8**, var=^4
	leaq -8(%rbp), %rbx
	# LowerAlloca(1943:3): size=8, type=i8**, var=^5
	leaq -16(%rbp), %rsi
	# LowerAlloca(1944:3): size=8, type=i8**, var=^6
	leaq -24(%rbp), %rdx
	# LowerAlloca(1945:3): size=8, type=i64*, var=^7
	leaq -32(%rbp), %rcx
	# LowerMemory.S9: mov %rdi, (^5)
	movq %rdi, (%rsi)
	# LowerMemory.S9: mov %rsi, (^6)
	movq %rsi, (%rdx)
	# LowerMemory.S9: mov %rdx, (^7)
	movq %rdx, (%rcx)
	# LowerMemory(load @ 1949:3): L2 (^7) into ^8
	movq (%rcx), %rax
	cmpq $0, %rax
	sete %al
	cmpb $0, %al
	jne .___ZNSt11char_traitsIcE4copyEPcPKcm__M19
	jmp .___ZNSt11char_traitsIcE4copyEPcPKcm__M24
	.___ZNSt11char_traitsIcE4copyEPcPKcm__M19:
	# LowerMemory(load @ 1954:3): L2 (^5) into ^11
	movq (%rsi), %rax
	# LowerMemory.S9: mov ^11, (^4)
	movq %rax, (%rbx)
	jmp .___ZNSt11char_traitsIcE4copyEPcPKcm__M55
	.___ZNSt11char_traitsIcE4copyEPcPKcm__M24:
	# LowerMemory(load @ 1959:3): L2 (^5) into ^13
	movq (%rsi), %r12
	# LowerMemory(load @ 1960:3): L2 (^6) into ^14
	movq (%rdx), %rax
	# LowerMemory(load @ 1961:3): L2 (^7) into ^15
	movq (%rcx), %rdx
	# Clobber rsi
	movq %rsi, -40(%rbp)
	# Clobber rdx
	movq %rdx, -48(%rbp)
	# Clobber rcx
	movq %rcx, -56(%rbp)
	movq %r12, %rdi
	movq %rax, %rsi
	movq %rdx, %rdx
	callq memcpy@PLT
	# Unclobber rcx
	movq -56(%rbp), %rcx
	# Unclobber rdx
	movq -48(%rbp), %rdx
	# Unclobber rsi
	movq -40(%rbp), %rsi
	# LowerMemory.S9: mov ^13, (^4)
	movq %r12, (%rbx)
	jmp .___ZNSt11char_traitsIcE4copyEPcPKcm__M55
	.___ZNSt11char_traitsIcE4copyEPcPKcm__M55:
	# LowerMemory(load @ 1967:3): L2 (^4) into ^17
	movq (%rbx), %rax
	movq -72(%rbp), %r12
	movq -64(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_lessERKS2_
.p2align 4, 0x90
_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_lessERKS2_:
	.___ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_lessERKS2___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(57 + 0, 16)
	subq $64, %rsp
	movq %rbx, -41(%rbp)
	# LowerAlloca(861:3): size=8, type=%"class.std::__shared_count"**, var=^3
	leaq -8(%rbp), %rcx
	# LowerAlloca(862:3): size=8, type=%"class.std::__shared_count"**, var=^4
	leaq -16(%rbp), %rbx
	# LowerAlloca(863:3): size=1, type=%"struct.std::less"*, var=^5
	leaq -17(%rbp), %rdx
	# LowerMemory.S9: mov %rdi, (^3)
	movq %rdi, (%rcx)
	# LowerMemory.S9: mov %rsi, (^4)
	movq %rsi, (%rbx)
	# LowerMemory(load @ 866:3): L2 (^3) into ^6
	movq (%rcx), %rax
	# LowerGetelementptr(867:3): struct-type: %"class.std::__shared_count"* -> ^7, indices=0,0
	movq %rax, %rcx
	# LowerMemory(load @ 868:3): L2 (^7) into ^8
	movq (%rcx), %rax
	# LowerMemory(load @ 869:3): L2 (^4) into ^9
	movq (%rbx), %rcx
	# LowerGetelementptr(870:3): struct-type: %"class.std::__shared_count"* -> ^10, indices=0,0
	movq %rcx, %rbx
	# LowerMemory(load @ 871:3): L2 (^10) into ^11
	movq (%rbx), %rcx
	# Clobber rdi
	movq %rdi, -25(%rbp)
	# Clobber rsi
	movq %rsi, -33(%rbp)
	movq %rdx, %rdi
	movq %rax, %rsi
	movq %rcx, %rdx
	callq _ZNKSt4lessIPSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEEclES4_S4_
	# SetupCalls(872:3: move result from %rax
	movb %al, %bl
	# Unclobber rsi
	movq -33(%rbp), %rsi
	# Unclobber rdi
	movq -25(%rbp), %rdi
	movb %bl, %al
	movq -41(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE
.p2align 4, 0x90
_ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE:
	.___ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(56 + 0, 16)
	subq $64, %rsp
	movq %rbx, -40(%rbp)
	# LowerAlloca(847:3): size=8, type=%"class.std::__shared_ptr"**, var=^3
	leaq -8(%rbp), %rbx
	# LowerAlloca(848:3): size=8, type=%"class.std::__shared_ptr"**, var=^4
	leaq -16(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^3)
	movq %rdi, (%rbx)
	# LowerMemory.S9: mov %rsi, (^4)
	movq %rsi, (%rax)
	# LowerMemory(load @ 851:3): L2 (^3) into ^5
	movq (%rbx), %rdx
	# LowerGetelementptr(852:3): struct-type: %"class.std::__shared_ptr"* -> ^6, indices=0,1
	movq %rdx, %rcx
	addq $8, %rcx
	# LowerMemory(load @ 853:3): L2 (^4) into ^7
	movq (%rax), %rbx
	# LowerGetelementptr(854:3): struct-type: %"class.std::__shared_ptr"* -> ^8, indices=0,1
	movq %rbx, %rax
	addq $8, %rax
	# Clobber rdi
	movq %rdi, -24(%rbp)
	# Clobber rsi
	movq %rsi, -32(%rbp)
	movq %rcx, %rdi
	movq %rax, %rsi
	callq _ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_lessERKS2_
	# SetupCalls(855:3: move result from %rax
	movb %al, %bl
	# Unclobber rsi
	movq -32(%rbp), %rsi
	# Unclobber rdi
	movq -24(%rbp), %rdi
	movb %bl, %al
	movq -40(%rbp), %rbx
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
	# upalign(1753 + 0, 16)
	subq $1760, %rsp
	movq %rbx, -1737(%rbp)
	movq %r12, -1689(%rbp)
	movq %r14, -1697(%rbp)
	movq %r15, -1705(%rbp)
	# LowerAlloca(1986:3): size=8, type=%"class.std::basic_ostream"**, var=^3
	leaq -8(%rbp), %rax
	movq %rax, -1633(%rbp)
	# LowerAlloca(1987:3): size=8, type=%"struct.std::__detail::_Quoted_string"**, var=^4
	leaq -16(%rbp), %rax
	movq %rax, -1641(%rbp)
	# LowerAlloca(1988:3): size=1536, type=%"class.std::__cxx11::basic_ostringstream"*, var=^5
	leaq -1552(%rbp), %rax
	movq %rax, -1617(%rbp)
	# LowerAlloca(1989:3): size=8, type=%"class.std::__cxx11::basic_string"**, var=^6
	leaq -1560(%rbp), %r12
	# LowerAlloca(1990:3): size=8, type=%"class.__gnu_cxx::__normal_iterator"*, var=^7
	leaq -1568(%rbp), %rax
	movq %rax, -1649(%rbp)
	# LowerAlloca(1991:3): size=8, type=%"class.__gnu_cxx::__normal_iterator"*, var=^8
	leaq -1576(%rbp), %rax
	movq %rax, -1657(%rbp)
	# LowerAlloca(1992:3): size=1, type=i8*, var=^9
	leaq -1577(%rbp), %r14
	# LowerAlloca(1993:3): size=32, type=%"class.std::__cxx11::basic_string"*, var=^10
	leaq -1609(%rbp), %rax
	movq %rax, -1625(%rbp)
	# LowerMemory.S9: mov %rdi, (^3)
	movq -1633(%rbp), %rax
	movq %rdi, (%rax)
	# LowerMemory.S9: mov %rsi, (^4)
	movq -1641(%rbp), %rax
	movq %rsi, (%rax)
	# Clobber rdi
	movq %rdi, -1665(%rbp)
	# Clobber rsi
	movq %rsi, -1673(%rbp)
	movq -1617(%rbp), %rdi
	callq _ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev
	# Unclobber rsi
	movq -1673(%rbp), %rsi
	# Unclobber rdi
	movq -1665(%rbp), %rdi
	movq -1617(%rbp), %rcx
	# LowerMemory(load @ 1998:3): L2 (^4) into ^12
	movq -1641(%rbp), %rax
	movq (%rax), %rdx
	# LowerGetelementptr(1999:3): struct-type: %"struct.std::__detail::_Quoted_string"* -> ^13, indices=0,1
	movq %rdx, %rax
	addq $8, %rax
	# LowerMemory(load @ 2000:3): L2 (^13) into ^14
	movb (%rax), %dl
	# Clobber rdi
	movq %rdi, -1665(%rbp)
	# Clobber rsi
	movq %rsi, -1673(%rbp)
	movq %rcx, %rdi
	movq %rdx, %rsi
	movsbq %sil, %rsi
	callq _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	# SetupCalls(2001:3: move result from %rax
	movq %rax, %rax
	# Unclobber rsi
	movq -1673(%rbp), %rsi
	# Unclobber rdi
	movq -1665(%rbp), %rdi
	# LowerMemory(load @ 2002:3): L2 (^4) into ^16
	movq -1641(%rbp), %rcx
	movq (%rcx), %rax
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M75
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M75:
	# LowerGetelementptr(2003:3): struct-type: %"struct.std::__detail::_Quoted_string"* -> ^17, indices=0,0
	movq %rax, %rcx
	# LowerMemory(load @ 2004:3): L2 (^17) into ^18
	movq (%rcx), %rax
	# LowerMemory.S9: mov ^18, (^6)
	movq %rax, (%r12)
	# LowerMemory(load @ 2006:3): L2 (^6) into ^19
	movq (%r12), %rax
	# Clobber rax
	movq %rax, -1681(%rbp)
	movq %rax, %rdi
	callq _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv
	# SetupCalls(2007:3: move result from %rax
	movq %rax, %r15
	# Unclobber rax
	movq -1681(%rbp), %rax
	# LowerGetelementptr(2008:3): struct-type: %"class.__gnu_cxx::__normal_iterator"* -> ^21, indices=0,0
	movq -1649(%rbp), %rax
	# LowerMemory.S9: mov ^20, (^21)
	movq %r15, (%rax)
	# LowerMemory(load @ 2010:3): L2 (^6) into ^22
	movq (%r12), %rax
	# Clobber rax
	movq %rax, -1681(%rbp)
	movq %rax, %rdi
	callq _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv
	# SetupCalls(2011:3: move result from %rax
	movq %rax, %r12
	# Unclobber rax
	movq -1681(%rbp), %rax
	# LowerGetelementptr(2012:3): struct-type: %"class.__gnu_cxx::__normal_iterator"* -> ^24, indices=0,0
	movq -1657(%rbp), %rax
	# LowerMemory.S9: mov ^23, (^24)
	movq %r12, (%rax)
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M138
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M138:
	movq -1649(%rbp), %rdi
	movq -1657(%rbp), %rsi
	callq _ZN9__gnu_cxxeqIPKcS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T1_EERKNS9_IT0_SB_EE
	# SetupCalls(2017:3: move result from %rax
	movb %al, %r12b
	movb %r12b, %al
	xorb $1, %al
	cmpb $0, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M164
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M302
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M164:
	movq -1649(%rbp), %rdi
	callq _ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
	# SetupCalls(2022:3: move result from %rax
	movq %rax, %r12
	# LowerMemory(load @ 2023:3): L2 (^29) into ^30
	movb (%r12), %al
	# LowerMemory.S9: mov ^30, (^9)
	movb %al, (%r14)
	# LowerMemory(load @ 2025:3): L2 (^9) into ^31
	movb (%r14), %cl
	movsbl %cl, %eax
	# LowerMemory(load @ 2027:3): L2 (^4) into ^33
	movq -1641(%rbp), %rcx
	movq (%rcx), %rdx
	# LowerGetelementptr(2028:3): struct-type: %"struct.std::__detail::_Quoted_string"* -> ^34, indices=0,1
	movq %rdx, %rcx
	addq $8, %rcx
	# LowerMemory(load @ 2029:3): L2 (^34) into ^35
	movb (%rcx), %dl
	movsbl %dl, %ecx
	cmpl %ecx, %eax
	sete %al
	cmpb $0, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M218
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M204
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M204:
	# LowerMemory(load @ 2035:3): L2 (^9) into ^39
	movb (%r14), %al
	movsbl %al, %ecx
	# LowerMemory(load @ 2037:3): L2 (^4) into ^41
	movq -1641(%rbp), %rax
	movq (%rax), %rdx
	# LowerGetelementptr(2038:3): struct-type: %"struct.std::__detail::_Quoted_string"* -> ^42, indices=0,2
	movq %rdx, %rax
	addq $9, %rax
	# LowerMemory(load @ 2039:3): L2 (^42) into ^43
	movb (%rax), %dl
	movsbl %dl, %eax
	cmpl %eax, %ecx
	sete %al
	cmpb $0, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M218
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M251
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M218:
	movq -1617(%rbp), %rax
	# LowerMemory(load @ 2046:3): L2 (^4) into ^48
	movq -1641(%rbp), %rdx
	movq (%rdx), %rcx
	# LowerGetelementptr(2047:3): struct-type: %"struct.std::__detail::_Quoted_string"* -> ^49, indices=0,2
	movq %rcx, %rdx
	addq $9, %rdx
	# LowerMemory(load @ 2048:3): L2 (^49) into ^50
	movb (%rdx), %cl
	# Clobber rax
	movq %rax, -1681(%rbp)
	movq %rax, %rdi
	movq %rcx, %rsi
	movsbq %sil, %rsi
	callq _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	# SetupCalls(2049:3: move result from %rax
	movq %rax, %rax
	# Unclobber rax
	movq -1681(%rbp), %rax
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M251
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M251:
	movq -1617(%rbp), %rax
	# LowerMemory(load @ 2054:3): L2 (^9) into ^54
	movb (%r14), %cl
	# Clobber rax
	movq %rax, -1681(%rbp)
	movq %rax, %rdi
	movq %rcx, %rsi
	movsbq %sil, %rsi
	callq _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	# SetupCalls(2055:3: move result from %rax
	movq %rax, %rax
	# Unclobber rax
	movq -1681(%rbp), %rax
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M279
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M279:
	movq -1649(%rbp), %rdi
	callq _ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv
	# SetupCalls(2059:3: move result from %rax
	movq %rax, %rax
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M138
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M302:
	movq -1617(%rbp), %rax
	# LowerMemory(load @ 2064:3): L2 (^4) into ^60
	movq -1641(%rbp), %rdx
	movq (%rdx), %rcx
	# LowerGetelementptr(2065:3): struct-type: %"struct.std::__detail::_Quoted_string"* -> ^61, indices=0,1
	movq %rcx, %rbx
	addq $8, %rbx
	# LowerMemory(load @ 2066:3): L2 (^61) into ^62
	movb (%rbx), %cl
	# Clobber rax
	movq %rax, -1681(%rbp)
	movq %rax, %rdi
	movq %rcx, %rsi
	movsbq %sil, %rsi
	callq _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	# SetupCalls(2067:3: move result from %rax
	movq %rax, %rax
	# Unclobber rax
	movq -1681(%rbp), %rax
	# LowerMemory(load @ 2068:3): L2 (^3) into ^64
	movq -1633(%rbp), %rax
	movq (%rax), %rbx
	# Clobber rax
	movq %rax, -1681(%rbp)
	movq -1625(%rbp), %rdi
	movq -1617(%rbp), %rsi
	callq _ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv
	# Unclobber rax
	movq -1681(%rbp), %rax
	# Clobber rax
	movq %rax, -1681(%rbp)
	movq %rbx, %rdi
	movq -1625(%rbp), %rsi
	callq _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	# SetupCalls(2070:3: move result from %rax
	movq %rax, %rbx
	# Unclobber rax
	movq -1681(%rbp), %rax
	# Clobber rax
	movq %rax, -1681(%rbp)
	movq -1625(%rbp), %rdi
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev
	# Unclobber rax
	movq -1681(%rbp), %rax
	# Clobber rax
	movq %rax, -1681(%rbp)
	movq -1617(%rbp), %rdi
	callq _ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev
	# Unclobber rax
	movq -1681(%rbp), %rax
	movq %rbx, %rax
	movq -1705(%rbp), %r15
	movq -1697(%rbp), %r14
	movq -1689(%rbp), %r12
	movq -1737(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm
.p2align 4, 0x90
_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm:
	.___ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(88 + 0, 16)
	subq $96, %rsp
	movq %rbx, -80(%rbp)
	# LowerAlloca(1167:3): size=8, type=%"class.std::allocator"**, var=^4
	leaq -8(%rbp), %rbx
	# LowerAlloca(1168:3): size=8, type=i8**, var=^5
	leaq -16(%rbp), %rsi
	# LowerAlloca(1169:3): size=8, type=i64*, var=^6
	leaq -24(%rbp), %rdx
	# LowerAlloca(1170:3): size=8, type=%"class.std::allocator"**, var=^7
	leaq -32(%rbp), %rcx
	# LowerAlloca(1171:3): size=8, type=i8**, var=^8
	leaq -40(%rbp), %rax
	# LowerAlloca(1172:3): size=8, type=i64*, var=^9
	leaq -48(%rbp), %rdi
	# LowerMemory.S9: mov %rdi, (^7)
	movq %rdi, (%rcx)
	# LowerMemory.S9: mov %rsi, (^8)
	movq %rsi, (%rax)
	# LowerMemory.S9: mov %rdx, (^9)
	movq %rdx, (%rdi)
	# LowerMemory(load @ 1176:3): L2 (^7) into ^10
	movq (%rcx), %r8
	# LowerMemory(load @ 1177:3): L2 (^8) into ^11
	movq (%rax), %rcx
	# LowerMemory(load @ 1178:3): L2 (^9) into ^12
	movq (%rdi), %rax
	# LowerMemory.S9: mov ^10, (^4)
	movq %r8, (%rbx)
	# LowerMemory.S9: mov ^11, (^5)
	movq %rcx, (%rsi)
	# LowerMemory.S9: mov ^12, (^6)
	movq %rax, (%rdx)
	# LowerMemory(load @ 1182:3): L2 (^4) into ^13
	movq (%rbx), %rax
	movq %rax, %rbx
	# LowerMemory(load @ 1184:3): L2 (^5) into ^15
	movq (%rsi), %rcx
	# LowerMemory(load @ 1185:3): L2 (^6) into ^16
	movq (%rdx), %rax
	# Clobber rdi
	movq %rdi, -56(%rbp)
	# Clobber rsi
	movq %rsi, -64(%rbp)
	# Clobber rdx
	movq %rdx, -72(%rbp)
	movq %rbx, %rdi
	movq %rcx, %rsi
	movq %rax, %rdx
	callq _ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm
	# Unclobber rdx
	movq -72(%rbp), %rdx
	# Unclobber rsi
	movq -64(%rbp), %rsi
	# Unclobber rdi
	movq -56(%rbp), %rdi
	movq -80(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev
.p2align 4, 0x90
_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev:
	.___ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(24 + 0, 16)
	subq $32, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(650:3): size=8, type=%"class.std::__shared_count"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 652:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# LowerGetelementptr(653:3): struct-type: %"class.std::__shared_count"* -> ^4, indices=0,0
	movq %rbx, %rax
	# LowerMemory(load @ 654:3): L2 (^4) into ^5
	movq (%rax), %rcx
	cmpq $0, %rcx
	setne %al
	cmpb $0, %al
	jne .___ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev__M13
	jmp .___ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev__M38
	.___ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev__M13:
	# LowerGetelementptr(659:3): struct-type: %"class.std::__shared_count"* -> ^8, indices=0,0
	movq %rbx, %rax
	# LowerMemory(load @ 660:3): L2 (^8) into ^9
	movq (%rax), %rbx
	movq %rbx, %rdi
	callq _ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
	jmp .___ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev__M38
	.___ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev__M38:
	movq -16(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZSt9addressofIcEPT_RS0_
.p2align 4, 0x90
_ZSt9addressofIcEPT_RS0_:
	.___ZSt9addressofIcEPT_RS0___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(32 + 0, 16)
	subq $32, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(1531:3): size=8, type=i8**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 1533:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %rbx, %rdi
	callq _ZSt11__addressofIcEPT_RS0_
	# SetupCalls(1534:3: move result from %rax
	movq %rax, %rbx
	# Unclobber rdi
	movq -16(%rbp), %rdi
	movq %rbx, %rax
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
.p2align 4, 0x90
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv:
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(40 + 0, 16)
	subq $48, %rsp
	movq %rbx, -32(%rbp)
	movq %r12, -24(%rbp)
	# LowerAlloca(1063:3): size=8, type=%"class.std::__cxx11::basic_string"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 1065:3): L2 (^2) into ^3
	movq (%rax), %r12
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %r12, %rdi
	callq _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv
	# SetupCalls(1066:3: move result from %rax
	movb %al, %bl
	# Unclobber rdi
	movq -16(%rbp), %rdi
	cmpb $0, %bl
	jne .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv__M57
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv__M29
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv__M29:
	# LowerGetelementptr(1070:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^6, indices=0,2
	movq %r12, %rax
	addq $16, %rax
	movq %rax, %rbx
	# LowerMemory(load @ 1072:3): L2 (^7) into ^8
	movq (%rbx), %rax
	movq %r12, %rdi
	movq %rax, %rsi
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv__M57
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv__M57:
	movq -24(%rbp), %r12
	movq -32(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type
.p2align 4, 0x90
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type:
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(59 + 0, 16)
	subq $64, %rsp
	movq %rbx, -59(%rbp)
	# LowerAlloca(1551:3): size=1, type=%"struct.std::__false_type"*, var=^4
	leaq -1(%rbp), %rax
	# LowerAlloca(1552:3): size=8, type=%"class.std::__cxx11::basic_string"**, var=^5
	leaq -9(%rbp), %rdx
	# LowerAlloca(1553:3): size=8, type=i8**, var=^6
	leaq -17(%rbp), %rcx
	# LowerAlloca(1554:3): size=8, type=i8**, var=^7
	leaq -25(%rbp), %rbx
	# LowerAlloca(1555:3): size=1, type=%"struct.std::forward_iterator_tag"*, var=^8
	leaq -26(%rbp), %rax
	# LowerAlloca(1556:3): size=1, type=%"struct.std::random_access_iterator_tag"*, var=^9
	leaq -27(%rbp), %rsi
	# LowerMemory.S9: mov %rdi, (^5)
	movq %rdi, (%rdx)
	# LowerMemory.S9: mov %rsi, (^6)
	movq %rsi, (%rcx)
	# LowerMemory.S9: mov %rdx, (^7)
	movq %rdx, (%rbx)
	# LowerMemory(load @ 1560:3): L2 (^5) into ^10
	movq (%rdx), %rdi
	# LowerMemory(load @ 1561:3): L2 (^6) into ^11
	movq (%rcx), %rdx
	# LowerMemory(load @ 1562:3): L2 (^7) into ^12
	movq (%rbx), %rcx
	movq %rsi, %rax
	# Clobber rdi
	movq %rdi, -35(%rbp)
	# Clobber rsi
	movq %rsi, -43(%rbp)
	# Clobber rdx
	movq %rdx, -51(%rbp)
	movq %rdi, %rdi
	movq %rdx, %rsi
	movq %rcx, %rdx
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	# Unclobber rdx
	movq -51(%rbp), %rdx
	# Unclobber rsi
	movq -43(%rbp), %rsi
	# Unclobber rdi
	movq -35(%rbp), %rdi
	movq -59(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc
.p2align 4, 0x90
_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc:
	.___ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(72 + 0, 16)
	subq $80, %rsp
	movq %rbx, -64(%rbp)
	movq %r12, -40(%rbp)
	movq %r13, -56(%rbp)
	movq %r14, -48(%rbp)
	# LowerAlloca(1307:3): size=8, type=%"class.std::basic_string_view"**, var=^3
	leaq -8(%rbp), %rax
	# LowerAlloca(1308:3): size=8, type=i8**, var=^4
	leaq -16(%rbp), %r12
	# LowerMemory.S9: mov %rdi, (^3)
	movq %rdi, (%rax)
	# LowerMemory.S9: mov %rsi, (^4)
	movq %rsi, (%r12)
	# LowerMemory(load @ 1311:3): L2 (^3) into ^5
	movq (%rax), %r14
	# LowerGetelementptr(1312:3): struct-type: %"class.std::basic_string_view"* -> ^6, indices=0,0
	movq %r14, %r13
	# LowerMemory(load @ 1313:3): L2 (^4) into ^7
	movq (%r12), %rax
	# Clobber rdi
	movq %rdi, -24(%rbp)
	# Clobber rsi
	movq %rsi, -32(%rbp)
	movq %rax, %rdi
	callq _ZNSt11char_traitsIcE6lengthEPKc
	# SetupCalls(1314:3: move result from %rax
	movq %rax, %rbx
	# Unclobber rsi
	movq -32(%rbp), %rsi
	# Unclobber rdi
	movq -24(%rbp), %rdi
	# LowerMemory.S9: mov ^8, (^6)
	movq %rbx, (%r13)
	# LowerGetelementptr(1316:3): struct-type: %"class.std::basic_string_view"* -> ^9, indices=0,1
	movq %r14, %rax
	addq $8, %rax
	# LowerMemory(load @ 1317:3): L2 (^4) into ^10
	movq (%r12), %rbx
	# LowerMemory.S9: mov ^10, (^9)
	movq %rbx, (%rax)
	movq -48(%rbp), %r14
	movq -56(%rbp), %r13
	movq -40(%rbp), %r12
	movq -64(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_
.p2align 4, 0x90
_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_:
	.___ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(64 + 0, 16)
	subq $64, %rsp
	movq %rbx, -32(%rbp)
	# LowerAlloca(563:3): size=8, type=%"class.std::__shared_count"**, var=^3
	leaq -8(%rbp), %rbx
	# LowerAlloca(564:3): size=8, type=%"class.std::__shared_count"**, var=^4
	leaq -16(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^3)
	movq %rdi, (%rbx)
	# LowerMemory.S9: mov %rsi, (^4)
	movq %rsi, (%rax)
	# LowerMemory(load @ 567:3): L2 (^3) into ^5
	movq (%rbx), %rdx
	# LowerGetelementptr(568:3): struct-type: %"class.std::__shared_count"* -> ^6, indices=0,0
	movq %rdx, %rcx
	# LowerMemory(load @ 569:3): L2 (^4) into ^7
	movq (%rax), %rbx
	# LowerGetelementptr(570:3): struct-type: %"class.std::__shared_count"* -> ^8, indices=0,0
	movq %rbx, %rax
	# LowerMemory(load @ 571:3): L2 (^8) into ^9
	movq (%rax), %rbx
	# LowerMemory.S9: mov ^9, (^6)
	movq %rbx, (%rcx)
	# LowerGetelementptr(573:3): struct-type: %"class.std::__shared_count"* -> ^10, indices=0,0
	movq %rdx, %rax
	# LowerMemory(load @ 574:3): L2 (^10) into ^11
	movq (%rax), %rbx
	cmpq $0, %rbx
	setne %al
	cmpb $0, %al
	jne .___ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2___M27
	jmp .___ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2___M52
	.___ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2___M27:
	# LowerGetelementptr(579:3): struct-type: %"class.std::__shared_count"* -> ^14, indices=0,0
	movq %rdx, %rax
	# LowerMemory(load @ 580:3): L2 (^14) into ^15
	movq (%rax), %rbx
	# Clobber rdx
	movq %rdx, -24(%rbp)
	movq %rbx, %rdi
	callq _ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv
	# Unclobber rdx
	movq -24(%rbp), %rdx
	jmp .___ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2___M52
	.___ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2___M52:
	movq -32(%rbp), %rbx
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
	# upalign(312 + 0, 16)
	subq $320, %rsp
	movq %rbx, -240(%rbp)
	movq %r12, -248(%rbp)
	# LowerAlloca(293:3): size=4, type=i32*, var=^1
	leaq -4(%rbp), %rax
	movq %rax, -176(%rbp)
	# LowerAlloca(294:3): size=64, type=%"class.std::filesystem::__cxx11::path"*, var=^2
	leaq -68(%rbp), %rax
	movq %rax, -184(%rbp)
	# LowerAlloca(295:3): size=4, type=i32*, var=^3
	leaq -72(%rbp), %rax
	movq %rax, -208(%rbp)
	# LowerAlloca(296:3): size=8, type=%"class.std::filesystem::__cxx11::directory_iterator"**, var=^4
	leaq -80(%rbp), %rbx
	# LowerAlloca(297:3): size=16, type=%"class.std::filesystem::__cxx11::directory_iterator"*, var=^5
	leaq -96(%rbp), %rax
	movq %rax, -192(%rbp)
	# LowerAlloca(298:3): size=16, type=%"class.std::filesystem::__cxx11::directory_iterator"*, var=^6
	leaq -112(%rbp), %rax
	movq %rax, -200(%rbp)
	# LowerAlloca(299:3): size=16, type=%"class.std::filesystem::__cxx11::directory_iterator"*, var=^7
	leaq -128(%rbp), %r12
	# LowerAlloca(300:3): size=16, type=%"class.std::filesystem::__cxx11::directory_iterator"*, var=^8
	leaq -144(%rbp), %rax
	movq %rax, -216(%rbp)
	# LowerAlloca(301:3): size=16, type=%"class.std::filesystem::__cxx11::directory_iterator"*, var=^9
	leaq -160(%rbp), %rax
	movq %rax, -232(%rbp)
	# LowerAlloca(302:3): size=8, type=%"class.std::filesystem::__cxx11::directory_entry"**, var=^10
	leaq -168(%rbp), %rax
	movq %rax, -224(%rbp)
	# LowerMemory.S3: mov $imm, ^1
	movq -176(%rbp), %rax
	movl $0, (%rax)
	movq -184(%rbp), %rdi
	movq .str@GOTPCREL(%rip), %rsi
	movq $2, %rdx
	andq $255, %rdx
	callq _ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE
	# LowerMemory.S3: mov $imm, ^3
	movq -208(%rbp), %rax
	movl $0, (%rax)
	movq -192(%rbp), %rdi
	movq -184(%rbp), %rsi
	callq _ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE
	# LowerMemory.S9: mov ^5, (^4)
	movq -192(%rbp), %rax
	movq %rax, (%rbx)
	# LowerMemory(load @ 308:3): L2 (^4) into ^11
	movq (%rbx), %rax
	movq %r12, %rdi
	movq %rax, %rsi
	callq _ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_
	movq -200(%rbp), %rdi
	movq %r12, %rsi
	callq _ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE
	movq %r12, %rdi
	callq _ZNSt10filesystem7__cxx1118directory_iteratorD2Ev
	# LowerMemory(load @ 312:3): L2 (^4) into ^12
	movq (%rbx), %rax
	movq -232(%rbp), %rdi
	movq %rax, %rsi
	callq _ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_
	movq -216(%rbp), %rdi
	movq -232(%rbp), %rsi
	callq _ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE
	movq -232(%rbp), %rdi
	callq _ZNSt10filesystem7__cxx1118directory_iteratorD2Ev
	jmp .__main__M199
	.__main__M199:
	movq -200(%rbp), %rdi
	movq -216(%rbp), %rsi
	callq _ZNSt10filesystem7__cxx11neERKNS0_18directory_iteratorES3_
	# SetupCalls(319:3: move result from %rax
	movb %al, %bl
	cmpb $0, %bl
	jne .__main__M284
	jmp .__main__M223
	.__main__M223:
	movq -216(%rbp), %rdi
	callq _ZNSt10filesystem7__cxx1118directory_iteratorD2Ev
	movq -200(%rbp), %rdi
	callq _ZNSt10filesystem7__cxx1118directory_iteratorD2Ev
	movq -192(%rbp), %rdi
	callq _ZNSt10filesystem7__cxx1118directory_iteratorD2Ev
	jmp .__main__M455
	.__main__M284:
	movq -200(%rbp), %rdi
	callq _ZNKSt10filesystem7__cxx1118directory_iteratordeEv
	# SetupCalls(329:3: move result from %rax
	movq %rax, %rbx
	# LowerMemory.S9: mov ^17, (^10)
	movq -224(%rbp), %rax
	movq %rbx, (%rax)
	# LowerMemory(load @ 331:3): L2 (^3) into ^18
	movq -208(%rbp), %rax
	movl (%rax), %ebx
	movl %ebx, %ecx
	addl $1, %ecx
	# LowerMemory.S9: mov ^19, (^3)
	movq -208(%rbp), %rax
	movl %ecx, (%rax)
	movq _ZSt4cout@GOTPCREL(%rip), %rdi
	movq %rbx, %rsi
	callq _ZNSolsEi
	# SetupCalls(334:3: move result from %rax
	movq %rax, %rbx
	movq %rbx, %rdi
	movq .str.1@GOTPCREL(%rip), %rsi
	callq _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	# SetupCalls(335:3: move result from %rax
	movq %rax, %rbx
	# LowerMemory(load @ 336:3): L2 (^10) into ^22
	movq -224(%rbp), %rcx
	movq (%rcx), %rax
	movq %rax, %rdi
	callq _ZNKSt10filesystem7__cxx1115directory_entry4pathEv
	# SetupCalls(337:3: move result from %rax
	movq %rax, %r12
	movq %rbx, %rdi
	movq %r12, %rsi
	callq _ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE
	# SetupCalls(338:3: move result from %rax
	movq %rax, %rbx
	movq %rbx, %rdi
	movq $10, %rsi
	movsbq %sil, %rsi
	callq _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	# SetupCalls(339:3: move result from %rax
	movq %rax, %rax
	jmp .__main__M432
	.__main__M432:
	movq -200(%rbp), %rdi
	callq _ZNSt10filesystem7__cxx1118directory_iteratorppEv
	# SetupCalls(343:3: move result from %rax
	movq %rax, %rax
	jmp .__main__M199
	.__main__M455:
	movq -184(%rbp), %rdi
	callq _ZNSt10filesystem7__cxx114pathD2Ev
	# LowerMemory(load @ 348:3): L2 (^1) into ^29
	movq -176(%rbp), %rax
	movl (%rax), %ebx
	movl %ebx, %eax
	movq -248(%rbp), %r12
	movq -240(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv
.p2align 4, 0x90
_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv:
	.___ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(24 + 0, 16)
	subq $32, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(1456:3): size=8, type=%"class.std::basic_string_view"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 1458:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# LowerGetelementptr(1459:3): struct-type: %"class.std::basic_string_view"* -> ^4, indices=0,1
	movq %rbx, %rax
	addq $8, %rax
	# LowerMemory(load @ 1460:3): L2 (^4) into ^5
	movq (%rax), %rbx
	movq %rbx, %rax
	movq -16(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt10filesystem7__cxx1118directory_iteratorC2EOS1_
.p2align 4, 0x90
_ZNSt10filesystem7__cxx1118directory_iteratorC2EOS1_:
	.___ZNSt10filesystem7__cxx1118directory_iteratorC2EOS1___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(48 + 0, 16)
	subq $48, %rsp
	movq %rbx, -40(%rbp)
	# LowerAlloca(524:3): size=8, type=%"class.std::filesystem::__cxx11::directory_iterator"**, var=^3
	leaq -8(%rbp), %rbx
	# LowerAlloca(525:3): size=8, type=%"class.std::filesystem::__cxx11::directory_iterator"**, var=^4
	leaq -16(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^3)
	movq %rdi, (%rbx)
	# LowerMemory.S9: mov %rsi, (^4)
	movq %rsi, (%rax)
	# LowerMemory(load @ 528:3): L2 (^3) into ^5
	movq (%rbx), %rdx
	# LowerGetelementptr(529:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^6, indices=0,0
	movq %rdx, %rcx
	# LowerMemory(load @ 530:3): L2 (^4) into ^7
	movq (%rax), %rbx
	# LowerGetelementptr(531:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^8, indices=0,0
	movq %rbx, %rax
	# Clobber rdi
	movq %rdi, -24(%rbp)
	# Clobber rsi
	movq %rsi, -32(%rbp)
	movq %rcx, %rdi
	movq %rax, %rsi
	callq _ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC1EOS5_
	# Unclobber rsi
	movq -32(%rbp), %rsi
	# Unclobber rdi
	movq -24(%rbp), %rdi
	movq -40(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text.startup
.global __cxx_global_var_init
.p2align 4, 0x90
__cxx_global_var_init:
	.____cxx_global_var_init__M0:
	pushq %rbp
	movq %rsp, %rbp
	movq _ZStL8__ioinit@GOTPCREL(%rip), %rdi
	callq _ZNSt8ios_base4InitC1Ev
	movq _ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	movq _ZStL8__ioinit@GOTPCREL(%rip), %rsi
	movq __dso_handle@GOTPCREL(%rip), %rdx
	callq __cxa_atexit
	# SetupCalls(279:3: move result from %rax
	movl %eax, %eax
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZN9__gnu_cxxeqIPKcS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T1_EERKNS9_IT0_SB_EE
.p2align 4, 0x90
_ZN9__gnu_cxxeqIPKcS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T1_EERKNS9_IT0_SB_EE:
	.___ZN9__gnu_cxxeqIPKcS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T1_EERKNS9_IT0_SB_EE__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(64 + 0, 16)
	subq $64, %rsp
	movq %rbx, -40(%rbp)
	movq %r12, -56(%rbp)
	movq %r13, -48(%rbp)
	# LowerAlloca(2149:3): size=8, type=%"class.__gnu_cxx::__normal_iterator"**, var=^3
	leaq -8(%rbp), %rax
	# LowerAlloca(2150:3): size=8, type=%"class.__gnu_cxx::__normal_iterator"**, var=^4
	leaq -16(%rbp), %rbx
	# LowerMemory.S9: mov %rdi, (^3)
	movq %rdi, (%rax)
	# LowerMemory.S9: mov %rsi, (^4)
	movq %rsi, (%rbx)
	# LowerMemory(load @ 2153:3): L2 (^3) into ^5
	movq (%rax), %rcx
	# Clobber rdi
	movq %rdi, -24(%rbp)
	# Clobber rsi
	movq %rsi, -32(%rbp)
	movq %rcx, %rdi
	callq _ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv
	# SetupCalls(2154:3: move result from %rax
	movq %rax, %r13
	# Unclobber rsi
	movq -32(%rbp), %rsi
	# Unclobber rdi
	movq -24(%rbp), %rdi
	# LowerMemory(load @ 2155:3): L2 (^6) into ^7
	movq (%r13), %r12
	# LowerMemory(load @ 2156:3): L2 (^4) into ^8
	movq (%rbx), %rax
	# Clobber rdi
	movq %rdi, -24(%rbp)
	# Clobber rsi
	movq %rsi, -32(%rbp)
	movq %rax, %rdi
	callq _ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv
	# SetupCalls(2157:3: move result from %rax
	movq %rax, %rbx
	# Unclobber rsi
	movq -32(%rbp), %rsi
	# Unclobber rdi
	movq -24(%rbp), %rdi
	# LowerMemory(load @ 2158:3): L2 (^9) into ^10
	movq (%rbx), %rax
	cmpq %rax, %r12
	sete %al
	movq -48(%rbp), %r13
	movq -56(%rbp), %r12
	movq -40(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt11char_traitsIcE6assignERcRKc
.p2align 4, 0x90
_ZNSt11char_traitsIcE6assignERcRKc:
	.___ZNSt11char_traitsIcE6assignERcRKc__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(24 + 0, 16)
	subq $32, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(1929:3): size=8, type=i8**, var=^3
	leaq -8(%rbp), %rcx
	# LowerAlloca(1930:3): size=8, type=i8**, var=^4
	leaq -16(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^3)
	movq %rdi, (%rcx)
	# LowerMemory.S9: mov %rsi, (^4)
	movq %rsi, (%rax)
	# LowerMemory(load @ 1933:3): L2 (^4) into ^5
	movq (%rax), %rdx
	# LowerMemory(load @ 1934:3): L2 (^5) into ^6
	movb (%rdx), %bl
	# LowerMemory(load @ 1935:3): L2 (^3) into ^7
	movq (%rcx), %rax
	# LowerMemory.S9: mov ^6, (^7)
	movb %bl, (%rax)
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3_
.p2align 4, 0x90
_ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3_:
	.___ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(80 + 0, 16)
	subq $80, %rsp
	movq %rbx, -48(%rbp)
	movq %r12, -40(%rbp)
	movq %r13, -56(%rbp)
	movq %r14, -64(%rbp)
	# LowerAlloca(820:3): size=8, type=%"class.std::filesystem::__cxx11::directory_iterator"**, var=^3
	leaq -8(%rbp), %r12
	# LowerAlloca(821:3): size=8, type=%"class.std::filesystem::__cxx11::directory_iterator"**, var=^4
	leaq -16(%rbp), %rbx
	# LowerMemory.S9: mov %rdi, (^3)
	movq %rdi, (%r12)
	# LowerMemory.S9: mov %rsi, (^4)
	movq %rsi, (%rbx)
	# LowerMemory(load @ 824:3): L2 (^4) into ^5
	movq (%rbx), %rax
	# LowerGetelementptr(825:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^6, indices=0,0
	movq %rax, %rdx
	# LowerMemory(load @ 826:3): L2 (^3) into ^7
	movq (%r12), %rcx
	# LowerGetelementptr(827:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^8, indices=0,0
	movq %rcx, %rax
	# Clobber rdi
	movq %rdi, -24(%rbp)
	# Clobber rsi
	movq %rsi, -32(%rbp)
	movq %rdx, %rdi
	movq %rax, %rsi
	callq _ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE
	# SetupCalls(828:3: move result from %rax
	movb %al, %r13b
	# Unclobber rsi
	movq -32(%rbp), %rsi
	# Unclobber rdi
	movq -24(%rbp), %rdi
	cmpb $0, %r13b
	jne .___ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3___M40
	jmp .___ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3___M43
	.___ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3___M40:
	# MovePhi: intlike -> ^18 (in new block 19 whose parent is 2)
	movb $0, %r14b
	jmp .___ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3___M79
	.___ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3___M43:
	# LowerMemory(load @ 832:3): L2 (^3) into ^11
	movq (%r12), %rax
	# LowerGetelementptr(833:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^12, indices=0,0
	movq %rax, %rcx
	# LowerMemory(load @ 834:3): L2 (^4) into ^13
	movq (%rbx), %rax
	# LowerGetelementptr(835:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^14, indices=0,0
	movq %rax, %rbx
	movq %rcx, %rdi
	movq %rbx, %rsi
	callq _ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE
	# SetupCalls(836:3: move result from %rax
	movb %al, %bl
	movb %bl, %al
	xorb $1, %al
	# MovePhi: ^16 -> ^18
	movb %al, %r14b
	jmp .___ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3___M79
	.___ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3___M79:
	movb %r14b, %al
	movq -64(%rbp), %r14
	movq -56(%rbp), %r13
	movq -40(%rbp), %r12
	movq -48(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EED2Ev
.p2align 4, 0x90
_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EED2Ev:
	.___ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EED2Ev__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(24 + 0, 16)
	subq $32, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(640:3): size=8, type=%"class.std::__shared_ptr"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 642:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# LowerGetelementptr(643:3): struct-type: %"class.std::__shared_ptr"* -> ^4, indices=0,1
	movq %rbx, %rax
	addq $8, %rax
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %rax, %rdi
	callq _ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev
	# Unclobber rdi
	movq -16(%rbp), %rdi
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
.p2align 4, 0x90
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv:
	.___ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(24 + 0, 16)
	subq $32, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(1118:3): size=8, type=%"class.std::__cxx11::basic_string"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 1120:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# LowerGetelementptr(1121:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^4, indices=0,0
	movq %rbx, %rax
	# LowerGetelementptr(1122:3): struct-type: %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* -> ^5, indices=0,0
	movq %rax, %rbx
	# LowerMemory(load @ 1123:3): L2 (^5) into ^6
	movq (%rbx), %rax
	movq -16(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
.p2align 4, 0x90
_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_:
	.___ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(74 + 0, 16)
	subq $80, %rsp
	movq %rbx, -42(%rbp)
	movq %r12, -58(%rbp)
	# LowerAlloca(1633:3): size=8, type=i8**, var=^3
	leaq -8(%rbp), %rcx
	# LowerAlloca(1634:3): size=8, type=i8**, var=^4
	leaq -16(%rbp), %rax
	# LowerAlloca(1635:3): size=1, type=%"struct.std::random_access_iterator_tag"*, var=^5
	leaq -17(%rbp), %rbx
	# LowerAlloca(1636:3): size=1, type=%"struct.std::random_access_iterator_tag"*, var=^6
	leaq -18(%rbp), %rbx
	# LowerMemory.S9: mov %rdi, (^3)
	movq %rdi, (%rcx)
	# LowerMemory.S9: mov %rsi, (^4)
	movq %rsi, (%rax)
	# LowerMemory(load @ 1639:3): L2 (^3) into ^7
	movq (%rcx), %r12
	# LowerMemory(load @ 1640:3): L2 (^4) into ^8
	movq (%rax), %rbx
	# Clobber rdi
	movq %rdi, -26(%rbp)
	# Clobber rsi
	movq %rsi, -34(%rbp)
	movq %rcx, %rdi
	callq _ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	# Unclobber rsi
	movq -34(%rbp), %rsi
	# Unclobber rdi
	movq -26(%rbp), %rdi
	# Clobber rdi
	movq %rdi, -26(%rbp)
	# Clobber rsi
	movq %rsi, -34(%rbp)
	movq %r12, %rdi
	movq %rbx, %rsi
	callq _ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	# SetupCalls(1642:3: move result from %rax
	movq %rax, %rbx
	# Unclobber rsi
	movq -34(%rbp), %rsi
	# Unclobber rdi
	movq -26(%rbp), %rdi
	movq %rbx, %rax
	movq -58(%rbp), %r12
	movq -42(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev
.p2align 4, 0x90
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev:
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(24 + 0, 16)
	subq $32, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(905:3): size=8, type=%"class.std::__cxx11::basic_string"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 907:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %rbx, %rdi
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	# Unclobber rdi
	movq -16(%rbp), %rdi
	# LowerGetelementptr(909:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^4, indices=0,0
	movq %rbx, %rax
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %rax, %rdi
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	# Unclobber rdi
	movq -16(%rbp), %rdi
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt10filesystem7__cxx114path5_ListD2Ev
.p2align 4, 0x90
_ZNSt10filesystem7__cxx114path5_ListD2Ev:
	.___ZNSt10filesystem7__cxx114path5_ListD2Ev__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(24 + 0, 16)
	subq $32, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(895:3): size=8, type=%"struct.std::filesystem::__cxx11::path::_List"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 897:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# LowerGetelementptr(898:3): struct-type: %"struct.std::filesystem::__cxx11::path::_List"* -> ^4, indices=0,0
	movq %rbx, %rax
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %rax, %rdi
	callq _ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev
	# Unclobber rdi
	movq -16(%rbp), %rdi
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_
.p2align 4, 0x90
_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_:
	.___ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(16 + 0, 16)
	subq $16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(969:3): size=8, type=%"struct.std::filesystem::__cxx11::path::_List::_Impl"***, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 971:3): L2 (^2) into ^3
	movq (%rax), %rbx
	movq %rbx, %rax
	movq -16(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE
.p2align 4, 0x90
_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE:
	.___ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(32 + 0, 16)
	subq $32, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(987:3): size=8, type=%"struct.std::_Tuple_impl"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 989:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %rbx, %rdi
	callq _ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_
	# SetupCalls(990:3: move result from %rax
	movq %rax, %rbx
	# Unclobber rdi
	movq -16(%rbp), %rdi
	movq %rbx, %rax
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
.p2align 4, 0x90
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv:
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(480 + 0, 16)
	subq $480, %rsp
	movq %rbx, -392(%rbp)
	# LowerAlloca(670:3): size=8, type=i32**, var=^2
	leaq -8(%rbp), %r8
	movq %r8, -104(%rbp)
	# LowerAlloca(671:3): size=4, type=i32*, var=^3
	leaq -12(%rbp), %r8
	movq %r8, -112(%rbp)
	# LowerAlloca(672:3): size=4, type=i32*, var=^4
	leaq -16(%rbp), %r8
	movq %r8, -88(%rbp)
	# LowerAlloca(673:3): size=4, type=i32*, var=^5
	leaq -20(%rbp), %r8
	movq %r8, -80(%rbp)
	# LowerAlloca(674:3): size=8, type=i32**, var=^6
	leaq -28(%rbp), %r8
	movq %r8, -200(%rbp)
	# LowerAlloca(675:3): size=4, type=i32*, var=^7
	leaq -32(%rbp), %r8
	movq %r8, -192(%rbp)
	# LowerAlloca(676:3): size=4, type=i32*, var=^8
	leaq -36(%rbp), %r8
	movq %r8, -184(%rbp)
	# LowerAlloca(677:3): size=4, type=i32*, var=^9
	leaq -40(%rbp), %r8
	movq %r8, -176(%rbp)
	# LowerAlloca(678:3): size=8, type=i32**, var=^10
	leaq -48(%rbp), %r8
	movq %r8, -136(%rbp)
	# LowerAlloca(679:3): size=4, type=i32*, var=^11
	leaq -52(%rbp), %r8
	movq %r8, -144(%rbp)
	# LowerAlloca(680:3): size=4, type=i32*, var=^12
	leaq -56(%rbp), %r8
	movq %r8, -128(%rbp)
	# LowerAlloca(681:3): size=8, type=i32**, var=^13
	leaq -64(%rbp), %r8
	movq %r8, -216(%rbp)
	# LowerAlloca(682:3): size=4, type=i32*, var=^14
	leaq -68(%rbp), %r8
	movq %r8, -224(%rbp)
	# LowerAlloca(683:3): size=4, type=i32*, var=^15
	leaq -72(%rbp), %r8
	movq %r8, -208(%rbp)
	jmp .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M29
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M29:
	andq $-4, %rsp
	# LowerAlloca: %rsp -= to_sub
	subq $8, %rsp
	# LowerAlloca: mov %rsp, ^16
	movq %rsp, -168(%rbp)
	andq $-8, %rsp
	# LowerAlloca: %rsp -= to_sub
	subq $8, %rsp
	# LowerAlloca: mov %rsp, ^17
	movq %rsp, -232(%rbp)
	andq $-4, %rsp
	# LowerAlloca: %rsp -= to_sub
	subq $8, %rsp
	# LowerAlloca: mov %rsp, ^18
	movq %rsp, -240(%rbp)
	andq $-4, %rsp
	# LowerAlloca: %rsp -= to_sub
	subq $8, %rsp
	# LowerAlloca: mov %rsp, ^19
	movq %rsp, -120(%rbp)
	andq $-8, %rsp
	# LowerAlloca: %rsp -= to_sub
	subq $8, %rsp
	# LowerAlloca: mov %rsp, ^20
	movq %rsp, -152(%rbp)
	andq $-4, %rsp
	# LowerAlloca: %rsp -= to_sub
	subq $8, %rsp
	# LowerAlloca: mov %rsp, ^21
	movq %rsp, -160(%rbp)
	andq $-8, %rsp
	# LowerAlloca: %rsp -= to_sub
	subq $8, %rsp
	# LowerAlloca: mov %rsp, ^22
	movq %rsp, -312(%rbp)
	# LowerMemory.S9: mov %rdi, (^22)
	movq -312(%rbp), %r8
	movq %rdi, (%r8)
	# LowerMemory(load @ 692:3): L2 (^22) into ^23
	movq -312(%rbp), %r10
	movq (%r10), %r8
	movq %r8, -96(%rbp)
	# LowerGetelementptr(693:3): struct-type: %"class.std::_Sp_counted_base"* -> ^24, indices=0,1
	movq -96(%rbp), %rcx
	addq $8, %rcx
	# LowerMemory.S9: mov ^24, (^17)
	movq -232(%rbp), %r10
	movq %rcx, (%r10)
	# LowerMemory.S3: mov $imm, ^18
	movq -240(%rbp), %r8
	movl $-1, (%r8)
	# LowerMemory(load @ 696:3): L4 __libc_single_threaded into ^25
	movb __libc_single_threaded@GOTPCREL(%rip), %cl
	cmpb $0, %cl
	setne %cl
	cmpb $0, %cl
	jne .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M80
	jmp .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M109
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M80:
	# LowerMemory(load @ 701:3): L2 (^17) into ^28
	movq -232(%rbp), %rax
	movq (%rax), %rcx
	movq %rcx, -320(%rbp)
	# LowerMemory(load @ 702:3): L2 (^18) into ^29
	movq -240(%rbp), %rax
	movl (%rax), %ecx
	movq %rcx, -328(%rbp)
	# LowerMemory.S9: mov ^28, (^13)
	movq -216(%rbp), %rcx
	movq -320(%rbp), %rax
	movq %rax, (%rcx)
	# LowerMemory.S9: mov ^29, (^14)
	movq -224(%rbp), %rcx
	movl -328(%rbp), %eax
	movq %rax, (%rcx)
	# LowerMemory(load @ 705:3): L2 (^13) into ^30
	movq -216(%rbp), %rdx
	movq (%rdx), %rcx
	# LowerMemory(load @ 706:3): L2 (^30) into ^31
	movl (%rcx), %eax
	# LowerMemory.S9: mov ^31, (^15)
	movq -208(%rbp), %rcx
	movl %eax, (%rcx)
	# LowerMemory(load @ 708:3): L2 (^14) into ^32
	movq -224(%rbp), %rax
	movl (%rax), %ecx
	movq %rcx, -280(%rbp)
	# LowerMemory(load @ 709:3): L2 (^13) into ^33
	movq -216(%rbp), %rax
	movq (%rax), %rcx
	movq %rcx, -288(%rbp)
	# LowerMemory(load @ 710:3): L2 (^33) into ^34
	movq -288(%rbp), %rcx
	movl (%rcx), %eax
	movl %eax, %ecx
	addl -280(%rbp), %ecx
	# LowerMemory.S9: mov ^35, (^33)
	movq -288(%rbp), %rax
	movl %ecx, (%rax)
	# LowerMemory(load @ 713:3): L2 (^15) into ^36
	movq -208(%rbp), %rcx
	movl (%rcx), %eax
	# LowerMemory.S9: mov ^36, (^16)
	movq -168(%rbp), %rcx
	movl %eax, (%rcx)
	jmp .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M134
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M109:
	# LowerMemory(load @ 718:3): L2 (^17) into ^38
	movq -232(%rbp), %rdi
	movq (%rdi), %rcx
	movq %rcx, -336(%rbp)
	# LowerMemory(load @ 719:3): L2 (^18) into ^39
	movq -240(%rbp), %rdi
	movl (%rdi), %ecx
	movq %rcx, -344(%rbp)
	# LowerMemory.S9: mov ^38, (^6)
	movq -200(%rbp), %rdi
	movq -336(%rbp), %rcx
	movq %rcx, (%rdi)
	# LowerMemory.S9: mov ^39, (^7)
	movq -192(%rbp), %rcx
	movl -344(%rbp), %edi
	movq %rdi, (%rcx)
	# LowerMemory(load @ 722:3): L2 (^6) into ^40
	movq -200(%rbp), %rcx
	movq (%rcx), %rdi
	movq %rdi, -264(%rbp)
	# LowerMemory(load @ 723:3): L2 (^7) into ^41
	movq -192(%rbp), %r8
	movl (%r8), %edi
	# LowerMemory.S9: mov ^41, (^8)
	movq -184(%rbp), %rcx
	movl %edi, (%rcx)
	# LowerMemory(load @ 725:3): L2 (^8) into ^42
	movq -184(%rbp), %rdi
	movl (%rdi), %ecx
	movl %ecx, %edi
	lock addl %edi, (%rax)
	# LowerMemory.S9: mov ^43, (^9)
	movq -176(%rbp), %rax
	movl %edi, (%rax)
	# LowerMemory(load @ 728:3): L2 (^9) into ^44
	movq -176(%rbp), %rcx
	movl (%rcx), %eax
	# LowerMemory.S9: mov ^44, (^16)
	movq -168(%rbp), %rcx
	movl %eax, (%rcx)
	jmp .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M134
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M134:
	# LowerMemory(load @ 733:3): L2 (^16) into ^46
	movq -168(%rbp), %rcx
	movl (%rcx), %eax
	cmpl $1, %eax
	sete %al
	cmpb $0, %al
	jne .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M139
	jmp .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M270
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M139:
	movq -96(%rbp), %rax
	# LowerMemory(load @ 739:3): L2 (^49) into ^50
	movq (%rax), %rcx
	# LowerGetelementptr(740:3): struct-type: void (%"class.std::_Sp_counted_base"*) *** -> ^51, indices=2
	movq %rcx, %rax
	addq $16, %rax
	# LowerMemory(load @ 741:3): L2 (^51) into ^52
	movq (%rax), %rcx
	movq %rcx, -248(%rbp)
	# Clobber rax
	movq %rax, -384(%rbp)
	movq -96(%rbp), %rdi
	# SetupCalls: jump to function operand ^52
	callq *-248(%rbp)
	# Unclobber rax
	movq -384(%rbp), %rax
	# LowerGetelementptr(743:3): struct-type: %"class.std::_Sp_counted_base"* -> ^53, indices=0,2
	movq -96(%rbp), %rcx
	addq $12, %rcx
	# LowerMemory.S9: mov ^53, (^20)
	movq -152(%rbp), %rdx
	movq %rcx, (%rdx)
	# LowerMemory.S3: mov $imm, ^21
	movq -160(%rbp), %rcx
	movl $-1, (%rcx)
	# LowerMemory(load @ 746:3): L4 __libc_single_threaded into ^54
	movb __libc_single_threaded@GOTPCREL(%rip), %al
	cmpb $0, %al
	setne %al
	cmpb $0, %al
	jne .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M180
	jmp .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M209
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M180:
	# LowerMemory(load @ 751:3): L2 (^20) into ^57
	movq -152(%rbp), %rax
	movq (%rax), %rbx
	movq %rbx, -352(%rbp)
	# LowerMemory(load @ 752:3): L2 (^21) into ^58
	movq -160(%rbp), %rbx
	movl (%rbx), %eax
	movq %rax, -360(%rbp)
	# LowerMemory.S9: mov ^57, (^10)
	movq -136(%rbp), %rbx
	movq -352(%rbp), %rax
	movq %rax, (%rbx)
	# LowerMemory.S9: mov ^58, (^11)
	movq -144(%rbp), %rax
	movl -360(%rbp), %ebx
	movq %rbx, (%rax)
	# LowerMemory(load @ 755:3): L2 (^10) into ^59
	movq -136(%rbp), %rcx
	movq (%rcx), %rbx
	# LowerMemory(load @ 756:3): L2 (^59) into ^60
	movl (%rbx), %eax
	# LowerMemory.S9: mov ^60, (^12)
	movq -128(%rbp), %rbx
	movl %eax, (%rbx)
	# LowerMemory(load @ 758:3): L2 (^11) into ^61
	movq -144(%rbp), %rax
	movl (%rax), %ebx
	movq %rbx, -296(%rbp)
	# LowerMemory(load @ 759:3): L2 (^10) into ^62
	movq -136(%rbp), %rax
	movq (%rax), %rbx
	movq %rbx, -304(%rbp)
	# LowerMemory(load @ 760:3): L2 (^62) into ^63
	movq -304(%rbp), %rbx
	movl (%rbx), %eax
	movl %eax, %ebx
	addl -296(%rbp), %ebx
	# LowerMemory.S9: mov ^64, (^62)
	movq -304(%rbp), %rax
	movl %ebx, (%rax)
	# LowerMemory(load @ 763:3): L2 (^12) into ^65
	movq -128(%rbp), %rbx
	movl (%rbx), %eax
	# LowerMemory.S9: mov ^65, (^19)
	movq -120(%rbp), %rbx
	movl %eax, (%rbx)
	jmp .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M234
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M209:
	# LowerMemory(load @ 768:3): L2 (^20) into ^67
	movq -152(%rbp), %rax
	movq (%rax), %rcx
	movq %rcx, -368(%rbp)
	# LowerMemory(load @ 769:3): L2 (^21) into ^68
	movq -160(%rbp), %rcx
	movl (%rcx), %eax
	movq %rax, -376(%rbp)
	# LowerMemory.S9: mov ^67, (^2)
	movq -104(%rbp), %rax
	movq -368(%rbp), %rcx
	movq %rcx, (%rax)
	# LowerMemory.S9: mov ^68, (^3)
	movq -112(%rbp), %rax
	movl -376(%rbp), %ecx
	movq %rcx, (%rax)
	# LowerMemory(load @ 772:3): L2 (^2) into ^69
	movq -104(%rbp), %rax
	movq (%rax), %rcx
	movq %rcx, -272(%rbp)
	# LowerMemory(load @ 773:3): L2 (^3) into ^70
	movq -112(%rbp), %rdx
	movl (%rdx), %ecx
	# LowerMemory.S9: mov ^70, (^4)
	movq -88(%rbp), %rax
	movl %ecx, (%rax)
	# LowerMemory(load @ 775:3): L2 (^4) into ^71
	movq -88(%rbp), %rax
	movl (%rax), %ecx
	movl %ecx, %ebx
	lock addl %ebx, (%rax)
	# LowerMemory.S9: mov ^72, (^5)
	movq -80(%rbp), %rax
	movl %ebx, (%rax)
	# LowerMemory(load @ 778:3): L2 (^5) into ^73
	movq -80(%rbp), %rax
	movl (%rax), %ebx
	# LowerMemory.S9: mov ^73, (^19)
	movq -120(%rbp), %rax
	movl %ebx, (%rax)
	jmp .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M234
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M234:
	# LowerMemory(load @ 783:3): L2 (^19) into ^75
	movq -120(%rbp), %rbx
	movl (%rbx), %eax
	cmpl $1, %eax
	sete %al
	cmpb $0, %al
	jne .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M239
	jmp .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M269
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M239:
	movq -96(%rbp), %rax
	# LowerMemory(load @ 789:3): L2 (^78) into ^79
	movq (%rax), %rbx
	# LowerGetelementptr(790:3): struct-type: void (%"class.std::_Sp_counted_base"*) *** -> ^80, indices=3
	movq %rbx, %rax
	addq $24, %rax
	# LowerMemory(load @ 791:3): L2 (^80) into ^81
	movq (%rax), %rbx
	movq %rbx, -256(%rbp)
	# Clobber rax
	movq %rax, -384(%rbp)
	movq -96(%rbp), %rdi
	# SetupCalls: jump to function operand ^81
	callq *-256(%rbp)
	# Unclobber rax
	movq -384(%rbp), %rax
	jmp .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M269
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M269:
	jmp .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M270
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M270:
	movq -392(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC2ERKS5_
.p2align 4, 0x90
_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC2ERKS5_:
	.___ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC2ERKS5___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(48 + 0, 16)
	subq $48, %rsp
	movq %rbx, -40(%rbp)
	# LowerAlloca(541:3): size=8, type=%"class.std::__shared_ptr"**, var=^3
	leaq -8(%rbp), %rax
	# LowerAlloca(542:3): size=8, type=%"class.std::__shared_ptr"**, var=^4
	leaq -16(%rbp), %rbx
	# LowerMemory.S9: mov %rdi, (^3)
	movq %rdi, (%rax)
	# LowerMemory.S9: mov %rsi, (^4)
	movq %rsi, (%rbx)
	# LowerMemory(load @ 545:3): L2 (^3) into ^5
	movq (%rax), %rdx
	movq %rdx, %rax
	# LowerMemory(load @ 547:3): L2 (^4) into ^7
	movq (%rbx), %rcx
	movq %rcx, %rax
	# LowerGetelementptr(549:3): struct-type: %"class.std::__shared_ptr"* -> ^9, indices=0,0
	movq %rdx, %rax
	# LowerMemory(load @ 550:3): L2 (^4) into ^10
	movq (%rbx), %rcx
	# LowerGetelementptr(551:3): struct-type: %"class.std::__shared_ptr"* -> ^11, indices=0,0
	movq %rcx, %rsi
	# LowerMemory(load @ 552:3): L2 (^11) into ^12
	movq (%rsi), %rcx
	# LowerMemory.S9: mov ^12, (^9)
	movq %rcx, (%rax)
	# LowerGetelementptr(554:3): struct-type: %"class.std::__shared_ptr"* -> ^13, indices=0,1
	movq %rdx, %rax
	addq $8, %rax
	# LowerMemory(load @ 555:3): L2 (^4) into ^14
	movq (%rbx), %rcx
	# LowerGetelementptr(556:3): struct-type: %"class.std::__shared_ptr"* -> ^15, indices=0,1
	movq %rcx, %rbx
	addq $8, %rbx
	# Clobber rdi
	movq %rdi, -24(%rbp)
	# Clobber rsi
	movq %rsi, -32(%rbp)
	movq %rax, %rdi
	movq %rbx, %rsi
	callq _ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_
	# Unclobber rsi
	movq -32(%rbp), %rsi
	# Unclobber rdi
	movq -24(%rbp), %rdi
	movq -40(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt14pointer_traitsIPKcE10pointer_toERS0_
.p2align 4, 0x90
_ZNSt14pointer_traitsIPKcE10pointer_toERS0_:
	.___ZNSt14pointer_traitsIPKcE10pointer_toERS0___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(32 + 0, 16)
	subq $32, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(1141:3): size=8, type=i8**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 1143:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %rbx, %rdi
	callq _ZSt9addressofIKcEPT_RS1_
	# SetupCalls(1144:3: move result from %rax
	movq %rax, %rbx
	# Unclobber rdi
	movq -16(%rbp), %rdi
	movq %rbx, %rax
	movq -24(%rbp), %rbx
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
	# upalign(154 + 0, 16)
	subq $160, %rsp
	movq %rbx, -114(%rbp)
	movq %r12, -106(%rbp)
	movq %r13, -130(%rbp)
	movq %r14, -138(%rbp)
	movq %r15, -122(%rbp)
	# LowerAlloca(354:3): size=8, type=%"class.std::filesystem::__cxx11::path"**, var=^4
	leaq -8(%rbp), %rax
	# LowerAlloca(355:3): size=8, type=[2 x i8]**, var=^5
	leaq -16(%rbp), %rsi
	# LowerAlloca(356:3): size=1, type=i8*, var=^6
	leaq -17(%rbp), %rcx
	# LowerAlloca(357:3): size=16, type=%"class.std::basic_string_view"*, var=^7
	leaq -33(%rbp), %r12
	# LowerAlloca(358:3): size=16, type=%"class.std::basic_string_view"*, var=^8
	leaq -49(%rbp), %rbx
	# LowerAlloca(359:3): size=1, type=%"class.std::allocator"*, var=^9
	leaq -50(%rbp), %rdx
	movq %rdx, -66(%rbp)
	# LowerMemory.S9: mov %rdi, (^4)
	movq %rdi, (%rax)
	# LowerMemory.S9: mov %rsi, (^5)
	movq %rsi, (%rsi)
	# LowerMemory.S9: mov %dl, (^6)
	movb %dl, (%rcx)
	# LowerMemory(load @ 363:3): L2 (^4) into ^10
	movq (%rax), %rcx
	movq %rcx, -58(%rbp)
	# LowerGetelementptr(364:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^11, indices=0,0
	movq -58(%rbp), %r15
	# LowerMemory(load @ 365:3): L2 (^5) into ^12
	movq (%rsi), %rax
	# Clobber rdi
	movq %rdi, -74(%rbp)
	# Clobber rsi
	movq %rsi, -82(%rbp)
	# Clobber rdx
	movq %rdx, -90(%rbp)
	movq %rax, %rsi
	callq _ZNSt10filesystem7__cxx118__detail17__effective_rangeIA2_cEEDaRKT_
	# SetupCalls(366:3): move large result from %rax
	# Multireg move: <%hax %hdx> -> <%hr13 %hr14>
	movq %rax, %r13
	movq %rdx, %r14
	# Unclobber rdx
	movq -90(%rbp), %rdx
	# Unclobber rsi
	movq -82(%rbp), %rsi
	# Unclobber rdi
	movq -74(%rbp), %rdi
	movq %rbx, %rcx
	# LowerGetelementptr(368:3): struct-type: {i64, i8*}* -> ^15, indices=0,0
	movq %rcx, %rdx
	# LowerExtractvalue(370:3)
	# PaddedStructs(out = i64): move from pack
	movq %r13, %rsi
	movq %rsi, %rax
	# LowerMemory.S9: mov ^16, (^15)
	movq %rax, (%rdx)
	jmp .___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M56
	.___ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE__M56:
	# LowerGetelementptr(371:3): struct-type: {i64, i8*}* -> ^17, indices=0,1
	movq %rcx, %rax
	addq $8, %rax
	# LowerExtractvalue(373:3)
	# PaddedStructs(out = i8*): move from pack
	movq %r14, %rdx
	movq %rdx, %rcx
	# LowerMemory.S9: mov ^18, (^17)
	movq %rcx, (%rax)
	# Clobber rcx
	movq %rcx, -98(%rbp)
	movq %rbx, %rsi
	callq _ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaRKT_
	# SetupCalls(374:3): move large result from %rax
	# Multireg move: <%hax %hdx> -> <%hbx %hr13>
	movq %rax, %rbx
	movq %rdx, %r13
	# Unclobber rcx
	movq -98(%rbp), %rcx
	movq %r12, %rax
	# LowerGetelementptr(376:3): struct-type: {i64, i8*}* -> ^21, indices=0,0
	movq %rax, %rcx
	# LowerExtractvalue(378:3)
	# PaddedStructs(out = i64): move from pack
	movq %rbx, %rsi
	movq %rsi, %rdx
	# LowerMemory.S9: mov ^22, (^21)
	movq %rdx, (%rcx)
	# LowerGetelementptr(379:3): struct-type: {i64, i8*}* -> ^23, indices=0,1
	movq %rax, %rcx
	addq $8, %rcx
	# LowerExtractvalue(381:3)
	# PaddedStructs(out = i8*): move from pack
	movq %r13, %rdx
	movq %rdx, %rax
	# LowerMemory.S9: mov ^24, (^23)
	movq %rax, (%rcx)
	# Clobber rcx
	movq %rcx, -98(%rbp)
	movq -66(%rbp), %rdi
	callq _ZNSaIcEC1Ev
	# Unclobber rcx
	movq -98(%rbp), %rcx
	# Clobber rcx
	movq %rcx, -98(%rbp)
	movq %r15, %rdi
	movq %r12, %rsi
	movq -66(%rbp), %rdx
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_
	# Unclobber rcx
	movq -98(%rbp), %rcx
	# Clobber rcx
	movq %rcx, -98(%rbp)
	movq -66(%rbp), %rdi
	callq _ZNSaIcED1Ev
	# Unclobber rcx
	movq -98(%rbp), %rcx
	# LowerGetelementptr(385:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^25, indices=0,1
	movq -58(%rbp), %rax
	addq $32, %rax
	# Clobber rcx
	movq %rcx, -98(%rbp)
	movq %rax, %rdi
	callq _ZNSt10filesystem7__cxx114path5_ListC1Ev
	# Unclobber rcx
	movq -98(%rbp), %rcx
	# Clobber rcx
	movq %rcx, -98(%rbp)
	movq -58(%rbp), %rdi
	callq _ZNSt10filesystem7__cxx114path14_M_split_cmptsEv
	# Unclobber rcx
	movq -98(%rbp), %rcx
	movq -122(%rbp), %r15
	movq -138(%rbp), %r14
	movq -130(%rbp), %r13
	movq -106(%rbp), %r12
	movq -114(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_
.p2align 4, 0x90
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_:
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(120 + 0, 16)
	subq $128, %rsp
	movq %rbx, -96(%rbp)
	movq %r12, -88(%rbp)
	movq %r13, -80(%rbp)
	movq %r14, -104(%rbp)
	movq %r15, -112(%rbp)
	# LowerAlloca(2269:3): size=8, type=%"class.std::__cxx11::basic_string"**, var=^5
	leaq -8(%rbp), %rcx
	# LowerAlloca(2270:3): size=8, type=i8**, var=^6
	leaq -16(%rbp), %r13
	# LowerAlloca(2271:3): size=8, type=i64*, var=^7
	leaq -24(%rbp), %r12
	# LowerAlloca(2272:3): size=8, type=%"class.std::allocator"**, var=^8
	leaq -32(%rbp), %rbx
	# LowerMemory.S9: mov %rdi, (^5)
	movq %rdi, (%rcx)
	# LowerMemory.S9: mov %rsi, (^6)
	movq %rsi, (%r13)
	# LowerMemory.S9: mov %rdx, (^7)
	movq %rdx, (%r12)
	# LowerMemory.S9: mov %rcx, (^8)
	movq %rcx, (%rbx)
	# LowerMemory(load @ 2277:3): L2 (^5) into ^9
	movq (%rcx), %rax
	movq %rax, -40(%rbp)
	# LowerGetelementptr(2278:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^10, indices=0,0
	movq -40(%rbp), %r14
	# Clobber rdi
	movq %rdi, -48(%rbp)
	# Clobber rsi
	movq %rsi, -56(%rbp)
	# Clobber rdx
	movq %rdx, -64(%rbp)
	# Clobber rcx
	movq %rcx, -72(%rbp)
	movq -40(%rbp), %rdi
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	# SetupCalls(2279:3: move result from %rax
	movq %rax, %r15
	# Unclobber rcx
	movq -72(%rbp), %rcx
	# Unclobber rdx
	movq -64(%rbp), %rdx
	# Unclobber rsi
	movq -56(%rbp), %rsi
	# Unclobber rdi
	movq -48(%rbp), %rdi
	# LowerMemory(load @ 2280:3): L2 (^8) into ^12
	movq (%rbx), %rax
	# Clobber rdi
	movq %rdi, -48(%rbp)
	# Clobber rsi
	movq %rsi, -56(%rbp)
	# Clobber rdx
	movq %rdx, -64(%rbp)
	# Clobber rcx
	movq %rcx, -72(%rbp)
	movq %r14, %rdi
	movq %r15, %rsi
	movq %rax, %rdx
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_
	# Unclobber rcx
	movq -72(%rbp), %rcx
	# Unclobber rdx
	movq -64(%rbp), %rdx
	# Unclobber rsi
	movq -56(%rbp), %rsi
	# Unclobber rdi
	movq -48(%rbp), %rdi
	# LowerMemory(load @ 2282:3): L2 (^6) into ^13
	movq (%r13), %rax
	# LowerMemory(load @ 2283:3): L2 (^6) into ^14
	movq (%r13), %rcx
	# LowerMemory(load @ 2284:3): L2 (^7) into ^15
	movq (%r12), %rdx
	# LowerGetelementptr(2285:3): pointer-type -> ^16
	movq %rdx, %rbx
	addq %rcx, %rbx
	# Clobber rdi
	movq %rdi, -48(%rbp)
	# Clobber rsi
	movq %rsi, -56(%rbp)
	# Clobber rdx
	movq %rdx, -64(%rbp)
	# Clobber rcx
	movq %rcx, -72(%rbp)
	movq -40(%rbp), %rdi
	movq %rax, %rsi
	movq %rbx, %rdx
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_
	# Unclobber rcx
	movq -72(%rbp), %rcx
	# Unclobber rdx
	movq -64(%rbp), %rdx
	# Unclobber rsi
	movq -56(%rbp), %rsi
	# Unclobber rdi
	movq -48(%rbp), %rdi
	movq -112(%rbp), %r15
	movq -104(%rbp), %r14
	movq -80(%rbp), %r13
	movq -88(%rbp), %r12
	movq -96(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE
.p2align 4, 0x90
_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE:
	.___ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(32 + 0, 16)
	subq $32, %rsp
	movq %rbx, -32(%rbp)
	# LowerAlloca(405:3): size=8, type=i8**, var=^3
	leaq -8(%rbp), %rbx
	movq %rdi, %rax
	# LowerMemory.S9: mov ^4, (^3)
	movq %rax, (%rbx)
	# Clobber rdi
	movq %rdi, -16(%rbp)
	# Clobber rsi
	movq %rsi, -24(%rbp)
	movq %rdi, %rdi
	movq %rsi, %rsi
	callq _ZNSt10filesystem7__cxx1118directory_iteratorC2EOS1_
	# Unclobber rsi
	movq -24(%rbp), %rsi
	# Unclobber rdi
	movq -16(%rbp), %rdi
	movq -32(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_
.p2align 4, 0x90
_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_:
	.___ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(48 + 0, 16)
	subq $48, %rsp
	movq %rbx, -40(%rbp)
	# LowerAlloca(414:3): size=8, type=%"class.std::filesystem::__cxx11::directory_iterator"**, var=^3
	leaq -8(%rbp), %rbx
	# LowerAlloca(415:3): size=8, type=%"class.std::filesystem::__cxx11::directory_iterator"**, var=^4
	leaq -16(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^3)
	movq %rdi, (%rbx)
	# LowerMemory.S9: mov %rsi, (^4)
	movq %rsi, (%rax)
	# LowerMemory(load @ 418:3): L2 (^3) into ^5
	movq (%rbx), %rdx
	# LowerGetelementptr(419:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^6, indices=0,0
	movq %rdx, %rcx
	# LowerMemory(load @ 420:3): L2 (^4) into ^7
	movq (%rax), %rbx
	# LowerGetelementptr(421:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^8, indices=0,0
	movq %rbx, %rax
	# Clobber rdi
	movq %rdi, -24(%rbp)
	# Clobber rsi
	movq %rsi, -32(%rbp)
	movq %rcx, %rdi
	movq %rax, %rsi
	callq _ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC2ERKS5_
	# Unclobber rsi
	movq -32(%rbp), %rsi
	# Unclobber rdi
	movq -24(%rbp), %rdi
	movq -40(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE
.p2align 4, 0x90
_ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE:
	.___ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(24 + 0, 16)
	subq $32, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(438:3): size=8, type=i8**, var=^3
	leaq -8(%rbp), %rbx
	movq %rdi, %rax
	# LowerMemory.S9: mov ^4, (^3)
	movq %rax, (%rbx)
	movq %rdi, %rax
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %rax, %rdi
	movq $0, %rsi
	movq $16, %rdx
	callq memset@PLT
	# Unclobber rdi
	movq -16(%rbp), %rdi
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %rdi, %rdi
	callq _ZNSt10filesystem7__cxx1118directory_iteratorC2Ev
	# Unclobber rdi
	movq -16(%rbp), %rdi
	movq -24(%rbp), %rbx
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
	# upalign(169 + 0, 16)
	subq $176, %rsp
	movq %rbx, -129(%rbp)
	movq %r13, -121(%rbp)
	movq %r14, -145(%rbp)
	movq %r15, -161(%rbp)
	# LowerAlloca(467:3): size=8, type=%"class.std::basic_ostream"**, var=^3
	leaq -8(%rbp), %rax
	movq %rax, -81(%rbp)
	# LowerAlloca(468:3): size=8, type=%"class.std::filesystem::__cxx11::path"**, var=^4
	leaq -16(%rbp), %rax
	# LowerAlloca(469:3): size=24, type=%"struct.std::__detail::_Quoted_string"*, var=^5
	leaq -40(%rbp), %r13
	# LowerAlloca(470:3): size=32, type=%"class.std::__cxx11::basic_string"*, var=^6
	leaq -72(%rbp), %rbx
	movq %rbx, -97(%rbp)
	# LowerAlloca(471:3): size=1, type=%"class.std::allocator"*, var=^7
	leaq -73(%rbp), %rbx
	movq %rbx, -89(%rbp)
	# LowerMemory.S9: mov %rdi, (^3)
	movq -81(%rbp), %rbx
	movq %rdi, (%rbx)
	# LowerMemory.S9: mov %rsi, (^4)
	movq %rsi, (%rax)
	# LowerMemory(load @ 474:3): L2 (^3) into ^8
	movq -81(%rbp), %rcx
	movq (%rcx), %rbx
	# LowerMemory(load @ 475:3): L2 (^4) into ^9
	movq (%rax), %r14
	# Clobber rdi
	movq %rdi, -105(%rbp)
	# Clobber rsi
	movq %rsi, -113(%rbp)
	movq -89(%rbp), %rdi
	callq _ZNSaIcEC1Ev
	# Unclobber rsi
	movq -113(%rbp), %rsi
	# Unclobber rdi
	movq -105(%rbp), %rdi
	# Clobber rdi
	movq %rdi, -105(%rbp)
	# Clobber rsi
	movq %rsi, -113(%rbp)
	movq -97(%rbp), %rdi
	movq %r14, %rsi
	movq -89(%rbp), %rdx
	callq _ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_
	# Unclobber rsi
	movq -113(%rbp), %rsi
	# Unclobber rdi
	movq -105(%rbp), %rdi
	# Clobber rdi
	movq %rdi, -105(%rbp)
	# Clobber rsi
	movq %rsi, -113(%rbp)
	movq -97(%rbp), %rsi
	movq $34, %rdx
	movsbq %dl, %rdx
	movq $92, %rcx
	movsbq %cl, %rcx
	callq _ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_
	# SetupCalls(478:3): move large result from %rax
	# Multireg move: <%hax %hdx> -> <%hr14 %hr15>
	movq %rax, %r14
	movq %rdx, %r15
	# Unclobber rsi
	movq -113(%rbp), %rsi
	# Unclobber rdi
	movq -105(%rbp), %rdi
	movq %r13, %rcx
	# LowerGetelementptr(480:3): struct-type: {%"class.std::__cxx11::basic_string"*, i64}* -> ^12, indices=0,0
	movq %rcx, %rdx
	# LowerExtractvalue(482:3)
	# PaddedStructs(out = %"class.std::__cxx11::basic_string"*): move from pack
	movq %r14, %rsi
	movq %rsi, %rax
	# LowerMemory.S9: mov ^13, (^12)
	movq %rax, (%rdx)
	# LowerGetelementptr(483:3): struct-type: {%"class.std::__cxx11::basic_string"*, i64}* -> ^14, indices=0,1
	movq %rcx, %rax
	addq $8, %rax
	# LowerExtractvalue(485:3)
	# PaddedStructs(out = i64): move from pack
	movq %r15, %rdx
	movq %rdx, %rcx
	# LowerMemory.S9: mov ^15, (^14)
	movq %rcx, (%rax)
	jmp .___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M105
	.___ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE__M105:
	movq %rbx, %rdi
	movq %r13, %rsi
	callq _ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE
	# SetupCalls(486:3: move result from %rax
	movq %rax, %rax
	movq -97(%rbp), %rdi
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev
	movq -89(%rbp), %rdi
	callq _ZNSaIcED1Ev
	# LowerMemory(load @ 489:3): L2 (^3) into ^17
	movq -81(%rbp), %rbx
	movq (%rbx), %rax
	movq -161(%rbp), %r15
	movq -145(%rbp), %r14
	movq -121(%rbp), %r13
	movq -129(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt10filesystem7__cxx11neERKNS0_18directory_iteratorES3_
.p2align 4, 0x90
_ZNSt10filesystem7__cxx11neERKNS0_18directory_iteratorES3_:
	.___ZNSt10filesystem7__cxx11neERKNS0_18directory_iteratorES3___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(56 + 0, 16)
	subq $64, %rsp
	movq %rbx, -40(%rbp)
	# LowerAlloca(449:3): size=8, type=%"class.std::filesystem::__cxx11::directory_iterator"**, var=^3
	leaq -8(%rbp), %rbx
	# LowerAlloca(450:3): size=8, type=%"class.std::filesystem::__cxx11::directory_iterator"**, var=^4
	leaq -16(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^3)
	movq %rdi, (%rbx)
	# LowerMemory.S9: mov %rsi, (^4)
	movq %rsi, (%rax)
	# LowerMemory(load @ 453:3): L2 (^3) into ^5
	movq (%rbx), %rcx
	# LowerMemory(load @ 454:3): L2 (^4) into ^6
	movq (%rax), %rbx
	# Clobber rdi
	movq %rdi, -24(%rbp)
	# Clobber rsi
	movq %rsi, -32(%rbp)
	movq %rcx, %rdi
	movq %rbx, %rsi
	callq _ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3_
	# SetupCalls(455:3: move result from %rax
	movb %al, %bl
	# Unclobber rsi
	movq -32(%rbp), %rsi
	# Unclobber rdi
	movq -24(%rbp), %rdi
	movb %bl, %al
	xorb $1, %al
	movq -40(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNKSt10filesystem7__cxx1115directory_entry4pathEv
.p2align 4, 0x90
_ZNKSt10filesystem7__cxx1115directory_entry4pathEv:
	.___ZNKSt10filesystem7__cxx1115directory_entry4pathEv__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(16 + 0, 16)
	subq $16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(499:3): size=8, type=%"class.std::filesystem::__cxx11::directory_entry"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 501:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# LowerGetelementptr(502:3): struct-type: %"class.std::filesystem::__cxx11::directory_entry"* -> ^4, indices=0,0
	movq %rbx, %rax
	movq -16(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaRKT_
.p2align 4, 0x90
_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaRKT_:
	.___ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaRKT___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(64 + 0, 16)
	subq $64, %rsp
	movq %rbx, -48(%rbp)
	movq %r12, -40(%rbp)
	# LowerAlloca(1222:3): size=16, type=%"class.std::basic_string_view"*, var=^2
	leaq -16(%rbp), %r12
	# LowerAlloca(1223:3): size=8, type=%"class.std::basic_string_view"**, var=^3
	leaq -24(%rbp), %rbx
	# LowerMemory.S9: mov %rdi, (^3)
	movq %rdi, (%rbx)
	# LowerMemory(load @ 1225:3): L2 (^3) into ^4
	movq (%rbx), %rax
	movq %r12, %rcx
	movq %rax, %rbx
	# Clobber rdi
	movq %rdi, -32(%rbp)
	movq %rcx, %rdi
	movq %rbx, %rsi
	movq $16, %rdx
	callq memcpy@PLT
	# Unclobber rdi
	movq -32(%rbp), %rdi
	movq %r12, %rcx
	# LowerMemory(load @ 1230:3): L2 (^7) into ^8
	# FinishMultireg: mov (%reg), <%pack...>
	movq (%rcx), %rax
	movq 8(%rcx), %rbx
	# LowerRet: two-register return
	movq %rax, %rax
	movq %rbx, %rdx
	movq -40(%rbp), %r12
	movq -48(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm
.p2align 4, 0x90
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm:
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(32 + 0, 16)
	subq $32, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(1725:3): size=8, type=%"class.std::__cxx11::basic_string"**, var=^3
	leaq -8(%rbp), %rbx
	# LowerAlloca(1726:3): size=8, type=i64*, var=^4
	leaq -16(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^3)
	movq %rdi, (%rbx)
	# LowerMemory.S9: mov %rsi, (^4)
	movq %rsi, (%rax)
	# LowerMemory(load @ 1729:3): L2 (^3) into ^5
	movq (%rbx), %rdx
	# LowerMemory(load @ 1730:3): L2 (^4) into ^6
	movq (%rax), %rcx
	# LowerGetelementptr(1731:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^7, indices=0,2
	movq %rdx, %rbx
	addq $16, %rbx
	movq %rbx, %rax
	# LowerMemory.S9: mov ^6, (^8)
	movq %rcx, (%rax)
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt10filesystem7__cxx1118directory_iteratorD2Ev
.p2align 4, 0x90
_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev:
	.___ZNSt10filesystem7__cxx1118directory_iteratorD2Ev__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(24 + 0, 16)
	subq $32, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(428:3): size=8, type=%"class.std::filesystem::__cxx11::directory_iterator"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 430:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# LowerGetelementptr(431:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^4, indices=0,0
	movq %rbx, %rax
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %rax, %rdi
	callq _ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EED2Ev
	# Unclobber rdi
	movq -16(%rbp), %rdi
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNKSt4lessIPSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEEclES4_S4_
.p2align 4, 0x90
_ZNKSt4lessIPSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEEclES4_S4_:
	.___ZNKSt4lessIPSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEEclES4_S4___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(40 + 0, 16)
	subq $48, %rsp
	movq %rbx, -32(%rbp)
	# LowerAlloca(878:3): size=8, type=%"struct.std::less"**, var=^4
	leaq -8(%rbp), %rax
	# LowerAlloca(879:3): size=8, type=%"class.std::_Sp_counted_base"**, var=^5
	leaq -16(%rbp), %rdx
	# LowerAlloca(880:3): size=8, type=%"class.std::_Sp_counted_base"**, var=^6
	leaq -24(%rbp), %rcx
	# LowerMemory.S9: mov %rdi, (^4)
	movq %rdi, (%rax)
	# LowerMemory.S9: mov %rsi, (^5)
	movq %rsi, (%rdx)
	# LowerMemory.S9: mov %rdx, (^6)
	movq %rdx, (%rcx)
	# LowerMemory(load @ 884:3): L2 (^4) into ^7
	movq (%rax), %rbx
	# LowerMemory(load @ 885:3): L2 (^5) into ^8
	movq (%rdx), %rax
	movq %rax, %rbx
	# LowerMemory(load @ 887:3): L2 (^6) into ^10
	movq (%rcx), %rax
	movq %rax, %rcx
	cmpq %rcx, %rbx
	setb %al
	movq -32(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt10filesystem7__cxx114pathD2Ev
.p2align 4, 0x90
_ZNSt10filesystem7__cxx114pathD2Ev:
	.___ZNSt10filesystem7__cxx114pathD2Ev__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(24 + 0, 16)
	subq $32, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(510:3): size=8, type=%"class.std::filesystem::__cxx11::path"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 512:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# LowerGetelementptr(513:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^4, indices=0,1
	movq %rbx, %rax
	addq $32, %rax
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %rax, %rdi
	callq _ZNSt10filesystem7__cxx114path5_ListD2Ev
	# Unclobber rdi
	movq -16(%rbp), %rdi
	# LowerGetelementptr(515:3): struct-type: %"class.std::filesystem::__cxx11::path"* -> ^5, indices=0,0
	movq %rbx, %rax
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %rax, %rdi
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev
	# Unclobber rdi
	movq -16(%rbp), %rdi
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv
.p2align 4, 0x90
_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv:
	.___ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(32 + 0, 16)
	subq $32, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(945:3): size=8, type=%"class.std::__uniq_ptr_impl"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 947:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# LowerGetelementptr(948:3): struct-type: %"class.std::__uniq_ptr_impl"* -> ^4, indices=0,0
	movq %rbx, %rax
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %rax, %rdi
	callq _ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
	# SetupCalls(949:3: move result from %rax
	movq %rax, %rbx
	# Unclobber rdi
	movq -16(%rbp), %rdi
	movq %rbx, %rax
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_
.p2align 4, 0x90
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_:
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(184 + 0, 16)
	subq $192, %rsp
	movq %rbx, -144(%rbp)
	movq %r12, -136(%rbp)
	movq %r13, -128(%rbp)
	movq %r14, -152(%rbp)
	movq %r15, -168(%rbp)
	# LowerAlloca(1252:3): size=8, type=%"class.std::__cxx11::basic_string"**, var=^4
	leaq -8(%rbp), %rax
	# LowerAlloca(1253:3): size=8, type=%"class.std::basic_string_view"**, var=^5
	leaq -16(%rbp), %rdx
	# LowerAlloca(1254:3): size=8, type=%"class.std::allocator"**, var=^6
	leaq -24(%rbp), %r13
	# LowerAlloca(1255:3): size=16, type=%"struct.std::__cxx11::basic_string<char>::__sv_wrapper"*, var=^7
	leaq -40(%rbp), %r12
	# LowerAlloca(1256:3): size=16, type=%"class.std::basic_string_view"*, var=^8
	leaq -56(%rbp), %rbx
	# LowerAlloca(1257:3): size=16, type=%"class.std::basic_string_view"*, var=^9
	leaq -72(%rbp), %r14
	# LowerMemory.S9: mov %rdi, (^4)
	movq %rdi, (%rax)
	# LowerMemory.S9: mov %rsi, (^5)
	movq %rsi, (%rdx)
	# LowerMemory.S9: mov %rdx, (^6)
	movq %rdx, (%r13)
	# LowerMemory(load @ 1261:3): L2 (^4) into ^10
	movq (%rax), %rcx
	movq %rcx, -80(%rbp)
	# LowerMemory(load @ 1262:3): L2 (^5) into ^11
	movq (%rdx), %rcx
	movq %r14, %rdx
	movq %rcx, %rax
	# Clobber rdi
	movq %rdi, -88(%rbp)
	# Clobber rsi
	movq %rsi, -96(%rbp)
	# Clobber rdx
	movq %rdx, -104(%rbp)
	movq %rdx, %rdi
	movq %rax, %rsi
	movq $16, %rdx
	callq memcpy@PLT
	# Unclobber rdx
	movq -104(%rbp), %rdx
	# Unclobber rsi
	movq -96(%rbp), %rsi
	# Unclobber rdi
	movq -88(%rbp), %rdi
	movq %r14, %rcx
	# LowerGetelementptr(1267:3): struct-type: {i64, i8*}* -> ^15, indices=0,0
	movq %rcx, %rdx
	# LowerMemory(load @ 1268:3): L2 (^15) into ^16
	movq (%rdx), %rax
	# LowerGetelementptr(1269:3): struct-type: {i64, i8*}* -> ^17, indices=0,1
	movq %rcx, %rdx
	addq $8, %rdx
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3___M55
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3___M55:
	# LowerMemory(load @ 1270:3): L2 (^17) into ^18
	movq (%rdx), %rcx
	# Clobber rdx
	movq %rdx, -104(%rbp)
	# Clobber rax
	movq %rax, -112(%rbp)
	movq %rax, %rsi
	movq %rcx, %rdx
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17_S_to_string_viewESt17basic_string_viewIcS2_E
	# SetupCalls(1271:3): move large result from %rax
	# Multireg move: <%hax %hdx> -> <%hr14 %hr15>
	movq %rax, %r14
	movq %rdx, %r15
	# Unclobber rax
	movq -112(%rbp), %rax
	# Unclobber rdx
	movq -104(%rbp), %rdx
	movq %rbx, %rax
	# LowerGetelementptr(1273:3): struct-type: {i64, i8*}* -> ^21, indices=0,0
	movq %rax, %rcx
	# LowerExtractvalue(1275:3)
	# PaddedStructs(out = i64): move from pack
	movq %r14, %rsi
	movq %rsi, %rdx
	# LowerMemory.S9: mov ^22, (^21)
	movq %rdx, (%rcx)
	# LowerGetelementptr(1276:3): struct-type: {i64, i8*}* -> ^23, indices=0,1
	movq %rax, %rcx
	addq $8, %rcx
	# LowerExtractvalue(1278:3)
	# PaddedStructs(out = i8*): move from pack
	movq %r15, %rdx
	movq %rdx, %rax
	# LowerMemory.S9: mov ^24, (^23)
	movq %rax, (%rcx)
	movq %rbx, %rcx
	# LowerGetelementptr(1280:3): struct-type: {i64, i8*}* -> ^26, indices=0,0
	movq %rcx, %rax
	# LowerMemory(load @ 1281:3): L2 (^26) into ^27
	movq (%rax), %rbx
	# LowerGetelementptr(1282:3): struct-type: {i64, i8*}* -> ^28, indices=0,1
	movq %rcx, %rax
	addq $8, %rax
	# LowerMemory(load @ 1283:3): L2 (^28) into ^29
	movq (%rax), %rcx
	# Clobber rdx
	movq %rdx, -104(%rbp)
	# Clobber rax
	movq %rax, -112(%rbp)
	movq %r12, %rdi
	movq %rbx, %rsi
	movq %rcx, %rdx
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperC2ESt17basic_string_viewIcS2_E
	# Unclobber rax
	movq -112(%rbp), %rax
	# Unclobber rdx
	movq -104(%rbp), %rdx
	# LowerMemory(load @ 1285:3): L2 (^6) into ^30
	movq (%r13), %rbx
	jmp .___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3___M133
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3___M133:
	movq %r12, %rcx
	# LowerGetelementptr(1287:3): struct-type: {i64, i8*}* -> ^32, indices=0,0
	movq %rcx, %rax
	# LowerMemory(load @ 1288:3): L2 (^32) into ^33
	movq (%rax), %rdx
	# LowerGetelementptr(1289:3): struct-type: {i64, i8*}* -> ^34, indices=0,1
	movq %rcx, %rax
	addq $8, %rax
	# LowerMemory(load @ 1290:3): L2 (^34) into ^35
	movq (%rax), %rcx
	# Clobber rcx
	movq %rcx, -120(%rbp)
	movq -80(%rbp), %rdi
	movq %rdx, %rsi
	movq %rcx, %rdx
	movq %rbx, %rcx
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_
	# Unclobber rcx
	movq -120(%rbp), %rcx
	movq -168(%rbp), %r15
	movq -152(%rbp), %r14
	movq -128(%rbp), %r13
	movq -136(%rbp), %r12
	movq -144(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
.p2align 4, 0x90
_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_:
	.___ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(32 + 0, 16)
	subq $32, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(977:3): size=8, type=%"class.std::tuple"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 979:3): L2 (^2) into ^3
	movq (%rax), %rbx
	movq %rbx, %rax
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %rax, %rdi
	callq _ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE
	# SetupCalls(981:3: move result from %rax
	movq %rax, %rbx
	# Unclobber rdi
	movq -16(%rbp), %rdi
	movq %rbx, %rax
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_
.p2align 4, 0x90
_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_:
	.___ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(32 + 0, 16)
	subq $32, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(996:3): size=8, type=%"struct.std::_Tuple_impl"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 998:3): L2 (^2) into ^3
	movq (%rax), %rbx
	movq %rbx, %rax
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %rax, %rdi
	callq _ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_
	# SetupCalls(1000:3: move result from %rax
	movq %rax, %rbx
	# Unclobber rdi
	movq -16(%rbp), %rdi
	movq %rbx, %rax
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv
.p2align 4, 0x90
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv:
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(84 + 0, 16)
	subq $96, %rsp
	movq %rbx, -60(%rbp)
	# LowerAlloca(590:3): size=8, type=i32**, var=^2
	leaq -8(%rbp), %rdi
	# LowerAlloca(591:3): size=4, type=i32*, var=^3
	leaq -12(%rbp), %r8
	# LowerAlloca(592:3): size=4, type=i32*, var=^4
	leaq -16(%rbp), %rbx
	# LowerAlloca(593:3): size=4, type=i32*, var=^5
	leaq -20(%rbp), %r9
	# LowerAlloca(594:3): size=8, type=i32**, var=^6
	leaq -28(%rbp), %rdx
	# LowerAlloca(595:3): size=4, type=i32*, var=^7
	leaq -32(%rbp), %rcx
	# LowerAlloca(596:3): size=8, type=i32**, var=^8
	leaq -40(%rbp), %rax
	# LowerAlloca(597:3): size=4, type=i32*, var=^9
	leaq -44(%rbp), %r10
	# LowerAlloca(598:3): size=8, type=%"class.std::_Sp_counted_base"**, var=^10
	leaq -52(%rbp), %rsi
	# LowerMemory.S9: mov %rdi, (^10)
	movq %rdi, (%rsi)
	# LowerMemory(load @ 600:3): L2 (^10) into ^11
	movq (%rsi), %r11
	# LowerGetelementptr(601:3): struct-type: %"class.std::_Sp_counted_base"* -> ^12, indices=0,1
	movq %r11, %rsi
	addq $8, %rsi
	# LowerMemory.S9: mov ^12, (^8)
	movq %rsi, (%rax)
	# LowerMemory.S3: mov $imm, ^9
	movl $1, (%r10)
	# LowerMemory(load @ 604:3): L4 __libc_single_threaded into ^13
	movb __libc_single_threaded@GOTPCREL(%rip), %sil
	cmpb $0, %sil
	setne %sil
	cmpb $0, %sil
	jne .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv__M34
	jmp .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv__M53
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv__M34:
	# LowerMemory(load @ 609:3): L2 (^8) into ^16
	movq (%rax), %rbx
	# LowerMemory(load @ 610:3): L2 (^9) into ^17
	movl (%r10), %eax
	# LowerMemory.S9: mov ^16, (^6)
	movq %rbx, (%rdx)
	# LowerMemory.S9: mov ^17, (^7)
	movl %eax, (%rcx)
	# LowerMemory(load @ 613:3): L2 (^7) into ^18
	movl (%rcx), %eax
	# LowerMemory(load @ 614:3): L2 (^6) into ^19
	movq (%rdx), %rbx
	# LowerMemory(load @ 615:3): L2 (^19) into ^20
	movl (%rbx), %ecx
	movl %ecx, %edx
	addl %eax, %edx
	# LowerMemory.S9: mov ^21, (^19)
	movl %edx, (%rbx)
	jmp .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv__M76
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv__M53:
	# LowerMemory(load @ 621:3): L2 (^8) into ^23
	movq (%rax), %rcx
	# LowerMemory(load @ 622:3): L2 (^9) into ^24
	movl (%r10), %eax
	# LowerMemory.S9: mov ^23, (^2)
	movq %rcx, (%rdi)
	# LowerMemory.S9: mov ^24, (^3)
	movl %eax, (%r8)
	# LowerMemory(load @ 625:3): L2 (^2) into ^25
	movq (%rdi), %rcx
	# LowerMemory(load @ 626:3): L2 (^3) into ^26
	movl (%r8), %eax
	# LowerMemory.S9: mov ^26, (^4)
	movl %eax, (%rbx)
	# LowerMemory(load @ 628:3): L2 (^4) into ^27
	movl (%rbx), %eax
	movl %eax, %ebx
	lock addl %ebx, (%rcx)
	# LowerMemory.S9: mov ^28, (^5)
	movl %ebx, (%r9)
	# LowerMemory(load @ 631:3): L2 (^5) into ^29
	movl (%r9), %eax
	jmp .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv__M76
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv__M76:
	movq -60(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv
.p2align 4, 0x90
_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv:
	.___ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(32 + 0, 16)
	subq $32, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(1015:3): size=8, type=%"class.std::__uniq_ptr_impl"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 1017:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# LowerGetelementptr(1018:3): struct-type: %"class.std::__uniq_ptr_impl"* -> ^4, indices=0,0
	movq %rbx, %rax
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %rax, %rdi
	callq _ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
	# SetupCalls(1019:3: move result from %rax
	movq %rax, %rbx
	# Unclobber rdi
	movq -16(%rbp), %rdi
	movq %rbx, %rax
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
.p2align 4, 0x90
_ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_:
	.___ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(32 + 0, 16)
	subq $32, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(1025:3): size=8, type=%"class.std::tuple"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 1027:3): L2 (^2) into ^3
	movq (%rax), %rbx
	movq %rbx, %rax
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %rax, %rdi
	callq _ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE
	# SetupCalls(1029:3: move result from %rax
	movq %rax, %rbx
	# Unclobber rdi
	movq -16(%rbp), %rdi
	movq %rbx, %rax
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv
.p2align 4, 0x90
_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv:
	.___ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(16 + 0, 16)
	subq $16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(2218:3): size=8, type=%"class.__gnu_cxx::__normal_iterator"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 2220:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# LowerGetelementptr(2221:3): struct-type: %"class.__gnu_cxx::__normal_iterator"* -> ^4, indices=0,0
	movq %rbx, %rax
	movq -16(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE
.p2align 4, 0x90
_ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE:
	.___ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(32 + 0, 16)
	subq $32, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(1035:3): size=8, type=%"struct.std::_Tuple_impl.0"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 1037:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %rbx, %rdi
	callq _ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_
	# SetupCalls(1038:3: move result from %rax
	movq %rax, %rbx
	# Unclobber rdi
	movq -16(%rbp), %rdi
	movq %rbx, %rax
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm
.p2align 4, 0x90
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm:
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(65 + 0, 16)
	subq $80, %rsp
	movq %rbx, -57(%rbp)
	movq %r12, -41(%rbp)
	movq %r13, -49(%rbp)
	# LowerAlloca(1758:3): size=8, type=%"class.std::__cxx11::basic_string"**, var=^3
	leaq -8(%rbp), %rax
	# LowerAlloca(1759:3): size=8, type=i64*, var=^4
	leaq -16(%rbp), %r12
	# LowerAlloca(1760:3): size=1, type=i8*, var=^5
	leaq -17(%rbp), %r13
	# LowerMemory.S9: mov %rdi, (^3)
	movq %rdi, (%rax)
	# LowerMemory.S9: mov %rsi, (^4)
	movq %rsi, (%r12)
	# LowerMemory(load @ 1763:3): L2 (^3) into ^6
	movq (%rax), %rbx
	# LowerMemory(load @ 1764:3): L2 (^4) into ^7
	movq (%r12), %rax
	# Clobber rdi
	movq %rdi, -25(%rbp)
	# Clobber rsi
	movq %rsi, -33(%rbp)
	movq %rbx, %rdi
	movq %rax, %rsi
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm
	# Unclobber rsi
	movq -33(%rbp), %rsi
	# Unclobber rdi
	movq -25(%rbp), %rdi
	# Clobber rdi
	movq %rdi, -25(%rbp)
	# Clobber rsi
	movq %rsi, -33(%rbp)
	movq %rbx, %rdi
	callq _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	# SetupCalls(1766:3: move result from %rax
	movq %rax, %rbx
	# Unclobber rsi
	movq -33(%rbp), %rsi
	# Unclobber rdi
	movq -25(%rbp), %rdi
	# LowerMemory(load @ 1767:3): L2 (^4) into ^9
	movq (%r12), %rax
	# LowerGetelementptr(1768:3): pointer-type -> ^10
	movq %rax, %rcx
	addq %rbx, %rcx
	# LowerMemory.S3: mov $imm, ^5
	movb $0, (%r13)
	# Clobber rdi
	movq %rdi, -25(%rbp)
	# Clobber rsi
	movq %rsi, -33(%rbp)
	movq %rcx, %rdi
	movq %r13, %rsi
	callq _ZNSt11char_traitsIcE6assignERcRKc
	# Unclobber rsi
	movq -33(%rbp), %rsi
	# Unclobber rdi
	movq -25(%rbp), %rdi
	movq -49(%rbp), %r13
	movq -41(%rbp), %r12
	movq -57(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_
.p2align 4, 0x90
_ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_:
	.___ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(32 + 0, 16)
	subq $32, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(1044:3): size=8, type=%"struct.std::_Tuple_impl.0"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 1046:3): L2 (^2) into ^3
	movq (%rax), %rbx
	movq %rbx, %rax
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %rax, %rdi
	callq _ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_
	# SetupCalls(1048:3: move result from %rax
	movq %rax, %rbx
	# Unclobber rdi
	movq -16(%rbp), %rdi
	movq %rbx, %rax
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC2ES8_cc
.p2align 4, 0x90
_ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC2ES8_cc:
	.___ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC2ES8_cc__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(34 + 0, 16)
	subq $48, %rsp
	movq %rbx, -26(%rbp)
	# LowerAlloca(2227:3): size=8, type=%"struct.std::__detail::_Quoted_string"**, var=^5
	leaq -8(%rbp), %rdx
	# LowerAlloca(2228:3): size=8, type=%"class.std::__cxx11::basic_string"**, var=^6
	leaq -16(%rbp), %rcx
	# LowerAlloca(2229:3): size=1, type=i8*, var=^7
	leaq -17(%rbp), %rbx
	# LowerAlloca(2230:3): size=1, type=i8*, var=^8
	leaq -18(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^5)
	movq %rdi, (%rdx)
	# LowerMemory.S9: mov %rsi, (^6)
	movq %rsi, (%rcx)
	# LowerMemory.S9: mov %dl, (^7)
	movb %dl, (%rbx)
	# LowerMemory.S9: mov %cl, (^8)
	movb %cl, (%rax)
	# LowerMemory(load @ 2235:3): L2 (^5) into ^9
	movq (%rdx), %rsi
	# LowerGetelementptr(2236:3): struct-type: %"struct.std::__detail::_Quoted_string"* -> ^10, indices=0,0
	movq %rsi, %rdx
	# LowerMemory(load @ 2237:3): L2 (^6) into ^11
	movq (%rcx), %rdi
	# LowerMemory.S9: mov ^11, (^10)
	movq %rdi, (%rdx)
	# LowerGetelementptr(2239:3): struct-type: %"struct.std::__detail::_Quoted_string"* -> ^12, indices=0,1
	movq %rsi, %rdx
	addq $8, %rdx
	# LowerMemory(load @ 2240:3): L2 (^7) into ^13
	movb (%rbx), %cl
	# LowerMemory.S9: mov ^13, (^12)
	movb %cl, (%rdx)
	# LowerGetelementptr(2242:3): struct-type: %"struct.std::__detail::_Quoted_string"* -> ^14, indices=0,2
	movq %rsi, %rbx
	addq $9, %rbx
	# LowerMemory(load @ 2243:3): L2 (^8) into ^15
	movb (%rax), %cl
	# LowerMemory.S9: mov ^15, (^14)
	movb %cl, (%rbx)
	movq -26(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv
.p2align 4, 0x90
_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv:
	.___ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(16 + 0, 16)
	subq $16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(2175:3): size=8, type=%"class.__gnu_cxx::__normal_iterator"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 2177:3): L2 (^2) into ^3
	movq (%rax), %rcx
	# LowerGetelementptr(2178:3): struct-type: %"class.__gnu_cxx::__normal_iterator"* -> ^4, indices=0,0
	movq %rcx, %rax
	# LowerMemory(load @ 2179:3): L2 (^4) into ^5
	movq (%rax), %rdx
	# LowerGetelementptr(2180:3): struct-type: i8* -> ^6, indices=1
	movq %rdx, %rbx
	addq $1, %rbx
	# LowerMemory.S9: mov ^6, (^4)
	movq %rbx, (%rax)
	movq %rcx, %rax
	movq -16(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_
.p2align 4, 0x90
_ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_:
	.___ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(16 + 0, 16)
	subq $16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(1054:3): size=8, type=%"struct.std::_Head_base"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 1056:3): L2 (^2) into ^3
	movq (%rax), %rbx
	movq %rbx, %rax
	movq -16(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
.p2align 4, 0x90
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev:
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(24 + 0, 16)
	subq $32, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(1082:3): size=8, type=%"struct.std::__cxx11::basic_string<char>::_Alloc_hider"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 1084:3): L2 (^2) into ^3
	movq (%rax), %rbx
	movq %rbx, %rax
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %rax, %rdi
	callq _ZNSaIcED2Ev
	# Unclobber rdi
	movq -16(%rbp), %rdi
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZSt11__addressofIKcEPT_RS1_
.p2align 4, 0x90
_ZSt11__addressofIKcEPT_RS1_:
	.___ZSt11__addressofIKcEPT_RS1___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(16 + 0, 16)
	subq $16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(1159:3): size=8, type=i8**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 1161:3): L2 (^2) into ^3
	movq (%rax), %rbx
	movq %rbx, %rax
	movq -16(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt10filesystem7__cxx118__detail17__effective_rangeIA2_cEEDaRKT_
.p2align 4, 0x90
_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA2_cEEDaRKT_:
	.___ZNSt10filesystem7__cxx118__detail17__effective_rangeIA2_cEEDaRKT___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(48 + 0, 16)
	subq $48, %rsp
	movq %rbx, -40(%rbp)
	# LowerAlloca(1236:3): size=16, type=%"class.std::basic_string_view"*, var=^2
	leaq -16(%rbp), %rbx
	# LowerAlloca(1237:3): size=8, type=[2 x i8]**, var=^3
	leaq -24(%rbp), %rcx
	# LowerMemory.S9: mov %rdi, (^3)
	movq %rdi, (%rcx)
	# LowerMemory(load @ 1239:3): L2 (^3) into ^4
	movq (%rcx), %rax
	# LowerGetelementptr(1240:3): struct-type: [2 x i8]* -> ^5, indices=0,0
	movq %rax, %rcx
	# Clobber rdi
	movq %rdi, -32(%rbp)
	movq %rbx, %rdi
	movq %rcx, %rsi
	callq _ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc
	# Unclobber rdi
	movq -32(%rbp), %rdi
	movq %rbx, %rcx
	# LowerMemory(load @ 1243:3): L2 (^6) into ^7
	# FinishMultireg: mov (%reg), <%pack...>
	movq (%rcx), %rax
	movq 8(%rcx), %rbx
	# LowerRet: two-register return
	movq %rax, %rax
	movq %rbx, %rdx
	movq -40(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17_S_to_string_viewESt17basic_string_viewIcS2_E
.p2align 4, 0x90
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17_S_to_string_viewESt17basic_string_viewIcS2_E:
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17_S_to_string_viewESt17basic_string_viewIcS2_E__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(72 + 0, 16)
	subq $80, %rsp
	movq %rbx, -64(%rbp)
	movq %r12, -56(%rbp)
	# LowerAlloca(1399:3): size=16, type=%"class.std::basic_string_view"*, var=^3
	leaq -16(%rbp), %r12
	# LowerAlloca(1400:3): size=16, type=%"class.std::basic_string_view"*, var=^4
	leaq -32(%rbp), %rbx
	movq %rbx, %rcx
	# LowerGetelementptr(1402:3): struct-type: {i64, i8*}* -> ^6, indices=0,0
	movq %rcx, %rax
	# LowerMemory.S9: mov %rdi, (^6)
	movq %rdi, (%rax)
	# LowerGetelementptr(1404:3): struct-type: {i64, i8*}* -> ^7, indices=0,1
	movq %rcx, %rax
	addq $8, %rax
	# LowerMemory.S9: mov %rsi, (^7)
	movq %rsi, (%rax)
	movq %r12, %rax
	movq %rbx, %rcx
	# Clobber rdi
	movq %rdi, -40(%rbp)
	# Clobber rsi
	movq %rsi, -48(%rbp)
	movq %rax, %rdi
	movq %rcx, %rsi
	movq $16, %rdx
	callq memcpy@PLT
	# Unclobber rsi
	movq -48(%rbp), %rsi
	# Unclobber rdi
	movq -40(%rbp), %rdi
	movq %r12, %rax
	# LowerMemory(load @ 1410:3): L2 (^10) into ^11
	# FinishMultireg: mov (%reg), <%pack...>
	movq (%rax), %rbx
	movq 8(%rax), %rcx
	# LowerRet: two-register return
	movq %rbx, %rax
	movq %rcx, %rdx
	movq -56(%rbp), %r12
	movq -64(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv
.p2align 4, 0x90
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv:
	.___ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(40 + 0, 16)
	subq $48, %rsp
	movq %rbx, -32(%rbp)
	movq %r12, -24(%rbp)
	# LowerAlloca(1092:3): size=8, type=%"class.std::__cxx11::basic_string"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 1094:3): L2 (^2) into ^3
	movq (%rax), %r12
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %r12, %rdi
	callq _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	# SetupCalls(1095:3: move result from %rax
	movq %rax, %rbx
	# Unclobber rdi
	movq -16(%rbp), %rdi
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %r12, %rdi
	callq _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
	# SetupCalls(1096:3: move result from %rax
	movq %rax, %r12
	# Unclobber rdi
	movq -16(%rbp), %rdi
	cmpq %r12, %rbx
	sete %al
	movq -24(%rbp), %r12
	movq -32(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS2_
.p2align 4, 0x90
_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS2_:
	.___ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS2___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(32 + 0, 16)
	subq $32, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(2194:3): size=8, type=%"class.__gnu_cxx::__normal_iterator"**, var=^3
	leaq -8(%rbp), %rbx
	# LowerAlloca(2195:3): size=8, type=i8***, var=^4
	leaq -16(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^3)
	movq %rdi, (%rbx)
	# LowerMemory.S9: mov %rsi, (^4)
	movq %rsi, (%rax)
	# LowerMemory(load @ 2198:3): L2 (^3) into ^5
	movq (%rbx), %rdx
	# LowerGetelementptr(2199:3): struct-type: %"class.__gnu_cxx::__normal_iterator"* -> ^6, indices=0,0
	movq %rdx, %rcx
	# LowerMemory(load @ 2200:3): L2 (^4) into ^7
	movq (%rax), %rbx
	# LowerMemory(load @ 2201:3): L2 (^7) into ^8
	movq (%rbx), %rax
	# LowerMemory.S9: mov ^8, (^6)
	movq %rax, (%rcx)
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv
.p2align 4, 0x90
_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv:
	.___ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(96 + 0, 16)
	subq $96, %rsp
	movq %rbx, -64(%rbp)
	movq %r12, -56(%rbp)
	movq %r13, -80(%rbp)
	# LowerAlloca(1849:3): size=8, type=%"class.__gnu_cxx::new_allocator"**, var=^4
	leaq -8(%rbp), %rax
	# LowerAlloca(1850:3): size=8, type=i64*, var=^5
	leaq -16(%rbp), %r12
	# LowerAlloca(1851:3): size=8, type=i8**, var=^6
	leaq -24(%rbp), %rbx
	# LowerMemory.S9: mov %rdi, (^4)
	movq %rdi, (%rax)
	# LowerMemory.S9: mov %rsi, (^5)
	movq %rsi, (%r12)
	# LowerMemory.S9: mov %rdx, (^6)
	movq %rdx, (%rbx)
	# LowerMemory(load @ 1855:3): L2 (^4) into ^7
	movq (%rax), %rcx
	# LowerMemory(load @ 1856:3): L2 (^5) into ^8
	movq (%r12), %rbx
	# Clobber rdi
	movq %rdi, -32(%rbp)
	# Clobber rsi
	movq %rsi, -40(%rbp)
	# Clobber rdx
	movq %rdx, -48(%rbp)
	movq %rcx, %rdi
	callq _ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv
	# SetupCalls(1857:3: move result from %rax
	movq %rax, %r13
	# Unclobber rdx
	movq -48(%rbp), %rdx
	# Unclobber rsi
	movq -40(%rbp), %rsi
	# Unclobber rdi
	movq -32(%rbp), %rdi
	cmpq %r13, %rbx
	seta %al
	cmpb $0, %al
	jne .___ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv__M41
	jmp .___ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv__M86
	.___ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv__M41:
	# LowerMemory(load @ 1862:3): L2 (^5) into ^12
	movq (%r12), %rax
	cmpq $-1, %rax
	seta %al
	cmpb $0, %al
	jne .___ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv__M46
	jmp .___ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv__M66
	.___ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv__M46:
	callq _ZSt28__throw_bad_array_new_lengthv
	.___ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv__M66:
	callq _ZSt17__throw_bad_allocv
	.___ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv__M86:
	# LowerMemory(load @ 1875:3): L2 (^5) into ^17
	movq (%r12), %rax
	movq %rax, %rbx
	movq %rbx, %rdi
	callq _Znwm
	# SetupCalls(1877:3: move result from %rax
	movq %rax, %rbx
	movq %rbx, %rax
	movq -80(%rbp), %r13
	movq -56(%rbp), %r12
	movq -64(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt16allocator_traitsISaIcEE8allocateERS0_m
.p2align 4, 0x90
_ZNSt16allocator_traitsISaIcEE8allocateERS0_m:
	.___ZNSt16allocator_traitsISaIcEE8allocateERS0_m__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(64 + 0, 16)
	subq $64, %rsp
	movq %rbx, -56(%rbp)
	# LowerAlloca(1813:3): size=8, type=%"class.std::allocator"**, var=^3
	leaq -8(%rbp), %rsi
	# LowerAlloca(1814:3): size=8, type=i64*, var=^4
	leaq -16(%rbp), %rbx
	# LowerAlloca(1815:3): size=8, type=%"class.std::allocator"**, var=^5
	leaq -24(%rbp), %rax
	# LowerAlloca(1816:3): size=8, type=i64*, var=^6
	leaq -32(%rbp), %rdx
	# LowerMemory.S9: mov %rdi, (^5)
	movq %rdi, (%rax)
	# LowerMemory.S9: mov %rsi, (^6)
	movq %rsi, (%rdx)
	# LowerMemory(load @ 1819:3): L2 (^5) into ^7
	movq (%rax), %rcx
	# LowerMemory(load @ 1820:3): L2 (^6) into ^8
	movq (%rdx), %rax
	# LowerMemory.S9: mov ^7, (^3)
	movq %rcx, (%rsi)
	# LowerMemory.S9: mov ^8, (^4)
	movq %rax, (%rbx)
	# LowerMemory(load @ 1823:3): L2 (^3) into ^9
	movq (%rsi), %rax
	movq %rax, %rcx
	# LowerMemory(load @ 1825:3): L2 (^4) into ^11
	movq (%rbx), %rax
	# Clobber rdi
	movq %rdi, -40(%rbp)
	# Clobber rsi
	movq %rsi, -48(%rbp)
	movq %rcx, %rdi
	movq %rax, %rsi
	movq $0, %rdx
	callq _ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv
	# SetupCalls(1826:3: move result from %rax
	movq %rax, %rbx
	# Unclobber rsi
	movq -48(%rbp), %rsi
	# Unclobber rdi
	movq -40(%rbp), %rdi
	movq %rbx, %rax
	movq -56(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm
.p2align 4, 0x90
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm:
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(72 + 0, 16)
	subq $80, %rsp
	movq %rbx, -40(%rbp)
	movq %r12, -48(%rbp)
	movq %r13, -56(%rbp)
	# LowerAlloca(1103:3): size=8, type=%"class.std::__cxx11::basic_string"**, var=^3
	leaq -8(%rbp), %rax
	# LowerAlloca(1104:3): size=8, type=i64*, var=^4
	leaq -16(%rbp), %rbx
	# LowerMemory.S9: mov %rdi, (^3)
	movq %rdi, (%rax)
	# LowerMemory.S9: mov %rsi, (^4)
	movq %rsi, (%rbx)
	# LowerMemory(load @ 1107:3): L2 (^3) into ^5
	movq (%rax), %r12
	# Clobber rdi
	movq %rdi, -24(%rbp)
	# Clobber rsi
	movq %rsi, -32(%rbp)
	movq %r12, %rdi
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
	# SetupCalls(1108:3: move result from %rax
	movq %rax, %r13
	# Unclobber rsi
	movq -32(%rbp), %rsi
	# Unclobber rdi
	movq -24(%rbp), %rdi
	# Clobber rdi
	movq %rdi, -24(%rbp)
	# Clobber rsi
	movq %rsi, -32(%rbp)
	movq %r12, %rdi
	callq _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv
	# SetupCalls(1109:3: move result from %rax
	movq %rax, %r12
	# Unclobber rsi
	movq -32(%rbp), %rsi
	# Unclobber rdi
	movq -24(%rbp), %rdi
	# LowerMemory(load @ 1110:3): L2 (^4) into ^8
	movq (%rbx), %rax
	movq %rax, %rbx
	addq $1, %rbx
	# Clobber rdi
	movq %rdi, -24(%rbp)
	# Clobber rsi
	movq %rsi, -32(%rbp)
	movq %r13, %rdi
	movq %r12, %rsi
	movq %rbx, %rdx
	callq _ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm
	# Unclobber rsi
	movq -32(%rbp), %rsi
	# Unclobber rdi
	movq -24(%rbp), %rdi
	movq -56(%rbp), %r13
	movq -48(%rbp), %r12
	movq -40(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv
.p2align 4, 0x90
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv:
	.___ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(40 + 0, 16)
	subq $48, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(1129:3): size=8, type=%"class.std::__cxx11::basic_string"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 1131:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# LowerGetelementptr(1132:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^4, indices=0,2
	movq %rbx, %rax
	addq $16, %rax
	movq %rax, %rbx
	# LowerGetelementptr(1134:3): struct-type: [16 x i8]* -> ^6, indices=0,0
	movq %rbx, %rax
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %rax, %rdi
	callq _ZNSt14pointer_traitsIPKcE10pointer_toERS0_
	# SetupCalls(1135:3: move result from %rax
	movq %rax, %rbx
	# Unclobber rdi
	movq -16(%rbp), %rdi
	movq %rbx, %rax
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZSt9addressofIKcEPT_RS1_
.p2align 4, 0x90
_ZSt9addressofIKcEPT_RS1_:
	.___ZSt9addressofIKcEPT_RS1___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(32 + 0, 16)
	subq $32, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(1150:3): size=8, type=i8**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 1152:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %rbx, %rdi
	callq _ZSt11__addressofIKcEPT_RS1_
	# SetupCalls(1153:3: move result from %rax
	movq %rax, %rbx
	# Unclobber rdi
	movq -16(%rbp), %rdi
	movq %rbx, %rax
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_
.p2align 4, 0x90
_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_:
	.___ZNSt16allocator_traitsISaIcEE8max_sizeERKS0___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(8 + 0, 16)
	subq $16, %rsp
	# LowerAlloca(1832:3): size=8, type=%"class.std::allocator"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	movabsq $-1, %rax
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperC2ESt17basic_string_viewIcS2_E
.p2align 4, 0x90
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperC2ESt17basic_string_viewIcS2_E:
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperC2ESt17basic_string_viewIcS2_E__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(56 + 0, 16)
	subq $64, %rsp
	movq %rbx, -56(%rbp)
	# LowerAlloca(1416:3): size=16, type=%"class.std::basic_string_view"*, var=^4
	leaq -16(%rbp), %rbx
	# LowerAlloca(1417:3): size=8, type=%"struct.std::__cxx11::basic_string<char>::__sv_wrapper"**, var=^5
	leaq -24(%rbp), %rdx
	movq %rbx, %rcx
	# LowerGetelementptr(1419:3): struct-type: {i64, i8*}* -> ^7, indices=0,0
	movq %rcx, %rax
	# LowerMemory.S9: mov %rsi, (^7)
	movq %rsi, (%rax)
	# LowerGetelementptr(1421:3): struct-type: {i64, i8*}* -> ^8, indices=0,1
	movq %rcx, %rax
	addq $8, %rax
	# LowerMemory.S9: mov %rdx, (^8)
	movq %rdx, (%rax)
	# LowerMemory.S9: mov %rdi, (^5)
	movq %rdi, (%rdx)
	# LowerMemory(load @ 1424:3): L2 (^5) into ^9
	movq (%rdx), %rax
	# LowerGetelementptr(1425:3): struct-type: %"struct.std::__cxx11::basic_string<char>::__sv_wrapper"* -> ^10, indices=0,0
	movq %rax, %rcx
	movq %rcx, %rax
	movq %rbx, %rcx
	# Clobber rdi
	movq %rdi, -32(%rbp)
	# Clobber rsi
	movq %rsi, -40(%rbp)
	# Clobber rdx
	movq %rdx, -48(%rbp)
	movq %rax, %rdi
	movq %rcx, %rsi
	movq $16, %rdx
	callq memcpy@PLT
	# Unclobber rdx
	movq -48(%rbp), %rdx
	# Unclobber rsi
	movq -40(%rbp), %rsi
	# Unclobber rdi
	movq -32(%rbp), %rdi
	movq -56(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm
.p2align 4, 0x90
_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm:
	.___ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(64 + 0, 16)
	subq $64, %rsp
	movq %rbx, -56(%rbp)
	# LowerAlloca(1202:3): size=8, type=%"class.__gnu_cxx::new_allocator"**, var=^4
	leaq -8(%rbp), %rax
	# LowerAlloca(1203:3): size=8, type=i8**, var=^5
	leaq -16(%rbp), %rcx
	# LowerAlloca(1204:3): size=8, type=i64*, var=^6
	leaq -24(%rbp), %rbx
	# LowerMemory.S9: mov %rdi, (^4)
	movq %rdi, (%rax)
	# LowerMemory.S9: mov %rsi, (^5)
	movq %rsi, (%rcx)
	# LowerMemory.S9: mov %rdx, (^6)
	movq %rdx, (%rbx)
	# LowerMemory(load @ 1208:3): L2 (^4) into ^7
	movq (%rax), %rbx
	# LowerMemory(load @ 1209:3): L2 (^5) into ^8
	movq (%rcx), %rax
	# Clobber rdi
	movq %rdi, -32(%rbp)
	# Clobber rsi
	movq %rsi, -40(%rbp)
	# Clobber rdx
	movq %rdx, -48(%rbp)
	movq %rax, %rdi
	callq _ZdlPv
	# Unclobber rdx
	movq -48(%rbp), %rdx
	# Unclobber rsi
	movq -40(%rbp), %rsi
	# Unclobber rdi
	movq -32(%rbp), %rdi
	movq -56(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt11char_traitsIcE6lengthEPKc
.p2align 4, 0x90
_ZNSt11char_traitsIcE6lengthEPKc:
	.___ZNSt11char_traitsIcE6lengthEPKc__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(80 + 0, 16)
	subq $80, %rsp
	movq %rbx, -40(%rbp)
	movq %r12, -48(%rbp)
	# LowerAlloca(1324:3): size=8, type=i8**, var=^2
	leaq -8(%rbp), %rbx
	# LowerAlloca(1325:3): size=8, type=i64*, var=^3
	leaq -16(%rbp), %r12
	# LowerAlloca(1326:3): size=8, type=i8**, var=^4
	leaq -24(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^4)
	movq %rdi, (%rax)
	# LowerMemory(load @ 1328:3): L2 (^4) into ^5
	movq (%rax), %rcx
	# LowerMemory.S9: mov ^5, (^2)
	movq %rcx, (%rbx)
	jmp .___ZNSt11char_traitsIcE6lengthEPKc__M40
	.___ZNSt11char_traitsIcE6lengthEPKc__M13:
	# LowerMemory(load @ 1333:3): L2 (^4) into ^7
	movq (%rax), %rbx
	# Clobber rax
	movq %rax, -32(%rbp)
	movq %rbx, %rdi
	callq _ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	# SetupCalls(1334:3: move result from %rax
	movq %rax, %rbx
	# Unclobber rax
	movq -32(%rbp), %rax
	# LowerMemory.S9: mov ^8, (^3)
	movq %rbx, (%r12)
	jmp .___ZNSt11char_traitsIcE6lengthEPKc__M67
	.___ZNSt11char_traitsIcE6lengthEPKc__M40:
	# LowerMemory(load @ 1339:3): L2 (^4) into ^10
	movq (%rax), %rbx
	# Clobber rax
	movq %rax, -32(%rbp)
	movq %rbx, %rdi
	callq strlen
	# SetupCalls(1340:3: move result from %rax
	movq %rax, %rbx
	# Unclobber rax
	movq -32(%rbp), %rax
	# LowerMemory.S9: mov ^11, (^3)
	movq %rbx, (%r12)
	jmp .___ZNSt11char_traitsIcE6lengthEPKc__M67
	.___ZNSt11char_traitsIcE6lengthEPKc__M67:
	# LowerMemory(load @ 1345:3): L2 (^3) into ^13
	movq (%r12), %rax
	movq -48(%rbp), %r12
	movq -40(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv
.p2align 4, 0x90
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv:
	.___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(24 + 0, 16)
	subq $32, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(1192:3): size=8, type=%"class.std::__cxx11::basic_string"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 1194:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# LowerGetelementptr(1195:3): struct-type: %"class.std::__cxx11::basic_string"* -> ^4, indices=0,0
	movq %rbx, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	movq -16(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
.p2align 4, 0x90
_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc:
	.___ZN9__gnu_cxx11char_traitsIcE6lengthEPKc__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(49 + 0, 16)
	subq $64, %rsp
	movq %rbx, -41(%rbp)
	movq %r12, -25(%rbp)
	movq %r13, -33(%rbp)
	movq %r14, -49(%rbp)
	# LowerAlloca(1351:3): size=8, type=i8**, var=^2
	leaq -8(%rbp), %r12
	# LowerAlloca(1352:3): size=8, type=i64*, var=^3
	leaq -16(%rbp), %r13
	# LowerAlloca(1353:3): size=1, type=i8*, var=^4
	leaq -17(%rbp), %rbx
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%r12)
	# LowerMemory.S3: mov $imm, ^3
	movq $0, (%r13)
	jmp .___ZN9__gnu_cxx11char_traitsIcE6lengthEPKc__M11
	.___ZN9__gnu_cxx11char_traitsIcE6lengthEPKc__M11:
	# LowerMemory(load @ 1359:3): L2 (^2) into ^6
	movq (%r12), %rdx
	# LowerMemory(load @ 1360:3): L2 (^3) into ^7
	movq (%r13), %rcx
	# LowerGetelementptr(1361:3): pointer-type -> ^8
	movq %rcx, %rax
	addq %rdx, %rax
	# LowerMemory.S3: mov $imm, ^4
	movb $0, (%rbx)
	movq %rax, %rdi
	movq %rbx, %rsi
	callq _ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	# SetupCalls(1363:3: move result from %rax
	movb %al, %r14b
	movb %r14b, %al
	xorb $1, %al
	cmpb $0, %al
	jne .___ZN9__gnu_cxx11char_traitsIcE6lengthEPKc__M46
	jmp .___ZN9__gnu_cxx11char_traitsIcE6lengthEPKc__M53
	.___ZN9__gnu_cxx11char_traitsIcE6lengthEPKc__M46:
	# LowerMemory(load @ 1368:3): L2 (^3) into ^12
	movq (%r13), %rcx
	movq %rcx, %rax
	addq $1, %rax
	# LowerMemory.S9: mov ^13, (^3)
	movq %rax, (%r13)
	jmp .___ZN9__gnu_cxx11char_traitsIcE6lengthEPKc__M11
	.___ZN9__gnu_cxx11char_traitsIcE6lengthEPKc__M53:
	# LowerMemory(load @ 1374:3): L2 (^3) into ^15
	movq (%r13), %rax
	movq -49(%rbp), %r14
	movq -33(%rbp), %r13
	movq -25(%rbp), %r12
	movq -41(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt10filesystem7__cxx1118directory_iteratorC2Ev
.p2align 4, 0x90
_ZNSt10filesystem7__cxx1118directory_iteratorC2Ev:
	.___ZNSt10filesystem7__cxx1118directory_iteratorC2Ev__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(24 + 0, 16)
	subq $32, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(807:3): size=8, type=%"class.std::filesystem::__cxx11::directory_iterator"**, var=^2
	leaq -8(%rbp), %rax
	# LowerMemory.S9: mov %rdi, (^2)
	movq %rdi, (%rax)
	# LowerMemory(load @ 809:3): L2 (^2) into ^3
	movq (%rax), %rbx
	# LowerGetelementptr(810:3): struct-type: %"class.std::filesystem::__cxx11::directory_iterator"* -> ^4, indices=0,0
	movq %rbx, %rax
	# Clobber rdi
	movq %rdi, -16(%rbp)
	movq %rax, %rdi
	callq _ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC1Ev
	# Unclobber rdi
	movq -16(%rbp), %rdi
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
.p2align 4, 0x90
_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_:
	.___ZN9__gnu_cxx11char_traitsIcE2eqERKcS3___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(32 + 0, 16)
	subq $32, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(1383:3): size=8, type=i8**, var=^3
	leaq -8(%rbp), %rax
	# LowerAlloca(1384:3): size=8, type=i8**, var=^4
	leaq -16(%rbp), %rbx
	# LowerMemory.S9: mov %rdi, (^3)
	movq %rdi, (%rax)
	# LowerMemory.S9: mov %rsi, (^4)
	movq %rsi, (%rbx)
	# LowerMemory(load @ 1387:3): L2 (^3) into ^5
	movq (%rax), %rcx
	# LowerMemory(load @ 1388:3): L2 (^5) into ^6
	movb (%rcx), %al
	movsbl %al, %ecx
	# LowerMemory(load @ 1390:3): L2 (^4) into ^8
	movq (%rbx), %rax
	# LowerMemory(load @ 1391:3): L2 (^8) into ^9
	movb (%rax), %bl
	movsbl %bl, %eax
	cmpl %eax, %ecx
	sete %al
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq


.section .init_array
.p2align 3
.quad _GLOBAL__sub_I_diriter.cpp
.quad __cxx_global_var_init
