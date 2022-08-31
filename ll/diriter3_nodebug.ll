; ModuleID = 'cpp/diriter.cpp'
source_filename = "cpp/diriter.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::filesystem::__cxx11::path" = type { %"class.std::__cxx11::basic_string", %"struct.std::filesystem::__cxx11::path::_List" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"struct.std::filesystem::__cxx11::path::_List" = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { %"struct.std::filesystem::__cxx11::path::_List::_Impl"* }
%"struct.std::filesystem::__cxx11::path::_List::_Impl" = type opaque
%"class.std::filesystem::__cxx11::directory_iterator" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { %"struct.std::filesystem::__cxx11::_Dir"*, %"class.std::__shared_count" }
%"struct.std::filesystem::__cxx11::_Dir" = type opaque
%"class.std::__shared_count" = type { %"class.std::_Sp_counted_base"* }
%"class.std::_Sp_counted_base" = type { i32 (...)**, i32, i32 }
%"class.std::error_code" = type { i32, %"class.std::_V2::error_category"* }
%"class.std::_V2::error_category" = type { i32 (...)** }
%"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter" = type { i8 }
%"class.std::filesystem::__cxx11::directory_entry" = type <{ %"class.std::filesystem::__cxx11::path", i8, [7 x i8] }>
%"struct.std::__detail::_Quoted_string" = type <{ %"class.std::__cxx11::basic_string"*, i8, i8, [6 x i8] }>
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { i32 (...)** }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }

$_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE = comdat any

$_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.1 = private unnamed_addr constant [3 x i8] c": \00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [5 x i8*], [5 x i8*] }, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x i8*], align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external unnamed_addr constant { [4 x i8*] }, align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x i8*] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x i8*] }, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_diriter.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: norecurse nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
  %1 = alloca i8, align 1
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %3 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8
  %4 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8
  %5 = bitcast %"class.std::filesystem::__cxx11::path"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #14
  call void @_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %2, [2 x i8]* noundef nonnull align 1 dereferenceable(2) @.str, i8 noundef zeroext 2)
  %6 = bitcast %"class.std::filesystem::__cxx11::directory_iterator"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #14
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %3, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %2, i8 noundef zeroext 0, %"class.std::error_code"* noundef null) #14
  %7 = bitcast %"class.std::filesystem::__cxx11::directory_iterator"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #14
  %8 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %3, i64 0, i32 0, i32 0
  %9 = load %"struct.std::filesystem::__cxx11::_Dir"*, %"struct.std::filesystem::__cxx11::_Dir"** %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %3, i64 0, i32 0, i32 1, i32 0
  %11 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %10, align 8, !tbaa !11
  %12 = icmp eq %"class.std::_Sp_counted_base"* %11, null
  br i1 %12, label %74, label %13

13:                                               ; preds = %0
  %14 = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %11, i64 0, i32 1
  %15 = load i8, i8* @__libc_single_threaded, align 1, !tbaa !12
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %14, align 8, !tbaa !13
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %14, align 8, !tbaa !13
  %20 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %4, i64 0, i32 0, i32 0
  store %"struct.std::filesystem::__cxx11::_Dir"* %9, %"struct.std::filesystem::__cxx11::_Dir"** %20, align 8, !tbaa !5, !alias.scope !15
  %21 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %4, i64 0, i32 0, i32 1, i32 0
  store %"class.std::_Sp_counted_base"* %11, %"class.std::_Sp_counted_base"** %21, align 8, !tbaa !11, !alias.scope !15
  br label %28

22:                                               ; preds = %13
  %23 = atomicrmw volatile add i32* %14, i32 1 acq_rel, align 4
  %24 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %10, align 8, !tbaa !11
  %25 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %4, i64 0, i32 0, i32 0
  store %"struct.std::filesystem::__cxx11::_Dir"* %9, %"struct.std::filesystem::__cxx11::_Dir"** %25, align 8, !tbaa !5, !alias.scope !15
  %26 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %4, i64 0, i32 0, i32 1, i32 0
  store %"class.std::_Sp_counted_base"* %11, %"class.std::_Sp_counted_base"** %26, align 8, !tbaa !11, !alias.scope !15
  %27 = icmp eq %"class.std::_Sp_counted_base"* %24, null
  br i1 %27, label %72, label %28

28:                                               ; preds = %17, %22
  %29 = phi %"class.std::_Sp_counted_base"** [ %21, %17 ], [ %26, %22 ]
  %30 = phi %"class.std::_Sp_counted_base"* [ %11, %17 ], [ %24, %22 ]
  %31 = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %30, i64 0, i32 1
  %32 = load i8, i8* @__libc_single_threaded, align 1, !tbaa !12
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %31, align 8, !tbaa !13
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %31, align 8, !tbaa !13
  br label %41

37:                                               ; preds = %28
  %38 = atomicrmw volatile add i32* %31, i32 1 acq_rel, align 4
  %39 = load i8, i8* @__libc_single_threaded, align 1, !tbaa !12
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %34, %37
  %42 = load i32, i32* %31, align 8, !tbaa !13
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %31, align 8, !tbaa !13
  br label %46

44:                                               ; preds = %37
  %45 = atomicrmw volatile add i32* %31, i32 -1 acq_rel, align 4
  br label %46

46:                                               ; preds = %44, %41
  %47 = phi i32 [ %42, %41 ], [ %45, %44 ]
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %69

