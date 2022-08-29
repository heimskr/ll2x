; ModuleID = 'cpp/diriter_printf.cpp'
source_filename = "cpp/diriter_printf.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
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

$_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%d: %s\0A\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_diriter_printf.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: norecurse nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
  %1 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %2 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8
  %3 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8
  %4 = bitcast %"class.std::filesystem::__cxx11::path"* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #12
  call void @_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %1, [2 x i8]* noundef nonnull align 1 dereferenceable(2) @.str, i8 noundef zeroext 2)
  %5 = bitcast %"class.std::filesystem::__cxx11::directory_iterator"* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #12
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %2, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %1, i8 noundef zeroext 0, %"class.std::error_code"* noundef null) #12
  %6 = bitcast %"class.std::filesystem::__cxx11::directory_iterator"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #12
  %7 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %2, i64 0, i32 0, i32 0
  %8 = load %"struct.std::filesystem::__cxx11::_Dir"*, %"struct.std::filesystem::__cxx11::_Dir"** %7, align 8, !tbaa !5
  %9 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %2, i64 0, i32 0, i32 1, i32 0
  %10 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %9, align 8, !tbaa !11
  %11 = icmp eq %"class.std::_Sp_counted_base"* %10, null
  br i1 %11, label %73, label %12

12:                                               ; preds = %0
  %13 = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %10, i64 0, i32 1
  %14 = load i8, i8* @__libc_single_threaded, align 1, !tbaa !12
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %13, align 8, !tbaa !13
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %13, align 8, !tbaa !13
  %19 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %3, i64 0, i32 0, i32 0
  store %"struct.std::filesystem::__cxx11::_Dir"* %8, %"struct.std::filesystem::__cxx11::_Dir"** %19, align 8, !tbaa !5, !alias.scope !15
  %20 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %3, i64 0, i32 0, i32 1, i32 0
  store %"class.std::_Sp_counted_base"* %10, %"class.std::_Sp_counted_base"** %20, align 8, !tbaa !11, !alias.scope !15
  br label %27

21:                                               ; preds = %12
  %22 = atomicrmw volatile add i32* %13, i32 1 acq_rel, align 4
  %23 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %9, align 8, !tbaa !11
  %24 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %3, i64 0, i32 0, i32 0
  store %"struct.std::filesystem::__cxx11::_Dir"* %8, %"struct.std::filesystem::__cxx11::_Dir"** %24, align 8, !tbaa !5, !alias.scope !15
  %25 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %3, i64 0, i32 0, i32 1, i32 0
  store %"class.std::_Sp_counted_base"* %10, %"class.std::_Sp_counted_base"** %25, align 8, !tbaa !11, !alias.scope !15
  %26 = icmp eq %"class.std::_Sp_counted_base"* %23, null
  br i1 %26, label %71, label %27

27:                                               ; preds = %16, %21
  %28 = phi %"class.std::_Sp_counted_base"** [ %20, %16 ], [ %25, %21 ]
  %29 = phi %"class.std::_Sp_counted_base"* [ %10, %16 ], [ %23, %21 ]
  %30 = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %29, i64 0, i32 1
  %31 = load i8, i8* @__libc_single_threaded, align 1, !tbaa !12
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %30, align 8, !tbaa !13
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %30, align 8, !tbaa !13
  br label %40

36:                                               ; preds = %27
  %37 = atomicrmw volatile add i32* %30, i32 1 acq_rel, align 4
  %38 = load i8, i8* @__libc_single_threaded, align 1, !tbaa !12
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %33, %36
  %41 = load i32, i32* %30, align 8, !tbaa !13
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %30, align 8, !tbaa !13
  br label %45

43:                                               ; preds = %36
  %44 = atomicrmw volatile add i32* %30, i32 -1 acq_rel, align 4
  br label %45

45:                                               ; preds = %43, %40
  %46 = phi i32 [ %41, %40 ], [ %44, %43 ]
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %68

