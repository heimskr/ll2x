; ModuleID = 'cpp/diriter.cpp'
source_filename = "cpp/diriter.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::filesystem::__cxx11::path" = type { %"class.std::__cxx11::basic_string", %"struct.std::filesystem::__cxx11::path::_List" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::filesystem::__cxx11::path::_List" = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.std::filesystem::__cxx11::directory_iterator" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::_Sp_counted_base" = type { ptr, i32, i32 }
%"struct.std::__detail::_Quoted_string" = type <{ ptr, i8, i8, [6 x i8] }>
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }

$_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE = comdat any

@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.1 = private unnamed_addr constant [3 x i8] c": \00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external unnamed_addr constant { [4 x ptr] }, align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8

; Function Attrs: norecurse nounwind sspstrong uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  %1 = alloca i8, align 1
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %3 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8
  %4 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #11
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  store ptr %5, ptr %2, align 8, !tbaa !5
  store i8 47, ptr %5, align 8, !tbaa !10
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  store i64 1, ptr %6, align 8, !tbaa !11
  %7 = getelementptr inbounds i8, ptr %2, i64 17
  store i8 0, ptr %7, align 1, !tbaa !10
  %8 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", ptr %2, i64 0, i32 1
  call void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #11
  call void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(40) %2, i8 noundef zeroext 0, ptr noundef null) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %9 = load ptr, ptr %3, align 8, !tbaa !14
  %10 = getelementptr inbounds %"class.std::__shared_ptr", ptr %3, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %65, label %13

13:                                               ; preds = %0
  %14 = getelementptr inbounds %"class.std::_Sp_counted_base", ptr %11, i64 0, i32 1
  %15 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !10
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, ptr %14, align 8, !tbaa !18
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %14, align 8, !tbaa !18
  store ptr %9, ptr %4, align 8, !tbaa !14, !alias.scope !20
  %20 = getelementptr inbounds %"class.std::__shared_ptr", ptr %4, i64 0, i32 1
  store ptr %11, ptr %20, align 8, !tbaa !17, !alias.scope !20
  br label %26

21:                                               ; preds = %13
  %22 = atomicrmw volatile add ptr %14, i32 1 acq_rel, align 4
  %23 = load ptr, ptr %10, align 8, !tbaa !17
  store ptr %9, ptr %4, align 8, !tbaa !14, !alias.scope !20
  %24 = getelementptr inbounds %"class.std::__shared_ptr", ptr %4, i64 0, i32 1
  store ptr %11, ptr %24, align 8, !tbaa !17, !alias.scope !20
  %25 = icmp eq ptr %23, null
  br i1 %25, label %63, label %26

26:                                               ; preds = %17, %21
  %27 = phi ptr [ %20, %17 ], [ %24, %21 ]
  %28 = phi ptr [ %11, %17 ], [ %23, %21 ]
  %29 = getelementptr inbounds %"class.std::_Sp_counted_base", ptr %28, i64 0, i32 1
  %30 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !10
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, ptr %29, align 8, !tbaa !18
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %29, align 8, !tbaa !18
  br label %37

35:                                               ; preds = %26
  %36 = atomicrmw volatile add ptr %29, i32 1 acq_rel, align 4
  br label %37

37:                                               ; preds = %32, %35
  %38 = load atomic i64, ptr %29 acquire, align 8
  %39 = icmp eq i64 %38, 4294967297
  %40 = trunc i64 %38 to i32
  br i1 %39, label %41, label %49

41:                                               ; preds = %37
  store i32 0, ptr %29, align 8, !tbaa !23
  %42 = getelementptr inbounds %"class.std::_Sp_counted_base", ptr %28, i64 0, i32 2
  store i32 0, ptr %42, align 4, !tbaa !25
  %43 = load ptr, ptr %28, align 8, !tbaa !26
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  call void %45(ptr noundef nonnull align 8 dereferenceable(16) %28) #11
  %46 = load ptr, ptr %28, align 8, !tbaa !26
  %47 = getelementptr inbounds ptr, ptr %46, i64 3
  %48 = load ptr, ptr %47, align 8
  call void %48(ptr noundef nonnull align 8 dereferenceable(16) %28) #11
  br label %60