49:                                               ; preds = %46
  %50 = bitcast %"class.std::_Sp_counted_base"* %30 to void (%"class.std::_Sp_counted_base"*)***
  %51 = load void (%"class.std::_Sp_counted_base"*)**, void (%"class.std::_Sp_counted_base"*)*** %50, align 8, !tbaa !18
  %52 = getelementptr inbounds void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %51, i64 2
  %53 = load void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %52, align 8
  call void %53(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %30) #14
  %54 = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %30, i64 0, i32 2
  %55 = load i8, i8* @__libc_single_threaded, align 1, !tbaa !12
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %54, align 4, !tbaa !13
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %54, align 4, !tbaa !13
  br label %62

60:                                               ; preds = %49
  %61 = atomicrmw volatile add i32* %54, i32 -1 acq_rel, align 4
  br label %62

62:                                               ; preds = %60, %57
  %63 = phi i32 [ %58, %57 ], [ %61, %60 ]
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load void (%"class.std::_Sp_counted_base"*)**, void (%"class.std::_Sp_counted_base"*)*** %50, align 8, !tbaa !18
  %67 = getelementptr inbounds void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %66, i64 3
  %68 = load void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %67, align 8
  call void %68(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %30) #14
  br label %69

69:                                               ; preds = %46, %62, %65
  %70 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %29, align 8, !tbaa !11
  %71 = icmp eq %"class.std::_Sp_counted_base"* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %22, %69
  %73 = phi %"class.std::_Sp_counted_base"** [ %29, %69 ], [ %26, %22 ]
  br label %124

74:                                               ; preds = %124, %0, %69
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #14
  %75 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %10, align 8, !tbaa !11
  %76 = icmp eq %"class.std::_Sp_counted_base"* %75, null
  br i1 %76, label %109, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %75, i64 0, i32 1
  %79 = load i8, i8* @__libc_single_threaded, align 1, !tbaa !12
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %78, align 8, !tbaa !13
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %78, align 8, !tbaa !13
  br label %86

84:                                               ; preds = %77
  %85 = atomicrmw volatile add i32* %78, i32 -1 acq_rel, align 4
  br label %86

86:                                               ; preds = %84, %81
  %87 = phi i32 [ %82, %81 ], [ %85, %84 ]
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %109

89:                                               ; preds = %86
  %90 = bitcast %"class.std::_Sp_counted_base"* %75 to void (%"class.std::_Sp_counted_base"*)***
  %91 = load void (%"class.std::_Sp_counted_base"*)**, void (%"class.std::_Sp_counted_base"*)*** %90, align 8, !tbaa !18
  %92 = getelementptr inbounds void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %91, i64 2
  %93 = load void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %92, align 8
  call void %93(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %75) #14
  %94 = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %75, i64 0, i32 2
  %95 = load i8, i8* @__libc_single_threaded, align 1, !tbaa !12
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %89
  %98 = load i32, i32* %94, align 4, !tbaa !13
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %94, align 4, !tbaa !13
  br label %102

100:                                              ; preds = %89
  %101 = atomicrmw volatile add i32* %94, i32 -1 acq_rel, align 4
  br label %102

102:                                              ; preds = %100, %97
  %103 = phi i32 [ %98, %97 ], [ %101, %100 ]
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load void (%"class.std::_Sp_counted_base"*)**, void (%"class.std::_Sp_counted_base"*)*** %90, align 8, !tbaa !18
  %107 = getelementptr inbounds void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %106, i64 3
  %108 = load void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %107, align 8
  call void %108(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %75) #14
  br label %109

109:                                              ; preds = %74, %86, %102, %105
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #14
  %110 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %2, i64 0, i32 1
  %111 = getelementptr inbounds %"struct.std::filesystem::__cxx11::path::_List", %"struct.std::filesystem::__cxx11::path::_List"* %110, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %112 = load %"struct.std::filesystem::__cxx11::path::_List::_Impl"*, %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %111, align 8, !tbaa !20
  %113 = icmp eq %"struct.std::filesystem::__cxx11::path::_List::_Impl"* %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %109
  %115 = bitcast %"struct.std::filesystem::__cxx11::path::_List"* %110 to %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"*
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(%"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* noundef nonnull align 1 dereferenceable(1) %115, %"struct.std::filesystem::__cxx11::path::_List::_Impl"* noundef nonnull %112) #14
  br label %116

116:                                              ; preds = %114, %109
  store %"struct.std::filesystem::__cxx11::path::_List::_Impl"* null, %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %111, align 8, !tbaa !20
  %117 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %2, i64 0, i32 0, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8, !tbaa !21
  %119 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %2, i64 0, i32 0, i32 2
  %120 = bitcast %union.anon* %119 to i8*
  %121 = icmp eq i8* %118, %120
  br i1 %121, label %123, label %122

122:                                              ; preds = %116
  call void @_ZdlPv(i8* noundef %118) #14
  br label %123

123:                                              ; preds = %116, %122
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #14
  ret i32 0

124:                                              ; preds = %72, %124
  %125 = phi i32 [ %127, %124 ], [ 0, %72 ]
  %126 = call noundef nonnull align 8 dereferenceable(41) %"class.std::filesystem::__cxx11::directory_entry"* @_ZNKSt10filesystem7__cxx1118directory_iteratordeEv(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %4) #14
  %127 = add nuw nsw i32 %125, 1
  %128 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %125) #14
  %129 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %128, i8* noundef nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 noundef 2) #14
  %130 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_entry", %"class.std::filesystem::__cxx11::directory_entry"* %126, i64 0, i32 0
  %131 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %128, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %130)
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %1)
  store i8 10, i8* %1, align 1, !tbaa !12
  %132 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %131, i8* noundef nonnull %1, i64 noundef 1) #14
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %1)
  %133 = call noundef nonnull align 8 dereferenceable(16) %"class.std::filesystem::__cxx11::directory_iterator"* @_ZNSt10filesystem7__cxx1118directory_iteratorppEv(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %4) #14
  %134 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %73, align 8, !tbaa !11
  %135 = icmp eq %"class.std::_Sp_counted_base"* %134, null
  br i1 %135, label %74, label %124
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %0, [2 x i8]* noundef nonnull align 1 dereferenceable(2) %1, i8 noundef zeroext %2) unnamed_addr #5 comdat align 2 {
  %4 = getelementptr inbounds [2 x i8], [2 x i8]* %1, i64 0, i64 0
  %5 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %4) #14
  %6 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %0, i64 0, i32 0, i32 2
  %7 = bitcast %"class.std::filesystem::__cxx11::path"* %0 to %union.anon**
  store %union.anon* %6, %union.anon** %7, align 8, !tbaa !25
  %8 = icmp ugt i64 %5, 15
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = bitcast %union.anon* %6 to i8*
  br label %22