48:                                               ; preds = %45
  %49 = bitcast %"class.std::_Sp_counted_base"* %29 to void (%"class.std::_Sp_counted_base"*)***
  %50 = load void (%"class.std::_Sp_counted_base"*)**, void (%"class.std::_Sp_counted_base"*)*** %49, align 8, !tbaa !18
  %51 = getelementptr inbounds void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %50, i64 2
  %52 = load void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %51, align 8
  call void %52(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %29) #12
  %53 = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %29, i64 0, i32 2
  %54 = load i8, i8* @__libc_single_threaded, align 1, !tbaa !12
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %53, align 4, !tbaa !13
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %53, align 4, !tbaa !13
  br label %61

59:                                               ; preds = %48
  %60 = atomicrmw volatile add i32* %53, i32 -1 acq_rel, align 4
  br label %61

61:                                               ; preds = %59, %56
  %62 = phi i32 [ %57, %56 ], [ %60, %59 ]
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load void (%"class.std::_Sp_counted_base"*)**, void (%"class.std::_Sp_counted_base"*)*** %49, align 8, !tbaa !18
  %66 = getelementptr inbounds void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %65, i64 3
  %67 = load void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %66, align 8
  call void %67(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %29) #12
  br label %68

68:                                               ; preds = %45, %61, %64
  %69 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %28, align 8, !tbaa !11
  %70 = icmp eq %"class.std::_Sp_counted_base"* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %21, %68
  %72 = phi %"class.std::_Sp_counted_base"** [ %28, %68 ], [ %25, %21 ]
  br label %123

73:                                               ; preds = %123, %0, %68
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #12
  %74 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %9, align 8, !tbaa !11
  %75 = icmp eq %"class.std::_Sp_counted_base"* %74, null
  br i1 %75, label %108, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %74, i64 0, i32 1
  %78 = load i8, i8* @__libc_single_threaded, align 1, !tbaa !12
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %77, align 8, !tbaa !13
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %77, align 8, !tbaa !13
  br label %85

83:                                               ; preds = %76
  %84 = atomicrmw volatile add i32* %77, i32 -1 acq_rel, align 4
  br label %85

85:                                               ; preds = %83, %80
  %86 = phi i32 [ %81, %80 ], [ %84, %83 ]
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %108

88:                                               ; preds = %85
  %89 = bitcast %"class.std::_Sp_counted_base"* %74 to void (%"class.std::_Sp_counted_base"*)***
  %90 = load void (%"class.std::_Sp_counted_base"*)**, void (%"class.std::_Sp_counted_base"*)*** %89, align 8, !tbaa !18
  %91 = getelementptr inbounds void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %90, i64 2
  %92 = load void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %91, align 8
  call void %92(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %74) #12
  %93 = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %74, i64 0, i32 2
  %94 = load i8, i8* @__libc_single_threaded, align 1, !tbaa !12
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %88
  %97 = load i32, i32* %93, align 4, !tbaa !13
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %93, align 4, !tbaa !13
  br label %101

99:                                               ; preds = %88
  %100 = atomicrmw volatile add i32* %93, i32 -1 acq_rel, align 4
  br label %101

101:                                              ; preds = %99, %96
  %102 = phi i32 [ %97, %96 ], [ %100, %99 ]
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load void (%"class.std::_Sp_counted_base"*)**, void (%"class.std::_Sp_counted_base"*)*** %89, align 8, !tbaa !18
  %106 = getelementptr inbounds void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %105, i64 3
  %107 = load void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %106, align 8
  call void %107(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %74) #12
  br label %108