49:                                               ; preds = %37
  %50 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !10
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = add nsw i32 %40, -1
  store i32 %53, ptr %29, align 8, !tbaa !18
  br label %56

54:                                               ; preds = %49
  %55 = atomicrmw volatile add ptr %29, i32 -1 acq_rel, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %40, %52 ], [ %55, %54 ]
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %60, !prof !28

59:                                               ; preds = %56
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %28) #11
  br label %60

60:                                               ; preds = %41, %56, %59
  %61 = load ptr, ptr %27, align 8, !tbaa !17
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %21, %60
  %64 = phi ptr [ %27, %60 ], [ %24, %21 ]
  br label %104

65:                                               ; preds = %122, %0, %60
  %66 = load ptr, ptr %10, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  %67 = icmp eq ptr %66, null
  br i1 %67, label %92, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %"class.std::_Sp_counted_base", ptr %66, i64 0, i32 1
  %70 = load atomic i64, ptr %69 acquire, align 8
  %71 = icmp eq i64 %70, 4294967297
  %72 = trunc i64 %70 to i32
  br i1 %71, label %73, label %81

73:                                               ; preds = %68
  store i32 0, ptr %69, align 8, !tbaa !23
  %74 = getelementptr inbounds %"class.std::_Sp_counted_base", ptr %66, i64 0, i32 2
  store i32 0, ptr %74, align 4, !tbaa !25
  %75 = load ptr, ptr %66, align 8, !tbaa !26
  %76 = getelementptr inbounds ptr, ptr %75, i64 2
  %77 = load ptr, ptr %76, align 8
  call void %77(ptr noundef nonnull align 8 dereferenceable(16) %66) #11
  %78 = load ptr, ptr %66, align 8, !tbaa !26
  %79 = getelementptr inbounds ptr, ptr %78, i64 3
  %80 = load ptr, ptr %79, align 8
  call void %80(ptr noundef nonnull align 8 dereferenceable(16) %66) #11
  br label %92

81:                                               ; preds = %68
  %82 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !10
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = add nsw i32 %72, -1
  store i32 %85, ptr %69, align 8, !tbaa !18
  br label %88

86:                                               ; preds = %81
  %87 = atomicrmw volatile add ptr %69, i32 -1 acq_rel, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %72, %84 ], [ %87, %86 ]
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %92, !prof !28

91:                                               ; preds = %88
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %66) #11
  br label %92

92:                                               ; preds = %65, %73, %88, %91
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  %93 = load ptr, ptr %8, align 8, !tbaa !29
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull %93) #11
  br label %96

96:                                               ; preds = %95, %92
  store ptr null, ptr %8, align 8, !tbaa !29
  %97 = load ptr, ptr %2, align 8, !tbaa !30
  %98 = icmp eq ptr %97, %5
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i64, ptr %6, align 8, !tbaa !11
  %101 = icmp ult i64 %100, 16
  call void @llvm.assume(i1 %101)
  br label %103

102:                                              ; preds = %96
  call void @_ZdlPv(ptr noundef %97) #12
  br label %103

103:                                              ; preds = %99, %102
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #11
  ret i32 0

104:                                              ; preds = %63, %122
  %105 = phi i32 [ %107, %122 ], [ 0, %63 ]
  %106 = call noundef nonnull align 8 dereferenceable(41) ptr @_ZNKSt10filesystem7__cxx1118directory_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #11
  %107 = add nuw nsw i32 %105, 1
  %108 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %105) #11
  %109 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %108, ptr noundef nonnull @.str.1, i64 noundef 2) #11
  %110 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE(ptr noundef nonnull align 8 dereferenceable(8) %108, ptr noundef nonnull align 8 dereferenceable(40) %106)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1)
  store i8 10, ptr %1, align 1, !tbaa !10
  %111 = load ptr, ptr %110, align 8, !tbaa !26
  %112 = getelementptr i8, ptr %111, i64 -24
  %113 = load i64, ptr %112, align 8
  %114 = getelementptr inbounds i8, ptr %110, i64 %113
  %115 = getelementptr inbounds %"class.std::ios_base", ptr %114, i64 0, i32 2
  %116 = load i64, ptr %115, align 8, !tbaa !31
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %104
  %119 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %110, ptr noundef nonnull %1, i64 noundef 1) #11
  br label %122