11:                                               ; preds = %3
  %12 = icmp slt i64 %5, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  tail call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)) #15
  unreachable

14:                                               ; preds = %11
  %15 = add nuw i64 %5, 1
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18, !prof !26

17:                                               ; preds = %14
  tail call void @_ZSt17__throw_bad_allocv() #15
  unreachable

18:                                               ; preds = %14
  %19 = tail call noalias noundef nonnull i8* @_Znwm(i64 noundef %15) #16
  %20 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %0, i64 0, i32 0, i32 0, i32 0
  store i8* %19, i8** %20, align 8, !tbaa !21
  %21 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %0, i64 0, i32 0, i32 2, i32 0
  store i64 %5, i64* %21, align 8, !tbaa !12
  br label %22

22:                                               ; preds = %18, %9
  %23 = phi i8* [ %10, %9 ], [ %19, %18 ]
  switch i64 %5, label %26 [
    i64 1, label %24
    i64 0, label %27
  ]

24:                                               ; preds = %22
  %25 = load i8, i8* %4, align 1, !tbaa !12
  store i8 %25, i8* %23, align 1, !tbaa !12
  br label %27

26:                                               ; preds = %22
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %23, i8* nonnull align 1 %4, i64 %5, i1 false) #14
  br label %27

27:                                               ; preds = %22, %24, %26
  %28 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %0, i64 0, i32 0, i32 1
  store i64 %5, i64* %28, align 8, !tbaa !27
  %29 = getelementptr inbounds i8, i8* %23, i64 %5
  store i8 0, i8* %29, align 1, !tbaa !12
  %30 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %0, i64 0, i32 1
  tail call void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(%"struct.std::filesystem::__cxx11::path::_List"* noundef nonnull align 8 dereferenceable(8) %30) #14
  tail call void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %0) #14
  ret void
}

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(41) %"class.std::filesystem::__cxx11::directory_entry"* @_ZNKSt10filesystem7__cxx1118directory_iteratordeEv(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #5 comdat {
  %3 = alloca { %"class.std::__cxx11::basic_string"*, i64 }, align 8
  %4 = bitcast { %"class.std::__cxx11::basic_string"*, i64 }* %3 to %"struct.std::__detail::_Quoted_string"*
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = bitcast { %"class.std::__cxx11::basic_string"*, i64 }* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #14
  %7 = bitcast %"class.std::__cxx11::basic_string"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %8 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %1, i64 0, i32 0, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !tbaa !21, !noalias !28
  %10 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %1, i64 0, i32 0, i32 1
  %11 = load i64, i64* %10, align 8, !tbaa !27, !noalias !28
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2
  %13 = bitcast %"class.std::__cxx11::basic_string"* %5 to %union.anon**
  store %union.anon* %12, %union.anon** %13, align 8, !tbaa !25, !alias.scope !28
  %14 = icmp ugt i64 %11, 15
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = bitcast %union.anon* %12 to i8*
  br label %28

17:                                               ; preds = %2
  %18 = icmp slt i64 %11, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)) #15
  unreachable

20:                                               ; preds = %17
  %21 = add nuw i64 %11, 1
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24, !prof !26

23:                                               ; preds = %20
  call void @_ZSt17__throw_bad_allocv() #15
  unreachable

24:                                               ; preds = %20
  %25 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %21) #16
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  store i8* %25, i8** %26, align 8, !tbaa !21, !alias.scope !28
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 2, i32 0
  store i64 %11, i64* %27, align 8, !tbaa !12, !alias.scope !28
  br label %28

28:                                               ; preds = %24, %15
  %29 = phi i8* [ %16, %15 ], [ %25, %24 ]
  switch i64 %11, label %32 [
    i64 1, label %30
    i64 0, label %33
  ]

30:                                               ; preds = %28
  %31 = load i8, i8* %9, align 1, !tbaa !12
  store i8 %31, i8* %29, align 1, !tbaa !12
  br label %33

32:                                               ; preds = %28
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %29, i8* align 1 %9, i64 %11, i1 false) #14
  br label %33

