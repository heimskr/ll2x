
.section .text
.global _ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE
.p2align 4, 0x90
_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE:
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(752 + 0, 16)
	subq $752, %rsp
	movq %rbx, -576(%rbp)
	movq %r12, -584(%rbp)
	movq %r13, -592(%rbp)
	movq %r14, -616(%rbp)
	movq %r15, -696(%rbp)
	# LowerAlloca(524:3): size = 1, type = i8*, var = ^3
	# Fixing leaq -1(%rbp), -432(%rbp)
	leaq -1(%rbp), %r15
	movq %r15, -432(%rbp)
	# LowerAlloca(525:3): size = 1, type = i8*, var = ^4
	# Fixing leaq -2(%rbp), -448(%rbp)
	leaq -2(%rbp), %r15
	movq %r15, -448(%rbp)
	# LowerAlloca(526:3): size = 1, type = i8*, var = ^5
	# Fixing leaq -3(%rbp), -456(%rbp)
	leaq -3(%rbp), %r15
	movq %r15, -456(%rbp)
	# LowerAlloca(527:3): size = 1, type = i8*, var = ^6
	leaq -4(%rbp), %rbx
	# LowerAlloca(528:3): size = 376, type = %"class.std::__cxx11::basic_ostringstream"*, var = ^7
	# Fixing leaq -384(%rbp), -464(%rbp)
	leaq -384(%rbp), %r15
	movq %r15, -464(%rbp)
	# LowerAlloca(529:3): size = 32, type = %"class.std::__cxx11::basic_string"*, var = ^8
	# Fixing leaq -416(%rbp), -472(%rbp)
	leaq -416(%rbp), %r15
	movq %r15, -472(%rbp)
	# LowerBasicConversion(530:3): ^7 -> ^9
	# Fixing movq -464(%rbp), -480(%rbp)
	movq -464(%rbp), %r15
	movq %r15, -480(%rbp)
	# LowerGetelementptr(531:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* ^7 -> ^10, indices=0,2
	movq -464(%rbp), %r12
	addq $112, %r12
	# LowerGetelementptr(531:3): type of ^10 is %"class.std::basic_ios"*
	# LowerGetelementptr(532:3): struct-type: %"class.std::basic_ios"* ^10 -> ^11, indices=0,0
	movq %r12, %rax
	# LowerGetelementptr(532:3): type of ^11 is %"class.std::ios_base"*
	# Clobber %rdi
	movq %rdi, -536(%rbp)
	# Clobber %rsi
	movq %rsi, -544(%rbp)
	# Clobber %rcx
	movq %rcx, -552(%rbp)
	# SetupCalls(533:3): move argument %"class.std::ios_base"* nonnull dereferenceable(216) align 8 ^11
	movq %rax, %rdi
	callq _ZNSt8ios_baseC2Ev@PLT
	# Unclobber %rcx
	movq -552(%rbp), %rcx
	# Unclobber %rsi
	movq -544(%rbp), %rsi
	# Unclobber %rdi
	movq -536(%rbp), %rdi
	# LowerGetelementptr(534:3): struct-type: %"class.std::basic_ios"* ^10 -> ^12, indices=0,0,0
	movq %r12, %r13
	# LowerGetelementptr(534:3): type of ^12 is i32 () ****
	movq _ZTVSt9basic_iosIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(535:3).9: mov ^132, (^12)
	movq %rax, (%r13)
	# LowerGetelementptr(536:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* ^7 -> ^13, indices=0,2,1
	movq -464(%rbp), %rax
	addq $112, %rax
	addq $216, %rax
	# LowerGetelementptr(536:3): type of ^13 is %"class.std::basic_ostream"**
	# LowerStore(537:3).3: mov $imm, ^13
	movq $0, (%rax)
	# LowerGetelementptr(538:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* ^7 -> ^14, indices=0,2,2
	movq -464(%rbp), %rax
	addq $112, %rax
	addq $224, %rax
	# LowerGetelementptr(538:3): type of ^14 is i8*
	# LowerStore(539:3).3: mov $imm, ^14
	movb $0, (%rax)
	# LowerGetelementptr(540:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* ^7 -> ^15, indices=0,2,3
	movq -464(%rbp), %rax
	addq $112, %rax
	addq $225, %rax
	# LowerGetelementptr(540:3): type of ^15 is i8*
	# LowerStore(541:3).3: mov $imm, ^15
	movb $0, (%rax)
	# LowerGetelementptr(542:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* ^7 -> ^16, indices=0,2,4
	movq -464(%rbp), %rax
	addq $112, %rax
	addq $232, %rax
	# LowerGetelementptr(542:3): type of ^16 is %"class.std::basic_streambuf"**
	# LowerBasicConversion(543:3): ^16 -> ^17
	movq %rax, %rcx
	# Clobber %rdi
	movq %rdi, -536(%rbp)
	# Clobber %rsi
	movq %rsi, -544(%rbp)
	# Clobber %rcx
	movq %rcx, -552(%rbp)
	# SetupCalls(544:3): move argument i8* nonnull dereferenceable(32) align 8 ^17
	movq %rcx, %rdi
	# SetupCalls(544:3): move argument i32 0
	movq $0, %rsi
	# SetupCalls(544:3): move argument i64 32
	movq $32, %rdx
	callq memset@PLT
	# Unclobber %rcx
	movq -552(%rbp), %rcx
	# Unclobber %rsi
	movq -544(%rbp), %rsi
	# Unclobber %rdi
	movq -536(%rbp), %rdi
	movq _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rcx
	addq $8, %rcx
	# LowerLoad(545:3).2: (^133) into ^18
	movq (%rcx), %rax
	# LowerGetelementptr(546:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* ^7 -> ^19, indices=0,0,0
	# Fixing movq -464(%rbp), -488(%rbp)
	movq -464(%rbp), %r15
	movq %r15, -488(%rbp)
	# LowerGetelementptr(546:3): type of ^19 is i32 () ****
	# LowerStore(547:3).9: mov ^18, (^19)
	movq -488(%rbp), %rcx
	movq %rax, (%rcx)
	movq _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rcx
	addq $16, %rcx
	# LowerLoad(548:3).2: (^134) into ^20
	movq (%rcx), %rdx
	# LowerBasicConversion(549:3): ^7 -> ^21
	movq -464(%rbp), %r12
	# LowerGetelementptr(550:3): struct-type: i32 () *** ^18 -> ^22, indices=-3
	movq %rax, %rcx
	addq $-24, %rcx
	# LowerGetelementptr(550:3): type of ^22 is i32 () ***
	# LowerBasicConversion(551:3): ^22 -> ^23
	movq %rcx, %r8
	# LowerLoad(552:3).2: (^23) into ^24
	movq (%r8), %rax
	# LowerGetelementptr(553:3): pointer-type -> ^25
	movq %rax, %rcx
	addq -480(%rbp), %rcx
	# LowerBasicConversion(554:3): ^25 -> ^26
	movq %rcx, %rax
	# LowerStore(555:3).9: mov ^20, (^26)
	movq %rdx, (%rax)
	# LowerLoad(556:3).2: (^21) into ^27
	movq (%r12), %rax
	# LowerGetelementptr(557:3): struct-type: i8* ^27 -> ^28, indices=-24
	movq %rax, %rcx
	addq $-24, %rcx
	# LowerGetelementptr(557:3): type of ^28 is i8*
	# LowerBasicConversion(558:3): ^28 -> ^29
	movq %rcx, %rax
	# LowerLoad(559:3).2: (^29) into ^30
	movq (%rax), %rcx
	# LowerGetelementptr(560:3): pointer-type -> ^31
	movq %rcx, %rax
	addq -480(%rbp), %rax
	# LowerBasicConversion(561:3): ^31 -> ^32
	movq %rax, %rcx
	# Clobber %rdi
	movq %rdi, -536(%rbp)
	# Clobber %rsi
	movq %rsi, -544(%rbp)
	# Clobber %rcx
	movq %rcx, -552(%rbp)
	# SetupCalls(562:3): move argument %"class.std::basic_ios"* nonnull dereferenceable(264) align 8 ^32
	movq %rcx, %rdi
	# SetupCalls(562:3): move argument %"class.std::basic_streambuf"* null
	movq $0, %rsi
	callq _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
	# Unclobber %rcx
	movq -552(%rbp), %rcx
	# Unclobber %rsi
	movq -544(%rbp), %rsi
	# Unclobber %rdi
	movq -536(%rbp), %rdi
	movq _ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rcx
	addq $24, %rcx
	# LowerStore(563:3).9: mov ^135, (^19)
	movq -488(%rbp), %rax
	movq %rcx, (%rax)
	movq _ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $64, %rax
	# LowerStore(564:3).9: mov ^136, (^12)
	movq %rax, (%r13)
	# LowerGetelementptr(565:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* ^7 -> ^33, indices=0,1
	movq -464(%rbp), %r13
	addq $8, %r13
	# LowerGetelementptr(565:3): type of ^33 is %"class.std::__cxx11::basic_stringbuf"*
	# LowerGetelementptr(566:3): struct-type: %"class.std::__cxx11::basic_stringbuf"* ^33 -> ^34, indices=0,0,0
	movq %r13, %r14
	# LowerGetelementptr(566:3): type of ^34 is i32 () ****
	movq _ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(567:3).9: mov ^137, (^34)
	movq %rax, (%r14)
	# LowerGetelementptr(568:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* ^7 -> ^35, indices=0,1,0,1
	movq -464(%rbp), %rax
	addq $8, %rax
	addq $8, %rax
	# LowerGetelementptr(568:3): type of ^35 is i8**
	# LowerGetelementptr(569:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* ^7 -> ^36, indices=0,1,0,7
	# Fixing movq -464(%rbp), -496(%rbp)
	movq -464(%rbp), %r15
	movq %r15, -496(%rbp)
	addq $8, -496(%rbp)
	addq $56, -496(%rbp)
	# LowerGetelementptr(569:3): type of ^36 is %"class.std::locale"*
	# LowerBasicConversion(570:3): ^35 -> ^37
	movq %rax, %rcx
	# Clobber %rdi
	movq %rdi, -536(%rbp)
	# Clobber %rsi
	movq %rsi, -544(%rbp)
	# Clobber %rcx
	movq %rcx, -552(%rbp)
	# SetupCalls(571:3): move argument i8* nonnull dereferenceable(48) align 8 ^37
	movq %rcx, %rdi
	# SetupCalls(571:3): move argument i32 0
	movq $0, %rsi
	# SetupCalls(571:3): move argument i64 48
	movq $48, %rdx
	callq memset@PLT
	# Unclobber %rcx
	movq -552(%rbp), %rcx
	# Unclobber %rsi
	movq -544(%rbp), %rsi
	# Unclobber %rdi
	movq -536(%rbp), %rdi
	# Clobber %rdi
	movq %rdi, -536(%rbp)
	# Clobber %rsi
	movq %rsi, -544(%rbp)
	# Clobber %rcx
	movq %rcx, -552(%rbp)
	# SetupCalls(572:3): move argument %"class.std::locale"* nonnull dereferenceable(8) align 8 ^36
	movq -496(%rbp), %rdi
	callq _ZNSt6localeC1Ev@PLT
	# Unclobber %rcx
	movq -552(%rbp), %rcx
	# Unclobber %rsi
	movq -544(%rbp), %rsi
	# Unclobber %rdi
	movq -536(%rbp), %rdi
	movq _ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(573:3).9: mov ^138, (^34)
	movq %rax, (%r14)
	# LowerGetelementptr(574:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* ^7 -> ^38, indices=0,1,1
	movq -464(%rbp), %rax
	addq $8, %rax
	addq $64, %rax
	# LowerGetelementptr(574:3): type of ^38 is i32*
	# LowerStore(575:3).3: mov $imm, ^38
	movl $16, (%rax)
	# LowerGetelementptr(576:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* ^7 -> ^39, indices=0,1,2
	# Fixing movq -464(%rbp), -504(%rbp)
	movq -464(%rbp), %r15
	movq %r15, -504(%rbp)
	addq $8, -504(%rbp)
	addq $72, -504(%rbp)
	# LowerGetelementptr(576:3): type of ^39 is %"class.std::__cxx11::basic_string"*
	# LowerGetelementptr(577:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* ^7 -> ^40, indices=0,1,2,2
	movq -464(%rbp), %rax
	addq $8, %rax
	addq $72, %rax
	addq $16, %rax
	# LowerGetelementptr(577:3): type of ^40 is %union.anon*
	# LowerBasicConversion(578:3): ^39 -> ^41
	movq -504(%rbp), %rcx
	# LowerStore(579:3).9: mov ^40, (^41)
	movq %rax, (%rcx)
	# LowerGetelementptr(580:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* ^7 -> ^42, indices=0,1,2,1
	movq -464(%rbp), %rcx
	addq $8, %rcx
	addq $72, %rcx
	addq $8, %rcx
	# LowerGetelementptr(580:3): type of ^42 is i64*
	# LowerStore(581:3).3: mov $imm, ^42
	movq $0, (%rcx)
	# LowerBasicConversion(582:3): ^40 -> ^43
	movq %rax, -512(%rbp)
	# LowerStore(583:3).3: mov $imm, ^43
	movq -512(%rbp), %rax
	movb $0, (%rax)
	# LowerLoad(584:3).2: (^21) into ^44
	movq (%r12), %rax
	# LowerGetelementptr(585:3): struct-type: i8* ^44 -> ^45, indices=-24
	movq %rax, %rcx
	addq $-24, %rcx
	# LowerGetelementptr(585:3): type of ^45 is i8*
	# LowerBasicConversion(586:3): ^45 -> ^46
	movq %rcx, %rax
	# LowerLoad(587:3).2: (^46) into ^47
	movq (%rax), %rcx
	# LowerGetelementptr(588:3): pointer-type -> ^48
	movq %rcx, %rax
	addq -480(%rbp), %rax
	# LowerBasicConversion(589:3): ^48 -> ^49
	movq %rax, %rcx
	# LowerGetelementptr(590:3): struct-type: %"class.std::__cxx11::basic_stringbuf"* ^33 -> ^50, indices=0,0
	movq %r13, %rax
	# LowerGetelementptr(590:3): type of ^50 is %"class.std::basic_streambuf"*
	# Clobber %rdi
	movq %rdi, -536(%rbp)
	# Clobber %rsi
	movq %rsi, -544(%rbp)
	# Clobber %rcx
	movq %rcx, -552(%rbp)
	# SetupCalls(591:3): move argument %"class.std::basic_ios"* nonnull dereferenceable(264) align 8 ^49
	movq %rcx, %rdi
	# SetupCalls(591:3): move argument %"class.std::basic_streambuf"* nonnull ^50
	movq %rax, %rsi
	callq _ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
	# Unclobber %rcx
	movq -552(%rbp), %rcx
	# Unclobber %rsi
	movq -544(%rbp), %rsi
	# Unclobber %rdi
	movq -536(%rbp), %rdi
	# LowerBasicConversion(592:3): ^7 -> ^51
	# Fixing movq -464(%rbp), -520(%rbp)
	movq -464(%rbp), %r15
	movq %r15, -520(%rbp)
	# LowerGetelementptr(593:3): struct-type: %"struct.std::__detail::_Quoted_string"* %rsi -> ^52, indices=0,1
	movq %rsi, -528(%rbp)
	addq $8, -528(%rbp)
	# LowerGetelementptr(593:3): type of ^52 is i8*
	# LowerLoad(594:3).2: (^52) into ^53
	movq -528(%rbp), %rcx
	movb (%rcx), %al
	# LowerStore(595:3).9: mov ^53, (^6)
	movb %al, (%rbx)
	# Clobber %rdi
	movq %rdi, -536(%rbp)
	# Clobber %rsi
	movq %rsi, -544(%rbp)
	# Clobber %rcx
	movq %rcx, -552(%rbp)
	# SetupCalls(596:3): move argument %"class.std::basic_ostream"* nonnull dereferenceable(8) align 8 ^51
	movq -520(%rbp), %rdi
	# SetupCalls(596:3): move argument i8* nonnull ^6
	movq %rbx, %rsi
	# SetupCalls(596:3): move argument i64 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(596:3): move result from %rax
	movq %rax, %rax
	# Unclobber %rcx
	movq -552(%rbp), %rcx
	# Unclobber %rsi
	movq -544(%rbp), %rsi
	# Unclobber %rdi
	movq -536(%rbp), %rdi
	# LowerGetelementptr(597:3): struct-type: %"struct.std::__detail::_Quoted_string"* %rsi -> ^55, indices=0,0
	movq %rsi, %rax
	# LowerGetelementptr(597:3): type of ^55 is %"class.std::__cxx11::basic_string"**
	# LowerLoad(598:3).2: (^55) into ^56
	movq (%rax), %rbx
	# LowerGetelementptr(599:3): struct-type: %"class.std::__cxx11::basic_string"* ^56 -> ^57, indices=0,0,0
	movq %rbx, %rax
	# LowerGetelementptr(599:3): type of ^57 is i8**
	# LowerLoad(600:3).2: (^57) into ^58
	movq (%rax), %rcx
	# LowerGetelementptr(601:3): struct-type: %"class.std::__cxx11::basic_string"* ^56 -> ^59, indices=0,1
	movq %rbx, %rax
	addq $8, %rax
	# LowerGetelementptr(601:3): type of ^59 is i64*
	# LowerLoad(602:3).2: (^59) into ^60
	movq (%rax), %rbx
	# LowerGetelementptr(603:3): pointer-type -> ^61
	movq %rbx, %r12
	addq %rcx, %r12
	# LowerIcmp(604:3): i64 ^60 vs. intlike 0
	cmpq $0, %rbx
	sete %al
	cmpb $0, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M397
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M390:
	# LowerGetelementptr(608:3): struct-type: %"struct.std::__detail::_Quoted_string"* %rsi -> ^64, indices=0,2
	movq %rsi, -440(%rbp)
	addq $9, -440(%rbp)
	# LowerGetelementptr(608:3): type of ^64 is i8*
	# MovePhi: ^58 -> ^114
	movq %rcx, -424(%rbp)
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M726
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M397:
	# LowerLoad(612:3).2: (^52) into ^66
	movq -528(%rbp), %rbx
	movb (%rbx), %al
	# LowerStore(613:3).9: mov ^66, (^5)
	movq -456(%rbp), %rbx
	movb %al, (%rbx)
	# Clobber %rdi
	movq %rdi, -536(%rbp)
	# Clobber %rdx
	movq %rdx, -560(%rbp)
	# SetupCalls(614:3): move argument %"class.std::basic_ostream"* nonnull dereferenceable(8) align 8 ^51
	movq -520(%rbp), %rdi
	# SetupCalls(614:3): move argument i8* nonnull ^5
	movq -456(%rbp), %rsi
	# SetupCalls(614:3): move argument i64 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(614:3): move result from %rax
	movq %rax, %rax
	# Unclobber %rdx
	movq -560(%rbp), %rdx
	# Unclobber %rdi
	movq -536(%rbp), %rdi
	# LowerBasicConversion(615:3): ^8 -> ^68
	movq -472(%rbp), %rax
	# LowerGetelementptr(618:3): struct-type: %"class.std::__cxx11::basic_string"* ^8 -> ^69, indices=0,2
	movq -472(%rbp), %rax
	addq $16, %rax
	# LowerGetelementptr(618:3): type of ^69 is %union.anon*
	# LowerBasicConversion(619:3): ^8 -> ^70
	movq -472(%rbp), %rbx
	# LowerStore(620:3).9: mov ^69, (^70)
	movq %rax, (%rbx)
	# LowerGetelementptr(621:3): struct-type: %"class.std::__cxx11::basic_string"* ^8 -> ^71, indices=0,1
	movq -472(%rbp), %rbx
	addq $8, %rbx
	# LowerGetelementptr(621:3): type of ^71 is i64*
	# LowerStore(622:3).3: mov $imm, ^71
	movq $0, (%rbx)
	# LowerBasicConversion(623:3): ^69 -> ^72
	movq %rax, %r13
	# LowerStore(624:3).3: mov $imm, ^72
	movb $0, (%r13)
	# LowerGetelementptr(625:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* ^7 -> ^73, indices=0,1,0,5
	movq -464(%rbp), %rax
	addq $8, %rax
	addq $40, %rax
	# LowerGetelementptr(625:3): type of ^73 is i8**
	# LowerLoad(626:3).2: (^73) into ^74
	movq (%rax), %rcx
	# LowerIcmp(627:3): i8* ^74 vs. intlike 0
	cmpq $0, %rcx
	sete %al
	# LowerGetelementptr(628:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* ^7 -> ^76, indices=0,1,0,3
	movq -464(%rbp), %rdx
	addq $8, %rdx
	addq $24, %rdx
	# LowerGetelementptr(628:3): type of ^76 is i8**
	# LowerLoad(629:3).2: (^76) into ^77
	movq (%rdx), %rsi
	# LowerIcmp(630:3): i8* ^74 vs. operand i8* ^77
	cmpq %rsi, %rcx
	seta %dl
	cmpq $0, %rdx
	movq %rcx, %rdx
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC0
	movq %rsi, %rdx
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC0:
	# LowerIcmp(632:3): i8* ^79 vs. intlike 0
	cmpq $0, %rdx
	sete %cl
	cmpq $0, %rax
	movb $1, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC1
	movb %cl, %al
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC1:
	cmpb $0, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M524
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M479:
	# LowerGetelementptr(637:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* ^7 -> ^83, indices=0,1,0,4
	movq -464(%rbp), %rax
	addq $8, %rax
	addq $32, %rax
	# LowerGetelementptr(637:3): type of ^83 is i8**
	# LowerLoad(638:3).2: (^83) into ^84
	movq (%rax), %r8
	# LowerBasicConversion(639:3): ^79 -> ^85
	movq %rdx, %rax
	# LowerBasicConversion(640:3): ^84 -> ^86
	movq %r8, %rcx
	movq %rax, %r9
	subq %rcx, %r9
	# Clobber %rdi
	movq %rdi, -536(%rbp)
	# Clobber %rdx
	movq %rdx, -560(%rbp)
	# SetupCalls(642:3): move argument %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) align 8 ^8
	movq -472(%rbp), %rdi
	# SetupCalls(642:3): move argument i64 0
	movq $0, %rsi
	# SetupCalls(642:3): move argument i64 0
	movq $0, %rdx
	# SetupCalls(642:3): move argument i8* ^84
	movq %r8, %rcx
	# SetupCalls(642:3): move argument i64 ^87
	movq %r9, %r8
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
	# SetupCalls(642:3): move result from %rax
	movq %rax, %rax
	# Unclobber %rdx
	movq -560(%rbp), %rdx
	# Unclobber %rdi
	movq -536(%rbp), %rdi
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M548
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M524:
	# Clobber %rdi
	movq %rdi, -536(%rbp)
	# SetupCalls(646:3): move argument %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) align 8 ^8
	movq -472(%rbp), %rdi
	# SetupCalls(646:3): move argument %"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) align 8 ^39
	movq -504(%rbp), %rsi
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
	# Unclobber %rdi
	movq -536(%rbp), %rdi
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M548:
	# LowerGetelementptr(650:3): struct-type: %"class.std::__cxx11::basic_string"* ^8 -> ^91, indices=0,0,0
	movq -472(%rbp), %r15
	# LowerGetelementptr(650:3): type of ^91 is i8**
	# LowerLoad(651:3).2: (^91) into ^92
	movq (%r15), %rax
	# LowerLoad(652:3).2: (^71) into ^93
	movq (%rbx), %rcx
	# Clobber %rdi
	movq %rdi, -536(%rbp)
	# Clobber %rax
	movq %rax, -568(%rbp)
	# SetupCalls(653:3): move argument %"class.std::basic_ostream"* nonnull dereferenceable(8) align 8 %rdi
	# Semiunclobber %rdi into %rdi
	movq -536(%rbp), %rdi
	# SetupCalls(653:3): move argument i8* ^92
	movq %rax, %rsi
	# SetupCalls(653:3): move argument i64 ^93
	movq %rcx, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(653:3): move result from %rax
	movq %rax, %rax
	# Unclobber %rax
	movq -568(%rbp), %rax
	# Unclobber %rdi
	movq -536(%rbp), %rdi
	# LowerLoad(654:3).2: (^91) into ^95
	movq (%r15), %rax
	# LowerIcmp(655:3): i8* ^95 vs. operand i8* ^72
	cmpq %r13, %rax
	sete %bl
	cmpb $0, %bl
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M610
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M588:
	# Clobber %rdi
	movq %rdi, -536(%rbp)
	# Clobber %rax
	movq %rax, -568(%rbp)
	# SetupCalls(659:3): move argument i8* ^95
	movq %rax, %rdi
	callq _ZdlPv@PLT
	# Unclobber %rax
	movq -568(%rbp), %rax
	# Unclobber %rdi
	movq -536(%rbp), %rdi
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M610:
	# LowerLoad(663:3).4: _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE into ^99
	movq _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rbx
	movq (%rbx), %rbx
	# LowerStore(664:3).9: mov ^99, (^19)
	movq -488(%rbp), %rax
	movq %rbx, (%rax)
	movq _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $24, %rax
	# LowerLoad(665:3).2: (^139) into ^100
	movq (%rax), %rcx
	# LowerGetelementptr(666:3): struct-type: i32 () *** ^99 -> ^101, indices=-3
	movq %rbx, %rax
	addq $-24, %rax
	# LowerGetelementptr(666:3): type of ^101 is i32 () ***
	# LowerBasicConversion(667:3): ^101 -> ^102
	movq %rax, %rbx
	# LowerLoad(668:3).2: (^102) into ^103
	movq (%rbx), %rax
	# LowerGetelementptr(669:3): pointer-type -> ^104
	movq %rax, %rbx
	addq -480(%rbp), %rbx
	# LowerBasicConversion(670:3): ^104 -> ^105
	movq %rbx, %rax
	# LowerStore(671:3).9: mov ^100, (^105)
	movq %rcx, (%rax)
	# LowerGetelementptr(672:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* ^7 -> ^106, indices=0,1,0,0
	movq -464(%rbp), %rbx
	addq $8, %rbx
	# LowerGetelementptr(672:3): type of ^106 is i32 () ****
	movq _ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(673:3).9: mov ^140, (^106)
	movq %rax, (%rbx)
	# LowerGetelementptr(674:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* ^7 -> ^107, indices=0,1,2,0,0
	movq -464(%rbp), %rax
	addq $8, %rax
	addq $72, %rax
	# LowerGetelementptr(674:3): type of ^107 is i8**
	# LowerLoad(675:3).2: (^107) into ^108
	movq (%rax), %rcx
	# LowerIcmp(676:3): i8* ^108 vs. operand i8* ^43
	cmpq %r14, %rcx
	sete %al
	cmpb $0, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M675
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M653:
	# Clobber %rdi
	movq %rdi, -536(%rbp)
	# Clobber %rcx
	movq %rcx, -552(%rbp)
	# SetupCalls(680:3): move argument i8* ^108
	movq %rcx, %rdi
	callq _ZdlPv@PLT
	# Unclobber %rcx
	movq -552(%rbp), %rcx
	# Unclobber %rdi
	movq -536(%rbp), %rdi
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M675:
	movq _ZTVSt15basic_streambufIcSt11char_traitsIcEE@GOTPCREL(%rip), %rax
	addq $16, %rax
	# LowerStore(684:3).9: mov ^141, (^106)
	movq %rax, (%rbx)
	# Clobber %rdi
	movq %rdi, -536(%rbp)
	# SetupCalls(685:3): move argument %"class.std::locale"* nonnull dereferenceable(8) align 8 ^36
	movq -496(%rbp), %rdi
	callq _ZNSt6localeD1Ev@PLT
	# Unclobber %rdi
	movq -536(%rbp), %rdi
	# LowerGetelementptr(686:3): struct-type: %"class.std::__cxx11::basic_ostringstream"* ^7 -> ^112, indices=0,2,0
	movq -464(%rbp), %rax
	addq $112, %rax
	# LowerGetelementptr(686:3): type of ^112 is %"class.std::ios_base"*
	# Clobber %rdi
	movq %rdi, -536(%rbp)
	# SetupCalls(687:3): move argument %"class.std::ios_base"* nonnull dereferenceable(216) align 8 ^112
	movq %rax, %rdi
	callq _ZNSt8ios_baseD2Ev@PLT
	# Unclobber %rdi
	movq -536(%rbp), %rdi
	movq -696(%rbp), %r15
	movq -616(%rbp), %r14
	movq -592(%rbp), %r13
	movq -584(%rbp), %r12
	movq -576(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M726:
	# LowerLoad(692:3).2: (^114) into ^115
	movq -424(%rbp), %rax
	movb (%rax), %bl
	# LowerLoad(693:3).2: (^52) into ^116
	movq -528(%rbp), %rcx
	movb (%rcx), %al
	# LowerIcmp(694:3): i8 ^115 vs. operand i8 ^116
	cmpb %al, %bl
	sete %cl
	# LowerLoad(695:3).2: (^64) into ^118
	movq -440(%rbp), %rax
	movb (%rax), %dl
	# LowerIcmp(696:3): i8 ^115 vs. operand i8 ^118
	cmpb %dl, %bl
	sete %al
	cmpb $0, %cl
	movb $1, %cl
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC2
	movb %al, %cl
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__RC2:
	cmpb $0, %cl
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M742
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M772
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M742:
	# LowerStore(701:3).9: mov ^118, (^4)
	movq -448(%rbp), %rax
	movb %dl, (%rax)
	# Clobber %rdi
	movq %rdi, -536(%rbp)
	# Clobber %rdx
	movq %rdx, -560(%rbp)
	# SetupCalls(702:3): move argument %"class.std::basic_ostream"* nonnull dereferenceable(8) align 8 ^51
	movq -520(%rbp), %rdi
	# SetupCalls(702:3): move argument i8* nonnull ^4
	movq -448(%rbp), %rsi
	# SetupCalls(702:3): move argument i64 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(702:3): move result from %rax
	movq %rax, %rax
	# Unclobber %rdx
	movq -560(%rbp), %rdx
	# Unclobber %rdi
	movq -536(%rbp), %rdi
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M772:
	# LowerStore(706:3).9: mov ^115, (^3)
	movq -432(%rbp), %rax
	movb %bl, (%rax)
	# Clobber %rdi
	movq %rdi, -536(%rbp)
	# SetupCalls(707:3): move argument %"class.std::basic_ostream"* nonnull dereferenceable(8) align 8 ^51
	movq -520(%rbp), %rdi
	# SetupCalls(707:3): move argument i8* nonnull ^3
	movq -432(%rbp), %rsi
	# SetupCalls(707:3): move argument i64 1
	movq $1, %rdx
	callq _ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	# SetupCalls(707:3): move result from %rax
	movq %rax, %rax
	# Unclobber %rdi
	movq -536(%rbp), %rdi
	# LowerGetelementptr(708:3): struct-type: i8* ^114 -> ^125, indices=1
	movq -424(%rbp), %rbx
	addq $1, %rbx
	# LowerGetelementptr(708:3): type of ^125 is i8*
	# LowerIcmp(709:3): i8* ^125 vs. operand i8* ^61
	cmpq %r12, %rbx
	sete %al
	cmpb $0, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M397
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M809:
	# MovePhi: ^125 -> ^114 (in new block 142 whose parent is 123)
	movq %rbx, -424(%rbp)
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M726