108:                                              ; preds = %73, %85, %101, %104
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #12
  %109 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %1, i64 0, i32 1
  %110 = getelementptr inbounds %"struct.std::filesystem::__cxx11::path::_List", %"struct.std::filesystem::__cxx11::path::_List"* %109, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %111 = load %"struct.std::filesystem::__cxx11::path::_List::_Impl"*, %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %110, align 8, !tbaa !20
  %112 = icmp eq %"struct.std::filesystem::__cxx11::path::_List::_Impl"* %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %108
  %114 = bitcast %"struct.std::filesystem::__cxx11::path::_List"* %109 to %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"*
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(%"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* noundef nonnull align 1 dereferenceable(1) %114, %"struct.std::filesystem::__cxx11::path::_List::_Impl"* noundef nonnull %111) #12
  br label %115

115:                                              ; preds = %113, %108
  store %"struct.std::filesystem::__cxx11::path::_List::_Impl"* null, %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %110, align 8, !tbaa !20
  %116 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %1, i64 0, i32 0, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8, !tbaa !21
  %118 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %1, i64 0, i32 0, i32 2
  %119 = bitcast %union.anon* %118 to i8*
  %120 = icmp eq i8* %117, %119
  br i1 %120, label %122, label %121

121:                                              ; preds = %115
  call void @_ZdlPv(i8* noundef %117) #12
  br label %122

122:                                              ; preds = %115, %121
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #12
  ret i32 0

123:                                              ; preds = %71, %123
  %124 = phi i32 [ %126, %123 ], [ 0, %71 ]
  %125 = call noundef nonnull align 8 dereferenceable(41) %"class.std::filesystem::__cxx11::directory_entry"* @_ZNKSt10filesystem7__cxx1118directory_iteratordeEv(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %3) #12
  %126 = add nuw nsw i32 %124, 1
  %127 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_entry", %"class.std::filesystem::__cxx11::directory_entry"* %125, i64 0, i32 0, i32 0, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8, !tbaa !21
  %129 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef %124, i8* noundef %128)
  %130 = call noundef nonnull align 8 dereferenceable(16) %"class.std::filesystem::__cxx11::directory_iterator"* @_ZNSt10filesystem7__cxx1118directory_iteratorppEv(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %3) #12
  %131 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %72, align 8, !tbaa !11
  %132 = icmp eq %"class.std::_Sp_counted_base"* %131, null
  br i1 %132, label %73, label %123
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %0, [2 x i8]* noundef nonnull align 1 dereferenceable(2) %1, i8 noundef zeroext %2) unnamed_addr #5 comdat align 2 {
  %4 = getelementptr inbounds [2 x i8], [2 x i8]* %1, i64 0, i64 0
  %5 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %4) #12
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
  tail call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)) #13
  unreachable

14:                                               ; preds = %11
  %15 = add nuw i64 %5, 1
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18, !prof !26

17:                                               ; preds = %14
  tail call void @_ZSt17__throw_bad_allocv() #13
  unreachable

18:                                               ; preds = %14
  %19 = tail call noalias noundef nonnull i8* @_Znwm(i64 noundef %15) #14
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %23, i8* nonnull align 1 %4, i64 %5, i1 false) #12
  br label %27

27:                                               ; preds = %22, %24, %26
  %28 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %0, i64 0, i32 0, i32 1
  store i64 %5, i64* %28, align 8, !tbaa !27
  %29 = getelementptr inbounds i8, i8* %23, i64 %5
  store i8 0, i8* %29, align 1, !tbaa !12
  %30 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %0, i64 0, i32 1
  tail call void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(%"struct.std::filesystem::__cxx11::path::_List"* noundef nonnull align 8 dereferenceable(8) %30) #12
  tail call void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %0) #12
  ret void
}

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(41) %"class.std::filesystem::__cxx11::directory_entry"* @_ZNKSt10filesystem7__cxx1118directory_iteratordeEv(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

declare noundef nonnull align 8 dereferenceable(16) %"class.std::filesystem::__cxx11::directory_iterator"* @_ZNSt10filesystem7__cxx1118directory_iteratorppEv(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

declare void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16), %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40), i8 noundef zeroext, %"class.std::error_code"* noundef) unnamed_addr #0

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

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_diriter_printf.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #12
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #12
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { norecurse nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind allocsize(0) }

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