33:                                               ; preds = %28, %30, %32
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 1
  store i64 %11, i64* %34, align 8, !tbaa !27, !alias.scope !28
  %35 = getelementptr inbounds i8, i8* %29, i64 %11
  store i8 0, i8* %35, align 1, !tbaa !12
  %36 = getelementptr inbounds { %"class.std::__cxx11::basic_string"*, i64 }, { %"class.std::__cxx11::basic_string"*, i64 }* %3, i64 0, i32 0
  store %"class.std::__cxx11::basic_string"* %5, %"class.std::__cxx11::basic_string"** %36, align 8
  %37 = getelementptr inbounds { %"class.std::__cxx11::basic_string"*, i64 }, { %"class.std::__cxx11::basic_string"*, i64 }* %3, i64 0, i32 1
  store i64 23586, i64* %37, align 8
  %38 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %0, %"struct.std::__detail::_Quoted_string"* noundef nonnull align 8 dereferenceable(10) %4)
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i64 0, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8, !tbaa !21
  %41 = bitcast %union.anon* %12 to i8*
  %42 = icmp eq i8* %40, %41
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  call void @_ZdlPv(i8* noundef %40) #14
  br label %44

44:                                               ; preds = %33, %43
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #14
  ret %"class.std::basic_ostream"* %0
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

declare noundef nonnull align 8 dereferenceable(16) %"class.std::filesystem::__cxx11::directory_iterator"* @_ZNSt10filesystem7__cxx1118directory_iteratorppEv(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

declare void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16), %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40), i8 noundef zeroext, %"class.std::error_code"* noundef) unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(%"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* noundef nonnull align 1 dereferenceable(1), %"struct.std::filesystem::__cxx11::path::_List::_Impl"* noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #7

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(%"struct.std::filesystem::__cxx11::path::_List"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8* noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8* noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %0, %"struct.std::__detail::_Quoted_string"* noundef nonnull align 8 dereferenceable(10) %1) local_unnamed_addr #5 comdat {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %"class.std::__cxx11::basic_ostringstream", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = bitcast %"class.std::__cxx11::basic_ostringstream"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 376, i8* nonnull %9) #14
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", %"class.std::__cxx11::basic_ostringstream"* %7, i64 0, i32 2
  %11 = getelementptr inbounds %"class.std::basic_ios", %"class.std::basic_ios"* %10, i64 0, i32 0
  call void @_ZNSt8ios_baseC2Ev(%"class.std::ios_base"* noundef nonnull align 8 dereferenceable(216) %11) #14
  %12 = getelementptr inbounds %"class.std::basic_ios", %"class.std::basic_ios"* %10, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %12, align 8, !tbaa !18
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", %"class.std::__cxx11::basic_ostringstream"* %7, i64 0, i32 2, i32 1
  store %"class.std::basic_ostream"* null, %"class.std::basic_ostream"** %13, align 8, !tbaa !31
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", %"class.std::__cxx11::basic_ostringstream"* %7, i64 0, i32 2, i32 2
  store i8 0, i8* %14, align 8, !tbaa !34
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", %"class.std::__cxx11::basic_ostringstream"* %7, i64 0, i32 2, i32 3
  store i8 0, i8* %15, align 1, !tbaa !35
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", %"class.std::__cxx11::basic_ostringstream"* %7, i64 0, i32 2, i32 4
  %17 = bitcast %"class.std::basic_streambuf"** %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %17, i8 0, i64 32, i1 false) #14
  %18 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 1) to i32 (...)***), align 8
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", %"class.std::__cxx11::basic_ostringstream"* %7, i64 0, i32 0, i32 0
  store i32 (...)** %18, i32 (...)*** %19, align 8, !tbaa !18
  %20 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i32 (...)***), align 8
  %21 = bitcast %"class.std::__cxx11::basic_ostringstream"* %7 to i8**
  %22 = getelementptr i32 (...)*, i32 (...)** %18, i64 -3
  %23 = bitcast i32 (...)** %22 to i64*
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i8, i8* %9, i64 %24
  %26 = bitcast i8* %25 to i32 (...)***
  store i32 (...)** %20, i32 (...)*** %26, align 8, !tbaa !18
  %27 = load i8*, i8** %21, align 8, !tbaa !18
  %28 = getelementptr i8, i8* %27, i64 -24
  %29 = bitcast i8* %28 to i64*
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i8, i8* %9, i64 %30
  %32 = bitcast i8* %31 to %"class.std::basic_ios"*
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(%"class.std::basic_ios"* noundef nonnull align 8 dereferenceable(264) %32, %"class.std::basic_streambuf"* noundef null) #14
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 3) to i32 (...)**), i32 (...)*** %19, align 8, !tbaa !18
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*], [5 x i8*] }, { [5 x i8*], [5 x i8*] }* @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 1, i64 3) to i32 (...)**), i32 (...)*** %12, align 8, !tbaa !18
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", %"class.std::__cxx11::basic_ostringstream"* %7, i64 0, i32 1
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_stringbuf", %"class.std::__cxx11::basic_stringbuf"* %33, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %34, align 8, !tbaa !18
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", %"class.std::__cxx11::basic_ostringstream"* %7, i64 0, i32 1, i32 0, i32 1
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", %"class.std::__cxx11::basic_ostringstream"* %7, i64 0, i32 1, i32 0, i32 7
  %37 = bitcast i8** %35 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) %37, i8 0, i64 48, i1 false) #14
  call void @_ZNSt6localeC1Ev(%"class.std::locale"* noundef nonnull align 8 dereferenceable(8) %36) #14
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %34, align 8, !tbaa !18
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", %"class.std::__cxx11::basic_ostringstream"* %7, i64 0, i32 1, i32 1
  store i32 16, i32* %38, align 8, !tbaa !36
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", %"class.std::__cxx11::basic_ostringstream"* %7, i64 0, i32 1, i32 2
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", %"class.std::__cxx11::basic_ostringstream"* %7, i64 0, i32 1, i32 2, i32 2
  %41 = bitcast %"class.std::__cxx11::basic_string"* %39 to %union.anon**
  store %union.anon* %40, %union.anon** %41, align 8, !tbaa !25
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", %"class.std::__cxx11::basic_ostringstream"* %7, i64 0, i32 1, i32 2, i32 1
  store i64 0, i64* %42, align 8, !tbaa !27
  %43 = bitcast %union.anon* %40 to i8*
  store i8 0, i8* %43, align 8, !tbaa !12
  %44 = load i8*, i8** %21, align 8, !tbaa !18
  %45 = getelementptr i8, i8* %44, i64 -24
  %46 = bitcast i8* %45 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i8, i8* %9, i64 %47
  %49 = bitcast i8* %48 to %"class.std::basic_ios"*
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_stringbuf", %"class.std::__cxx11::basic_stringbuf"* %33, i64 0, i32 0
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(%"class.std::basic_ios"* noundef nonnull align 8 dereferenceable(264) %49, %"class.std::basic_streambuf"* noundef nonnull %50) #14
  %51 = bitcast %"class.std::__cxx11::basic_ostringstream"* %7 to %"class.std::basic_ostream"*
  %52 = getelementptr inbounds %"struct.std::__detail::_Quoted_string", %"struct.std::__detail::_Quoted_string"* %1, i64 0, i32 1
  %53 = load i8, i8* %52, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %6)
  store i8 %53, i8* %6, align 1, !tbaa !12
  %54 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %51, i8* noundef nonnull %6, i64 noundef 1) #14
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %6)
  %55 = getelementptr inbounds %"struct.std::__detail::_Quoted_string", %"struct.std::__detail::_Quoted_string"* %1, i64 0, i32 0
  %56 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %55, align 8, !tbaa !41
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %56, i64 0, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8, !tbaa !21
  %59 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %56, i64 0, i32 1
  %60 = load i64, i64* %59, align 8, !tbaa !27
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = icmp eq i64 %60, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %2
  %64 = getelementptr inbounds %"struct.std::__detail::_Quoted_string", %"struct.std::__detail::_Quoted_string"* %1, i64 0, i32 2
  br label %113