120:                                              ; preds = %104
  %121 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %110, i8 noundef signext 10) #11
  br label %122

122:                                              ; preds = %118, %120
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1)
  %123 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10filesystem7__cxx1118directory_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #11
  %124 = load ptr, ptr %64, align 8, !tbaa !17
  %125 = icmp eq ptr %124, null
  br i1 %125, label %65, label %104
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(41) ptr @_ZNKSt10filesystem7__cxx1118directory_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #3 comdat {
  %3 = alloca i64, align 8
  %4 = alloca %"struct.std::__detail::_Quoted_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %6 = load ptr, ptr %1, align 8, !tbaa !30, !noalias !37
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !11, !noalias !37
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  store ptr %9, ptr %5, align 8, !tbaa !5, !alias.scope !37
  %10 = icmp eq ptr %6, null
  %11 = icmp ne i64 %8, 0
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #13
  unreachable

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11, !noalias !37
  store i64 %8, ptr %3, align 8, !tbaa !40, !noalias !37
  %15 = icmp ugt i64 %8, 15
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0) #11
  store ptr %17, ptr %5, align 8, !tbaa !30, !alias.scope !37
  %18 = load i64, ptr %3, align 8, !tbaa !40, !noalias !37
  store i64 %18, ptr %9, align 8, !tbaa !10, !alias.scope !37
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi ptr [ %17, %16 ], [ %9, %14 ]
  switch i64 %8, label %23 [
    i64 1, label %21
    i64 0, label %24
  ]

21:                                               ; preds = %19
  %22 = load i8, ptr %6, align 1, !tbaa !10
  store i8 %22, ptr %20, align 1, !tbaa !10
  br label %24

23:                                               ; preds = %19
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %20, ptr align 1 %6, i64 %8, i1 false)
  br label %24

24:                                               ; preds = %19, %21, %23
  %25 = load i64, ptr %3, align 8, !tbaa !40, !noalias !37
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  store i64 %25, ptr %26, align 8, !tbaa !11, !alias.scope !37
  %27 = load ptr, ptr %5, align 8, !tbaa !30, !alias.scope !37
  %28 = getelementptr inbounds i8, ptr %27, i64 %25
  store i8 0, ptr %28, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11, !noalias !37
  store ptr %5, ptr %4, align 8
  %29 = getelementptr inbounds { ptr, i64 }, ptr %4, i64 0, i32 1
  store i64 23586, ptr %29, align 8
  %30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(10) %4)
  %31 = load ptr, ptr %5, align 8, !tbaa !30
  %32 = icmp eq ptr %31, %9
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i64, ptr %26, align 8, !tbaa !11
  %35 = icmp ult i64 %34, 16
  call void @llvm.assume(i1 %35)
  br label %37

36:                                               ; preds = %24
  call void @_ZdlPv(ptr noundef %31) #12
  br label %37

37:                                               ; preds = %33, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10filesystem7__cxx1118directory_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(40), i8 noundef zeroext, ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !26
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  %5 = getelementptr inbounds %"class.std::_Sp_counted_base", ptr %0, i64 0, i32 2
  %6 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr %5, align 4, !tbaa !18
  %10 = add nsw i32 %9, -1
  store i32 %10, ptr %5, align 4, !tbaa !18
  br label %13

11:                                               ; preds = %1
  %12 = atomicrmw volatile add ptr %5, i32 -1 acq_rel, align 4
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i32 [ %9, %8 ], [ %12, %11 ]
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load ptr, ptr %0, align 8, !tbaa !26
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  br label %20

