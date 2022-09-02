; ModuleID = 'cpp/noisy.cpp'
source_filename = "cpp/noisy.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Noisy = type { i8 }

$_ZN5NoisyD2Ev = comdat any

@noisy = dso_local global %struct.Noisy zeroinitializer, align 1, !dbg !0
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_noisy.cpp, i8* null }]
@str = private unnamed_addr constant [15 x i8] c"Noisy::Noisy()\00", align 1
@str.3 = private unnamed_addr constant [16 x i8] c"Noisy::~Noisy()\00", align 1
@str.4 = private unnamed_addr constant [14 x i8] c"Hello, World!\00", align 1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN5NoisyD2Ev(%struct.Noisy* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !dbg !270 {
  call void @llvm.dbg.value(metadata %struct.Noisy* %0, metadata !272, metadata !DIExpression()), !dbg !274
  %2 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @str.3, i64 0, i64 0)), !dbg !275
  ret void, !dbg !277
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 !dbg !278 {
  %1 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @str.4, i64 0, i64 0)), !dbg !280
  ret i32 0, !dbg !281
}

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_noisy.cpp() #3 section ".text.startup" !dbg !282 {
  call void @llvm.dbg.value(metadata %struct.Noisy* @noisy, metadata !284, metadata !DIExpression()) #5, !dbg !287
  %1 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @str, i64 0, i64 0)) #5, !dbg !294
  %2 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%struct.Noisy*)* @_ZN5NoisyD2Ev to void (i8*)*), i8* getelementptr inbounds (%struct.Noisy, %struct.Noisy* @noisy, i64 0, i32 0), i8* nonnull @__dso_handle) #5, !dbg !296
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress nofree norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.linker.options = !{}
!llvm.module.flags = !{!263, !264, !265, !266, !267, !268}
!llvm.ident = !{!269}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "noisy", scope: !2, file: !3, line: 8, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !12, imports: !13, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "cpp/noisy.cpp", directory: "/home/kai/src/ll2x", checksumkind: CSK_MD5, checksum: "3d0667427abd9c915b993bcb15d77ef8")
!4 = !{!5}
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Noisy", file: !3, line: 3, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !6, identifier: "_ZTS5Noisy")
!6 = !{!7, !11}
!7 = !DISubprogram(name: "Noisy", scope: !5, file: !3, line: 4, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!11 = !DISubprogram(name: "~Noisy", scope: !5, file: !3, line: 5, type: !8, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!12 = !{!0}
!13 = !{!14, !79, !85, !90, !94, !96, !98, !100, !102, !109, !114, !121, !125, !129, !133, !138, !142, !144, !148, !154, !158, !165, !167, !172, !176, !180, !182, !186, !190, !192, !196, !198, !200, !204, !208, !212, !216, !220, !224, !226, !233, !237, !241, !246, !248, !250, !254, !258, !259, !260, !261, !262}
!14 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !16, file: !78, line: 98)
!15 = !DINamespace(name: "std", scope: null)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !17, line: 7, baseType: !18)
!17 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !19, line: 49, size: 1728, flags: DIFlagTypePassByValue, elements: !20, identifier: "_ZTS8_IO_FILE")
!19 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!20 = !{!21, !23, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !39, !41, !42, !43, !47, !49, !51, !55, !58, !60, !63, !66, !67, !69, !73, !74}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !18, file: !19, line: 51, baseType: !22, size: 32)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !18, file: !19, line: 54, baseType: !24, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !18, file: !19, line: 55, baseType: !24, size: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !18, file: !19, line: 56, baseType: !24, size: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !18, file: !19, line: 57, baseType: !24, size: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !18, file: !19, line: 58, baseType: !24, size: 64, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !18, file: !19, line: 59, baseType: !24, size: 64, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !18, file: !19, line: 60, baseType: !24, size: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !18, file: !19, line: 61, baseType: !24, size: 64, offset: 512)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !18, file: !19, line: 64, baseType: !24, size: 64, offset: 576)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !18, file: !19, line: 65, baseType: !24, size: 64, offset: 640)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !18, file: !19, line: 66, baseType: !24, size: 64, offset: 704)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !18, file: !19, line: 68, baseType: !37, size: 64, offset: 768)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !19, line: 36, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS10_IO_marker")
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !18, file: !19, line: 70, baseType: !40, size: 64, offset: 832)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !18, file: !19, line: 72, baseType: !22, size: 32, offset: 896)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !18, file: !19, line: 73, baseType: !22, size: 32, offset: 928)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !18, file: !19, line: 74, baseType: !44, size: 64, offset: 960)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !45, line: 152, baseType: !46)
!45 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!46 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !18, file: !19, line: 77, baseType: !48, size: 16, offset: 1024)
!48 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !18, file: !19, line: 78, baseType: !50, size: 8, offset: 1040)
!50 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !18, file: !19, line: 79, baseType: !52, size: 8, offset: 1048)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 8, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 1)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !18, file: !19, line: 81, baseType: !56, size: 64, offset: 1088)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !19, line: 43, baseType: null)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !18, file: !19, line: 89, baseType: !59, size: 64, offset: 1152)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !45, line: 153, baseType: !46)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !18, file: !19, line: 91, baseType: !61, size: 64, offset: 1216)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !19, line: 37, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS11_IO_codecvt")
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !18, file: !19, line: 92, baseType: !64, size: 64, offset: 1280)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !19, line: 38, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS13_IO_wide_data")
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !18, file: !19, line: 93, baseType: !40, size: 64, offset: 1344)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !18, file: !19, line: 94, baseType: !68, size: 64, offset: 1408)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !18, file: !19, line: 95, baseType: !70, size: 64, offset: 1472)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 46, baseType: !72)
!71 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!72 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !18, file: !19, line: 96, baseType: !22, size: 32, offset: 1536)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !18, file: !19, line: 98, baseType: !75, size: 160, offset: 1568)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 160, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 20)
!78 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdio", directory: "")
!79 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !80, file: !78, line: 99)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !81, line: 84, baseType: !82)
!81 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !83, line: 14, baseType: !84)
!83 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!84 = !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !83, line: 10, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!85 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !86, file: !78, line: 101)
!86 = !DISubprogram(name: "clearerr", scope: !81, file: !81, line: 786, type: !87, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !89}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!90 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !91, file: !78, line: 102)
!91 = !DISubprogram(name: "fclose", scope: !81, file: !81, line: 178, type: !92, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!92 = !DISubroutineType(types: !93)
!93 = !{!22, !89}
!94 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !95, file: !78, line: 103)
!95 = !DISubprogram(name: "feof", scope: !81, file: !81, line: 788, type: !92, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!96 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !97, file: !78, line: 104)
!97 = !DISubprogram(name: "ferror", scope: !81, file: !81, line: 790, type: !92, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!98 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !99, file: !78, line: 105)
!99 = !DISubprogram(name: "fflush", scope: !81, file: !81, line: 230, type: !92, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !101, file: !78, line: 106)
!101 = !DISubprogram(name: "fgetc", scope: !81, file: !81, line: 513, type: !92, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !103, file: !78, line: 107)
!103 = !DISubprogram(name: "fgetpos", scope: !81, file: !81, line: 760, type: !104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!104 = !DISubroutineType(types: !105)
!105 = !{!22, !106, !107}
!106 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !89)
!107 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !110, file: !78, line: 108)
!110 = !DISubprogram(name: "fgets", scope: !81, file: !81, line: 592, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!111 = !DISubroutineType(types: !112)
!112 = !{!24, !113, !22, !106}
!113 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !24)
!114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !115, file: !78, line: 109)
!115 = !DISubprogram(name: "fopen", scope: !81, file: !81, line: 258, type: !116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!116 = !DISubroutineType(types: !117)
!117 = !{!89, !118, !118}
!118 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !122, file: !78, line: 110)
!122 = !DISubprogram(name: "fprintf", scope: !81, file: !81, line: 350, type: !123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!123 = !DISubroutineType(types: !124)
!124 = !{!22, !106, !118, null}
!125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !126, file: !78, line: 111)
!126 = !DISubprogram(name: "fputc", scope: !81, file: !81, line: 549, type: !127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!127 = !DISubroutineType(types: !128)
!128 = !{!22, !22, !89}
!129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !130, file: !78, line: 112)
!130 = !DISubprogram(name: "fputs", scope: !81, file: !81, line: 655, type: !131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!131 = !DISubroutineType(types: !132)
!132 = !{!22, !118, !106}
!133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !134, file: !78, line: 113)
!134 = !DISubprogram(name: "fread", scope: !81, file: !81, line: 675, type: !135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!135 = !DISubroutineType(types: !136)
!136 = !{!70, !137, !70, !70, !106}
!137 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !139, file: !78, line: 114)
!139 = !DISubprogram(name: "freopen", scope: !81, file: !81, line: 265, type: !140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!140 = !DISubroutineType(types: !141)
!141 = !{!89, !118, !118, !106}
!142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !143, file: !78, line: 115)
!143 = !DISubprogram(name: "fscanf", linkageName: "__isoc99_fscanf", scope: !81, file: !81, line: 434, type: !123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !145, file: !78, line: 116)
!145 = !DISubprogram(name: "fseek", scope: !81, file: !81, line: 713, type: !146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!146 = !DISubroutineType(types: !147)
!147 = !{!22, !89, !46, !22}
!148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !149, file: !78, line: 117)
!149 = !DISubprogram(name: "fsetpos", scope: !81, file: !81, line: 765, type: !150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!150 = !DISubroutineType(types: !151)
!151 = !{!22, !89, !152}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !155, file: !78, line: 118)
!155 = !DISubprogram(name: "ftell", scope: !81, file: !81, line: 718, type: !156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!156 = !DISubroutineType(types: !157)
!157 = !{!46, !89}
!158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !159, file: !78, line: 119)
!159 = !DISubprogram(name: "fwrite", scope: !81, file: !81, line: 681, type: !160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!160 = !DISubroutineType(types: !161)
!161 = !{!70, !162, !70, !70, !106}
!162 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !166, file: !78, line: 120)
!166 = !DISubprogram(name: "getc", scope: !81, file: !81, line: 514, type: !92, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !168, file: !78, line: 121)
!168 = !DISubprogram(name: "getchar", scope: !169, file: !169, line: 47, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!169 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!170 = !DISubroutineType(types: !171)
!171 = !{!22}
!172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !173, file: !78, line: 126)
!173 = !DISubprogram(name: "perror", scope: !81, file: !81, line: 804, type: !174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !119}
!176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !177, file: !78, line: 127)
!177 = !DISubprogram(name: "printf", scope: !81, file: !81, line: 356, type: !178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!178 = !DISubroutineType(types: !179)
!179 = !{!22, !118, null}
!180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !181, file: !78, line: 128)
!181 = !DISubprogram(name: "putc", scope: !81, file: !81, line: 550, type: !127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !183, file: !78, line: 129)
!183 = !DISubprogram(name: "putchar", scope: !169, file: !169, line: 82, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!184 = !DISubroutineType(types: !185)
!185 = !{!22, !22}
!186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !187, file: !78, line: 130)
!187 = !DISubprogram(name: "puts", scope: !81, file: !81, line: 661, type: !188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!188 = !DISubroutineType(types: !189)
!189 = !{!22, !119}
!190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !191, file: !78, line: 131)
!191 = !DISubprogram(name: "remove", scope: !81, file: !81, line: 152, type: !188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !193, file: !78, line: 132)
!193 = !DISubprogram(name: "rename", scope: !81, file: !81, line: 154, type: !194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!194 = !DISubroutineType(types: !195)
!195 = !{!22, !119, !119}
!196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !197, file: !78, line: 133)
!197 = !DISubprogram(name: "rewind", scope: !81, file: !81, line: 723, type: !87, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !199, file: !78, line: 134)
!199 = !DISubprogram(name: "scanf", linkageName: "__isoc99_scanf", scope: !81, file: !81, line: 437, type: !178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !201, file: !78, line: 135)
!201 = !DISubprogram(name: "setbuf", scope: !81, file: !81, line: 328, type: !202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!202 = !DISubroutineType(types: !203)
!203 = !{null, !106, !113}
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !205, file: !78, line: 136)
!205 = !DISubprogram(name: "setvbuf", scope: !81, file: !81, line: 332, type: !206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!206 = !DISubroutineType(types: !207)
!207 = !{!22, !106, !113, !22, !70}
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !209, file: !78, line: 137)
!209 = !DISubprogram(name: "sprintf", scope: !81, file: !81, line: 358, type: !210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!210 = !DISubroutineType(types: !211)
!211 = !{!22, !113, !118, null}
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !213, file: !78, line: 138)
!213 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !81, file: !81, line: 439, type: !214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!214 = !DISubroutineType(types: !215)
!215 = !{!22, !118, !118, null}
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !217, file: !78, line: 139)
!217 = !DISubprogram(name: "tmpfile", scope: !81, file: !81, line: 188, type: !218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!218 = !DISubroutineType(types: !219)
!219 = !{!89}
!220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !221, file: !78, line: 141)
!221 = !DISubprogram(name: "tmpnam", scope: !81, file: !81, line: 205, type: !222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!222 = !DISubroutineType(types: !223)
!223 = !{!24, !24}
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !225, file: !78, line: 143)
!225 = !DISubprogram(name: "ungetc", scope: !81, file: !81, line: 668, type: !127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !227, file: !78, line: 144)
!227 = !DISubprogram(name: "vfprintf", scope: !81, file: !81, line: 365, type: !228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!228 = !DISubroutineType(types: !229)
!229 = !{!22, !106, !118, !230}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !232, size: 192, flags: DIFlagFwdDecl, identifier: "_ZTS13__va_list_tag")
!232 = !DIFile(filename: "cpp/noisy.cpp", directory: "/home/kai/src/ll2x")
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !234, file: !78, line: 145)
!234 = !DISubprogram(name: "vprintf", scope: !169, file: !169, line: 39, type: !235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!235 = !DISubroutineType(types: !236)
!236 = !{!22, !118, !230}
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !238, file: !78, line: 146)
!238 = !DISubprogram(name: "vsprintf", scope: !81, file: !81, line: 373, type: !239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!239 = !DISubroutineType(types: !240)
!240 = !{!22, !113, !118, !230}
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !242, entity: !243, file: !78, line: 175)
!242 = !DINamespace(name: "__gnu_cxx", scope: null)
!243 = !DISubprogram(name: "snprintf", scope: !81, file: !81, line: 378, type: !244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!244 = !DISubroutineType(types: !245)
!245 = !{!22, !113, !70, !118, null}
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !242, entity: !247, file: !78, line: 176)
!247 = !DISubprogram(name: "vfscanf", linkageName: "__isoc99_vfscanf", scope: !81, file: !81, line: 479, type: !228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !242, entity: !249, file: !78, line: 177)
!249 = !DISubprogram(name: "vscanf", linkageName: "__isoc99_vscanf", scope: !81, file: !81, line: 484, type: !235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !242, entity: !251, file: !78, line: 178)
!251 = !DISubprogram(name: "vsnprintf", scope: !81, file: !81, line: 382, type: !252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!252 = !DISubroutineType(types: !253)
!253 = !{!22, !113, !70, !118, !230}
!254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !242, entity: !255, file: !78, line: 179)
!255 = !DISubprogram(name: "vsscanf", linkageName: "__isoc99_vsscanf", scope: !81, file: !81, line: 487, type: !256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!256 = !DISubroutineType(types: !257)
!257 = !{!22, !118, !118, !230}
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !243, file: !78, line: 185)
!259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !247, file: !78, line: 186)
!260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !249, file: !78, line: 187)
!261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !251, file: !78, line: 188)
!262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !15, entity: !255, file: !78, line: 189)
!263 = !{i32 7, !"Dwarf Version", i32 5}
!264 = !{i32 2, !"Debug Info Version", i32 3}
!265 = !{i32 1, !"wchar_size", i32 4}
!266 = !{i32 7, !"PIC Level", i32 2}
!267 = !{i32 7, !"PIE Level", i32 2}
!268 = !{i32 7, !"uwtable", i32 1}
!269 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!270 = distinct !DISubprogram(name: "~Noisy", linkageName: "_ZN5NoisyD2Ev", scope: !5, file: !3, line: 5, type: !8, scopeLine: 5, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !11, retainedNodes: !271)
!271 = !{!272}
!272 = !DILocalVariable(name: "this", arg: 1, scope: !270, type: !273, flags: DIFlagArtificial | DIFlagObjectPointer)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!274 = !DILocation(line: 0, scope: !270)
!275 = !DILocation(line: 5, column: 13, scope: !276)
!276 = distinct !DILexicalBlock(scope: !270, file: !3, line: 5, column: 11)
!277 = !DILocation(line: 5, column: 42, scope: !270)
!278 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 10, type: !170, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !279)
!279 = !{}
!280 = !DILocation(line: 11, column: 2, scope: !278)
!281 = !DILocation(line: 12, column: 2, scope: !278)
!282 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_noisy.cpp", scope: !232, file: !232, type: !283, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !279)
!283 = !DISubroutineType(types: !279)
!284 = !DILocalVariable(name: "this", arg: 1, scope: !285, type: !273, flags: DIFlagArtificial | DIFlagObjectPointer)
!285 = distinct !DISubprogram(name: "Noisy", linkageName: "_ZN5NoisyC2Ev", scope: !5, file: !3, line: 4, type: !8, scopeLine: 4, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !7, retainedNodes: !286)
!286 = !{!284}
!287 = !DILocation(line: 0, scope: !285, inlinedAt: !288)
!288 = distinct !DILocation(line: 8, column: 7, scope: !289, inlinedAt: !293)
!289 = !DILexicalBlockFile(scope: !290, file: !3, discriminator: 0)
!290 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !232, file: !232, type: !291, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !279)
!291 = !DISubroutineType(types: !292)
!292 = !{null}
!293 = distinct !DILocation(line: 0, scope: !282)
!294 = !DILocation(line: 4, column: 13, scope: !295, inlinedAt: !288)
!295 = distinct !DILexicalBlock(scope: !285, file: !3, line: 4, column: 11)
!296 = !DILocation(line: 0, scope: !290, inlinedAt: !293)