65:                                               ; preds = %123, %2
  %66 = load i8, i8* %52, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5)
  store i8 %66, i8* %5, align 1, !tbaa !12
  %67 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %51, i8* noundef nonnull %5, i64 noundef 1) #14
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5)
  %68 = bitcast %"class.std::__cxx11::basic_string"* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %68) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  call void @llvm.experimental.noalias.scope.decl(metadata !45) #14
  %69 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 2
  %70 = bitcast %"class.std::__cxx11::basic_string"* %8 to %union.anon**
  store %union.anon* %69, %union.anon** %70, align 8, !tbaa !25, !alias.scope !48
  %71 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 1
  store i64 0, i64* %71, align 8, !tbaa !27, !alias.scope !48
  %72 = bitcast %union.anon* %69 to i8*
  store i8 0, i8* %72, align 8, !tbaa !12, !alias.scope !48
  %73 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", %"class.std::__cxx11::basic_ostringstream"* %7, i64 0, i32 1, i32 0, i32 5
  %74 = load i8*, i8** %73, align 8, !tbaa !49, !noalias !48
  %75 = icmp eq i8* %74, null
  %76 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", %"class.std::__cxx11::basic_ostringstream"* %7, i64 0, i32 1, i32 0, i32 3
  %77 = load i8*, i8** %76, align 8, !noalias !48
  %78 = icmp ugt i8* %74, %77
  %79 = select i1 %78, i8* %74, i8* %77
  %80 = icmp eq i8* %79, null
  %81 = select i1 %75, i1 true, i1 %80
  br i1 %81, label %89, label %82

82:                                               ; preds = %65
  %83 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", %"class.std::__cxx11::basic_ostringstream"* %7, i64 0, i32 1, i32 0, i32 4
  %84 = load i8*, i8** %83, align 8, !tbaa !52, !noalias !48
  %85 = ptrtoint i8* %79 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, i8* noundef %84, i64 noundef %87) #14
  br label %90

89:                                               ; preds = %65
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %39) #14
  br label %90

90:                                               ; preds = %82, %89
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %8, i64 0, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8, !tbaa !21
  %93 = load i64, i64* %71, align 8, !tbaa !27
  %94 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %0, i8* noundef %92, i64 noundef %93) #14
  %95 = load i8*, i8** %91, align 8, !tbaa !21
  %96 = icmp eq i8* %95, %72
  br i1 %96, label %98, label %97

97:                                               ; preds = %90
  call void @_ZdlPv(i8* noundef %95) #14
  br label %98

98:                                               ; preds = %90, %97
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %68) #14
  %99 = load i32 (...)**, i32 (...)*** bitcast ([4 x i8*]* @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE to i32 (...)***), align 8
  store i32 (...)** %99, i32 (...)*** %19, align 8, !tbaa !18
  %100 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i32 (...)***), align 8
  %101 = getelementptr i32 (...)*, i32 (...)** %99, i64 -3
  %102 = bitcast i32 (...)** %101 to i64*
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i8, i8* %9, i64 %103
  %105 = bitcast i8* %104 to i32 (...)***
  store i32 (...)** %100, i32 (...)*** %105, align 8, !tbaa !18
  %106 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", %"class.std::__cxx11::basic_ostringstream"* %7, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %106, align 8, !tbaa !18
  %107 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", %"class.std::__cxx11::basic_ostringstream"* %7, i64 0, i32 1, i32 2, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8, !tbaa !21
  %109 = icmp eq i8* %108, %43
  br i1 %109, label %111, label %110

