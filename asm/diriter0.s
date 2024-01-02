.section .rodata
.align 8
.str:
.ascii "/\000"

.section .rodata
.align 8
.str.1:
.ascii ": \000"

.section .text
.global _ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC2ES8_cc
.p2align 4, 0x90
_ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC2ES8_cc:
	.___ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC2ES8_cc__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(72 + 0, 16)
	subq $80, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -32(%rbp)
	movq %r15, -40(%rbp)
	# LowerAlloca(1262:3): size = 8, type = ptr*, var = ^5
	leaq -8(%rbp), %r9
	# LowerAlloca(1263:3): size = 8, type = ptr*, var = ^6
	leaq -16(%rbp), %rbx
	# LowerAlloca(1264:3): size = 1, type = i8*, var = ^7
	leaq -17(%rbp), %r8
	# LowerAlloca(1265:3): size = 1, type = i8*, var = ^8
	leaq -18(%rbp), %rax
	# LowerStore(1266:3).9: mov ptr %rdi, (^5)
	movq %rdi, (%r9)
	# LowerStore(1267:3).9: mov ptr %rsi, (^6)
	movq %rsi, (%rbx)
	# LowerStore(1268:3).9: mov i8 %dl, (^7)
	movb %dl, (%r8)
	# LowerStore(1269:3).9: mov i8 %cl, (^8)
	movb %cl, (%rax)
	# LowerLoad(1270:3).2: (^5) into ptr ^9
	movq (%r9), %rcx
	# tt = Pointer, type = %"struct.std::__detail::_Quoted_string"
	# LowerGetelementptr(1271:3): struct-type: ptr ^9 -> ^10, indices=0,0
	movq %rcx, %rdx
	# LowerGetelementptr(1271:3): type of ^10 is ptr*
	# LowerLoad(1272:3).2: (^6) into ptr ^11
	# Fixing source-to-dest movq (%rbx), (%rdx)
	movq (%rbx), %r15
	movq %r15, (%rdx)
	# LowerStore(1273:3).9: mov ptr ^11, (^10)
	# tt = Pointer, type = %"struct.std::__detail::_Quoted_string"
	# LowerGetelementptr(1274:3): struct-type: ptr ^9 -> ^12, indices=0,1
	movq %rcx, %rbx
	addq $8, %rbx
	# LowerGetelementptr(1274:3): type of ^12 is i8*
	# LowerLoad(1275:3).2: (^7) into i8 ^13
	# Fixing source-to-dest movb (%r8), (%rbx)
	movb (%r8), %r15b
	movb %r15b, (%rbx)
	# LowerStore(1276:3).9: mov i8 ^13, (^12)
	# tt = Pointer, type = %"struct.std::__detail::_Quoted_string"
	# LowerGetelementptr(1277:3): struct-type: ptr ^9 -> ^14, indices=0,2
	movq %rcx, %rbx
	addq $9, %rbx
	# LowerGetelementptr(1277:3): type of ^14 is i8*
	# LowerLoad(1278:3).2: (^8) into i8 ^15
	# Fixing source-to-dest movb (%rax), (%rbx)
	movb (%rax), %r15b
	movb %r15b, (%rbx)
	# LowerStore(1279:3).9: mov i8 ^15, (^14)
	movq -40(%rbp), %r15
	movq -32(%rbp), %rbx
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
	# upalign(16 + 0, 16)
	subq $16, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(1224:3): size = 8, type = ptr*, var = ^2
	leaq -8(%rbp), %rax
	# LowerStore(1225:3).9: mov ptr %rdi, (^2)
	movq %rdi, (%rax)
	# LowerLoad(1226:3).2: (^2) into ptr ^3
	movq (%rax), %rbx
	# tt = Pointer, type = %"class.__gnu_cxx::__normal_iterator"
	# LowerGetelementptr(1227:3): struct-type: ptr ^3 -> ^4, indices=0,0
	# LowerGetelementptr(1227:3): type of ^4 is ptr*
	# LowerLoad(1228:3).2: (^4) into ptr ^5
	movq (%rbx), %rax
	movq -16(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZN9__gnu_cxxneIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_
.p2align 4, 0x90
_ZN9__gnu_cxxneIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_:
	.___ZN9__gnu_cxxneIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(56 + 0, 16)
	subq $64, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -32(%rbp)
	movq %r12, -48(%rbp)
	movq %r13, -24(%rbp)
	# LowerAlloca(1208:3): size = 8, type = ptr*, var = ^3
	leaq -8(%rbp), %rax
	# LowerAlloca(1209:3): size = 8, type = ptr*, var = ^4
	leaq -16(%rbp), %r13
	# LowerStore(1210:3).9: mov ptr %rdi, (^3)
	movq %rdi, (%rax)
	# LowerStore(1211:3).9: mov ptr %rsi, (^4)
	movq %rsi, (%r13)
	# LowerLoad(1212:3).2: (^3) into ptr ^5
	movq (%rax), %rbx
	# SetupCalls(1213:3): move argument ptr nonnull dereferenceable(8) align 8 ^5
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	callq _ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv
	# SetupCalls(1213:3): move ptr result from %rax
	movq %rax, %rbx
	# LowerLoad(1214:3).2: (^6) into ptr ^7
	movq (%rbx), %r12
	# LowerLoad(1215:3).2: (^4) into ptr ^8
	movq (%r13), %rax
	# SetupCalls(1216:3): move argument ptr nonnull dereferenceable(8) align 8 ^8
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq _ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv
	# SetupCalls(1216:3): move ptr result from %rax
	movq %rax, %rbx
	# LowerLoad(1217:3).2: (^9) into ptr ^10
	movq (%rbx), %rax
	# LowerIcmp(1218:3): ptr ^7 vs. operand ptr ^10
	cmpq %rax, %r12
	setne %al
	andq $1, %rax
	movq -24(%rbp), %r13
	movq -48(%rbp), %r12
	movq -32(%rbp), %rbx
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
	# upalign(64 + 0, 16)
	subq $64, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -40(%rbp)
	movq %r12, -48(%rbp)
	movq %r13, -56(%rbp)
	# LowerAlloca(1182:3): size = 8, type = ptr*, var = ^4
	leaq -8(%rbp), %rax
	# LowerAlloca(1183:3): size = 8, type = ptr*, var = ^5
	leaq -16(%rbp), %rcx
	# LowerAlloca(1184:3): size = 8, type = ptr*, var = ^6
	leaq -24(%rbp), %rbx
	# LowerStore(1185:3).9: mov ptr %rdi, (^4)
	movq %rdi, (%rax)
	# LowerStore(1186:3).9: mov ptr %rsi, (^5)
	movq %rsi, (%rcx)
	# LowerStore(1187:3).9: mov ptr %rdx, (^6)
	movq %rdx, (%rbx)
	# LowerLoad(1188:3).2: (^5) into ptr ^7
	movq (%rcx), %r12
	# tt = Pointer, type = %"class.std::filesystem::__cxx11::path"
	# LowerGetelementptr(1189:3): struct-type: ptr ^7 -> ^8, indices=0,0
	movq %r12, %rax
	# LowerGetelementptr(1189:3): type of ^8 is %"class.std::__cxx11::basic_string"*
	# Clobber %rdi
	movq %rdi, -32(%rbp)
	# SetupCalls(1190:3): move argument ptr nonnull dereferenceable(32) align 8 ^8
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv@PLT
	# SetupCalls(1190:3): move ptr result from %rax
	movq %rax, %r13
	# Unclobber %rdi, live at nowhere (in), nowhere (out)
	movq -32(%rbp), %rdi
	# tt = Pointer, type = %"class.std::filesystem::__cxx11::path"
	# LowerGetelementptr(1191:3): struct-type: ptr ^7 -> ^10, indices=0,0
	movq %r12, %rax
	# LowerGetelementptr(1191:3): type of ^10 is %"class.std::__cxx11::basic_string"*
	# Clobber %rdi
	movq %rdi, -32(%rbp)
	# SetupCalls(1192:3): move argument ptr nonnull dereferenceable(32) align 8 ^10
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv@PLT
	# SetupCalls(1192:3): move i64 result from %rax
	movq %rax, %r12
	# Unclobber %rdi, live at nowhere (in), nowhere (out)
	movq -32(%rbp), %rdi
	# LowerLoad(1193:3).2: (^6) into ptr ^12
	movq (%rbx), %rax
	# SetupCalls(1194:3): move argument ptr nonnull dereferenceable(32) align 8 %rdi
	# Semiunclobber non-live %rdi into %rdi
	movq %rdi, %rdi
	# SetupCalls(1194:3): move argument ptr ^9
	# Fixed movzx with identical source and destination widths
	movq %r13, %rsi
	# SetupCalls(1194:3): move argument i64 ^11
	# Fixed movzx with identical source and destination widths
	movq %r12, %rdx
	# SetupCalls(1194:3): move argument ptr nonnull dereferenceable(1) align 1 ^12
	# Fixed movzx with identical source and destination widths
	movq %rax, %rcx
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcmRKS3_@PLT
	movq -56(%rbp), %r13
	movq -48(%rbp), %r12
	movq -40(%rbp), %rbx
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
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(1253:3): size = 8, type = ptr*, var = ^2
	leaq -8(%rbp), %rax
	# LowerStore(1254:3).9: mov ptr %rdi, (^2)
	movq %rdi, (%rax)
	# LowerLoad(1255:3).2: (^2) into ptr ^3
	movq (%rax), %rbx
	# tt = Pointer, type = %"class.__gnu_cxx::__normal_iterator"
	# LowerGetelementptr(1256:3): struct-type: ptr ^3 -> ^4, indices=0,0
	# LowerGetelementptr(1256:3): type of ^4 is ptr*
	movq %rbx, %rax
	movq -16(%rbp), %rbx
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
	# upalign(632 + 0, 16)
	subq $640, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -536(%rbp)
	movq %r12, -520(%rbp)
	movq %r13, -528(%rbp)
	movq %r14, -544(%rbp)
	movq %r15, -496(%rbp)
	# LowerAlloca(1078:3): size = 8, type = ptr*, var = ^3
	# Fixing source-to-dest leaq -8(%rbp), -480(%rbp)
	leaq -8(%rbp), %r15
	movq %r15, -480(%rbp)
	# LowerAlloca(1079:3): size = 8, type = ptr*, var = ^4
	# Fixing source-to-dest leaq -16(%rbp), -488(%rbp)
	leaq -16(%rbp), %r15
	movq %r15, -488(%rbp)
	# LowerAlloca(1080:3): size = 376, type = %"class.std::__cxx11::basic_ostringstream"*, var = ^5
	# Fixing source-to-dest leaq -392(%rbp), -464(%rbp)
	leaq -392(%rbp), %r15
	movq %r15, -464(%rbp)
	# LowerAlloca(1081:3): size = 8, type = ptr*, var = ^6
	leaq -400(%rbp), %r12
	# LowerAlloca(1082:3): size = 8, type = %"class.__gnu_cxx::__normal_iterator"*, var = ^7
	leaq -408(%rbp), %r13
	# LowerAlloca(1083:3): size = 8, type = %"class.__gnu_cxx::__normal_iterator"*, var = ^8
	leaq -416(%rbp), %rbx
	# LowerAlloca(1084:3): size = 1, type = i8*, var = ^9
	leaq -417(%rbp), %r14
	# LowerAlloca(1085:3): size = 32, type = %"class.std::__cxx11::basic_string"*, var = ^10
	# Fixing source-to-dest leaq -456(%rbp), -472(%rbp)
	leaq -456(%rbp), %r15
	movq %r15, -472(%rbp)
	# LowerStore(1086:3).9: mov ptr %rdi, (^3)
	movq -480(%rbp), %rax
	movq %rdi, (%rax)
	# LowerStore(1087:3).9: mov ptr %rsi, (^4)
	movq -488(%rbp), %rax
	movq %rsi, (%rax)
	# SetupCalls(1088:3): move argument ptr nonnull dereferenceable(112) align 8 ^5
	# Fixed movzx with identical source and destination widths
	movq -464(%rbp), %rdi
	callq _ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev@PLT
	# LowerLoad(1089:3).2: (^4) into ptr ^11
	movq -488(%rbp), %rcx
	movq (%rcx), %rax
	# tt = Pointer, type = %"struct.std::__detail::_Quoted_string"
	# LowerGetelementptr(1090:3): struct-type: ptr ^11 -> ^12, indices=0,1
	addq $8, %rax
	# LowerGetelementptr(1090:3): type of ^12 is i8*
	# LowerLoad(1091:3).2: (^12) into i8 ^13
	movb (%rax), %cl
	# SetupCalls(1092:3): move argument ptr nonnull dereferenceable(8) align 8 ^5
	# Fixed movzx with identical source and destination widths
	movq -464(%rbp), %rdi
	# SetupCalls(1092:3): move argument i8 signext ^13
	movzbq %cl, %rsi
	movsbq %sil, %rsi
	callq _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	# SetupCalls(1092:3): move ptr result from %rax
	movq %rax, %rax
	# LowerLoad(1093:3).2: (^4) into ptr ^15
	movq -488(%rbp), %rcx
	movq (%rcx), %rax
	# tt = Pointer, type = %"struct.std::__detail::_Quoted_string"
	# LowerGetelementptr(1094:3): struct-type: ptr ^15 -> ^16, indices=0,0
	# LowerGetelementptr(1094:3): type of ^16 is ptr*
	# LowerLoad(1095:3).2: (^16) into ptr ^17
	# Fixing source-to-dest movq (%rax), (%r12)
	movq (%rax), %r15
	movq %r15, (%r12)
	# LowerStore(1096:3).9: mov ptr ^17, (^6)
	# LowerLoad(1097:3).2: (^6) into ptr ^18
	movq (%r12), %rax
	# SetupCalls(1098:3): move argument ptr nonnull dereferenceable(32) align 8 ^18
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv@PLT
	# SetupCalls(1098:3): move ptr result from %rax
	movq %rax, %r15
	# tt = Pointer, type = %"class.__gnu_cxx::__normal_iterator"
	# LowerGetelementptr(1099:3): struct-type: ptr ^7 -> ^20, indices=0,0
	movq %r13, %rax
	# LowerGetelementptr(1099:3): type of ^20 is ptr*
	# LowerStore(1100:3).9: mov ptr ^19, (^20)
	movq %r15, (%rax)
	# LowerLoad(1101:3).2: (^6) into ptr ^21
	movq (%r12), %rax
	# SetupCalls(1102:3): move argument ptr nonnull dereferenceable(32) align 8 ^21
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq _ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv@PLT
	# SetupCalls(1102:3): move ptr result from %rax
	movq %rax, %r12
	# tt = Pointer, type = %"class.__gnu_cxx::__normal_iterator"
	# LowerGetelementptr(1103:3): struct-type: ptr ^8 -> ^23, indices=0,0
	movq %rbx, %rax
	# LowerGetelementptr(1103:3): type of ^23 is ptr*
	# LowerStore(1104:3).9: mov ptr ^22, (^23)
	movq %r12, (%rax)
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M150:
	# SetupCalls(1108:3): move argument ptr nonnull dereferenceable(8) align 8 ^7
	# Fixed movzx with identical source and destination widths
	movq %r13, %rdi
	# SetupCalls(1108:3): move argument ptr nonnull dereferenceable(8) align 8 ^8
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rsi
	callq _ZN9__gnu_cxxneIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_
	# SetupCalls(1108:3): move i1 result from %rax
	movb %al, %r12b
	cmpb $0, %r12b
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M176
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M328
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M176:
	# SetupCalls(1112:3): move argument ptr nonnull dereferenceable(8) align 8 ^7
	# Fixed movzx with identical source and destination widths
	movq %r13, %rdi
	callq _ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv
	# SetupCalls(1112:3): move ptr result from %rax
	movq %rax, %r12
	# LowerLoad(1113:3).2: (^27) into i8 ^28
	# Fixing source-to-dest movb (%r12), (%r14)
	movb (%r12), %r15b
	movb %r15b, (%r14)
	# LowerStore(1114:3).9: mov i8 ^28, (^9)
	# LowerLoad(1115:3).2: (^9) into i8 ^29
	movb (%r14), %al
	movsbl %al, %ecx
	# LowerLoad(1117:3).2: (^4) into ptr ^31
	movq -488(%rbp), %rdx
	movq (%rdx), %rax
	# tt = Pointer, type = %"struct.std::__detail::_Quoted_string"
	# LowerGetelementptr(1118:3): struct-type: ptr ^31 -> ^32, indices=0,1
	addq $8, %rax
	# LowerGetelementptr(1118:3): type of ^32 is i8*
	# LowerLoad(1119:3).2: (^32) into i8 ^33
	movb (%rax), %dl
	movsbl %dl, %eax
	# LowerIcmp(1121:3): i32 ^30 vs. operand i32 ^34
	cmpl %eax, %ecx
	sete %al
	andq $1, %rax
	cmpb $0, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M239
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M221:
	# LowerLoad(1125:3).2: (^9) into i8 ^37
	movb (%r14), %al
	movsbl %al, %edx
	# LowerLoad(1127:3).2: (^4) into ptr ^39
	movq -488(%rbp), %rcx
	movq (%rcx), %rax
	# tt = Pointer, type = %"struct.std::__detail::_Quoted_string"
	# LowerGetelementptr(1128:3): struct-type: ptr ^39 -> ^40, indices=0,2
	addq $9, %rax
	# LowerGetelementptr(1128:3): type of ^40 is i8*
	# LowerLoad(1129:3).2: (^40) into i8 ^41
	movb (%rax), %cl
	movsbl %cl, %eax
	# LowerIcmp(1131:3): i32 ^38 vs. operand i32 ^42
	cmpl %eax, %edx
	sete %al
	andq $1, %rax
	cmpb $0, %al
	jne .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M239
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M275
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M239:
	# LowerLoad(1135:3).2: (^4) into ptr ^45
	movq -488(%rbp), %rcx
	movq (%rcx), %rax
	# tt = Pointer, type = %"struct.std::__detail::_Quoted_string"
	# LowerGetelementptr(1136:3): struct-type: ptr ^45 -> ^46, indices=0,2
	addq $9, %rax
	# LowerGetelementptr(1136:3): type of ^46 is i8*
	# LowerLoad(1137:3).2: (^46) into i8 ^47
	movb (%rax), %cl
	# SetupCalls(1138:3): move argument ptr nonnull dereferenceable(8) align 8 ^5
	# Fixed movzx with identical source and destination widths
	movq -464(%rbp), %rdi
	# SetupCalls(1138:3): move argument i8 signext ^47
	movzbq %cl, %rsi
	movsbq %sil, %rsi
	callq _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	# SetupCalls(1138:3): move ptr result from %rax
	movq %rax, %rax
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M275:
	# LowerLoad(1142:3).2: (^9) into i8 ^50
	movb (%r14), %al
	# SetupCalls(1143:3): move argument ptr nonnull dereferenceable(8) align 8 ^5
	# Fixed movzx with identical source and destination widths
	movq -464(%rbp), %rdi
	# SetupCalls(1143:3): move argument i8 signext ^50
	movzbq %al, %rsi
	movsbq %sil, %rsi
	callq _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	# SetupCalls(1143:3): move ptr result from %rax
	movq %rax, %rax
	# SetupCalls(1147:3): move argument ptr nonnull dereferenceable(8) align 8 ^7
	# Fixed movzx with identical source and destination widths
	movq %r13, %rdi
	callq _ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv
	# SetupCalls(1147:3): move ptr result from %rax
	movq %rax, %rax
	jmp .___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M150
	.___ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE__M328:
	# LowerLoad(1151:3).2: (^4) into ptr ^55
	movq -488(%rbp), %rbx
	movq (%rbx), %rax
	# tt = Pointer, type = %"struct.std::__detail::_Quoted_string"
	# LowerGetelementptr(1152:3): struct-type: ptr ^55 -> ^56, indices=0,1
	addq $8, %rax
	# LowerGetelementptr(1152:3): type of ^56 is i8*
	# LowerLoad(1153:3).2: (^56) into i8 ^57
	movb (%rax), %bl
	# SetupCalls(1154:3): move argument ptr nonnull dereferenceable(8) align 8 ^5
	# Fixed movzx with identical source and destination widths
	movq -464(%rbp), %rdi
	# SetupCalls(1154:3): move argument i8 signext ^57
	movzbq %bl, %rsi
	movsbq %sil, %rsi
	callq _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	# SetupCalls(1154:3): move ptr result from %rax
	movq %rax, %rax
	# LowerLoad(1155:3).2: (^3) into ptr ^59
	movq -480(%rbp), %rax
	movq (%rax), %rbx
	# SetupCalls(1156:3): move argument ptr sret align 8 ^10
	# Fixed movzx with identical source and destination widths
	movq -472(%rbp), %rdi
	# SetupCalls(1156:3): move argument ptr nonnull dereferenceable(112) align 8 ^5
	# Fixed movzx with identical source and destination widths
	movq -464(%rbp), %rsi
	callq _ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv@PLT
	# SetupCalls(1157:3): move argument ptr nonnull dereferenceable(8) align 8 ^59
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	# SetupCalls(1157:3): move argument ptr nonnull dereferenceable(32) align 8 ^10
	# Fixed movzx with identical source and destination widths
	movq -472(%rbp), %rsi
	callq _ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	# SetupCalls(1157:3): move ptr result from %rax
	movq %rax, %rbx
	# SetupCalls(1158:3): move argument ptr nonnull dereferenceable(32) align 8 ^10
	# Fixed movzx with identical source and destination widths
	movq -472(%rbp), %rdi
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	# SetupCalls(1159:3): move argument ptr nonnull dereferenceable(112) align 8 ^5
	# Fixed movzx with identical source and destination widths
	movq -464(%rbp), %rdi
	callq _ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq %rbx, %rax
	movq -496(%rbp), %r15
	movq -544(%rbp), %r14
	movq -528(%rbp), %r13
	movq -520(%rbp), %r12
	movq -536(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt15__new_allocatorIcED2Ev
.p2align 4, 0x90
_ZNSt15__new_allocatorIcED2Ev:
	.___ZNSt15__new_allocatorIcED2Ev__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(16 + 0, 16)
	subq $16, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(1070:3): size = 8, type = ptr*, var = ^2
	leaq -8(%rbp), %rax
	# LowerStore(1071:3).9: mov ptr %rdi, (^2)
	movq %rdi, (%rax)
	# LowerLoad(1072:3).2: (^2) into ptr ^3
	movq (%rax), %rbx
	movq -16(%rbp), %rbx
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
	# upalign(24 + 0, 16)
	subq $32, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(1050:3): size = 8, type = ptr*, var = ^2
	leaq -8(%rbp), %rax
	# LowerStore(1051:3).9: mov ptr %rdi, (^2)
	movq %rdi, (%rax)
	# LowerLoad(1052:3).2: (^2) into ptr ^3
	movq (%rax), %rbx
	# SetupCalls(1053:3): move argument ptr ^3
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	callq strlen@PLT
	# SetupCalls(1053:3): move i64 result from %rax
	movq %rax, %rbx
	movq %rbx, %rax
	movq -16(%rbp), %rbx
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
	# upalign(64 + 0, 16)
	subq $64, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -48(%rbp)
	movq %r12, -40(%rbp)
	# LowerAlloca(1165:3): size = 16, type = %"struct.std::__detail::_Quoted_string"*, var = ^4
	leaq -16(%rbp), %r12
	# LowerAlloca(1166:3): size = 8, type = ptr*, var = ^5
	leaq -24(%rbp), %r8
	# LowerAlloca(1167:3): size = 1, type = i8*, var = ^6
	leaq -25(%rbp), %rbx
	# LowerAlloca(1168:3): size = 1, type = i8*, var = ^7
	leaq -26(%rbp), %rcx
	# LowerStore(1169:3).9: mov ptr %rdi, (^5)
	movq %rdi, (%r8)
	# LowerStore(1170:3).9: mov i8 %sil, (^6)
	movb %sil, (%rbx)
	# LowerStore(1171:3).9: mov i8 %dl, (^7)
	movb %dl, (%rcx)
	# LowerLoad(1172:3).2: (^5) into ptr ^8
	movq (%r8), %rax
	# LowerLoad(1173:3).2: (^6) into i8 ^9
	movb (%rbx), %r8b
	# LowerLoad(1174:3).2: (^7) into i8 ^10
	movb (%rcx), %bl
	# SetupCalls(1175:3): move argument ptr nonnull dereferenceable(10) align 8 ^4
	# Fixed movzx with identical source and destination widths
	movq %r12, %rdi
	# SetupCalls(1175:3): move argument ptr nonnull dereferenceable(32) align 8 ^8
	# Fixed movzx with identical source and destination widths
	movq %rax, %rsi
	# SetupCalls(1175:3): move argument i8 signext ^9
	movzbq %r8b, %rdx
	movsbq %dl, %rdx
	# SetupCalls(1175:3): move argument i8 signext ^10
	movzbq %bl, %rcx
	movsbq %cl, %rcx
	callq _ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC2ES8_cc
	# LowerLoad(1176:3).2: (^4) into {ptr, i64} ^11
	# FinishMultireg: mov (%reg), <%pack...>
	movq (%r12), %rax
	movq 8(%r12), %rbx
	# LowerRet: two-register return
	movq %rax, %rax
	movq %rbx, %rdx
	movq -40(%rbp), %r12
	movq -48(%rbp), %rbx
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
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -40(%rbp)
	movq %r12, -32(%rbp)
	# LowerAlloca(975:3): size = 16, type = %"class.std::basic_string_view"*, var = ^2
	leaq -16(%rbp), %r12
	# LowerAlloca(976:3): size = 8, type = ptr*, var = ^3
	leaq -24(%rbp), %rax
	# LowerStore(977:3).9: mov ptr %rdi, (^3)
	movq %rdi, (%rax)
	# LowerLoad(978:3).2: (^3) into ptr ^4
	movq (%rax), %rbx
	# tt = Pointer, type = [2 x i8]
	# LowerGetelementptr(979:3): struct-type: ptr ^4 -> ^5, indices=0,0
	# LowerGetelementptr(979:3): type of ^5 is i8*
	# SetupCalls(980:3): move argument ptr nonnull dereferenceable(16) align 8 ^2
	# Fixed movzx with identical source and destination widths
	movq %r12, %rdi
	# SetupCalls(980:3): move argument ptr ^5
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rsi
	callq _ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc
	# LowerLoad(981:3).2: (^2) into {i64, ptr} ^6
	# FinishMultireg: mov (%reg), <%pack...>
	movq (%r12), %rax
	movq 8(%r12), %rbx
	# LowerRet: two-register return
	movq %rax, %rax
	movq %rbx, %rdx
	movq -32(%rbp), %r12
	movq -40(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_
.p2align 4, 0x90
_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_:
	.___ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaT___M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(56 + 0, 16)
	subq $64, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -48(%rbp)
	movq %r12, -40(%rbp)
	# LowerAlloca(962:3): size = 16, type = %"class.std::basic_string_view"*, var = ^3
	leaq -16(%rbp), %r12
	# LowerAlloca(963:3): size = 16, type = %"class.std::basic_string_view"*, var = ^4
	leaq -32(%rbp), %rbx
	# tt = Pointer, type = {i64, ptr}
	# LowerGetelementptr(964:3): struct-type: ptr ^4 -> ^5, indices=0,0
	movq %rbx, %rax
	# LowerGetelementptr(964:3): type of ^5 is i64*
	# LowerStore(965:3).9: mov i64 %rdi, (^5)
	movq %rdi, (%rax)
	# tt = Pointer, type = {i64, ptr}
	# LowerGetelementptr(966:3): struct-type: ptr ^4 -> ^6, indices=0,1
	movq %rbx, %rax
	addq $8, %rax
	# LowerGetelementptr(966:3): type of ^6 is ptr*
	# LowerStore(967:3).9: mov ptr %rsi, (^6)
	movq %rsi, (%rax)
	# SetupCalls(968:3): move argument ptr align 8 ^3
	# Fixed movzx with identical source and destination widths
	movq %r12, %rdi
	# SetupCalls(968:3): move argument ptr align 8 ^4
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rsi
	# SetupCalls(968:3): move argument i64 16
	movq $16, %rdx
	callq memcpy@PLT
	# LowerLoad(969:3).2: (^3) into {i64, ptr} ^7
	# FinishMultireg: mov (%reg), <%pack...>
	movq (%r12), %rax
	movq 8(%r12), %rbx
	# LowerRet: two-register return
	movq %rax, %rax
	movq %rbx, %rdx
	movq -40(%rbp), %r12
	movq -48(%rbp), %rbx
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
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(954:3): size = 8, type = ptr*, var = ^2
	leaq -8(%rbp), %rax
	# LowerStore(955:3).9: mov ptr %rdi, (^2)
	movq %rdi, (%rax)
	# LowerLoad(956:3).2: (^2) into ptr ^3
	movq (%rax), %rbx
	movq %rbx, %rax
	movq -16(%rbp), %rbx
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
	# upalign(24 + 0, 16)
	subq $32, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(945:3): size = 8, type = ptr*, var = ^2
	leaq -8(%rbp), %rax
	# LowerStore(946:3).9: mov ptr %rdi, (^2)
	movq %rdi, (%rax)
	# LowerLoad(947:3).2: (^2) into ptr ^3
	movq (%rax), %rbx
	# SetupCalls(948:3): move argument ptr nonnull dereferenceable(1) align 1 ^3
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	callq _ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_
	# SetupCalls(948:3): move ptr result from %rax
	movq %rax, %rbx
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
	# upalign(24 + 0, 16)
	subq $32, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(936:3): size = 8, type = ptr*, var = ^2
	leaq -8(%rbp), %rax
	# LowerStore(937:3).9: mov ptr %rdi, (^2)
	movq %rdi, (%rax)
	# LowerLoad(938:3).2: (^2) into ptr ^3
	movq (%rax), %rbx
	# SetupCalls(939:3): move argument ptr nonnull dereferenceable(1) align 1 ^3
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	callq _ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_
	# SetupCalls(939:3): move ptr result from %rax
	movq %rax, %rbx
	movq %rbx, %rax
	movq -16(%rbp), %rbx
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
	# upalign(24 + 0, 16)
	subq $32, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(927:3): size = 8, type = ptr*, var = ^2
	leaq -8(%rbp), %rax
	# LowerStore(928:3).9: mov ptr %rdi, (^2)
	movq %rdi, (%rax)
	# LowerLoad(929:3).2: (^2) into ptr ^3
	movq (%rax), %rbx
	# SetupCalls(930:3): move argument ptr nonnull dereferenceable(1) align 1 ^3
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	callq _ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE
	# SetupCalls(930:3): move ptr result from %rax
	movq %rax, %rbx
	movq %rbx, %rax
	movq -16(%rbp), %rbx
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
	# upalign(24 + 0, 16)
	subq $32, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(917:3): size = 8, type = ptr*, var = ^2
	leaq -8(%rbp), %rax
	# LowerStore(918:3).9: mov ptr %rdi, (^2)
	movq %rdi, (%rax)
	# LowerLoad(919:3).2: (^2) into ptr ^3
	movq (%rax), %rbx
	# tt = Pointer, type = %"class.std::__uniq_ptr_impl"
	# LowerGetelementptr(920:3): struct-type: ptr ^3 -> ^4, indices=0,0
	# LowerGetelementptr(920:3): type of ^4 is %"class.std::tuple"*
	# SetupCalls(921:3): move argument ptr nonnull dereferenceable(8) align 8 ^4
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	callq _ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
	# SetupCalls(921:3): move ptr result from %rax
	movq %rax, %rbx
	movq %rbx, %rax
	movq -16(%rbp), %rbx
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
	# upalign(24 + 0, 16)
	subq $32, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(899:3): size = 8, type = ptr*, var = ^2
	leaq -8(%rbp), %rax
	# LowerStore(900:3).9: mov ptr %rdi, (^2)
	movq %rdi, (%rax)
	# LowerLoad(901:3).2: (^2) into ptr ^3
	movq (%rax), %rbx
	# SetupCalls(902:3): move argument ptr nonnull dereferenceable(8) align 8 ^3
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	callq _ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_
	# SetupCalls(902:3): move ptr result from %rax
	movq %rax, %rbx
	movq %rbx, %rax
	movq -16(%rbp), %rbx
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
	# upalign(24 + 0, 16)
	subq $32, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(881:3): size = 8, type = ptr*, var = ^2
	leaq -8(%rbp), %rax
	# LowerStore(882:3).9: mov ptr %rdi, (^2)
	movq %rdi, (%rax)
	# LowerLoad(883:3).2: (^2) into ptr ^3
	movq (%rax), %rbx
	# SetupCalls(884:3): move argument ptr nonnull dereferenceable(8) align 8 ^3
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	callq _ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE
	# SetupCalls(884:3): move ptr result from %rax
	movq %rax, %rbx
	movq %rbx, %rax
	movq -16(%rbp), %rbx
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
	# upalign(152 + 0, 16)
	subq $160, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -104(%rbp)
	movq %r12, -88(%rbp)
	movq %r13, -96(%rbp)
	movq %r14, -112(%rbp)
	movq %r15, -120(%rbp)
	# LowerAlloca(987:3): size = 8, type = ptr*, var = ^4
	leaq -8(%rbp), %rax
	# LowerAlloca(988:3): size = 8, type = ptr*, var = ^5
	leaq -16(%rbp), %rcx
	# LowerAlloca(989:3): size = 8, type = ptr*, var = ^6
	leaq -24(%rbp), %r12
	# LowerAlloca(990:3): size = 16, type = %"struct.std::__cxx11::basic_string<char>::__sv_wrapper"*, var = ^7
	leaq -40(%rbp), %r13
	# LowerAlloca(991:3): size = 16, type = %"class.std::basic_string_view"*, var = ^8
	leaq -56(%rbp), %rbx
	# LowerAlloca(992:3): size = 16, type = %"class.std::basic_string_view"*, var = ^9
	leaq -72(%rbp), %r14
	# LowerStore(993:3).9: mov ptr %rdi, (^4)
	movq %rdi, (%rax)
	# LowerStore(994:3).9: mov ptr %rsi, (^5)
	movq %rsi, (%rcx)
	# LowerStore(995:3).9: mov ptr %rdx, (^6)
	movq %rdx, (%r12)
	# LowerLoad(996:3).2: (^4) into ptr ^10
	# Fixing source-to-dest movq (%rax), -80(%rbp)
	movq (%rax), %r15
	movq %r15, -80(%rbp)
	# LowerLoad(997:3).2: (^5) into ptr ^11
	movq (%rcx), %rax
	# SetupCalls(998:3): move argument ptr align 8 ^9
	# Fixed movzx with identical source and destination widths
	movq %r14, %rdi
	# SetupCalls(998:3): move argument ptr align 8 ^11
	# Fixed movzx with identical source and destination widths
	movq %rax, %rsi
	# SetupCalls(998:3): move argument i64 16
	movq $16, %rdx
	callq memcpy@PLT
	# tt = Pointer, type = {i64, ptr}
	# LowerGetelementptr(999:3): struct-type: ptr ^9 -> ^12, indices=0,0
	movq %r14, %rax
	# LowerGetelementptr(999:3): type of ^12 is i64*
	# LowerLoad(1000:3).2: (^12) into i64 ^13
	movq (%rax), %rcx
	# tt = Pointer, type = {i64, ptr}
	# LowerGetelementptr(1001:3): struct-type: ptr ^9 -> ^14, indices=0,1
	movq %r14, %rax
	addq $8, %rax
	# LowerGetelementptr(1001:3): type of ^14 is ptr*
	# LowerLoad(1002:3).2: (^14) into ptr ^15
	movq (%rax), %rdx
	# SetupCalls(1003:3): move argument i64 ^13
	# Fixed movzx with identical source and destination widths
	movq %rcx, %rdi
	# SetupCalls(1003:3): move argument ptr ^15
	# Fixed movzx with identical source and destination widths
	movq %rdx, %rsi
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17_S_to_string_viewESt17basic_string_viewIcS2_E@PLT
	# SetupCalls(1003:3): move 128-bit result from %rax and %rdx
	# Multireg move: <%hax %hdx> -> <%hr14 %hr15>
	movq %rax, %r14
	movq %rdx, %r15
	# tt = Pointer, type = {i64, ptr}
	# LowerGetelementptr(1004:3): struct-type: ptr ^8 -> ^17, indices=0,0
	movq %rbx, %rax
	# LowerGetelementptr(1004:3): type of ^17 is i64*
	# LowerExtractvalue(1006:3)
	# PaddedStructs({i64, ptr} -> i64): move from pack ^16 ({i64, ptr}) to ^31 (opaque), index = 0
	movq %r14, %rdx
	movq %rdx, %rcx
	# LowerStore(1006:3).9: mov i64 ^18, (^17)
	movq %rcx, (%rax)
	# tt = Pointer, type = {i64, ptr}
	# LowerGetelementptr(1007:3): struct-type: ptr ^8 -> ^19, indices=0,1
	movq %rbx, %rax
	addq $8, %rax
	# LowerGetelementptr(1007:3): type of ^19 is ptr*
	# LowerExtractvalue(1009:3)
	# PaddedStructs({i64, ptr} -> ptr): move from pack ^16 ({i64, ptr}) to ^32 (opaque), index = 1
	movq %r15, %rdx
	movq %rdx, %rcx
	# LowerStore(1009:3).9: mov ptr ^20, (^19)
	movq %rcx, (%rax)
	# tt = Pointer, type = {i64, ptr}
	# LowerGetelementptr(1010:3): struct-type: ptr ^8 -> ^21, indices=0,0
	movq %rbx, %rax
	# LowerGetelementptr(1010:3): type of ^21 is i64*
	# LowerLoad(1011:3).2: (^21) into i64 ^22
	movq (%rax), %rcx
	# tt = Pointer, type = {i64, ptr}
	# LowerGetelementptr(1012:3): struct-type: ptr ^8 -> ^23, indices=0,1
	movq %rbx, %rax
	addq $8, %rax
	# LowerGetelementptr(1012:3): type of ^23 is ptr*
	# LowerLoad(1013:3).2: (^23) into ptr ^24
	movq (%rax), %rbx
	# SetupCalls(1014:3): move argument ptr nonnull dereferenceable(16) align 8 ^7
	# Fixed movzx with identical source and destination widths
	movq %r13, %rdi
	# SetupCalls(1014:3): move argument i64 ^22
	# Fixed movzx with identical source and destination widths
	movq %rcx, %rsi
	# SetupCalls(1014:3): move argument ptr ^24
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdx
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperC1ESt17basic_string_viewIcS2_E@PLT
	# LowerLoad(1015:3).2: (^6) into ptr ^25
	movq (%r12), %rbx
	# tt = Pointer, type = {i64, ptr}
	# LowerGetelementptr(1016:3): struct-type: ptr ^7 -> ^26, indices=0,0
	movq %r13, %rax
	# LowerGetelementptr(1016:3): type of ^26 is i64*
	# LowerLoad(1017:3).2: (^26) into i64 ^27
	movq (%rax), %rcx
	# tt = Pointer, type = {i64, ptr}
	# LowerGetelementptr(1018:3): struct-type: ptr ^7 -> ^28, indices=0,1
	movq %r13, %rax
	addq $8, %rax
	# LowerGetelementptr(1018:3): type of ^28 is ptr*
	# LowerLoad(1019:3).2: (^28) into ptr ^29
	movq (%rax), %r8
	# SetupCalls(1020:3): move argument ptr nonnull dereferenceable(32) align 8 ^10
	# Fixed movzx with identical source and destination widths
	movq -80(%rbp), %rdi
	# SetupCalls(1020:3): move argument i64 ^27
	# Fixed movzx with identical source and destination widths
	movq %rcx, %rsi
	# SetupCalls(1020:3): move argument ptr ^29
	# Fixed movzx with identical source and destination widths
	movq %r8, %rdx
	# SetupCalls(1020:3): move argument ptr nonnull dereferenceable(1) align 1 ^25
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rcx
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_@PLT
	movq -120(%rbp), %r15
	movq -112(%rbp), %r14
	movq -96(%rbp), %r13
	movq -88(%rbp), %r12
	movq -104(%rbp), %rbx
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
	# upalign(16 + 0, 16)
	subq $16, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(380:3): size = 8, type = ptr*, var = ^2
	leaq -8(%rbp), %rax
	# LowerStore(381:3).9: mov ptr %rdi, (^2)
	movq %rdi, (%rax)
	# LowerLoad(382:3).2: (^2) into ptr ^3
	movq (%rax), %rbx
	# tt = Pointer, type = %"class.std::filesystem::__cxx11::path"
	# LowerGetelementptr(383:3): struct-type: ptr ^3 -> ^4, indices=0,1
	movq %rbx, %rax
	addq $32, %rax
	# LowerGetelementptr(383:3): type of ^4 is %"struct.std::filesystem::__cxx11::path::_List"*
	# SetupCalls(384:3): move argument ptr nonnull dereferenceable(8) align 8 ^4
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq _ZNSt10filesystem7__cxx114path5_ListD2Ev
	# tt = Pointer, type = %"class.std::filesystem::__cxx11::path"
	# LowerGetelementptr(385:3): struct-type: ptr ^3 -> ^5, indices=0,0
	movq %rbx, %rax
	# LowerGetelementptr(385:3): type of ^5 is %"class.std::__cxx11::basic_string"*
	# SetupCalls(386:3): move argument ptr nonnull dereferenceable(32) align 8 ^5
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq -16(%rbp), %rbx
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
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -32(%rbp)
	# LowerAlloca(801:3): size = 8, type = ptr*, var = ^4
	leaq -8(%rbp), %rcx
	# LowerAlloca(802:3): size = 8, type = ptr*, var = ^5
	leaq -16(%rbp), %r8
	# LowerAlloca(803:3): size = 8, type = ptr*, var = ^6
	leaq -24(%rbp), %rax
	# LowerStore(804:3).9: mov ptr %rdi, (^4)
	movq %rdi, (%rcx)
	# LowerStore(805:3).9: mov ptr %rsi, (^5)
	movq %rsi, (%r8)
	# LowerStore(806:3).9: mov ptr %rdx, (^6)
	movq %rdx, (%rax)
	# LowerLoad(807:3).2: (^4) into ptr ^7
	movq (%rcx), %rbx
	# LowerLoad(808:3).2: (^5) into ptr ^8
	movq (%r8), %rbx
	# LowerBasicConversion(809:3): ptr ^8 -> i64 ^9
	# LowerLoad(810:3).2: (^6) into ptr ^10
	movq (%rax), %rcx
	# LowerBasicConversion(811:3): ptr ^10 -> i64 ^11
	# LowerIcmp(812:3): i64 ^9 vs. operand i64 ^11
	cmpq %rcx, %rbx
	setb %al
	andq $1, %rax
	movq -32(%rbp), %rbx
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
	# upalign(32 + 0, 16)
	subq $32, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -24(%rbp)
	movq %r15, -32(%rbp)
	# LowerAlloca(411:3): size = 8, type = ptr*, var = ^3
	leaq -8(%rbp), %rax
	# LowerAlloca(412:3): size = 8, type = ptr*, var = ^4
	leaq -16(%rbp), %rbx
	# LowerStore(413:3).9: mov ptr %rdi, (^3)
	movq %rdi, (%rax)
	# LowerStore(414:3).9: mov ptr %rsi, (^4)
	movq %rsi, (%rbx)
	# LowerLoad(415:3).2: (^3) into ptr ^5
	movq (%rax), %rcx
	# LowerLoad(416:3).2: (^4) into ptr ^6
	movq (%rbx), %rax
	# tt = Pointer, type = %"class.std::__shared_ptr"
	# LowerGetelementptr(417:3): struct-type: ptr ^5 -> ^7, indices=0,0
	movq %rcx, %rax
	# LowerGetelementptr(417:3): type of ^7 is ptr*
	# LowerLoad(418:3).2: (^4) into ptr ^8
	movq (%rbx), %rdx
	# tt = Pointer, type = %"class.std::__shared_ptr"
	# LowerGetelementptr(419:3): struct-type: ptr ^8 -> ^9, indices=0,0
	# LowerGetelementptr(419:3): type of ^9 is ptr*
	# LowerLoad(420:3).2: (^9) into ptr ^10
	# Fixing source-to-dest movq (%rdx), (%rax)
	movq (%rdx), %r15
	movq %r15, (%rax)
	# LowerStore(421:3).9: mov ptr ^10, (^7)
	# tt = Pointer, type = %"class.std::__shared_ptr"
	# LowerGetelementptr(422:3): struct-type: ptr ^5 -> ^11, indices=0,1
	movq %rcx, %rax
	addq $8, %rax
	# LowerGetelementptr(422:3): type of ^11 is %"class.std::__shared_count"*
	# LowerLoad(423:3).2: (^4) into ptr ^12
	movq (%rbx), %rcx
	# tt = Pointer, type = %"class.std::__shared_ptr"
	# LowerGetelementptr(424:3): struct-type: ptr ^12 -> ^13, indices=0,1
	addq $8, %rcx
	# LowerGetelementptr(424:3): type of ^13 is %"class.std::__shared_count"*
	# SetupCalls(425:3): move argument ptr nonnull dereferenceable(8) align 8 ^11
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	# SetupCalls(425:3): move argument ptr nonnull dereferenceable(8) align 8 ^13
	# Fixed movzx with identical source and destination widths
	movq %rcx, %rsi
	callq _ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_
	movq -32(%rbp), %r15
	movq -24(%rbp), %rbx
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
	# upalign(8 + 0, 16)
	subq $16, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	# LowerAlloca(271:3): size = 8, type = ptr*, var = ^3
	leaq -8(%rbp), %rax
	# LowerStore(272:3).9: mov ptr %rdi, (^3)
	movq %rdi, (%rax)
	# SetupCalls(273:3): move argument ptr nonnull dereferenceable(16) align 8 %rdi
	# Semiunclobber non-live %rdi into %rdi
	movq %rdi, %rdi
	# SetupCalls(273:3): move argument ptr nonnull dereferenceable(16) align 8 %rsi
	# Semiunclobber non-live %rsi into %rsi
	movq %rsi, %rsi
	callq _ZNSt10filesystem7__cxx1118directory_iteratorC2EOS1_
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
	# upalign(264 + 0, 16)
	subq $272, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -152(%rbp)
	movq %r12, -200(%rbp)
	movq %r13, -208(%rbp)
	movq %r14, -168(%rbp)
	movq %r15, -136(%rbp)
	# LowerAlloca(210:3): size = 8, type = ptr*, var = ^4
	# Fixing source-to-dest leaq -8(%rbp), -128(%rbp)
	leaq -8(%rbp), %r15
	movq %r15, -128(%rbp)
	# LowerAlloca(211:3): size = 8, type = ptr*, var = ^5
	# Fixing source-to-dest leaq -16(%rbp), -104(%rbp)
	leaq -16(%rbp), %r15
	movq %r15, -104(%rbp)
	# LowerAlloca(212:3): size = 8, type = ptr*, var = ^6
	leaq -24(%rbp), %rbx
	# LowerAlloca(213:3): size = 8, type = ptr*, var = ^7
	leaq -32(%rbp), %rcx
	# LowerAlloca(214:3): size = 8, type = ptr*, var = ^8
	leaq -40(%rbp), %rax
	# LowerAlloca(215:3): size = 1, type = i8*, var = ^9
	leaq -41(%rbp), %r9
	# LowerAlloca(216:3): size = 16, type = %"class.std::basic_string_view"*, var = ^10
	# Fixing source-to-dest leaq -64(%rbp), -120(%rbp)
	leaq -64(%rbp), %r15
	movq %r15, -120(%rbp)
	# LowerAlloca(217:3): size = 16, type = %"class.std::basic_string_view"*, var = ^11
	leaq -80(%rbp), %r14
	# LowerAlloca(218:3): size = 1, type = %"class.std::allocator"*, var = ^12
	# Fixing source-to-dest leaq -81(%rbp), -112(%rbp)
	leaq -81(%rbp), %r15
	movq %r15, -112(%rbp)
	# LowerStore(219:3).9: mov ptr %rdi, (^7)
	movq %rdi, (%rcx)
	# LowerStore(220:3).9: mov ptr %rsi, (^8)
	movq %rsi, (%rax)
	# LowerStore(221:3).9: mov i8 %dl, (^9)
	movb %dl, (%r9)
	# LowerLoad(222:3).2: (^7) into ptr ^13
	# Fixing source-to-dest movq (%rcx), -96(%rbp)
	movq (%rcx), %r15
	movq %r15, -96(%rbp)
	# tt = Pointer, type = %"class.std::filesystem::__cxx11::path"
	# LowerGetelementptr(223:3): struct-type: ptr ^13 -> ^14, indices=0,0
	movq -96(%rbp), %r15
	# LowerGetelementptr(223:3): type of ^14 is %"class.std::__cxx11::basic_string"*
	# LowerLoad(224:3).2: (^8) into ptr ^15
	movq (%rax), %rcx
	# SetupCalls(225:3): move argument ptr nonnull dereferenceable(2) align 1 ^15
	# Fixed movzx with identical source and destination widths
	movq %rcx, %rdi
	callq _ZNSt10filesystem7__cxx118__detail17__effective_rangeIA2_cEEDaRKT_
	# SetupCalls(225:3): move 128-bit result from %rax and %rdx
	# Multireg move: <%hax %hdx> -> <%hr12 %hr13>
	movq %rax, %r12
	movq %rdx, %r13
	# tt = Pointer, type = {i64, ptr}
	# LowerGetelementptr(226:3): struct-type: ptr ^11 -> ^17, indices=0,0
	movq %r14, %rax
	# LowerGetelementptr(226:3): type of ^17 is i64*
	# LowerExtractvalue(228:3)
	# PaddedStructs({i64, ptr} -> i64): move from pack ^16 ({i64, ptr}) to ^36 (opaque), index = 0
	movq %r12, %rdx
	movq %rdx, %rcx
	# LowerStore(228:3).9: mov i64 ^18, (^17)
	movq %rcx, (%rax)
	# tt = Pointer, type = {i64, ptr}
	# LowerGetelementptr(229:3): struct-type: ptr ^11 -> ^19, indices=0,1
	movq %r14, %rax
	addq $8, %rax
	# LowerGetelementptr(229:3): type of ^19 is ptr*
	# LowerExtractvalue(231:3)
	# PaddedStructs({i64, ptr} -> ptr): move from pack ^16 ({i64, ptr}) to ^37 (opaque), index = 1
	movq %r13, %rdx
	movq %rdx, %rcx
	# LowerStore(231:3).9: mov ptr ^20, (^19)
	movq %rcx, (%rax)
	# tt = Pointer, type = {i64, ptr}
	# LowerGetelementptr(232:3): struct-type: ptr ^11 -> ^21, indices=0,0
	movq %r14, %rax
	# LowerGetelementptr(232:3): type of ^21 is i64*
	# LowerLoad(233:3).2: (^21) into i64 ^22
	movq (%rax), %rcx
	# tt = Pointer, type = {i64, ptr}
	# LowerGetelementptr(234:3): struct-type: ptr ^11 -> ^23, indices=0,1
	movq %r14, %rax
	addq $8, %rax
	# LowerGetelementptr(234:3): type of ^23 is ptr*
	# LowerLoad(235:3).2: (^23) into ptr ^24
	movq (%rax), %rdx
	# SetupCalls(236:3): move argument i64 ^22
	# Fixed movzx with identical source and destination widths
	movq %rcx, %rdi
	# SetupCalls(236:3): move argument ptr ^24
	# Fixed movzx with identical source and destination widths
	movq %rdx, %rsi
	callq _ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_
	# SetupCalls(236:3): move 128-bit result from %rax and %rdx
	# Multireg move: <%hax %hdx> -> <%hr12 %hr13>
	movq %rax, %r12
	movq %rdx, %r13
	# tt = Pointer, type = {i64, ptr}
	# LowerGetelementptr(237:3): struct-type: ptr ^10 -> ^26, indices=0,0
	movq -120(%rbp), %rax
	# LowerGetelementptr(237:3): type of ^26 is i64*
	# LowerExtractvalue(239:3)
	# PaddedStructs({i64, ptr} -> i64): move from pack ^25 ({i64, ptr}) to ^38 (opaque), index = 0
	movq %r12, %rdx
	movq %rdx, %rcx
	# LowerStore(239:3).9: mov i64 ^27, (^26)
	movq %rcx, (%rax)
	# tt = Pointer, type = {i64, ptr}
	# LowerGetelementptr(240:3): struct-type: ptr ^10 -> ^28, indices=0,1
	movq -120(%rbp), %rax
	addq $8, %rax
	# LowerGetelementptr(240:3): type of ^28 is ptr*
	# LowerExtractvalue(242:3)
	# PaddedStructs({i64, ptr} -> ptr): move from pack ^25 ({i64, ptr}) to ^39 (opaque), index = 1
	movq %r13, %rdx
	movq %rdx, %rcx
	# LowerStore(242:3).9: mov ptr ^29, (^28)
	movq %rcx, (%rax)
	# LowerStore(243:3).9: mov %"class.std::allocator"* ^12, (^6)
	# Fixing source-to-dest movq -112(%rbp), (%rbx)
	pushq %r15
	movq -112(%rbp), %r15
	movq %r15, (%rbx)
	popq %r15
	# LowerLoad(244:3).2: (^6) into ptr ^30
	movq -128(%rbp), %rax
	# Fixing source-to-dest movq (%rbx), (%rax)
	pushq %r15
	movq (%rbx), %r15
	movq %r15, (%rax)
	popq %r15
	# LowerStore(245:3).9: mov ptr ^30, (^4)
	# LowerLoad(246:3).2: (^4) into ptr ^31
	movq -128(%rbp), %rax
	movq (%rax), %rbx
	# SetupCalls(247:3): move argument ptr nonnull dereferenceable(32) align 8 ^14
	# Fixed movzx with identical source and destination widths
	movq %r15, %rdi
	# SetupCalls(247:3): move argument ptr nonnull dereferenceable(16) align 8 ^10
	# Fixed movzx with identical source and destination widths
	movq -120(%rbp), %rsi
	# SetupCalls(247:3): move argument ptr nonnull dereferenceable(1) align 1 ^12
	# Fixed movzx with identical source and destination widths
	movq -112(%rbp), %rdx
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_
	# LowerStore(248:3).9: mov %"class.std::allocator"* ^12, (^5)
	movq -104(%rbp), %rax
	# Fixing source-to-dest movq -112(%rbp), (%rax)
	movq -112(%rbp), %r15
	movq %r15, (%rax)
	# LowerLoad(249:3).2: (^5) into ptr ^32
	movq -104(%rbp), %rbx
	movq (%rbx), %rax
	# SetupCalls(250:3): move argument ptr nonnull dereferenceable(1) align 1 ^32
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq _ZNSt15__new_allocatorIcED2Ev
	# tt = Pointer, type = %"class.std::filesystem::__cxx11::path"
	# LowerGetelementptr(251:3): struct-type: ptr ^13 -> ^33, indices=0,1
	movq -96(%rbp), %rax
	addq $32, %rax
	# LowerGetelementptr(251:3): type of ^33 is %"struct.std::filesystem::__cxx11::path::_List"*
	# SetupCalls(252:3): move argument ptr nonnull dereferenceable(8) align 8 ^33
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq _ZNSt10filesystem7__cxx114path5_ListC1Ev@PLT
	# SetupCalls(253:3): move argument ptr nonnull dereferenceable(40) align 8 ^13
	# Fixed movzx with identical source and destination widths
	movq -96(%rbp), %rdi
	callq _ZNSt10filesystem7__cxx114path14_M_split_cmptsEv@PLT
	movq -136(%rbp), %r15
	movq -168(%rbp), %r14
	movq -208(%rbp), %r13
	movq -200(%rbp), %r12
	movq -152(%rbp), %rbx
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
	# upalign(384 + 0, 16)
	subq $384, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -208(%rbp)
	movq %r12, -232(%rbp)
	movq %r13, -240(%rbp)
	movq %r14, -248(%rbp)
	movq %r15, -176(%rbp)
	# LowerAlloca(538:3): size = 8, type = ptr*, var = ^2
	# Fixing source-to-dest leaq -8(%rbp), -168(%rbp)
	leaq -8(%rbp), %r15
	movq %r15, -168(%rbp)
	# LowerAlloca(539:3): size = 4, type = i32*, var = ^3
	leaq -12(%rbp), %rcx
	# LowerAlloca(540:3): size = 4, type = i32*, var = ^4
	# Fixing source-to-dest leaq -16(%rbp), -152(%rbp)
	leaq -16(%rbp), %r15
	movq %r15, -152(%rbp)
	# LowerAlloca(541:3): size = 4, type = i32*, var = ^5
	# Fixing source-to-dest leaq -20(%rbp), -136(%rbp)
	leaq -20(%rbp), %r15
	movq %r15, -136(%rbp)
	# LowerAlloca(542:3): size = 8, type = ptr*, var = ^6
	# Fixing source-to-dest leaq -32(%rbp), -160(%rbp)
	leaq -32(%rbp), %r15
	movq %r15, -160(%rbp)
	# LowerAlloca(543:3): size = 4, type = i32*, var = ^7
	leaq -36(%rbp), %rbx
	# LowerAlloca(544:3): size = 4, type = i32*, var = ^8
	# Fixing source-to-dest leaq -40(%rbp), -144(%rbp)
	leaq -40(%rbp), %r15
	movq %r15, -144(%rbp)
	# LowerAlloca(545:3): size = 4, type = i32*, var = ^9
	# Fixing source-to-dest leaq -44(%rbp), -128(%rbp)
	leaq -44(%rbp), %r15
	movq %r15, -128(%rbp)
	# LowerAlloca(546:3): size = 8, type = ptr*, var = ^10
	leaq -56(%rbp), %rdx
	# LowerAlloca(547:3): size = 4, type = i32*, var = ^11
	leaq -60(%rbp), %r8
	# LowerAlloca(548:3): size = 8, type = ptr*, var = ^12
	leaq -72(%rbp), %rax
	# LowerAlloca(549:3): size = 1, type = i8*, var = ^13
	leaq -73(%rbp), %r9
	# LowerAlloca(550:3): size = 1, type = i8*, var = ^14
	leaq -74(%rbp), %r10
	# LowerAlloca(551:3): size = 1, type = i8*, var = ^15
	leaq -75(%rbp), %r11
	# LowerAlloca(552:3): size = 4, type = i32*, var = ^16
	leaq -80(%rbp), %rsi
	# LowerAlloca(553:3): size = 4, type = i32*, var = ^17
	leaq -84(%rbp), %r12
	# LowerAlloca(554:3): size = 8, type = i64*, var = ^18
	leaq -96(%rbp), %r13
	# LowerAlloca(555:3): size = 8, type = ptr*, var = ^19
	leaq -104(%rbp), %r14
	# LowerAlloca(556:3): size = 8, type = i64*, var = ^20
	leaq -112(%rbp), %r15
	# LowerStore(557:3).9: mov ptr %rdi, (^12)
	movq %rdi, (%rax)
	# LowerLoad(558:3).2: (^12) into ptr ^21
	# Fixing source-to-dest movq (%rax), -120(%rbp)
	pushq %r15
	movq (%rax), %r15
	movq %r15, -120(%rbp)
	popq %r15
	# LowerStore(559:3).3: mov $imm, (^13)
	movb $1, (%r9)
	# LowerStore(560:3).3: mov $imm, (^14)
	movb $1, (%r10)
	# LowerStore(561:3).3: mov $imm, (^15)
	movb $1, (%r11)
	# LowerStore(562:3).3: mov $imm, (^16)
	movl $32, (%rsi)
	# LowerStore(563:3).3: mov $imm, (^17)
	movl $32, (%r12)
	# LowerStore(564:3).3: mov $imm, (^18)
	movabsq $4294967297, %rax
	movq %rax, (%r13)
	# tt = Pointer, type = %"class.std::_Sp_counted_base"
	# LowerGetelementptr(565:3): struct-type: ptr ^21 -> ^22, indices=0,1
	movq -120(%rbp), %rax
	addq $8, %rax
	# LowerGetelementptr(565:3): type of ^22 is i32*
	# LowerStore(566:3).9: mov %"class.std::_Sp_counted_base"* ^22, (^19)
	movq %rax, (%r14)
	# LowerLoad(567:3).2: (^19) into ptr ^23
	movq (%r14), %rax
	# LowerLoad(568:3).2: (^23) into i64 ^24
	# Fixing source-to-dest movq (%rax), (%r15)
	movq (%rax), %r14
	movq %r14, (%r15)
	# LowerStore(569:3).9: mov i64 ^24, (^20)
	# LowerLoad(570:3).2: (^20) into i64 ^25
	movq (%r15), %rax
	# LowerIcmp(571:3): i64 ^25 vs. intlike 4294967297
	movabsq $4294967297, %rsi
	cmpq %rsi, %rax
	sete %al
	andq $1, %rax
	cmpb $0, %al
	jne .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M77
	jmp .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M154
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M77:
	# tt = Pointer, type = %"class.std::_Sp_counted_base"
	# LowerGetelementptr(575:3): struct-type: ptr ^21 -> ^28, indices=0,1
	movq -120(%rbp), %rax
	addq $8, %rax
	# LowerGetelementptr(575:3): type of ^28 is i32*
	# LowerStore(576:3).3: mov $imm, (^28)
	movl $0, (%rax)
	# tt = Pointer, type = %"class.std::_Sp_counted_base"
	# LowerGetelementptr(577:3): struct-type: ptr ^21 -> ^29, indices=0,2
	movq -120(%rbp), %rax
	addq $12, %rax
	# LowerGetelementptr(577:3): type of ^29 is i32*
	# LowerStore(578:3).3: mov $imm, (^29)
	movl $0, (%rax)
	# LowerLoad(579:3).2: (^21) into ptr ^30
	movq -120(%rbp), %rax
	movq (%rax), %rbx
	# tt = Pointer, type = ptr
	# LowerGetelementptr(580:3): struct-type: ptr ^30 -> ^31, indices=2
	addq $16, %rbx
	# LowerGetelementptr(580:3): type of ^31 is ptr*
	# LowerLoad(581:3).2: (^31) into ptr ^32
	movq (%rbx), %rax
	# SetupCalls(582:3): move argument ptr nonnull dereferenceable(16) align 8 ^21
	# Fixed movzx with identical source and destination widths
	movq -120(%rbp), %rdi
	# SetupCalls(582:3): jump to function operand ^32
	callq *%rax
	# LowerLoad(583:3).2: (^21) into ptr ^33
	movq -120(%rbp), %rax
	movq (%rax), %rbx
	# tt = Pointer, type = ptr
	# LowerGetelementptr(584:3): struct-type: ptr ^33 -> ^34, indices=3
	addq $24, %rbx
	# LowerGetelementptr(584:3): type of ^34 is ptr*
	# LowerLoad(585:3).2: (^34) into ptr ^35
	movq (%rbx), %rax
	# SetupCalls(586:3): move argument ptr nonnull dereferenceable(16) align 8 ^21
	# Fixed movzx with identical source and destination widths
	movq -120(%rbp), %rdi
	# SetupCalls(586:3): jump to function operand ^35
	callq *%rax
	jmp .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M254
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M154:
	# tt = Pointer, type = %"class.std::_Sp_counted_base"
	# LowerGetelementptr(590:3): struct-type: ptr ^21 -> ^37, indices=0,1
	movq -120(%rbp), %rax
	addq $8, %rax
	# LowerGetelementptr(590:3): type of ^37 is i32*
	# LowerStore(591:3).9: mov %"class.std::_Sp_counted_base"* ^37, (^10)
	movq %rax, (%rdx)
	# LowerStore(592:3).3: mov $imm, (^11)
	movl $-1, (%r8)
	# LowerLoad(593:3).4: __libc_single_threaded into ^38
	movb __libc_single_threaded(%rip), %al
	# LowerIcmp(594:3): i8 ^38 vs. intlike 0
	cmpb $0, %al
	setne %al
	andq $1, %rax
	cmpb $0, %al
	jne .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M170
	jmp .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M200
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M170:
	# LowerLoad(598:3).2: (^10) into ptr ^41
	movq (%rdx), %rax
	# LowerLoad(599:3).2: (^11) into i32 ^42
	movl (%r8), %ecx
	# LowerStore(600:3).9: mov ptr ^41, (^6)
	movq -160(%rbp), %rdx
	movq %rax, (%rdx)
	# LowerStore(601:3).9: mov i32 ^42, (^7)
	movl %ecx, (%rbx)
	# LowerLoad(602:3).2: (^6) into ptr ^43
	movq -160(%rbp), %rcx
	movq (%rcx), %rax
	# LowerLoad(603:3).2: (^43) into i32 ^44
	movq -144(%rbp), %rcx
	# Fixing source-to-dest movl (%rax), (%rcx)
	movl (%rax), %r15d
	movl %r15d, (%rcx)
	# LowerStore(604:3).9: mov i32 ^44, (^8)
	# LowerLoad(605:3).2: (^7) into i32 ^45
	movl (%rbx), %eax
	# LowerLoad(606:3).2: (^6) into ptr ^46
	movq -160(%rbp), %rcx
	movq (%rcx), %rbx
	# LowerLoad(607:3).2: (^46) into i32 ^47
	movl (%rbx), %ecx
	# LowerMath(608:3): ^47, ^45 into i32 ^48
	addl %eax, %ecx
	# LowerStore(609:3).9: mov i32 ^48, (^46)
	movl %ecx, (%rbx)
	# LowerLoad(610:3).2: (^8) into i32 ^49
	movq -128(%rbp), %rax
	movq -144(%rbp), %rbx
	# Fixing source-to-dest movl (%rbx), (%rax)
	movl (%rbx), %r15d
	movl %r15d, (%rax)
	# LowerStore(611:3).9: mov i32 ^49, (^9)
	jmp .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M225
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M200:
	# LowerLoad(615:3).2: (^10) into ptr ^51
	movq (%rdx), %rax
	# LowerLoad(616:3).2: (^11) into i32 ^52
	movl (%r8), %ebx
	# LowerStore(617:3).9: mov ptr ^51, (^2)
	movq -168(%rbp), %rdx
	movq %rax, (%rdx)
	# LowerStore(618:3).9: mov i32 ^52, (^3)
	movl %ebx, (%rcx)
	# LowerLoad(619:3).2: (^2) into ptr ^53
	movq -168(%rbp), %rbx
	movq (%rbx), %rax
	# LowerLoad(620:3).2: (^3) into i32 ^54
	movq -152(%rbp), %rbx
	# Fixing source-to-dest movl (%rcx), (%rbx)
	movl (%rcx), %r15d
	movl %r15d, (%rbx)
	# LowerStore(621:3).9: mov i32 ^54, (^4)
	# LowerLoad(622:3).2: (^4) into i32 ^55
	movq -152(%rbp), %rcx
	movl (%rcx), %ebx
	lock addl %ebx, (%rax)
	# LowerStore(624:3).9: mov i32 ^56, (^5)
	movq -136(%rbp), %rax
	movl %ebx, (%rax)
	# LowerLoad(625:3).2: (^5) into i32 ^57
	movq -128(%rbp), %rax
	movq -136(%rbp), %rbx
	# Fixing source-to-dest movl (%rbx), (%rax)
	movl (%rbx), %r15d
	movl %r15d, (%rax)
	# LowerStore(626:3).9: mov i32 ^57, (^9)
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M225:
	# LowerLoad(630:3).2: (^9) into i32 ^59
	movq -128(%rbp), %rax
	movl (%rax), %ebx
	# LowerIcmp(631:3): i32 ^59 vs. intlike 1
	cmpl $1, %ebx
	sete %al
	andq $1, %rax
	cmpb $0, %al
	jne .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M232
	jmp .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M254
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M232:
	# SetupCalls(635:3): move argument ptr nonnull dereferenceable(16) align 8 ^21
	# Fixed movzx with identical source and destination widths
	movq -120(%rbp), %rdi
	callq _ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv__M254:
	movq -176(%rbp), %r15
	movq -248(%rbp), %r14
	movq -240(%rbp), %r13
	movq -232(%rbp), %r12
	movq -208(%rbp), %rbx
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
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(369:3): size = 8, type = ptr*, var = ^2
	leaq -8(%rbp), %rax
	# LowerStore(370:3).9: mov ptr %rdi, (^2)
	movq %rdi, (%rax)
	# LowerLoad(371:3).2: (^2) into ptr ^3
	movq (%rax), %rbx
	# tt = Pointer, type = %"class.std::filesystem::__cxx11::directory_entry"
	# LowerGetelementptr(372:3): struct-type: ptr ^3 -> ^4, indices=0,0
	# LowerGetelementptr(372:3): type of ^4 is %"class.std::filesystem::__cxx11::path"*
	movq %rbx, %rax
	movq -16(%rbp), %rbx
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
	# upalign(32 + 0, 16)
	subq $32, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(312:3): size = 8, type = ptr*, var = ^3
	leaq -8(%rbp), %rax
	# LowerAlloca(313:3): size = 8, type = ptr*, var = ^4
	leaq -16(%rbp), %rbx
	# LowerStore(314:3).9: mov ptr %rdi, (^3)
	movq %rdi, (%rax)
	# LowerStore(315:3).9: mov ptr %rsi, (^4)
	movq %rsi, (%rbx)
	# LowerLoad(316:3).2: (^3) into ptr ^5
	movq (%rax), %rcx
	# LowerLoad(317:3).2: (^4) into ptr ^6
	movq (%rbx), %rax
	# SetupCalls(318:3): move argument ptr nonnull dereferenceable(16) align 8 ^5
	# Fixed movzx with identical source and destination widths
	movq %rcx, %rdi
	# SetupCalls(318:3): move argument ptr nonnull dereferenceable(16) align 8 ^6
	# Fixed movzx with identical source and destination widths
	movq %rax, %rsi
	callq _ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3_
	# SetupCalls(318:3): move i1 result from %rax
	movb %al, %bl
	# LowerLogic(320:3): ^7, true into i1 ^8
	movb %bl, %al
	xorb $1, %al
	movq -24(%rbp), %rbx
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
	# upalign(16 + 0, 16)
	subq $16, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	# LowerAlloca(303:3): size = 8, type = ptr*, var = ^3
	leaq -8(%rbp), %rax
	# LowerStore(304:3).9: mov ptr %rdi, (^3)
	movq %rdi, (%rax)
	# Clobber %rdi
	movq %rdi, -16(%rbp)
	# SetupCalls(305:3): move argument ptr align 8 %rdi
	# Semiunclobber live %rdi into %rdi
	movq -16(%rbp), %rdi
	# SetupCalls(305:3): move argument i32 0
	movq $0, %rsi
	# SetupCalls(305:3): move argument i64 16
	movq $16, %rdx
	callq memset@PLT
	# Unclobber %rdi, live at nowhere (in), nowhere (out)
	movq -16(%rbp), %rdi
	# SetupCalls(306:3): move argument ptr nonnull dereferenceable(16) align 8 %rdi
	# Semiunclobber non-live %rdi into %rdi
	movq %rdi, %rdi
	callq _ZNSt10filesystem7__cxx1118directory_iteratorC2Ev
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
	# upalign(24 + 0, 16)
	subq $32, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(279:3): size = 8, type = ptr*, var = ^3
	leaq -8(%rbp), %rax
	# LowerAlloca(280:3): size = 8, type = ptr*, var = ^4
	leaq -16(%rbp), %rcx
	# LowerStore(281:3).9: mov ptr %rdi, (^3)
	movq %rdi, (%rax)
	# LowerStore(282:3).9: mov ptr %rsi, (^4)
	movq %rsi, (%rcx)
	# LowerLoad(283:3).2: (^3) into ptr ^5
	movq (%rax), %rbx
	# tt = Pointer, type = %"class.std::filesystem::__cxx11::directory_iterator"
	# LowerGetelementptr(284:3): struct-type: ptr ^5 -> ^6, indices=0,0
	# LowerGetelementptr(284:3): type of ^6 is %"class.std::__shared_ptr"*
	# LowerLoad(285:3).2: (^4) into ptr ^7
	movq (%rcx), %rax
	# tt = Pointer, type = %"class.std::filesystem::__cxx11::directory_iterator"
	# LowerGetelementptr(286:3): struct-type: ptr ^7 -> ^8, indices=0,0
	# LowerGetelementptr(286:3): type of ^8 is %"class.std::__shared_ptr"*
	# SetupCalls(287:3): move argument ptr nonnull dereferenceable(16) align 8 ^6
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	# SetupCalls(287:3): move argument ptr nonnull dereferenceable(16) align 8 ^8
	# Fixed movzx with identical source and destination widths
	movq %rax, %rsi
	callq _ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC2ERKS5_
	movq -24(%rbp), %rbx
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
	# upalign(24 + 0, 16)
	subq $32, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(890:3): size = 8, type = ptr*, var = ^2
	leaq -8(%rbp), %rax
	# LowerStore(891:3).9: mov ptr %rdi, (^2)
	movq %rdi, (%rax)
	# LowerLoad(892:3).2: (^2) into ptr ^3
	movq (%rax), %rbx
	# SetupCalls(893:3): move argument ptr nonnull dereferenceable(8) align 8 ^3
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	callq _ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_
	# SetupCalls(893:3): move ptr result from %rax
	movq %rax, %rbx
	movq %rbx, %rax
	movq -16(%rbp), %rbx
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
	# upalign(16 + 0, 16)
	subq $16, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(293:3): size = 8, type = ptr*, var = ^2
	leaq -8(%rbp), %rax
	# LowerStore(294:3).9: mov ptr %rdi, (^2)
	movq %rdi, (%rax)
	# LowerLoad(295:3).2: (^2) into ptr ^3
	movq (%rax), %rbx
	# tt = Pointer, type = %"class.std::filesystem::__cxx11::directory_iterator"
	# LowerGetelementptr(296:3): struct-type: ptr ^3 -> ^4, indices=0,0
	# LowerGetelementptr(296:3): type of ^4 is %"class.std::__shared_ptr"*
	# SetupCalls(297:3): move argument ptr nonnull dereferenceable(16) align 8 ^4
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	callq _ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EED2Ev
	movq -16(%rbp), %rbx
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
	# upalign(224 + 0, 16)
	subq $224, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -144(%rbp)
	movq %r12, -152(%rbp)
	movq %r13, -168(%rbp)
	movq %r14, -192(%rbp)
	movq %r15, -128(%rbp)
	# LowerAlloca(330:3): size = 8, type = ptr*, var = ^3
	leaq -8(%rbp), %rdx
	# LowerAlloca(331:3): size = 8, type = ptr*, var = ^4
	# Fixing source-to-dest leaq -16(%rbp), -112(%rbp)
	leaq -16(%rbp), %r15
	movq %r15, -112(%rbp)
	# LowerAlloca(332:3): size = 8, type = ptr*, var = ^5
	leaq -24(%rbp), %r8
	# LowerAlloca(333:3): size = 8, type = ptr*, var = ^6
	# Fixing source-to-dest leaq -32(%rbp), -104(%rbp)
	leaq -32(%rbp), %r15
	movq %r15, -104(%rbp)
	# LowerAlloca(334:3): size = 8, type = ptr*, var = ^7
	leaq -40(%rbp), %rax
	# LowerAlloca(335:3): size = 16, type = %"struct.std::__detail::_Quoted_string"*, var = ^8
	leaq -56(%rbp), %rbx
	# LowerAlloca(336:3): size = 32, type = %"class.std::__cxx11::basic_string"*, var = ^9
	leaq -88(%rbp), %r12
	# LowerAlloca(337:3): size = 1, type = %"class.std::allocator"*, var = ^10
	# Fixing source-to-dest leaq -89(%rbp), -120(%rbp)
	leaq -89(%rbp), %r15
	movq %r15, -120(%rbp)
	# LowerStore(338:3).9: mov ptr %rdi, (^6)
	movq -104(%rbp), %rcx
	movq %rdi, (%rcx)
	# LowerStore(339:3).9: mov ptr %rsi, (^7)
	movq %rsi, (%rax)
	# LowerLoad(340:3).2: (^6) into ptr ^11
	movq -104(%rbp), %rcx
	movq (%rcx), %r13
	# LowerLoad(341:3).2: (^7) into ptr ^12
	movq (%rax), %rcx
	# LowerStore(342:3).9: mov %"class.std::allocator"* ^10, (^5)
	# Fixing source-to-dest movq -120(%rbp), (%r8)
	movq -120(%rbp), %r15
	movq %r15, (%r8)
	# LowerLoad(343:3).2: (^5) into ptr ^13
	# Fixing source-to-dest movq (%r8), (%rdx)
	movq (%r8), %r15
	movq %r15, (%rdx)
	# LowerStore(344:3).9: mov ptr ^13, (^3)
	# LowerLoad(345:3).2: (^3) into ptr ^14
	movq (%rdx), %rax
	# SetupCalls(346:3): move argument ptr sret align 8 ^9
	# Fixed movzx with identical source and destination widths
	movq %r12, %rdi
	# SetupCalls(346:3): move argument ptr nonnull dereferenceable(40) align 8 ^12
	# Fixed movzx with identical source and destination widths
	movq %rcx, %rsi
	# SetupCalls(346:3): move argument ptr nonnull dereferenceable(1) align 1 ^10
	# Fixed movzx with identical source and destination widths
	movq -120(%rbp), %rdx
	callq _ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_
	# SetupCalls(347:3): move argument ptr nonnull dereferenceable(32) align 8 ^9
	# Fixed movzx with identical source and destination widths
	movq %r12, %rdi
	# SetupCalls(347:3): move argument i8 signext 34
	movq $34, %rsi
	movsbq %sil, %rsi
	# SetupCalls(347:3): move argument i8 signext 92
	movq $92, %rdx
	movsbq %dl, %rdx
	callq _ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_
	# SetupCalls(347:3): move 128-bit result from %rax and %rdx
	# Multireg move: <%hax %hdx> -> <%hr14 %hr15>
	movq %rax, %r14
	movq %rdx, %r15
	# tt = Pointer, type = {ptr, i64}
	# LowerGetelementptr(348:3): struct-type: ptr ^8 -> ^16, indices=0,0
	movq %rbx, %rax
	# LowerGetelementptr(348:3): type of ^16 is ptr*
	# LowerExtractvalue(350:3)
	# PaddedStructs({ptr, i64} -> ptr): move from pack ^15 ({ptr, i64}) to ^24 (opaque), index = 0
	movq %r14, %rdx
	movq %rdx, %rcx
	# LowerStore(350:3).9: mov ptr ^17, (^16)
	movq %rcx, (%rax)
	# tt = Pointer, type = {ptr, i64}
	# LowerGetelementptr(351:3): struct-type: ptr ^8 -> ^18, indices=0,1
	movq %rbx, %rax
	addq $8, %rax
	# LowerGetelementptr(351:3): type of ^18 is i64*
	# LowerExtractvalue(353:3)
	# PaddedStructs({ptr, i64} -> i64): move from pack ^15 ({ptr, i64}) to ^25 (opaque), index = 1
	movq %r15, %rdx
	movq %rdx, %rcx
	# LowerStore(353:3).9: mov i64 ^19, (^18)
	movq %rcx, (%rax)
	# SetupCalls(354:3): move argument ptr nonnull dereferenceable(8) align 8 ^11
	# Fixed movzx with identical source and destination widths
	movq %r13, %rdi
	# SetupCalls(354:3): move argument ptr nonnull dereferenceable(10) align 8 ^8
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rsi
	callq _ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE
	# SetupCalls(354:3): move ptr result from %rax
	movq %rax, %rax
	# SetupCalls(355:3): move argument ptr nonnull dereferenceable(32) align 8 ^9
	# Fixed movzx with identical source and destination widths
	movq %r12, %rdi
	callq _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	# LowerStore(356:3).9: mov %"class.std::allocator"* ^10, (^4)
	movq -112(%rbp), %rax
	# Fixing source-to-dest movq -120(%rbp), (%rax)
	movq -120(%rbp), %r15
	movq %r15, (%rax)
	# LowerLoad(357:3).2: (^4) into ptr ^21
	movq -112(%rbp), %rbx
	movq (%rbx), %rax
	# SetupCalls(358:3): move argument ptr nonnull dereferenceable(1) align 1 ^21
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq _ZNSt15__new_allocatorIcED2Ev
	# LowerLoad(359:3).2: (^6) into ptr ^22
	movq -104(%rbp), %rax
	movq (%rax), %rbx
	movq %rbx, %rax
	movq -128(%rbp), %r15
	movq -192(%rbp), %r14
	movq -168(%rbp), %r13
	movq -152(%rbp), %r12
	movq -144(%rbp), %rbx
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
	# upalign(16 + 0, 16)
	subq $16, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(818:3): size = 8, type = ptr*, var = ^2
	leaq -8(%rbp), %rax
	# LowerStore(819:3).9: mov ptr %rdi, (^2)
	movq %rdi, (%rax)
	# LowerLoad(820:3).2: (^2) into ptr ^3
	movq (%rax), %rbx
	# tt = Pointer, type = %"struct.std::filesystem::__cxx11::path::_List"
	# LowerGetelementptr(821:3): struct-type: ptr ^3 -> ^4, indices=0,0
	# LowerGetelementptr(821:3): type of ^4 is %"class.std::unique_ptr"*
	# SetupCalls(822:3): move argument ptr nonnull dereferenceable(8) align 8 ^4
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	callq _ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev
	movq -16(%rbp), %rbx
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
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(1234:3): size = 8, type = ptr*, var = ^2
	leaq -8(%rbp), %rax
	# LowerStore(1235:3).9: mov ptr %rdi, (^2)
	movq %rdi, (%rax)
	# LowerLoad(1236:3).2: (^2) into ptr ^3
	movq (%rax), %rbx
	# tt = Pointer, type = %"class.__gnu_cxx::__normal_iterator"
	# LowerGetelementptr(1237:3): struct-type: ptr ^3 -> ^4, indices=0,0
	movq %rbx, %rcx
	# LowerGetelementptr(1237:3): type of ^4 is ptr*
	# LowerLoad(1238:3).2: (^4) into ptr ^5
	movq (%rcx), %rax
	# tt = Pointer, type = i8
	# LowerGetelementptr(1239:3): struct-type: ptr ^5 -> ^6, indices=1
	addq $1, %rax
	# LowerGetelementptr(1239:3): type of ^6 is i8*
	# LowerStore(1240:3).9: mov i8* ^6, (^4)
	movq %rax, (%rcx)
	movq %rbx, %rax
	movq -16(%rbp), %rbx
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
	# upalign(24 + 0, 16)
	subq $32, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(858:3): size = 8, type = ptr*, var = ^2
	leaq -8(%rbp), %rax
	# LowerStore(859:3).9: mov ptr %rdi, (^2)
	movq %rdi, (%rax)
	# LowerLoad(860:3).2: (^2) into ptr ^3
	movq (%rax), %rbx
	# tt = Pointer, type = %"class.std::__uniq_ptr_impl"
	# LowerGetelementptr(861:3): struct-type: ptr ^3 -> ^4, indices=0,0
	# LowerGetelementptr(861:3): type of ^4 is %"class.std::tuple"*
	# SetupCalls(862:3): move argument ptr nonnull dereferenceable(8) align 8 ^4
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	callq _ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
	# SetupCalls(862:3): move ptr result from %rax
	movq %rax, %rbx
	movq %rbx, %rax
	movq -16(%rbp), %rbx
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
	# upalign(16 + 0, 16)
	subq $16, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(508:3): size = 8, type = ptr*, var = ^2
	leaq -8(%rbp), %rax
	# LowerStore(509:3).9: mov ptr %rdi, (^2)
	movq %rdi, (%rax)
	# LowerLoad(510:3).2: (^2) into ptr ^3
	movq (%rax), %rbx
	# tt = Pointer, type = %"class.std::__shared_ptr"
	# LowerGetelementptr(511:3): struct-type: ptr ^3 -> ^4, indices=0,1
	addq $8, %rbx
	# LowerGetelementptr(511:3): type of ^4 is %"class.std::__shared_count"*
	# SetupCalls(512:3): move argument ptr nonnull dereferenceable(8) align 8 ^4
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	callq _ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev
	movq -16(%rbp), %rbx
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
	# upalign(72 + 0, 16)
	subq $80, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -40(%rbp)
	movq %r12, -24(%rbp)
	movq %r13, -32(%rbp)
	movq %r14, -56(%rbp)
	# LowerAlloca(743:3): size = 8, type = ptr*, var = ^3
	leaq -8(%rbp), %r12
	# LowerAlloca(744:3): size = 8, type = ptr*, var = ^4
	leaq -16(%rbp), %r13
	# LowerStore(745:3).9: mov ptr %rdi, (^3)
	movq %rdi, (%r12)
	# LowerStore(746:3).9: mov ptr %rsi, (^4)
	movq %rsi, (%r13)
	# LowerLoad(747:3).2: (^4) into ptr ^5
	movq (%r13), %rbx
	# tt = Pointer, type = %"class.std::filesystem::__cxx11::directory_iterator"
	# LowerGetelementptr(748:3): struct-type: ptr ^5 -> ^6, indices=0,0
	# LowerGetelementptr(748:3): type of ^6 is %"class.std::__shared_ptr"*
	# LowerLoad(749:3).2: (^3) into ptr ^7
	movq (%r12), %rax
	# tt = Pointer, type = %"class.std::filesystem::__cxx11::directory_iterator"
	# LowerGetelementptr(750:3): struct-type: ptr ^7 -> ^8, indices=0,0
	# LowerGetelementptr(750:3): type of ^8 is %"class.std::__shared_ptr"*
	# SetupCalls(751:3): move argument ptr nonnull dereferenceable(16) align 8 ^6
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	# SetupCalls(751:3): move argument ptr nonnull dereferenceable(16) align 8 ^8
	# Fixed movzx with identical source and destination widths
	movq %rax, %rsi
	callq _ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE
	# SetupCalls(751:3): move i1 result from %rax
	movb %al, %bl
	cmpb $0, %bl
	jne .___ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3___M46
	jmp .___ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3___M49
	.___ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3___M46:
	# MovePhi: intlike -> ^18 (in new block 19 whose parent is 2)
	movb $0, %r14b
	jmp .___ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3___M92
	.___ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3___M49:
	# LowerLoad(755:3).2: (^3) into ptr ^11
	movq (%r12), %rax
	# tt = Pointer, type = %"class.std::filesystem::__cxx11::directory_iterator"
	# LowerGetelementptr(756:3): struct-type: ptr ^11 -> ^12, indices=0,0
	# LowerGetelementptr(756:3): type of ^12 is %"class.std::__shared_ptr"*
	# LowerLoad(757:3).2: (^4) into ptr ^13
	movq (%r13), %rbx
	# tt = Pointer, type = %"class.std::filesystem::__cxx11::directory_iterator"
	# LowerGetelementptr(758:3): struct-type: ptr ^13 -> ^14, indices=0,0
	# LowerGetelementptr(758:3): type of ^14 is %"class.std::__shared_ptr"*
	# SetupCalls(759:3): move argument ptr nonnull dereferenceable(16) align 8 ^12
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	# SetupCalls(759:3): move argument ptr nonnull dereferenceable(16) align 8 ^14
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rsi
	callq _ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE
	# SetupCalls(759:3): move i1 result from %rax
	movb %al, %bl
	# LowerLogic(761:3): ^15, true into i1 ^16
	movb %bl, %al
	xorb $1, %al
	# MovePhi: ^16 -> ^18
	movb %al, %r14b
	.___ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3___M92:
	movb %r14b, %al
	movq -56(%rbp), %r14
	movq -32(%rbp), %r13
	movq -24(%rbp), %r12
	movq -40(%rbp), %rbx
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
	# upalign(24 + 0, 16)
	subq $32, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(394:3): size = 8, type = ptr*, var = ^3
	leaq -8(%rbp), %rax
	# LowerAlloca(395:3): size = 8, type = ptr*, var = ^4
	leaq -16(%rbp), %rcx
	# LowerStore(396:3).9: mov ptr %rdi, (^3)
	movq %rdi, (%rax)
	# LowerStore(397:3).9: mov ptr %rsi, (^4)
	movq %rsi, (%rcx)
	# LowerLoad(398:3).2: (^3) into ptr ^5
	movq (%rax), %rbx
	# tt = Pointer, type = %"class.std::filesystem::__cxx11::directory_iterator"
	# LowerGetelementptr(399:3): struct-type: ptr ^5 -> ^6, indices=0,0
	# LowerGetelementptr(399:3): type of ^6 is %"class.std::__shared_ptr"*
	# LowerLoad(400:3).2: (^4) into ptr ^7
	movq (%rcx), %rax
	# tt = Pointer, type = %"class.std::filesystem::__cxx11::directory_iterator"
	# LowerGetelementptr(401:3): struct-type: ptr ^7 -> ^8, indices=0,0
	# LowerGetelementptr(401:3): type of ^8 is %"class.std::__shared_ptr"*
	# SetupCalls(402:3): move argument ptr nonnull dereferenceable(16) align 8 ^6
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	# SetupCalls(402:3): move argument ptr nonnull dereferenceable(16) align 8 ^8
	# Fixed movzx with identical source and destination widths
	movq %rax, %rsi
	callq _ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC1EOS5_@PLT
	movq -24(%rbp), %rbx
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
	# upalign(344 + 0, 16)
	subq $352, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -248(%rbp)
	movq %r12, -216(%rbp)
	movq %r13, -224(%rbp)
	movq %r14, -264(%rbp)
	movq %r15, -200(%rbp)
	# LowerAlloca(149:3): size = 4, type = i32*, var = ^1
	# Fixing source-to-dest leaq -4(%rbp), -160(%rbp)
	leaq -4(%rbp), %r15
	movq %r15, -160(%rbp)
	# LowerAlloca(150:3): size = 40, type = %"class.std::filesystem::__cxx11::path"*, var = ^2
	# Fixing source-to-dest leaq -48(%rbp), -168(%rbp)
	leaq -48(%rbp), %r15
	movq %r15, -168(%rbp)
	# LowerAlloca(151:3): size = 4, type = i32*, var = ^3
	leaq -52(%rbp), %r12
	# LowerAlloca(152:3): size = 8, type = ptr*, var = ^4
	leaq -64(%rbp), %r13
	# LowerAlloca(153:3): size = 16, type = %"class.std::filesystem::__cxx11::directory_iterator"*, var = ^5
	# Fixing source-to-dest leaq -80(%rbp), -176(%rbp)
	leaq -80(%rbp), %r15
	movq %r15, -176(%rbp)
	# LowerAlloca(154:3): size = 16, type = %"class.std::filesystem::__cxx11::directory_iterator"*, var = ^6
	# Fixing source-to-dest leaq -96(%rbp), -184(%rbp)
	leaq -96(%rbp), %r15
	movq %r15, -184(%rbp)
	# LowerAlloca(155:3): size = 16, type = %"class.std::filesystem::__cxx11::directory_iterator"*, var = ^7
	leaq -112(%rbp), %rbx
	# LowerAlloca(156:3): size = 16, type = %"class.std::filesystem::__cxx11::directory_iterator"*, var = ^8
	# Fixing source-to-dest leaq -128(%rbp), -192(%rbp)
	leaq -128(%rbp), %r15
	movq %r15, -192(%rbp)
	# LowerAlloca(157:3): size = 16, type = %"class.std::filesystem::__cxx11::directory_iterator"*, var = ^9
	leaq -144(%rbp), %r14
	# LowerAlloca(158:3): size = 8, type = ptr*, var = ^10
	leaq -152(%rbp), %r15
	# LowerStore(159:3).3: mov $imm, (^1)
	movq -160(%rbp), %rax
	movl $0, (%rax)
	# SetupCalls(160:3): move argument ptr nonnull dereferenceable(40) align 8 ^2
	# Fixed movzx with identical source and destination widths
	movq -168(%rbp), %rdi
	# SetupCalls(160:3): move argument ptr nonnull dereferenceable(2) align 1 @.str
	leaq .str(%rip), %rsi
	# SetupCalls(160:3): move argument i8 zeroext 2
	movq $2, %rdx
	andq $255, %rdx
	callq _ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE
	# LowerStore(161:3).3: mov $imm, (^3)
	movl $0, (%r12)
	# SetupCalls(162:3): move argument ptr nonnull dereferenceable(16) align 8 ^5
	# Fixed movzx with identical source and destination widths
	movq -176(%rbp), %rdi
	# SetupCalls(162:3): move argument ptr nonnull dereferenceable(40) align 8 ^2
	# Fixed movzx with identical source and destination widths
	movq -168(%rbp), %rsi
	callq _ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE
	# LowerStore(163:3).9: mov %"class.std::filesystem::__cxx11::directory_iterator"* ^5, (^4)
	# Fixing source-to-dest movq -176(%rbp), (%r13)
	pushq %r15
	movq -176(%rbp), %r15
	movq %r15, (%r13)
	popq %r15
	# LowerLoad(164:3).2: (^4) into ptr ^11
	movq (%r13), %rax
	# SetupCalls(165:3): move argument ptr nonnull dereferenceable(16) align 8 ^7
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	# SetupCalls(165:3): move argument ptr nonnull dereferenceable(16) align 8 ^11
	# Fixed movzx with identical source and destination widths
	movq %rax, %rsi
	callq _ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_
	# SetupCalls(166:3): move argument ptr sret align 8 ^6
	# Fixed movzx with identical source and destination widths
	movq -184(%rbp), %rdi
	# SetupCalls(166:3): move argument ptr ^7
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rsi
	callq _ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE
	# SetupCalls(167:3): move argument ptr nonnull dereferenceable(16) align 8 ^7
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	callq _ZNSt10filesystem7__cxx1118directory_iteratorD2Ev
	# LowerLoad(168:3).2: (^4) into ptr ^12
	movq (%r13), %rax
	# SetupCalls(169:3): move argument ptr nonnull dereferenceable(16) align 8 ^9
	# Fixed movzx with identical source and destination widths
	movq %r14, %rdi
	# SetupCalls(169:3): move argument ptr nonnull dereferenceable(16) align 8 ^12
	# Fixed movzx with identical source and destination widths
	movq %rax, %rsi
	callq _ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_
	# SetupCalls(170:3): move argument ptr sret align 8 ^8
	# Fixed movzx with identical source and destination widths
	movq -192(%rbp), %rdi
	# SetupCalls(170:3): move argument ptr ^9
	# Fixed movzx with identical source and destination widths
	movq %r14, %rsi
	callq _ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE
	# SetupCalls(171:3): move argument ptr nonnull dereferenceable(16) align 8 ^9
	# Fixed movzx with identical source and destination widths
	movq %r14, %rdi
	callq _ZNSt10filesystem7__cxx1118directory_iteratorD2Ev
	.__main__M214:
	# SetupCalls(175:3): move argument ptr nonnull dereferenceable(16) align 8 ^6
	# Fixed movzx with identical source and destination widths
	movq -184(%rbp), %rdi
	# SetupCalls(175:3): move argument ptr nonnull dereferenceable(16) align 8 ^8
	# Fixed movzx with identical source and destination widths
	movq -192(%rbp), %rsi
	callq _ZNSt10filesystem7__cxx11neERKNS0_18directory_iteratorES3_
	# SetupCalls(175:3): move i1 result from %rax
	movb %al, %bl
	cmpb $0, %bl
	jne .__main__M304
	.__main__M240:
	# SetupCalls(179:3): move argument ptr nonnull dereferenceable(16) align 8 ^8
	# Fixed movzx with identical source and destination widths
	movq -192(%rbp), %rdi
	callq _ZNSt10filesystem7__cxx1118directory_iteratorD2Ev
	# SetupCalls(180:3): move argument ptr nonnull dereferenceable(16) align 8 ^6
	# Fixed movzx with identical source and destination widths
	movq -184(%rbp), %rdi
	callq _ZNSt10filesystem7__cxx1118directory_iteratorD2Ev
	# SetupCalls(181:3): move argument ptr nonnull dereferenceable(16) align 8 ^5
	# Fixed movzx with identical source and destination widths
	movq -176(%rbp), %rdi
	callq _ZNSt10filesystem7__cxx1118directory_iteratorD2Ev
	jmp .__main__M487
	.__main__M304:
	# SetupCalls(185:3): move argument ptr nonnull dereferenceable(16) align 8 ^6
	# Fixed movzx with identical source and destination widths
	movq -184(%rbp), %rdi
	callq _ZNKSt10filesystem7__cxx1118directory_iteratordeEv@PLT
	# SetupCalls(185:3): move ptr result from %rax
	movq %rax, %rbx
	# LowerStore(186:3).9: mov ptr ^17, (^10)
	movq %rbx, (%r15)
	# LowerLoad(187:3).2: (^3) into i32 ^18
	movl (%r12), %eax
	# LowerMath(188:3): ^18, 1 into i32 ^19
	movl %eax, %ebx
	addl $1, %ebx
	# LowerStore(189:3).9: mov i32 ^19, (^3)
	movl %ebx, (%r12)
	# SetupCalls(190:3): move argument ptr nonnull dereferenceable(8) align 8 @_ZSt4cerr
	leaq _ZSt4cerr(%rip), %rdi
	# SetupCalls(190:3): move argument i32 ^18
	# Fixed movzx with 32-bit source operand
	movl %eax, %esi
	callq _ZNSolsEi@PLT
	# SetupCalls(190:3): move ptr result from %rax
	movq %rax, %rbx
	# SetupCalls(191:3): move argument ptr nonnull dereferenceable(8) align 8 ^20
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	# SetupCalls(191:3): move argument ptr @.str.1
	leaq .str.1(%rip), %rsi
	callq _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	# SetupCalls(191:3): move ptr result from %rax
	movq %rax, %rbx
	# LowerLoad(192:3).2: (^10) into ptr ^22
	movq (%r15), %rax
	# SetupCalls(193:3): move argument ptr nonnull dereferenceable(41) align 8 ^22
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq _ZNKSt10filesystem7__cxx1115directory_entry4pathEv
	# SetupCalls(193:3): move ptr result from %rax
	movq %rax, %r13
	# SetupCalls(194:3): move argument ptr nonnull dereferenceable(8) align 8 ^21
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	# SetupCalls(194:3): move argument ptr nonnull dereferenceable(40) align 8 ^23
	# Fixed movzx with identical source and destination widths
	movq %r13, %rsi
	callq _ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE
	# SetupCalls(194:3): move ptr result from %rax
	movq %rax, %rbx
	# SetupCalls(195:3): move argument ptr nonnull dereferenceable(8) align 8 ^24
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	# SetupCalls(195:3): move argument i8 signext 10
	movq $10, %rsi
	movsbq %sil, %rsi
	callq _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	# SetupCalls(195:3): move ptr result from %rax
	movq %rax, %rax
	# SetupCalls(199:3): move argument ptr nonnull dereferenceable(16) align 8 ^6
	# Fixed movzx with identical source and destination widths
	movq -184(%rbp), %rdi
	callq _ZNSt10filesystem7__cxx1118directory_iteratorppEv@PLT
	# SetupCalls(199:3): move ptr result from %rax
	movq %rax, %rax
	jmp .__main__M214
	.__main__M487:
	# SetupCalls(203:3): move argument ptr nonnull dereferenceable(40) align 8 ^2
	# Fixed movzx with identical source and destination widths
	movq -168(%rbp), %rdi
	callq _ZNSt10filesystem7__cxx114pathD2Ev
	# LowerLoad(204:3).2: (^1) into i32 ^29
	movq -160(%rbp), %rax
	movl (%rax), %ebx
	movl %ebx, %eax
	movq -200(%rbp), %r15
	movq -264(%rbp), %r14
	movq -224(%rbp), %r13
	movq -216(%rbp), %r12
	movq -248(%rbp), %rbx
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
	# upalign(48 + 0, 16)
	subq $48, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -24(%rbp)
	movq %r15, -32(%rbp)
	# LowerAlloca(431:3): size = 8, type = ptr*, var = ^3
	leaq -8(%rbp), %rax
	# LowerAlloca(432:3): size = 8, type = ptr*, var = ^4
	leaq -16(%rbp), %rcx
	# LowerStore(433:3).9: mov ptr %rdi, (^3)
	movq %rdi, (%rax)
	# LowerStore(434:3).9: mov ptr %rsi, (^4)
	movq %rsi, (%rcx)
	# LowerLoad(435:3).2: (^3) into ptr ^5
	movq (%rax), %rdx
	# tt = Pointer, type = %"class.std::__shared_count"
	# LowerGetelementptr(436:3): struct-type: ptr ^5 -> ^6, indices=0,0
	movq %rdx, %rbx
	# LowerGetelementptr(436:3): type of ^6 is ptr*
	# LowerLoad(437:3).2: (^4) into ptr ^7
	movq (%rcx), %rax
	# tt = Pointer, type = %"class.std::__shared_count"
	# LowerGetelementptr(438:3): struct-type: ptr ^7 -> ^8, indices=0,0
	# LowerGetelementptr(438:3): type of ^8 is ptr*
	# LowerLoad(439:3).2: (^8) into ptr ^9
	# Fixing source-to-dest movq (%rax), (%rbx)
	movq (%rax), %r15
	movq %r15, (%rbx)
	# LowerStore(440:3).9: mov ptr ^9, (^6)
	# tt = Pointer, type = %"class.std::__shared_count"
	# LowerGetelementptr(441:3): struct-type: ptr ^5 -> ^10, indices=0,0
	movq %rdx, %rax
	# LowerGetelementptr(441:3): type of ^10 is ptr*
	# LowerLoad(442:3).2: (^10) into ptr ^11
	movq (%rax), %rbx
	# LowerIcmp(443:3): ptr ^11 vs. intlike 0
	cmpq $0, %rbx
	setne %al
	andq $1, %rax
	cmpb $0, %al
	jne .___ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2___M35
	jmp .___ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2___M63
	.___ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2___M35:
	# tt = Pointer, type = %"class.std::__shared_count"
	# LowerGetelementptr(447:3): struct-type: ptr ^5 -> ^14, indices=0,0
	movq %rdx, %rax
	# LowerGetelementptr(447:3): type of ^14 is ptr*
	# LowerLoad(448:3).2: (^14) into ptr ^15
	movq (%rax), %rbx
	# SetupCalls(449:3): move argument ptr nonnull dereferenceable(16) align 8 ^15
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	callq _ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv
	.___ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2___M63:
	movq -32(%rbp), %r15
	movq -24(%rbp), %rbx
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
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(518:3): size = 8, type = ptr*, var = ^2
	leaq -8(%rbp), %rax
	# LowerStore(519:3).9: mov ptr %rdi, (^2)
	movq %rdi, (%rax)
	# LowerLoad(520:3).2: (^2) into ptr ^3
	movq (%rax), %rbx
	# tt = Pointer, type = %"class.std::__shared_count"
	# LowerGetelementptr(521:3): struct-type: ptr ^3 -> ^4, indices=0,0
	movq %rbx, %rax
	# LowerGetelementptr(521:3): type of ^4 is ptr*
	# LowerLoad(522:3).2: (^4) into ptr ^5
	movq (%rax), %rcx
	# LowerIcmp(523:3): ptr ^5 vs. intlike 0
	cmpq $0, %rcx
	setne %al
	andq $1, %rax
	cmpb $0, %al
	jne .___ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev__M17
	jmp .___ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev__M45
	.___ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev__M17:
	# tt = Pointer, type = %"class.std::__shared_count"
	# LowerGetelementptr(527:3): struct-type: ptr ^3 -> ^8, indices=0,0
	movq %rbx, %rax
	# LowerGetelementptr(527:3): type of ^8 is ptr*
	# LowerLoad(528:3).2: (^8) into ptr ^9
	movq (%rax), %rbx
	# SetupCalls(529:3): move argument ptr nonnull dereferenceable(16) align 8 ^9
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	callq _ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
	.___ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev__M45:
	movq -16(%rbp), %rbx
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
	# upalign(112 + 0, 16)
	subq $112, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -72(%rbp)
	movq %r12, -80(%rbp)
	movq %r15, -104(%rbp)
	# LowerAlloca(458:3): size = 8, type = ptr*, var = ^2
	leaq -8(%rbp), %rsi
	# LowerAlloca(459:3): size = 4, type = i32*, var = ^3
	leaq -12(%rbp), %r8
	# LowerAlloca(460:3): size = 4, type = i32*, var = ^4
	leaq -16(%rbp), %r9
	# LowerAlloca(461:3): size = 4, type = i32*, var = ^5
	leaq -20(%rbp), %r10
	# LowerAlloca(462:3): size = 8, type = ptr*, var = ^6
	leaq -32(%rbp), %rbx
	# LowerAlloca(463:3): size = 4, type = i32*, var = ^7
	leaq -36(%rbp), %rcx
	# LowerAlloca(464:3): size = 8, type = ptr*, var = ^8
	leaq -48(%rbp), %rax
	# LowerAlloca(465:3): size = 4, type = i32*, var = ^9
	leaq -52(%rbp), %r11
	# LowerAlloca(466:3): size = 8, type = ptr*, var = ^10
	leaq -64(%rbp), %r12
	# LowerStore(467:3).9: mov ptr %rdi, (^10)
	movq %rdi, (%r12)
	# LowerLoad(468:3).2: (^10) into ptr ^11
	movq (%r12), %rdx
	# tt = Pointer, type = %"class.std::_Sp_counted_base"
	# LowerGetelementptr(469:3): struct-type: ptr ^11 -> ^12, indices=0,1
	addq $8, %rdx
	# LowerGetelementptr(469:3): type of ^12 is i32*
	# LowerStore(470:3).9: mov %"class.std::_Sp_counted_base"* ^12, (^8)
	movq %rdx, (%rax)
	# LowerStore(471:3).3: mov $imm, (^9)
	movl $1, (%r11)
	# LowerLoad(472:3).4: __libc_single_threaded into ^13
	movb __libc_single_threaded(%rip), %dl
	# LowerIcmp(473:3): i8 ^13 vs. intlike 0
	cmpb $0, %dl
	setne %dl
	andq $1, %rdx
	cmpb $0, %dl
	jne .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv__M38
	jmp .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv__M58
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv__M38:
	# LowerLoad(477:3).2: (^8) into ptr ^16
	movq (%rax), %rdx
	# LowerLoad(478:3).2: (^9) into i32 ^17
	movl (%r11), %eax
	# LowerStore(479:3).9: mov ptr ^16, (^6)
	movq %rdx, (%rbx)
	# LowerStore(480:3).9: mov i32 ^17, (^7)
	movl %eax, (%rcx)
	# LowerLoad(481:3).2: (^7) into i32 ^18
	movl (%rcx), %eax
	# LowerLoad(482:3).2: (^6) into ptr ^19
	movq (%rbx), %rcx
	# LowerLoad(483:3).2: (^19) into i32 ^20
	movl (%rcx), %ebx
	# LowerMath(484:3): ^20, ^18 into i32 ^21
	addl %eax, %ebx
	# LowerStore(485:3).9: mov i32 ^21, (^19)
	movl %ebx, (%rcx)
	jmp .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv__M81
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv__M58:
	# LowerLoad(489:3).2: (^8) into ptr ^23
	movq (%rax), %rbx
	# LowerLoad(490:3).2: (^9) into i32 ^24
	movl (%r11), %eax
	# LowerStore(491:3).9: mov ptr ^23, (^2)
	movq %rbx, (%rsi)
	# LowerStore(492:3).9: mov i32 ^24, (^3)
	movl %eax, (%r8)
	# LowerLoad(493:3).2: (^2) into ptr ^25
	movq (%rsi), %rax
	# LowerLoad(494:3).2: (^3) into i32 ^26
	# Fixing source-to-dest movl (%r8), (%r9)
	movl (%r8), %r15d
	movl %r15d, (%r9)
	# LowerStore(495:3).9: mov i32 ^26, (^4)
	# LowerLoad(496:3).2: (^4) into i32 ^27
	movl (%r9), %ebx
	lock addl %ebx, (%rax)
	# LowerStore(498:3).9: mov i32 ^28, (^5)
	movl %ebx, (%r10)
	# LowerLoad(499:3).2: (^5) into i32 ^29
	movl (%r10), %eax
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv__M81:
	movq -104(%rbp), %r15
	movq -80(%rbp), %r12
	movq -72(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv
.p2align 4, 0x90
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(16 + 0, 16)
	subq $16, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(644:3): size = 8, type = ptr*, var = ^2
	leaq -8(%rbp), %rax
	# LowerStore(645:3).9: mov ptr %rdi, (^2)
	movq %rdi, (%rax)
	# LowerLoad(646:3).2: (^2) into ptr ^3
	movq (%rax), %rbx
	# SetupCalls(647:3): move argument ptr nonnull dereferenceable(16) align 8 ^3
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	callq _ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv
	movq -16(%rbp), %rbx
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
	# upalign(56 + 0, 16)
	subq $64, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -48(%rbp)
	movq %r12, -40(%rbp)
	movq %r13, -24(%rbp)
	movq %r14, -32(%rbp)
	movq %r15, -56(%rbp)
	# LowerAlloca(1033:3): size = 8, type = ptr*, var = ^3
	leaq -8(%rbp), %rax
	# LowerAlloca(1034:3): size = 8, type = ptr*, var = ^4
	leaq -16(%rbp), %r13
	# LowerStore(1035:3).9: mov ptr %rdi, (^3)
	movq %rdi, (%rax)
	# LowerStore(1036:3).9: mov ptr %rsi, (^4)
	movq %rsi, (%r13)
	# LowerLoad(1037:3).2: (^3) into ptr ^5
	movq (%rax), %r14
	# tt = Pointer, type = %"class.std::basic_string_view"
	# LowerGetelementptr(1038:3): struct-type: ptr ^5 -> ^6, indices=0,0
	movq %r14, %r12
	# LowerGetelementptr(1038:3): type of ^6 is i64*
	# LowerLoad(1039:3).2: (^4) into ptr ^7
	movq (%r13), %rax
	# SetupCalls(1040:3): move argument ptr ^7
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq _ZNSt11char_traitsIcE6lengthEPKc
	# SetupCalls(1040:3): move i64 result from %rax
	movq %rax, %rbx
	# LowerStore(1041:3).9: mov i64 ^8, (^6)
	movq %rbx, (%r12)
	# tt = Pointer, type = %"class.std::basic_string_view"
	# LowerGetelementptr(1042:3): struct-type: ptr ^5 -> ^9, indices=0,1
	movq %r14, %rax
	addq $8, %rax
	# LowerGetelementptr(1042:3): type of ^9 is ptr*
	# LowerLoad(1043:3).2: (^4) into ptr ^10
	# Fixing source-to-dest movq (%r13), (%rax)
	movq (%r13), %r15
	movq %r15, (%rax)
	# LowerStore(1044:3).9: mov ptr ^10, (^9)
	movq -56(%rbp), %r15
	movq -32(%rbp), %r14
	movq -24(%rbp), %r13
	movq -40(%rbp), %r12
	movq -48(%rbp), %rbx
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
	# upalign(32 + 0, 16)
	subq $32, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(770:3): size = 8, type = ptr*, var = ^3
	leaq -8(%rbp), %rax
	# LowerAlloca(771:3): size = 8, type = ptr*, var = ^4
	leaq -16(%rbp), %rcx
	# LowerStore(772:3).9: mov ptr %rdi, (^3)
	movq %rdi, (%rax)
	# LowerStore(773:3).9: mov ptr %rsi, (^4)
	movq %rsi, (%rcx)
	# LowerLoad(774:3).2: (^3) into ptr ^5
	movq (%rax), %rbx
	# tt = Pointer, type = %"class.std::__shared_ptr"
	# LowerGetelementptr(775:3): struct-type: ptr ^5 -> ^6, indices=0,1
	addq $8, %rbx
	# LowerGetelementptr(775:3): type of ^6 is %"class.std::__shared_count"*
	# LowerLoad(776:3).2: (^4) into ptr ^7
	movq (%rcx), %rax
	# tt = Pointer, type = %"class.std::__shared_ptr"
	# LowerGetelementptr(777:3): struct-type: ptr ^7 -> ^8, indices=0,1
	addq $8, %rax
	# LowerGetelementptr(777:3): type of ^8 is %"class.std::__shared_count"*
	# SetupCalls(778:3): move argument ptr nonnull dereferenceable(8) align 8 ^6
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	# SetupCalls(778:3): move argument ptr nonnull dereferenceable(8) align 8 ^8
	# Fixed movzx with identical source and destination widths
	movq %rax, %rsi
	callq _ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_lessERKS2_
	# SetupCalls(778:3): move i1 result from %rax
	movb %al, %bl
	movb %bl, %al
	movq -24(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

.section .text
.global _ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv
.p2align 4, 0x90
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv:
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv__M0:
	pushq %rbp
	movq %rsp, %rbp
	# upalign(312 + 0, 16)
	subq $320, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -168(%rbp)
	movq %r12, -128(%rbp)
	movq %r13, -136(%rbp)
	movq %r14, -192(%rbp)
	movq %r15, -144(%rbp)
	# LowerAlloca(653:3): size = 8, type = ptr*, var = ^2
	leaq -8(%rbp), %r12
	# LowerAlloca(654:3): size = 4, type = i32*, var = ^3
	leaq -12(%rbp), %r13
	# LowerAlloca(655:3): size = 4, type = i32*, var = ^4
	# Fixing source-to-dest leaq -16(%rbp), -112(%rbp)
	leaq -16(%rbp), %r15
	movq %r15, -112(%rbp)
	# LowerAlloca(656:3): size = 4, type = i32*, var = ^5
	# Fixing source-to-dest leaq -20(%rbp), -96(%rbp)
	leaq -20(%rbp), %r15
	movq %r15, -96(%rbp)
	# LowerAlloca(657:3): size = 8, type = ptr*, var = ^6
	# Fixing source-to-dest leaq -32(%rbp), -120(%rbp)
	leaq -32(%rbp), %r15
	movq %r15, -120(%rbp)
	# LowerAlloca(658:3): size = 4, type = i32*, var = ^7
	leaq -36(%rbp), %rbx
	# LowerAlloca(659:3): size = 4, type = i32*, var = ^8
	# Fixing source-to-dest leaq -40(%rbp), -104(%rbp)
	leaq -40(%rbp), %r15
	movq %r15, -104(%rbp)
	# LowerAlloca(660:3): size = 4, type = i32*, var = ^9
	# Fixing source-to-dest leaq -44(%rbp), -88(%rbp)
	leaq -44(%rbp), %r15
	movq %r15, -88(%rbp)
	# LowerAlloca(661:3): size = 8, type = ptr*, var = ^10
	leaq -56(%rbp), %r14
	# LowerAlloca(662:3): size = 4, type = i32*, var = ^11
	leaq -60(%rbp), %r15
	# LowerAlloca(663:3): size = 8, type = ptr*, var = ^12
	leaq -72(%rbp), %rax
	# LowerStore(664:3).9: mov ptr %rdi, (^12)
	movq %rdi, (%rax)
	# LowerLoad(665:3).2: (^12) into ptr ^13
	# Fixing source-to-dest movq (%rax), -80(%rbp)
	pushq %r15
	movq (%rax), %r15
	movq %r15, -80(%rbp)
	popq %r15
	# LowerLoad(666:3).2: (^13) into ptr ^14
	movq -80(%rbp), %rax
	movq (%rax), %rcx
	# tt = Pointer, type = ptr
	# LowerGetelementptr(667:3): struct-type: ptr ^14 -> ^15, indices=2
	addq $16, %rcx
	# LowerGetelementptr(667:3): type of ^15 is ptr*
	# LowerLoad(668:3).2: (^15) into ptr ^16
	movq (%rcx), %rax
	# SetupCalls(669:3): move argument ptr nonnull dereferenceable(16) align 8 ^13
	# Fixed movzx with identical source and destination widths
	movq -80(%rbp), %rdi
	# SetupCalls(669:3): jump to function operand ^16
	callq *%rax
	# tt = Pointer, type = %"class.std::_Sp_counted_base"
	# LowerGetelementptr(670:3): struct-type: ptr ^13 -> ^17, indices=0,2
	movq -80(%rbp), %rax
	addq $12, %rax
	# LowerGetelementptr(670:3): type of ^17 is i32*
	# LowerStore(671:3).9: mov %"class.std::_Sp_counted_base"* ^17, (^10)
	movq %rax, (%r14)
	# LowerStore(672:3).3: mov $imm, (^11)
	movl $-1, (%r15)
	# LowerLoad(673:3).4: __libc_single_threaded into ^18
	movb __libc_single_threaded(%rip), %al
	# LowerIcmp(674:3): i8 ^18 vs. intlike 0
	cmpb $0, %al
	setne %al
	andq $1, %rax
	cmpb $0, %al
	jne .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv__M74
	jmp .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv__M104
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv__M74:
	# LowerLoad(678:3).2: (^10) into ptr ^21
	movq (%r14), %rax
	# LowerLoad(679:3).2: (^11) into i32 ^22
	movl (%r15), %ecx
	# LowerStore(680:3).9: mov ptr ^21, (^6)
	movq -120(%rbp), %rdx
	movq %rax, (%rdx)
	# LowerStore(681:3).9: mov i32 ^22, (^7)
	movl %ecx, (%rbx)
	# LowerLoad(682:3).2: (^6) into ptr ^23
	movq -120(%rbp), %rcx
	movq (%rcx), %rax
	# LowerLoad(683:3).2: (^23) into i32 ^24
	movq -104(%rbp), %rcx
	# Fixing source-to-dest movl (%rax), (%rcx)
	movl (%rax), %r15d
	movl %r15d, (%rcx)
	# LowerStore(684:3).9: mov i32 ^24, (^8)
	# LowerLoad(685:3).2: (^7) into i32 ^25
	movl (%rbx), %ecx
	# LowerLoad(686:3).2: (^6) into ptr ^26
	movq -120(%rbp), %rbx
	movq (%rbx), %rax
	# LowerLoad(687:3).2: (^26) into i32 ^27
	movl (%rax), %ebx
	# LowerMath(688:3): ^27, ^25 into i32 ^28
	addl %ecx, %ebx
	# LowerStore(689:3).9: mov i32 ^28, (^26)
	movl %ebx, (%rax)
	# LowerLoad(690:3).2: (^8) into i32 ^29
	movq -88(%rbp), %rax
	movq -104(%rbp), %rbx
	# Fixing source-to-dest movl (%rbx), (%rax)
	movl (%rbx), %r15d
	movl %r15d, (%rax)
	# LowerStore(691:3).9: mov i32 ^29, (^9)
	jmp .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv__M129
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv__M104:
	# LowerLoad(695:3).2: (^10) into ptr ^31
	movq (%r14), %rax
	# LowerLoad(696:3).2: (^11) into i32 ^32
	movl (%r15), %ebx
	# LowerStore(697:3).9: mov ptr ^31, (^2)
	movq %rax, (%r12)
	# LowerStore(698:3).9: mov i32 ^32, (^3)
	movl %ebx, (%r13)
	# LowerLoad(699:3).2: (^2) into ptr ^33
	movq (%r12), %rax
	# LowerLoad(700:3).2: (^3) into i32 ^34
	movq -112(%rbp), %rbx
	# Fixing source-to-dest movl (%r13), (%rbx)
	movl (%r13), %r15d
	movl %r15d, (%rbx)
	# LowerStore(701:3).9: mov i32 ^34, (^4)
	# LowerLoad(702:3).2: (^4) into i32 ^35
	movq -112(%rbp), %rcx
	movl (%rcx), %ebx
	lock addl %ebx, (%rax)
	# LowerStore(704:3).9: mov i32 ^36, (^5)
	movq -96(%rbp), %rax
	movl %ebx, (%rax)
	# LowerLoad(705:3).2: (^5) into i32 ^37
	movq -88(%rbp), %rax
	movq -96(%rbp), %rbx
	# Fixing source-to-dest movl (%rbx), (%rax)
	movl (%rbx), %r15d
	movl %r15d, (%rax)
	# LowerStore(706:3).9: mov i32 ^37, (^9)
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv__M129:
	# LowerLoad(710:3).2: (^9) into i32 ^39
	movq -88(%rbp), %rax
	movl (%rax), %ebx
	# LowerIcmp(711:3): i32 ^39 vs. intlike 1
	cmpl $1, %ebx
	sete %al
	andq $1, %rax
	cmpb $0, %al
	jne .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv__M136
	jmp .___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv__M168
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv__M136:
	# LowerLoad(715:3).2: (^13) into ptr ^42
	movq -80(%rbp), %rax
	movq (%rax), %rbx
	# tt = Pointer, type = ptr
	# LowerGetelementptr(716:3): struct-type: ptr ^42 -> ^43, indices=3
	addq $24, %rbx
	# LowerGetelementptr(716:3): type of ^43 is ptr*
	# LowerLoad(717:3).2: (^43) into ptr ^44
	movq (%rbx), %rax
	# SetupCalls(718:3): move argument ptr nonnull dereferenceable(16) align 8 ^13
	# Fixed movzx with identical source and destination widths
	movq -80(%rbp), %rdi
	# SetupCalls(718:3): jump to function operand ^44
	callq *%rax
	.___ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv__M168:
	movq -144(%rbp), %r15
	movq -192(%rbp), %r14
	movq -136(%rbp), %r13
	movq -128(%rbp), %r12
	movq -168(%rbp), %rbx
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
	# upalign(16 + 0, 16)
	subq $16, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(730:3): size = 8, type = ptr*, var = ^2
	leaq -8(%rbp), %rax
	# LowerStore(731:3).9: mov ptr %rdi, (^2)
	movq %rdi, (%rax)
	# LowerLoad(732:3).2: (^2) into ptr ^3
	movq (%rax), %rbx
	# tt = Pointer, type = %"class.std::filesystem::__cxx11::directory_iterator"
	# LowerGetelementptr(733:3): struct-type: ptr ^3 -> ^4, indices=0,0
	# LowerGetelementptr(733:3): type of ^4 is %"class.std::__shared_ptr"*
	# SetupCalls(734:3): move argument ptr nonnull dereferenceable(16) align 8 ^4
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	callq _ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC1Ev@PLT
	movq -16(%rbp), %rbx
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
	# upalign(48 + 0, 16)
	subq $48, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -32(%rbp)
	# LowerAlloca(784:3): size = 8, type = ptr*, var = ^3
	leaq -8(%rbp), %rax
	# LowerAlloca(785:3): size = 8, type = ptr*, var = ^4
	leaq -16(%rbp), %rcx
	# LowerAlloca(786:3): size = 1, type = %"struct.std::less"*, var = ^5
	leaq -17(%rbp), %rdx
	# LowerStore(787:3).9: mov ptr %rdi, (^3)
	movq %rdi, (%rax)
	# LowerStore(788:3).9: mov ptr %rsi, (^4)
	movq %rsi, (%rcx)
	# LowerLoad(789:3).2: (^3) into ptr ^6
	movq (%rax), %rbx
	# tt = Pointer, type = %"class.std::__shared_count"
	# LowerGetelementptr(790:3): struct-type: ptr ^6 -> ^7, indices=0,0
	# LowerGetelementptr(790:3): type of ^7 is ptr*
	# LowerLoad(791:3).2: (^7) into ptr ^8
	movq (%rbx), %rax
	# LowerLoad(792:3).2: (^4) into ptr ^9
	movq (%rcx), %rbx
	# tt = Pointer, type = %"class.std::__shared_count"
	# LowerGetelementptr(793:3): struct-type: ptr ^9 -> ^10, indices=0,0
	# LowerGetelementptr(793:3): type of ^10 is ptr*
	# LowerLoad(794:3).2: (^10) into ptr ^11
	movq (%rbx), %rcx
	# SetupCalls(795:3): move argument ptr nonnull dereferenceable(1) align 1 ^5
	# Fixed movzx with identical source and destination widths
	movq %rdx, %rdi
	# SetupCalls(795:3): move argument ptr ^8
	# Fixed movzx with identical source and destination widths
	movq %rax, %rsi
	# SetupCalls(795:3): move argument ptr ^11
	# Fixed movzx with identical source and destination widths
	movq %rcx, %rdx
	callq _ZNKSt4lessIPSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEEclES4_S4_
	# SetupCalls(795:3): move i1 result from %rax
	movb %al, %bl
	movb %bl, %al
	movq -32(%rbp), %rbx
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
	# upalign(56 + 0, 16)
	subq $64, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -40(%rbp)
	movq %r12, -24(%rbp)
	movq %r13, -32(%rbp)
	# LowerAlloca(831:3): size = 8, type = ptr*, var = ^2
	leaq -8(%rbp), %rax
	# LowerAlloca(832:3): size = 8, type = ptr*, var = ^3
	leaq -16(%rbp), %r12
	# LowerStore(833:3).9: mov ptr %rdi, (^2)
	movq %rdi, (%rax)
	# LowerLoad(834:3).2: (^2) into ptr ^4
	movq (%rax), %r13
	# tt = Pointer, type = %"class.std::unique_ptr"
	# LowerGetelementptr(835:3): struct-type: ptr ^4 -> ^5, indices=0,0
	movq %r13, %rax
	# LowerGetelementptr(835:3): type of ^5 is %"struct.std::__uniq_ptr_data"*
	# SetupCalls(836:3): move argument ptr nonnull dereferenceable(8) align 8 ^5
	# Fixed movzx with identical source and destination widths
	movq %rax, %rdi
	callq _ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv
	# SetupCalls(836:3): move ptr result from %rax
	movq %rax, %rbx
	# LowerStore(837:3).9: mov ptr ^6, (^3)
	movq %rbx, (%r12)
	# LowerLoad(838:3).2: (^3) into ptr ^7
	movq (%r12), %rbx
	# LowerLoad(839:3).2: (^7) into ptr ^8
	movq (%rbx), %rax
	# LowerIcmp(840:3): ptr ^8 vs. intlike 0
	cmpq $0, %rax
	setne %al
	andq $1, %rax
	cmpb $0, %al
	jne .___ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev__M46
	jmp .___ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev__M97
	.___ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev__M46:
	# SetupCalls(844:3): move argument ptr nonnull dereferenceable(8) align 8 ^4
	# Fixed movzx with identical source and destination widths
	movq %r13, %rdi
	callq _ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv
	# SetupCalls(844:3): move ptr result from %rax
	movq %rax, %rbx
	# LowerLoad(845:3).2: (^3) into ptr ^12
	movq (%r12), %rax
	# LowerLoad(846:3).2: (^12) into ptr ^13
	movq (%rax), %rcx
	# SetupCalls(847:3): move argument ptr nonnull dereferenceable(1) align 1 ^11
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	# SetupCalls(847:3): move argument ptr ^13
	# Fixed movzx with identical source and destination widths
	movq %rcx, %rsi
	callq _ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@PLT
	.___ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev__M97:
	# LowerLoad(851:3).2: (^3) into ptr ^15
	movq (%r12), %rax
	# LowerStore(852:3).3: mov $imm, (^15)
	movq $0, (%rax)
	movq -32(%rbp), %r13
	movq -24(%rbp), %r12
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
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(908:3): size = 8, type = ptr*, var = ^2
	leaq -8(%rbp), %rax
	# LowerStore(909:3).9: mov ptr %rdi, (^2)
	movq %rdi, (%rax)
	# LowerLoad(910:3).2: (^2) into ptr ^3
	movq (%rax), %rbx
	# tt = Pointer, type = %"struct.std::_Head_base.1"
	# LowerGetelementptr(911:3): struct-type: ptr ^3 -> ^4, indices=0,0
	# LowerGetelementptr(911:3): type of ^4 is ptr*
	movq %rbx, %rax
	movq -16(%rbp), %rbx
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
	# upalign(24 + 0, 16)
	subq $32, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -24(%rbp)
	# LowerAlloca(259:3): size = 8, type = ptr*, var = ^3
	leaq -8(%rbp), %rax
	# LowerAlloca(260:3): size = 8, type = ptr*, var = ^4
	leaq -16(%rbp), %rbx
	# LowerStore(261:3).9: mov ptr %rdi, (^3)
	movq %rdi, (%rax)
	# LowerStore(262:3).9: mov ptr %rsi, (^4)
	movq %rsi, (%rbx)
	# LowerLoad(263:3).2: (^3) into ptr ^5
	movq (%rax), %rcx
	# LowerLoad(264:3).2: (^4) into ptr ^6
	movq (%rbx), %rax
	# SetupCalls(265:3): move argument ptr nonnull dereferenceable(16) align 8 ^5
	# Fixed movzx with identical source and destination widths
	movq %rcx, %rdi
	# SetupCalls(265:3): move argument ptr nonnull dereferenceable(40) align 8 ^6
	# Fixed movzx with identical source and destination widths
	movq %rax, %rsi
	# SetupCalls(265:3): move argument i8 zeroext 0
	movq $0, %rdx
	andq $255, %rdx
	# SetupCalls(265:3): move argument ptr null
	movq $0, %rcx
	callq _ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code@PLT
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
	# upalign(24 + 0, 16)
	subq $32, %rsp
	# Align stack pointer to 16-byte boundary
	andq $-16, %rsp
	movq %rbx, -16(%rbp)
	# LowerAlloca(868:3): size = 8, type = ptr*, var = ^2
	leaq -8(%rbp), %rax
	# LowerStore(869:3).9: mov ptr %rdi, (^2)
	movq %rdi, (%rax)
	# LowerLoad(870:3).2: (^2) into ptr ^3
	movq (%rax), %rbx
	# tt = Pointer, type = %"class.std::unique_ptr"
	# LowerGetelementptr(871:3): struct-type: ptr ^3 -> ^4, indices=0,0
	# LowerGetelementptr(871:3): type of ^4 is %"struct.std::__uniq_ptr_data"*
	# SetupCalls(872:3): move argument ptr nonnull dereferenceable(8) align 8 ^4
	# Fixed movzx with identical source and destination widths
	movq %rbx, %rdi
	callq _ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv
	# SetupCalls(872:3): move ptr result from %rax
	movq %rax, %rbx
	movq %rbx, %rax
	movq -16(%rbp), %rbx
	movq %rbp, %rsp
	popq %rbp
	retq