20:                                               ; preds = %13, %16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(10) %1) local_unnamed_addr #3 comdat {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %"class.std::__cxx11::basic_ostringstream", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %7) #11
  %9 = getelementptr inbounds i8, ptr %7, i64 112
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216) %9) #11
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2), ptr %9, align 8, !tbaa !26
  %10 = getelementptr inbounds i8, ptr %7, i64 328
  store ptr null, ptr %10, align 8, !tbaa !41
  %11 = getelementptr inbounds i8, ptr %7, i64 336
  store i8 0, ptr %11, align 8, !tbaa !44
  %12 = getelementptr inbounds i8, ptr %7, i64 337
  store i8 0, ptr %12, align 1, !tbaa !45
  %13 = getelementptr inbounds i8, ptr %7, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 0, i64 32, i1 false)
  %14 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 1), align 8
  store ptr %14, ptr %7, align 8, !tbaa !26
  %15 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2), align 8
  %16 = getelementptr i8, ptr %14, i64 -24
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds i8, ptr %7, i64 %17
  store ptr %15, ptr %18, align 8, !tbaa !26
  %19 = load ptr, ptr %7, align 8, !tbaa !26
  %20 = getelementptr i8, ptr %19, i64 -24
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds i8, ptr %7, i64 %21
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %22, ptr noundef null) #11
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 3), ptr %7, align 8, !tbaa !26
  store ptr getelementptr inbounds ({ [5 x ptr], [5 x ptr] }, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 1, i64 3), ptr %9, align 8, !tbaa !26
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %7, i64 0, i32 1
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2), ptr %23, align 8, !tbaa !26
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %7, i64 0, i32 1, i32 0, i32 1
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %7, i64 0, i32 1, i32 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %24, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %25) #11
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2), ptr %23, align 8, !tbaa !26
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %7, i64 0, i32 1, i32 1
  store i32 16, ptr %26, align 8, !tbaa !46
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %7, i64 0, i32 1, i32 2
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %7, i64 0, i32 1, i32 2, i32 2
  store ptr %28, ptr %27, align 8, !tbaa !5
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %7, i64 0, i32 1, i32 2, i32 1
  store i64 0, ptr %29, align 8, !tbaa !11
  store i8 0, ptr %28, align 8, !tbaa !10
  %30 = load ptr, ptr %7, align 8, !tbaa !26
  %31 = getelementptr i8, ptr %30, i64 -24
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr inbounds i8, ptr %7, i64 %32
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %33, ptr noundef nonnull %23) #11
  %34 = getelementptr inbounds %"struct.std::__detail::_Quoted_string", ptr %1, i64 0, i32 1
  %35 = load i8, ptr %34, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 %35, ptr %6, align 1, !tbaa !10
  %36 = load ptr, ptr %7, align 8, !tbaa !26
  %37 = getelementptr i8, ptr %36, i64 -24
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds i8, ptr %7, i64 %38
  %40 = getelementptr inbounds %"class.std::ios_base", ptr %39, i64 0, i32 2
  %41 = load i64, ptr %40, align 8, !tbaa !31
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %2
  %44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %6, i64 noundef 1) #11
  br label %47

45:                                               ; preds = %2
  %46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %7, i8 noundef signext %35) #11
  br label %47

47:                                               ; preds = %43, %45
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  %48 = load ptr, ptr %1, align 8, !tbaa !52
  %49 = load ptr, ptr %48, align 8, !tbaa !30
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %48, i64 0, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !11
  %52 = getelementptr inbounds i8, ptr %49, i64 %51
  %53 = icmp eq i64 %51, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %"struct.std::__detail::_Quoted_string", ptr %1, i64 0, i32 2
  br label %112

56:                                               ; preds = %145, %47
  %57 = load i8, ptr %34, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 %57, ptr %5, align 1, !tbaa !10
  %58 = load ptr, ptr %7, align 8, !tbaa !26
  %59 = getelementptr i8, ptr %58, i64 -24
  %60 = load i64, ptr %59, align 8
  %61 = getelementptr inbounds i8, ptr %7, i64 %60
  %62 = getelementptr inbounds %"class.std::ios_base", ptr %61, i64 0, i32 2
  %63 = load i64, ptr %62, align 8, !tbaa !31
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %56
  %66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %5, i64 noundef 1) #11
  br label %69