110:                                              ; preds = %98
  call void @_ZdlPv(i8* noundef %108) #14
  br label %111

111:                                              ; preds = %98, %110
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %106, align 8, !tbaa !18
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* noundef nonnull align 8 dereferenceable(8) %36) #14
  %112 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", %"class.std::__cxx11::basic_ostringstream"* %7, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* noundef nonnull align 8 dereferenceable(216) %112) #14
  call void @llvm.lifetime.end.p0i8(i64 376, i8* nonnull %9) #14
  ret %"class.std::basic_ostream"* %94

113:                                              ; preds = %63, %123
  %114 = phi i8* [ %58, %63 ], [ %125, %123 ]
  %115 = load i8, i8* %114, align 1, !tbaa !12
  %116 = load i8, i8* %52, align 8, !tbaa !39
  %117 = icmp eq i8 %115, %116
  %118 = load i8, i8* %64, align 1
  %119 = icmp eq i8 %115, %118
  %120 = select i1 %117, i1 true, i1 %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4)
  store i8 %118, i8* %4, align 1, !tbaa !12
  %122 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %51, i8* noundef nonnull %4, i64 noundef 1) #14
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4)
  br label %123

123:                                              ; preds = %113, %121
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3)
  store i8 %115, i8* %3, align 1, !tbaa !12
  %124 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %51, i8* noundef nonnull %3, i64 noundef 1) #14
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3)
  %125 = getelementptr inbounds i8, i8* %114, i64 1
  %126 = icmp eq i8* %125, %61
  br i1 %126, label %65, label %113
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(%"class.std::basic_ios"* noundef nonnull align 8 dereferenceable(264), %"class.std::basic_streambuf"* noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(%"class.std::ios_base"* noundef nonnull align 8 dereferenceable(216)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(%"class.std::locale"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 comdat align 2 {
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %7 = load i64, i64* %6, align 8, !tbaa !27
  %8 = add i64 %2, 9223372036854775807
  %9 = sub i64 %8, %7
  %10 = icmp ult i64 %9, %4
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  tail call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0)) #15
  unreachable

12:                                               ; preds = %5
  %13 = sub i64 %4, %2
  %14 = add i64 %13, %7
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8, !tbaa !21
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %18 = bitcast %union.anon* %17 to i8*
  %19 = icmp eq i8* %16, %18
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = select i1 %19, i64 15, i64 %21
  %23 = icmp ugt i64 %14, %22
  br i1 %23, label %104, label %24

24:                                               ; preds = %12
  %25 = getelementptr inbounds i8, i8* %16, i64 %1
  %26 = add i64 %2, %1
  %27 = sub i64 %7, %26
  %28 = icmp ugt i8* %16, %3
  %29 = getelementptr inbounds i8, i8* %16, i64 %7
  %30 = icmp ult i8* %29, %3
  %31 = select i1 %28, i1 true, i1 %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %24
  %33 = icmp eq i64 %27, 0
  %34 = icmp eq i64 %4, %2
  %35 = or i1 %34, %33
  br i1 %35, label %43, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds i8, i8* %25, i64 %4
  %38 = getelementptr inbounds i8, i8* %25, i64 %2
  %39 = icmp eq i64 %27, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i8, i8* %38, align 1, !tbaa !12
  store i8 %41, i8* %37, align 1, !tbaa !12
  br label %43

42:                                               ; preds = %36
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %37, i8* align 1 %38, i64 %27, i1 false) #14
  br label %43

43:                                               ; preds = %42, %40, %32
  switch i64 %4, label %46 [
    i64 0, label %105
    i64 1, label %44
  ]

44:                                               ; preds = %43
  %45 = load i8, i8* %3, align 1, !tbaa !12
  store i8 %45, i8* %25, align 1, !tbaa !12
  br label %105

46:                                               ; preds = %43
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %25, i8* align 1 %3, i64 %4, i1 false) #14
  br label %105

47:                                               ; preds = %24
  %48 = icmp ugt i64 %4, %2
  %49 = add i64 %4, -1
  %50 = icmp ult i64 %49, %2
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = icmp eq i64 %4, 1
  br i1 %52, label %53, label %55

53:                                               ; preds = %51
  %54 = load i8, i8* %3, align 1, !tbaa !12
  store i8 %54, i8* %25, align 1, !tbaa !12
  br label %56

55:                                               ; preds = %51
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %25, i8* align 1 %3, i64 %4, i1 false) #14
  br label %56

56:                                               ; preds = %55, %53, %47
  %57 = icmp eq i64 %27, 0
  %58 = icmp eq i64 %4, %2
  %59 = or i1 %58, %57
  br i1 %59, label %67, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8, i8* %25, i64 %4
  %62 = getelementptr inbounds i8, i8* %25, i64 %2
  %63 = icmp eq i64 %27, 1
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i8, i8* %62, align 1, !tbaa !12
  store i8 %65, i8* %61, align 1, !tbaa !12
  br label %67

66:                                               ; preds = %60
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %61, i8* align 1 %62, i64 %27, i1 false) #14
  br label %67

67:                                               ; preds = %66, %64, %56
  br i1 %48, label %68, label %105

68:                                               ; preds = %67
  %69 = getelementptr inbounds i8, i8* %3, i64 %4
  %70 = getelementptr inbounds i8, i8* %25, i64 %2
  %71 = icmp ugt i8* %69, %70
  br i1 %71, label %77, label %72

72:                                               ; preds = %68
  %73 = icmp eq i64 %4, 1
  br i1 %73, label %74, label %76

74:                                               ; preds = %72
  %75 = load i8, i8* %3, align 1, !tbaa !12
  store i8 %75, i8* %25, align 1, !tbaa !12
  br label %105

76:                                               ; preds = %72
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %25, i8* align 1 %3, i64 %4, i1 false) #14
  br label %105

77:                                               ; preds = %68
  %78 = icmp ugt i8* %70, %3
  br i1 %78, label %90, label %79

79:                                               ; preds = %77
  %80 = ptrtoint i8* %3 to i64
  %81 = ptrtoint i8* %25 to i64
  %82 = add i64 %80, %4
  %83 = add i64 %81, %2
  %84 = sub i64 %82, %83
  %85 = getelementptr inbounds i8, i8* %25, i64 %84
  %86 = icmp eq i64 %4, 1
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i8, i8* %85, align 1, !tbaa !12
  store i8 %88, i8* %25, align 1, !tbaa !12
  br label %105

89:                                               ; preds = %79
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %25, i8* align 1 %85, i64 %4, i1 false) #14
  br label %105

90:                                               ; preds = %77
  %91 = ptrtoint i8* %70 to i64
  %92 = ptrtoint i8* %3 to i64
  %93 = sub i64 %91, %92
  switch i64 %93, label %96 [
    i64 1, label %94
    i64 0, label %97
  ]

94:                                               ; preds = %90
  %95 = load i8, i8* %3, align 1, !tbaa !12
  store i8 %95, i8* %25, align 1, !tbaa !12
  br label %97

96:                                               ; preds = %90
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %25, i8* align 1 %3, i64 %93, i1 false) #14
  br label %97

97:                                               ; preds = %90, %94, %96
  %98 = getelementptr inbounds i8, i8* %25, i64 %93
  %99 = getelementptr inbounds i8, i8* %25, i64 %4
  %100 = sub i64 %4, %93
  switch i64 %100, label %103 [
    i64 1, label %101
    i64 0, label %105
  ]

101:                                              ; preds = %97
  %102 = load i8, i8* %99, align 1, !tbaa !12
  store i8 %102, i8* %98, align 1, !tbaa !12
  br label %105

103:                                              ; preds = %97
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %98, i8* nonnull align 1 %99, i64 %100, i1 false) #14
  br label %105

104:                                              ; preds = %12
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i8* noundef %3, i64 noundef %4)
  br label %105

105:                                              ; preds = %43, %103, %101, %97, %89, %87, %76, %74, %46, %44, %67, %104
  store i64 %14, i64* %6, align 8, !tbaa !27
  %106 = load i8*, i8** %15, align 8, !tbaa !21
  %107 = getelementptr inbounds i8, i8* %106, i64 %14
  store i8 0, i8* %107, align 1, !tbaa !12
  ret %"class.std::__cxx11::basic_string"* %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 comdat align 2 {
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %7 = load i64, i64* %6, align 8, !tbaa !27
  %8 = add i64 %2, %1
  %9 = sub i64 %7, %8
  %10 = sub i64 %4, %2
  %11 = add i64 %10, %7
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8, !tbaa !21
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %15 = bitcast %union.anon* %14 to i8*
  %16 = icmp eq i8* %13, %15
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = select i1 %16, i64 15, i64 %18
  %20 = icmp slt i64 %11, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  tail call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)) #15
  unreachable

22:                                               ; preds = %5
  %23 = icmp ugt i64 %11, %19
  br i1 %23, label %24, label %30

24:                                               ; preds = %22
  %25 = shl i64 %19, 1
  %26 = icmp ult i64 %11, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = icmp ult i64 %25, 9223372036854775807
  %29 = select i1 %28, i64 %25, i64 9223372036854775807
  br label %30

30:                                               ; preds = %27, %24, %22
  %31 = phi i64 [ %29, %27 ], [ %11, %24 ], [ %11, %22 ]
  %32 = add nuw i64 %31, 1
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35, !prof !26

34:                                               ; preds = %30
  tail call void @_ZSt17__throw_bad_allocv() #15
  unreachable

35:                                               ; preds = %30
  %36 = tail call noalias noundef nonnull i8* @_Znwm(i64 noundef %32) #16
  %37 = icmp eq i64 %1, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i8*, i8** %12, align 8, !tbaa !21
  %40 = icmp eq i64 %1, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i8, i8* %39, align 1, !tbaa !12
  store i8 %42, i8* %36, align 1, !tbaa !12
  br label %44

43:                                               ; preds = %38
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %36, i8* align 1 %39, i64 %1, i1 false) #14
  br label %44

44:                                               ; preds = %43, %41, %35
  %45 = icmp ne i8* %3, null
  %46 = icmp ne i64 %4, 0
  %47 = and i1 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = getelementptr inbounds i8, i8* %36, i64 %1
  %50 = icmp eq i64 %4, 1
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i8, i8* %3, align 1, !tbaa !12
  store i8 %52, i8* %49, align 1, !tbaa !12
  br label %54

53:                                               ; preds = %48
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %49, i8* nonnull align 1 %3, i64 %4, i1 false) #14
  br label %54

54:                                               ; preds = %53, %51, %44
  %55 = icmp eq i64 %9, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %54
  %57 = load i8*, i8** %12, align 8, !tbaa !21
  br label %68