67:                                               ; preds = %56
  %68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %7, i8 noundef signext %57) #11
  br label %69

69:                                               ; preds = %65, %67
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  store ptr %70, ptr %8, align 8, !tbaa !5, !alias.scope !59
  %71 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  store i64 0, ptr %71, align 8, !tbaa !11, !alias.scope !59
  store i8 0, ptr %70, align 8, !tbaa !10, !alias.scope !59
  %72 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %7, i64 0, i32 1, i32 0, i32 5
  %73 = load ptr, ptr %72, align 8, !tbaa !60, !noalias !59
  %74 = icmp eq ptr %73, null
  %75 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %7, i64 0, i32 1, i32 0, i32 3
  %76 = load ptr, ptr %75, align 8, !noalias !59
  %77 = icmp ugt ptr %73, %76
  %78 = select i1 %77, ptr %73, ptr %76
  %79 = icmp eq ptr %78, null
  %80 = select i1 %74, i1 true, i1 %79
  br i1 %80, label %88, label %81

81:                                               ; preds = %69
  %82 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %7, i64 0, i32 1, i32 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !61, !noalias !59
  %84 = ptrtoint ptr %78 to i64
  %85 = ptrtoint ptr %83 to i64
  %86 = sub i64 %84, %85
  %87 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %83, i64 noundef %86) #11
  br label %89

88:                                               ; preds = %69
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %27) #11
  br label %89

89:                                               ; preds = %81, %88
  %90 = load ptr, ptr %8, align 8, !tbaa !30
  %91 = load i64, ptr %71, align 8, !tbaa !11
  %92 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %90, i64 noundef %91) #11
  %93 = load ptr, ptr %8, align 8, !tbaa !30
  %94 = icmp eq ptr %93, %70
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i64, ptr %71, align 8, !tbaa !11
  %97 = icmp ult i64 %96, 16
  call void @llvm.assume(i1 %97)
  br label %99

98:                                               ; preds = %89
  call void @_ZdlPv(ptr noundef %93) #12
  br label %99

99:                                               ; preds = %95, %98
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #11
  %100 = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8
  store ptr %100, ptr %7, align 8, !tbaa !26
  %101 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3), align 8
  %102 = getelementptr i8, ptr %100, i64 -24
  %103 = load i64, ptr %102, align 8
  %104 = getelementptr inbounds i8, ptr %7, i64 %103
  store ptr %101, ptr %104, align 8, !tbaa !26
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2), ptr %23, align 8, !tbaa !26
  %105 = load ptr, ptr %27, align 8, !tbaa !30
  %106 = icmp eq ptr %105, %28
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load i64, ptr %29, align 8, !tbaa !11
  %109 = icmp ult i64 %108, 16
  call void @llvm.assume(i1 %109)
  br label %111

110:                                              ; preds = %99
  call void @_ZdlPv(ptr noundef %105) #12
  br label %111

111:                                              ; preds = %107, %110
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2), ptr %23, align 8, !tbaa !26
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %25) #11
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %9) #11
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %7) #11
  ret ptr %92

112:                                              ; preds = %54, %145
  %113 = phi ptr [ %49, %54 ], [ %146, %145 ]
  %114 = load i8, ptr %113, align 1, !tbaa !10
  %115 = load i8, ptr %34, align 8, !tbaa !50
  %116 = icmp eq i8 %114, %115
  %117 = load i8, ptr %55, align 1
  %118 = icmp eq i8 %114, %117
  %119 = select i1 %116, i1 true, i1 %118
  br i1 %119, label %120, label %133

120:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 %117, ptr %4, align 1, !tbaa !10
  %121 = load ptr, ptr %7, align 8, !tbaa !26
  %122 = getelementptr i8, ptr %121, i64 -24
  %123 = load i64, ptr %122, align 8
  %124 = getelementptr inbounds i8, ptr %7, i64 %123
  %125 = getelementptr inbounds %"class.std::ios_base", ptr %124, i64 0, i32 2
  %126 = load i64, ptr %125, align 8, !tbaa !31
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %120
  %129 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %4, i64 noundef 1) #11
  br label %132

130:                                              ; preds = %120
  %131 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %7, i8 noundef signext %117) #11
  br label %132

132:                                              ; preds = %128, %130
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  br label %133

133:                                              ; preds = %112, %132
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 %114, ptr %3, align 1, !tbaa !10
  %134 = load ptr, ptr %7, align 8, !tbaa !26
  %135 = getelementptr i8, ptr %134, i64 -24
  %136 = load i64, ptr %135, align 8
  %137 = getelementptr inbounds i8, ptr %7, i64 %136
  %138 = getelementptr inbounds %"class.std::ios_base", ptr %137, i64 0, i32 2
  %139 = load i64, ptr %138, align 8, !tbaa !31
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %133
  %142 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3, i64 noundef 1) #11
  br label %145

143:                                              ; preds = %133
  %144 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %7, i8 noundef signext %114) #11
  br label %145

145:                                              ; preds = %141, %143
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %146 = getelementptr inbounds i8, ptr %113, i64 1
  %147 = icmp eq ptr %146, %52
  br i1 %147, label %56, label %112
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

attributes #0 = { norecurse nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 16.0.6"}
!5 = !{!6, !7, i64 0}
!6 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = !{!12, !13, i64 8}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !6, i64 0, !13, i64 8, !8, i64 16}
!13 = !{!"long", !8, i64 0}
!14 = !{!15, !7, i64 0}
!15 = !{!"_ZTSSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE", !7, i64 0, !16, i64 8}
!16 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !7, i64 0}
!17 = !{!16, !7, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"int", !8, i64 0}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE: argument 0"}
!22 = distinct !{!22, !"_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE"}
!23 = !{!24, !19, i64 8}
!24 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !19, i64 8, !19, i64 12}
!25 = !{!24, !19, i64 12}
!26 = !{!27, !27, i64 0}
!27 = !{!"vtable pointer", !9, i64 0}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{!7, !7, i64 0}
!30 = !{!12, !7, i64 0}
!31 = !{!32, !13, i64 16}
!32 = !{!"_ZTSSt8ios_base", !13, i64 8, !13, i64 16, !33, i64 24, !34, i64 28, !34, i64 32, !7, i64 40, !35, i64 48, !8, i64 64, !19, i64 192, !7, i64 200, !36, i64 208}
!33 = !{!"_ZTSSt13_Ios_Fmtflags", !8, i64 0}
!34 = !{!"_ZTSSt12_Ios_Iostate", !8, i64 0}
!35 = !{!"_ZTSNSt8ios_base6_WordsE", !7, i64 0, !13, i64 8}
!36 = !{!"_ZTSSt6locale", !7, i64 0}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!39 = distinct !{!39, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!40 = !{!13, !13, i64 0}
!41 = !{!42, !7, i64 216}
!42 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !32, i64 0, !7, i64 216, !8, i64 224, !43, i64 225, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256}
!43 = !{!"bool", !8, i64 0}
!44 = !{!42, !8, i64 224}
!45 = !{!42, !43, i64 225}
!46 = !{!47, !49, i64 64}
!47 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !48, i64 0, !49, i64 64, !12, i64 72}
!48 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !36, i64 56}
!49 = !{!"_ZTSSt13_Ios_Openmode", !8, i64 0}
!50 = !{!51, !8, i64 8}
!51 = !{!"_ZTSNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEE", !7, i64 0, !8, i64 8, !8, i64 9}
!52 = !{!51, !7, i64 0}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!55 = distinct !{!55, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!58 = distinct !{!58, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!59 = !{!57, !54}
!60 = !{!48, !7, i64 40}
!61 = !{!48, !7, i64 32}