58:                                               ; preds = %54
  %59 = getelementptr inbounds i8, i8* %36, i64 %1
  %60 = getelementptr inbounds i8, i8* %59, i64 %4
  %61 = load i8*, i8** %12, align 8, !tbaa !21
  %62 = getelementptr inbounds i8, i8* %61, i64 %1
  %63 = getelementptr inbounds i8, i8* %62, i64 %2
  %64 = icmp eq i64 %9, 1
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i8, i8* %63, align 1, !tbaa !12
  store i8 %66, i8* %60, align 1, !tbaa !12
  br label %68

67:                                               ; preds = %58
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %60, i8* align 1 %63, i64 %9, i1 false) #14
  br label %68

68:                                               ; preds = %56, %67, %65
  %69 = phi i8* [ %57, %56 ], [ %61, %67 ], [ %61, %65 ]
  %70 = icmp eq i8* %69, %15
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  tail call void @_ZdlPv(i8* noundef %69) #14
  br label %72

72:                                               ; preds = %68, %71
  store i8* %36, i8** %12, align 8, !tbaa !21
  store i64 %31, i64* %17, align 8, !tbaa !12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #12 comdat align 2 {
  %3 = icmp eq %"class.std::__cxx11::basic_string"* %0, %1
  br i1 %3, label %52, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 1
  %6 = load i64, i64* %5, align 8, !tbaa !27
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8, !tbaa !21
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2
  %10 = bitcast %union.anon* %9 to i8*
  %11 = icmp eq i8* %8, %10
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 2, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = select i1 %11, i64 15, i64 %13
  %15 = icmp ugt i64 %6, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %4
  %17 = icmp slt i64 %6, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)) #15
  unreachable

19:                                               ; preds = %16
  %20 = shl i64 %14, 1
  %21 = icmp ult i64 %6, %20
  %22 = icmp ult i64 %20, 9223372036854775807
  %23 = select i1 %22, i64 %20, i64 9223372036854775807
  %24 = select i1 %21, i64 %23, i64 %6
  %25 = add nuw i64 %24, 1
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28, !prof !26

27:                                               ; preds = %19
  tail call void @_ZSt17__throw_bad_allocv() #15
  unreachable

28:                                               ; preds = %19
  %29 = tail call noalias noundef nonnull i8* @_Znwm(i64 noundef %25) #16
  %30 = load i8*, i8** %7, align 8, !tbaa !21
  %31 = icmp eq i8* %30, %10
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @_ZdlPv(i8* noundef %30) #14
  br label %33

33:                                               ; preds = %32, %28
  store i8* %29, i8** %7, align 8, !tbaa !21
  store i64 %24, i64* %12, align 8, !tbaa !12
  br label %38

34:                                               ; preds = %4
  %35 = icmp eq i64 %6, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 0, i64* %37, align 8, !tbaa !27
  br label %50

38:                                               ; preds = %33, %34
  %39 = phi i8* [ %29, %33 ], [ %8, %34 ]
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %1, i64 0, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8, !tbaa !21
  %42 = icmp eq i64 %6, 1
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i8, i8* %41, align 1, !tbaa !12
  store i8 %44, i8* %39, align 1, !tbaa !12
  br label %46

45:                                               ; preds = %38
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %39, i8* align 1 %41, i64 %6, i1 false) #14
  br label %46

46:                                               ; preds = %43, %45
  %47 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  store i64 %6, i64* %47, align 8, !tbaa !27
  %48 = load i8*, i8** %7, align 8, !tbaa !21
  %49 = getelementptr inbounds i8, i8* %48, i64 %6
  br label %50

50:                                               ; preds = %36, %46
  %51 = phi i8* [ %49, %46 ], [ %8, %36 ]
  store i8 0, i8* %51, align 1, !tbaa !12
  br label %52

52:                                               ; preds = %50, %2
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(%"class.std::locale"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* noundef nonnull align 8 dereferenceable(216)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_diriter.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #14
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #14
  ret void
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.linker.options = !{}
!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!5 = !{!6, !7, i64 0}
!6 = !{!"_ZTSSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE", !7, i64 0, !10, i64 8}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !7, i64 0}
!11 = !{!10, !7, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !8, i64 0}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE: argument 0"}
!17 = distinct !{!17, !"_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE"}
!18 = !{!19, !19, i64 0}
!19 = !{!"vtable pointer", !9, i64 0}
!20 = !{!7, !7, i64 0}
!21 = !{!22, !7, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !24, i64 8, !8, i64 16}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !7, i64 0}
!24 = !{!"long", !8, i64 0}
!25 = !{!23, !7, i64 0}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{!22, !24, i64 8}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!30 = distinct !{!30, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!31 = !{!32, !7, i64 216}
!32 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !7, i64 216, !8, i64 224, !33, i64 225, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256}
!33 = !{!"bool", !8, i64 0}
!34 = !{!32, !8, i64 224}
!35 = !{!32, !33, i64 225}
!36 = !{!37, !38, i64 64}
!37 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !38, i64 64, !22, i64 72}
!38 = !{!"_ZTSSt13_Ios_Openmode", !8, i64 0}
!39 = !{!40, !8, i64 8}
!40 = !{!"_ZTSNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEE", !7, i64 0, !8, i64 8, !8, i64 9}
!41 = !{!40, !7, i64 0}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!44 = distinct !{!44, !"_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!47 = distinct !{!47, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!48 = !{!46, !43}
!49 = !{!50, !7, i64 40}
!50 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !51, i64 56}
!51 = !{!"_ZTSSt6locale", !7, i64 0}
!52 = !{!50, !7, i64 32}
