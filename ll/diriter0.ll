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
%"class.std::filesystem::__cxx11::directory_entry" = type <{ %"class.std::filesystem::__cxx11::path", i8, [7 x i8] }>
%"class.std::basic_string_view" = type { i64, i8* }
%"class.std::allocator" = type { i8 }
%"class.std::error_code" = type { i32, %"class.std::_V2::error_category"* }
%"class.std::_V2::error_category" = type { i32 (...)** }
%"struct.std::__detail::_Quoted_string" = type <{ %"class.std::__cxx11::basic_string"*, i8, i8, [6 x i8] }>
%"class.std::__shared_ptr_access" = type { i8 }
%"struct.std::less" = type { i8 }
%"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter" = type { i8 }
%"struct.std::_Tuple_impl.0" = type { i8 }
%"struct.std::_Head_base" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"struct.std::__cxx11::basic_string<char>::__sv_wrapper" = type { %"class.std::basic_string_view" }
%"struct.std::__false_type" = type { i8 }
%"struct.std::forward_iterator_tag" = type { i8 }
%"struct.std::random_access_iterator_tag" = type { i8 }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { i32 (...)** }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.__gnu_cxx::__normal_iterator" = type { i8* }

$_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE = comdat any

$_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE = comdat any

$_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_ = comdat any

$_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev = comdat any

$_ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE = comdat any

$_ZNSt10filesystem7__cxx11neERKNS0_18directory_iteratorES3_ = comdat any

$_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE = comdat any

$_ZNKSt10filesystem7__cxx1115directory_entry4pathEv = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

$_ZNSt10filesystem7__cxx1118directory_iteratorC2EOS1_ = comdat any

$_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC2ERKS5_ = comdat any

$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv = comdat any

$_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv = comdat any

$_ZNSt10filesystem7__cxx1118directory_iteratorC2Ev = comdat any

$_ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3_ = comdat any

$_ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE = comdat any

$_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_lessERKS2_ = comdat any

$_ZNKSt4lessIPSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEEclES4_S4_ = comdat any

$_ZNSt10filesystem7__cxx114path5_ListD2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev = comdat any

$_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev = comdat any

$_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv = comdat any

$_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv = comdat any

$_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_ = comdat any

$_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_ = comdat any

$_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE = comdat any

$_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_ = comdat any

$_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_ = comdat any

$_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv = comdat any

$_ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_ = comdat any

$_ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE = comdat any

$_ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_ = comdat any

$_ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev = comdat any

$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm = comdat any

$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv = comdat any

$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv = comdat any

$_ZNSt14pointer_traitsIPKcE10pointer_toERS0_ = comdat any

$_ZSt9addressofIKcEPT_RS1_ = comdat any

$_ZSt11__addressofIKcEPT_RS1_ = comdat any

$_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv = comdat any

$_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm = comdat any

$_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaRKT_ = comdat any

$_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA2_cEEDaRKT_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_ = comdat any

$_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc = comdat any

$_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17_S_to_string_viewESt17basic_string_viewIcS2_E = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperC2ESt17basic_string_viewIcS2_E = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_ = comdat any

$_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv = comdat any

$_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_ = comdat any

$_ZNSt14pointer_traitsIPcE10pointer_toERc = comdat any

$_ZSt9addressofIcEPT_RS0_ = comdat any

$_ZSt11__addressofIcEPT_RS0_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_ = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaIcEE8allocateERS0_m = comdat any

$_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_ = comdat any

$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv = comdat any

$_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm = comdat any

$_ZNSt11char_traitsIcE6assignERcRKc = comdat any

$_ZNSt11char_traitsIcE4copyEPcPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm = comdat any

$_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE = comdat any

$_ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_ = comdat any

$_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_ = comdat any

$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv = comdat any

$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv = comdat any

$_ZN9__gnu_cxxeqIPKcS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T1_EERKNS9_IT0_SB_EE = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS2_ = comdat any

$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv = comdat any

$_ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC2ES8_cc = comdat any

$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv = comdat any

$_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.1 = private unnamed_addr constant [3 x i8] c": \00", align 1
@__libc_single_threaded = external global i8, align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"basic_string::_M_construct null not valid\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_diriter.cpp, i8* null }]

; Function Attrs: noinline nounwind uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %3 = alloca i32, align 4
  %4 = alloca %"class.std::filesystem::__cxx11::directory_iterator"*, align 8
  %5 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8
  %6 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8
  %7 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8
  %8 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8
  %9 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8
  %10 = alloca %"class.std::filesystem::__cxx11::directory_entry"*, align 8
  store i32 0, i32* %1, align 4
  call void @_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %2, [2 x i8]* noundef nonnull align 1 dereferenceable(2) @.str, i8 noundef zeroext 2)
  store i32 0, i32* %3, align 4
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %5, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %2)
  store %"class.std::filesystem::__cxx11::directory_iterator"* %5, %"class.std::filesystem::__cxx11::directory_iterator"** %4, align 8
  %11 = load %"class.std::filesystem::__cxx11::directory_iterator"*, %"class.std::filesystem::__cxx11::directory_iterator"** %4, align 8
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %7, %"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %11) #3
  call void @_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE(%"class.std::filesystem::__cxx11::directory_iterator"* sret(%"class.std::filesystem::__cxx11::directory_iterator") align 8 %6, %"class.std::filesystem::__cxx11::directory_iterator"* noundef %7) #3
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %7) #3
  %12 = load %"class.std::filesystem::__cxx11::directory_iterator"*, %"class.std::filesystem::__cxx11::directory_iterator"** %4, align 8
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %9, %"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %12) #3
  call void @_ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE(%"class.std::filesystem::__cxx11::directory_iterator"* sret(%"class.std::filesystem::__cxx11::directory_iterator") align 8 %8, %"class.std::filesystem::__cxx11::directory_iterator"* noundef %9) #3
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %9) #3
  br label %13

13:                                               ; preds = %26, %0
  %14 = call noundef zeroext i1 @_ZNSt10filesystem7__cxx11neERKNS0_18directory_iteratorES3_(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %6, %"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %8) #3
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %8) #3
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %6) #3
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %5) #3
  br label %28

16:                                               ; preds = %13
  %17 = call noundef nonnull align 8 dereferenceable(41) %"class.std::filesystem::__cxx11::directory_entry"* @_ZNKSt10filesystem7__cxx1118directory_iteratordeEv(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %6) #3
  store %"class.std::filesystem::__cxx11::directory_entry"* %17, %"class.std::filesystem::__cxx11::directory_entry"** %10, align 8
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  %20 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %18)
  %21 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %20, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %"class.std::filesystem::__cxx11::directory_entry"*, %"class.std::filesystem::__cxx11::directory_entry"** %10, align 8
  %23 = call noundef nonnull align 8 dereferenceable(40) %"class.std::filesystem::__cxx11::path"* @_ZNKSt10filesystem7__cxx1115directory_entry4pathEv(%"class.std::filesystem::__cxx11::directory_entry"* noundef nonnull align 8 dereferenceable(41) %22) #3
  %24 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %21, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %23)
  %25 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %24, i8 noundef signext 10)
  br label %26

26:                                               ; preds = %16
  %27 = call noundef nonnull align 8 dereferenceable(16) %"class.std::filesystem::__cxx11::directory_iterator"* @_ZNSt10filesystem7__cxx1118directory_iteratorppEv(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %6)
  br label %13

28:                                               ; preds = %15
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %2) #3
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %0, [2 x i8]* noundef nonnull align 1 dereferenceable(2) %1, i8 noundef zeroext %2) unnamed_addr #5 comdat align 2 {
  %4 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  %5 = alloca [2 x i8]*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %"class.std::basic_string_view", align 8
  %8 = alloca %"class.std::basic_string_view", align 8
  %9 = alloca %"class.std::allocator", align 1
  store %"class.std::filesystem::__cxx11::path"* %0, %"class.std::filesystem::__cxx11::path"** %4, align 8
  store [2 x i8]* %1, [2 x i8]** %5, align 8
  store i8 %2, i8* %6, align 1
  %10 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %4, align 8
  %11 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %10, i32 0, i32 0
  %12 = load [2 x i8]*, [2 x i8]** %5, align 8
  %13 = call { i64, i8* } @_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA2_cEEDaRKT_([2 x i8]* noundef nonnull align 1 dereferenceable(2) %12)
  %14 = bitcast %"class.std::basic_string_view"* %8 to { i64, i8* }*
  %15 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %14, i32 0, i32 0
  %16 = extractvalue { i64, i8* } %13, 0
  store i64 %16, i64* %15, align 8
  %17 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %14, i32 0, i32 1
  %18 = extractvalue { i64, i8* } %13, 1
  store i8* %18, i8** %17, align 8
  %19 = call { i64, i8* } @_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaRKT_(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %8)
  %20 = bitcast %"class.std::basic_string_view"* %7 to { i64, i8* }*
  %21 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %20, i32 0, i32 0
  %22 = extractvalue { i64, i8* } %19, 0
  store i64 %22, i64* %21, align 8
  %23 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %20, i32 0, i32 1
  %24 = extractvalue { i64, i8* } %19, 1
  store i8* %24, i8** %23, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %9) #3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11, %"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %7, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %9)
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %9) #3
  %25 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %10, i32 0, i32 1
  call void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(%"struct.std::filesystem::__cxx11::path::_List"* noundef nonnull align 8 dereferenceable(8) %25)
  call void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.std::filesystem::__cxx11::directory_iterator"*, align 8
  %4 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  store %"class.std::filesystem::__cxx11::directory_iterator"* %0, %"class.std::filesystem::__cxx11::directory_iterator"** %3, align 8
  store %"class.std::filesystem::__cxx11::path"* %1, %"class.std::filesystem::__cxx11::path"** %4, align 8
  %5 = load %"class.std::filesystem::__cxx11::directory_iterator"*, %"class.std::filesystem::__cxx11::directory_iterator"** %3, align 8
  %6 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %4, align 8
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %5, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %6, i8 noundef zeroext 0, %"class.std::error_code"* noundef null)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE(%"class.std::filesystem::__cxx11::directory_iterator"* noalias sret(%"class.std::filesystem::__cxx11::directory_iterator") align 8 %0, %"class.std::filesystem::__cxx11::directory_iterator"* noundef %1) #6 comdat {
  %3 = alloca i8*, align 8
  %4 = bitcast %"class.std::filesystem::__cxx11::directory_iterator"* %0 to i8*
  store i8* %4, i8** %3, align 8
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorC2EOS1_(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %1) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.std::filesystem::__cxx11::directory_iterator"*, align 8
  %4 = alloca %"class.std::filesystem::__cxx11::directory_iterator"*, align 8
  store %"class.std::filesystem::__cxx11::directory_iterator"* %0, %"class.std::filesystem::__cxx11::directory_iterator"** %3, align 8
  store %"class.std::filesystem::__cxx11::directory_iterator"* %1, %"class.std::filesystem::__cxx11::directory_iterator"** %4, align 8
  %5 = load %"class.std::filesystem::__cxx11::directory_iterator"*, %"class.std::filesystem::__cxx11::directory_iterator"** %3, align 8
  %6 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %5, i32 0, i32 0
  %7 = load %"class.std::filesystem::__cxx11::directory_iterator"*, %"class.std::filesystem::__cxx11::directory_iterator"** %4, align 8
  %8 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %7, i32 0, i32 0
  call void @_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC2ERKS5_(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %6, %"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %8) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::filesystem::__cxx11::directory_iterator"*, align 8
  store %"class.std::filesystem::__cxx11::directory_iterator"* %0, %"class.std::filesystem::__cxx11::directory_iterator"** %2, align 8
  %3 = load %"class.std::filesystem::__cxx11::directory_iterator"*, %"class.std::filesystem::__cxx11::directory_iterator"** %2, align 8
  %4 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %3, i32 0, i32 0
  call void @_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %4) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE(%"class.std::filesystem::__cxx11::directory_iterator"* noalias sret(%"class.std::filesystem::__cxx11::directory_iterator") align 8 %0, %"class.std::filesystem::__cxx11::directory_iterator"* noundef %1) #6 comdat {
  %3 = alloca i8*, align 8
  %4 = bitcast %"class.std::filesystem::__cxx11::directory_iterator"* %0 to i8*
  store i8* %4, i8** %3, align 8
  %5 = bitcast %"class.std::filesystem::__cxx11::directory_iterator"* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 16, i1 false)
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorC2Ev(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %0) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt10filesystem7__cxx11neERKNS0_18directory_iteratorES3_(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %1) #6 comdat {
  %3 = alloca %"class.std::filesystem::__cxx11::directory_iterator"*, align 8
  %4 = alloca %"class.std::filesystem::__cxx11::directory_iterator"*, align 8
  store %"class.std::filesystem::__cxx11::directory_iterator"* %0, %"class.std::filesystem::__cxx11::directory_iterator"** %3, align 8
  store %"class.std::filesystem::__cxx11::directory_iterator"* %1, %"class.std::filesystem::__cxx11::directory_iterator"** %4, align 8
  %5 = load %"class.std::filesystem::__cxx11::directory_iterator"*, %"class.std::filesystem::__cxx11::directory_iterator"** %3, align 8
  %6 = load %"class.std::filesystem::__cxx11::directory_iterator"*, %"class.std::filesystem::__cxx11::directory_iterator"** %4, align 8
  %7 = call noundef zeroext i1 @_ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3_(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %5, %"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %6) #3
  %8 = xor i1 %7, true
  ret i1 %8
}

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(41) %"class.std::filesystem::__cxx11::directory_entry"* @_ZNKSt10filesystem7__cxx1118directory_iteratordeEv(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16)) #2

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %1) #6 comdat {
  %3 = alloca %"class.std::basic_ostream"*, align 8
  %4 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  %5 = alloca %"struct.std::__detail::_Quoted_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::allocator", align 1
  store %"class.std::basic_ostream"* %0, %"class.std::basic_ostream"** %3, align 8
  store %"class.std::filesystem::__cxx11::path"* %1, %"class.std::filesystem::__cxx11::path"** %4, align 8
  %8 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %3, align 8
  %9 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %4, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %7) #3
  call void @_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %6, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %9, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %7)
  %10 = call { %"class.std::__cxx11::basic_string"*, i64 } @_ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6, i8 noundef signext 34, i8 noundef signext 92)
  %11 = bitcast %"struct.std::__detail::_Quoted_string"* %5 to { %"class.std::__cxx11::basic_string"*, i64 }*
  %12 = getelementptr inbounds { %"class.std::__cxx11::basic_string"*, i64 }, { %"class.std::__cxx11::basic_string"*, i64 }* %11, i32 0, i32 0
  %13 = extractvalue { %"class.std::__cxx11::basic_string"*, i64 } %10, 0
  store %"class.std::__cxx11::basic_string"* %13, %"class.std::__cxx11::basic_string"** %12, align 8
  %14 = getelementptr inbounds { %"class.std::__cxx11::basic_string"*, i64 }, { %"class.std::__cxx11::basic_string"*, i64 }* %11, i32 0, i32 1
  %15 = extractvalue { %"class.std::__cxx11::basic_string"*, i64 } %10, 1
  store i64 %15, i64* %14, align 8
  %16 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %8, %"struct.std::__detail::_Quoted_string"* noundef nonnull align 8 dereferenceable(10) %5)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6) #3
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %7) #3
  %17 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %3, align 8
  ret %"class.std::basic_ostream"* %17
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #1

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) %"class.std::filesystem::__cxx11::path"* @_ZNKSt10filesystem7__cxx1115directory_entry4pathEv(%"class.std::filesystem::__cxx11::directory_entry"* noundef nonnull align 8 dereferenceable(41) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::filesystem::__cxx11::directory_entry"*, align 8
  store %"class.std::filesystem::__cxx11::directory_entry"* %0, %"class.std::filesystem::__cxx11::directory_entry"** %2, align 8
  %3 = load %"class.std::filesystem::__cxx11::directory_entry"*, %"class.std::filesystem::__cxx11::directory_entry"** %2, align 8
  %4 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_entry", %"class.std::filesystem::__cxx11::directory_entry"* %3, i32 0, i32 0
  ret %"class.std::filesystem::__cxx11::path"* %4
}

declare noundef nonnull align 8 dereferenceable(16) %"class.std::filesystem::__cxx11::directory_iterator"* @_ZNSt10filesystem7__cxx1118directory_iteratorppEv(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16)) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathD2Ev(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  store %"class.std::filesystem::__cxx11::path"* %0, %"class.std::filesystem::__cxx11::path"** %2, align 8
  %3 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %2, align 8
  %4 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %3, i32 0, i32 1
  call void @_ZNSt10filesystem7__cxx114path5_ListD2Ev(%"struct.std::filesystem::__cxx11::path::_List"* noundef nonnull align 8 dereferenceable(8) %4) #3
  %5 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %3, i32 0, i32 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5) #3
  ret void
}

declare void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16), %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40), i8 noundef zeroext, %"class.std::error_code"* noundef) unnamed_addr #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx1118directory_iteratorC2EOS1_(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.std::filesystem::__cxx11::directory_iterator"*, align 8
  %4 = alloca %"class.std::filesystem::__cxx11::directory_iterator"*, align 8
  store %"class.std::filesystem::__cxx11::directory_iterator"* %0, %"class.std::filesystem::__cxx11::directory_iterator"** %3, align 8
  store %"class.std::filesystem::__cxx11::directory_iterator"* %1, %"class.std::filesystem::__cxx11::directory_iterator"** %4, align 8
  %5 = load %"class.std::filesystem::__cxx11::directory_iterator"*, %"class.std::filesystem::__cxx11::directory_iterator"** %3, align 8
  %6 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %5, i32 0, i32 0
  %7 = load %"class.std::filesystem::__cxx11::directory_iterator"*, %"class.std::filesystem::__cxx11::directory_iterator"** %4, align 8
  %8 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %7, i32 0, i32 0
  call void @_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC1EOS5_(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %6, %"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %8) #3
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC1EOS5_(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16), %"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC2ERKS5_(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.std::__shared_ptr"*, align 8
  %4 = alloca %"class.std::__shared_ptr"*, align 8
  store %"class.std::__shared_ptr"* %0, %"class.std::__shared_ptr"** %3, align 8
  store %"class.std::__shared_ptr"* %1, %"class.std::__shared_ptr"** %4, align 8
  %5 = load %"class.std::__shared_ptr"*, %"class.std::__shared_ptr"** %3, align 8
  %6 = bitcast %"class.std::__shared_ptr"* %5 to %"class.std::__shared_ptr_access"*
  %7 = load %"class.std::__shared_ptr"*, %"class.std::__shared_ptr"** %4, align 8
  %8 = bitcast %"class.std::__shared_ptr"* %7 to %"class.std::__shared_ptr_access"*
  %9 = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %5, i32 0, i32 0
  %10 = load %"class.std::__shared_ptr"*, %"class.std::__shared_ptr"** %4, align 8
  %11 = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %10, i32 0, i32 0
  %12 = load %"struct.std::filesystem::__cxx11::_Dir"*, %"struct.std::filesystem::__cxx11::_Dir"** %11, align 8
  store %"struct.std::filesystem::__cxx11::_Dir"* %12, %"struct.std::filesystem::__cxx11::_Dir"** %9, align 8
  %13 = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %5, i32 0, i32 1
  %14 = load %"class.std::__shared_ptr"*, %"class.std::__shared_ptr"** %4, align 8
  %15 = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %14, i32 0, i32 1
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %13, %"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %15) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.std::__shared_count"*, align 8
  %4 = alloca %"class.std::__shared_count"*, align 8
  store %"class.std::__shared_count"* %0, %"class.std::__shared_count"** %3, align 8
  store %"class.std::__shared_count"* %1, %"class.std::__shared_count"** %4, align 8
  %5 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %3, align 8
  %6 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %5, i32 0, i32 0
  %7 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %4, align 8
  %8 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %7, i32 0, i32 0
  %9 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %8, align 8
  store %"class.std::_Sp_counted_base"* %9, %"class.std::_Sp_counted_base"** %6, align 8
  %10 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %5, i32 0, i32 0
  %11 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %10, align 8
  %12 = icmp ne %"class.std::_Sp_counted_base"* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %5, i32 0, i32 0
  %15 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %14, align 8
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %15)
  br label %16

16:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %0) #6 comdat align 2 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %"class.std::_Sp_counted_base"*, align 8
  store %"class.std::_Sp_counted_base"* %0, %"class.std::_Sp_counted_base"** %10, align 8
  %11 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %10, align 8
  %12 = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %11, i32 0, i32 1
  store i32* %12, i32** %8, align 8
  store i32 1, i32* %9, align 4
  %13 = load i8, i8* @__libc_single_threaded, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %9, align 4
  store i32* %16, i32** %6, align 8
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, %18
  store i32 %21, i32* %19, align 4
  br label %30

22:                                               ; preds = %1
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %9, align 4
  store i32* %23, i32** %2, align 8
  store i32 %24, i32* %3, align 4
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* %3, align 4
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = atomicrmw volatile add i32* %25, i32 %27 acq_rel, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  br label %30

30:                                               ; preds = %15, %22
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr"*, align 8
  store %"class.std::__shared_ptr"* %0, %"class.std::__shared_ptr"** %2, align 8
  %3 = load %"class.std::__shared_ptr"*, %"class.std::__shared_ptr"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %3, i32 0, i32 1
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::__shared_count"*, align 8
  store %"class.std::__shared_count"* %0, %"class.std::__shared_count"** %2, align 8
  %3 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %3, i32 0, i32 0
  %5 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %4, align 8
  %6 = icmp ne %"class.std::_Sp_counted_base"* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %3, i32 0, i32 0
  %9 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %8, align 8
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %9) #3
  br label %10

10:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %0) #6 comdat align 2 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %"class.std::_Sp_counted_base"*, align 8
  store %"class.std::_Sp_counted_base"* %0, %"class.std::_Sp_counted_base"** %22, align 8
  %23 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %22, align 8
  %24 = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %23, i32 0, i32 1
  store i32* %24, i32** %17, align 8
  store i32 -1, i32* %18, align 4
  %25 = load i8, i8* @__libc_single_threaded, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %1
  %28 = load i32*, i32** %17, align 8
  %29 = load i32, i32* %18, align 4
  store i32* %28, i32** %13, align 8
  store i32 %29, i32* %14, align 4
  %30 = load i32*, i32** %13, align 8
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32*, i32** %13, align 8
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, %32
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %15, align 4
  store i32 %36, i32* %16, align 4
  br label %45

37:                                               ; preds = %1
  %38 = load i32*, i32** %17, align 8
  %39 = load i32, i32* %18, align 4
  store i32* %38, i32** %6, align 8
  store i32 %39, i32* %7, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = atomicrmw volatile add i32* %40, i32 %42 acq_rel, align 4
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %16, align 4
  br label %45

45:                                               ; preds = %27, %37
  %46 = load i32, i32* %16, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %83

48:                                               ; preds = %45
  %49 = bitcast %"class.std::_Sp_counted_base"* %23 to void (%"class.std::_Sp_counted_base"*)***
  %50 = load void (%"class.std::_Sp_counted_base"*)**, void (%"class.std::_Sp_counted_base"*)*** %49, align 8
  %51 = getelementptr inbounds void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %50, i64 2
  %52 = load void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %51, align 8
  call void %52(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %23) #3
  %53 = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %23, i32 0, i32 2
  store i32* %53, i32** %20, align 8
  store i32 -1, i32* %21, align 4
  %54 = load i8, i8* @__libc_single_threaded, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %48
  %57 = load i32*, i32** %20, align 8
  %58 = load i32, i32* %21, align 4
  store i32* %57, i32** %10, align 8
  store i32 %58, i32* %11, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, %61
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %19, align 4
  br label %74

66:                                               ; preds = %48
  %67 = load i32*, i32** %20, align 8
  %68 = load i32, i32* %21, align 4
  store i32* %67, i32** %2, align 8
  store i32 %68, i32* %3, align 4
  %69 = load i32*, i32** %2, align 8
  %70 = load i32, i32* %3, align 4
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = atomicrmw volatile add i32* %69, i32 %71 acq_rel, align 4
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %19, align 4
  br label %74

74:                                               ; preds = %56, %66
  %75 = load i32, i32* %19, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = bitcast %"class.std::_Sp_counted_base"* %23 to void (%"class.std::_Sp_counted_base"*)***
  %79 = load void (%"class.std::_Sp_counted_base"*)**, void (%"class.std::_Sp_counted_base"*)*** %78, align 8
  %80 = getelementptr inbounds void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %79, i64 3
  %81 = load void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %80, align 8
  call void %81(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %23) #3
  br label %82

82:                                               ; preds = %77, %74
  br label %83

83:                                               ; preds = %82, %45
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx1118directory_iteratorC2Ev(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::filesystem::__cxx11::directory_iterator"*, align 8
  store %"class.std::filesystem::__cxx11::directory_iterator"* %0, %"class.std::filesystem::__cxx11::directory_iterator"** %2, align 8
  %3 = load %"class.std::filesystem::__cxx11::directory_iterator"*, %"class.std::filesystem::__cxx11::directory_iterator"** %2, align 8
  %4 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %3, i32 0, i32 0
  call void @_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC1Ev(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %4) #3
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC1Ev(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3_(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %1) #6 comdat {
  %3 = alloca %"class.std::filesystem::__cxx11::directory_iterator"*, align 8
  %4 = alloca %"class.std::filesystem::__cxx11::directory_iterator"*, align 8
  store %"class.std::filesystem::__cxx11::directory_iterator"* %0, %"class.std::filesystem::__cxx11::directory_iterator"** %3, align 8
  store %"class.std::filesystem::__cxx11::directory_iterator"* %1, %"class.std::filesystem::__cxx11::directory_iterator"** %4, align 8
  %5 = load %"class.std::filesystem::__cxx11::directory_iterator"*, %"class.std::filesystem::__cxx11::directory_iterator"** %4, align 8
  %6 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %5, i32 0, i32 0
  %7 = load %"class.std::filesystem::__cxx11::directory_iterator"*, %"class.std::filesystem::__cxx11::directory_iterator"** %3, align 8
  %8 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %7, i32 0, i32 0
  %9 = call noundef zeroext i1 @_ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %6, %"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %8) #3
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load %"class.std::filesystem::__cxx11::directory_iterator"*, %"class.std::filesystem::__cxx11::directory_iterator"** %3, align 8
  %12 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %11, i32 0, i32 0
  %13 = load %"class.std::filesystem::__cxx11::directory_iterator"*, %"class.std::filesystem::__cxx11::directory_iterator"** %4, align 8
  %14 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %13, i32 0, i32 0
  %15 = call noundef zeroext i1 @_ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %12, %"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %14) #3
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %10, %2
  %18 = phi i1 [ false, %2 ], [ %16, %10 ]
  ret i1 %18
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %1) #6 comdat align 2 {
  %3 = alloca %"class.std::__shared_ptr"*, align 8
  %4 = alloca %"class.std::__shared_ptr"*, align 8
  store %"class.std::__shared_ptr"* %0, %"class.std::__shared_ptr"** %3, align 8
  store %"class.std::__shared_ptr"* %1, %"class.std::__shared_ptr"** %4, align 8
  %5 = load %"class.std::__shared_ptr"*, %"class.std::__shared_ptr"** %3, align 8
  %6 = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %5, i32 0, i32 1
  %7 = load %"class.std::__shared_ptr"*, %"class.std::__shared_ptr"** %4, align 8
  %8 = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %7, i32 0, i32 1
  %9 = call noundef zeroext i1 @_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_lessERKS2_(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %6, %"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %8) #3
  ret i1 %9
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_lessERKS2_(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %1) #6 comdat align 2 {
  %3 = alloca %"class.std::__shared_count"*, align 8
  %4 = alloca %"class.std::__shared_count"*, align 8
  %5 = alloca %"struct.std::less", align 1
  store %"class.std::__shared_count"* %0, %"class.std::__shared_count"** %3, align 8
  store %"class.std::__shared_count"* %1, %"class.std::__shared_count"** %4, align 8
  %6 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %3, align 8
  %7 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %6, i32 0, i32 0
  %8 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %7, align 8
  %9 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %4, align 8
  %10 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %9, i32 0, i32 0
  %11 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %10, align 8
  %12 = call noundef zeroext i1 @_ZNKSt4lessIPSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEEclES4_S4_(%"struct.std::less"* noundef nonnull align 1 dereferenceable(1) %5, %"class.std::_Sp_counted_base"* noundef %8, %"class.std::_Sp_counted_base"* noundef %11) #3
  ret i1 %12
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt4lessIPSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEEclES4_S4_(%"struct.std::less"* noundef nonnull align 1 dereferenceable(1) %0, %"class.std::_Sp_counted_base"* noundef %1, %"class.std::_Sp_counted_base"* noundef %2) #6 comdat align 2 {
  %4 = alloca %"struct.std::less"*, align 8
  %5 = alloca %"class.std::_Sp_counted_base"*, align 8
  %6 = alloca %"class.std::_Sp_counted_base"*, align 8
  store %"struct.std::less"* %0, %"struct.std::less"** %4, align 8
  store %"class.std::_Sp_counted_base"* %1, %"class.std::_Sp_counted_base"** %5, align 8
  store %"class.std::_Sp_counted_base"* %2, %"class.std::_Sp_counted_base"** %6, align 8
  %7 = load %"struct.std::less"*, %"struct.std::less"** %4, align 8
  %8 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %5, align 8
  %9 = ptrtoint %"class.std::_Sp_counted_base"* %8 to i64
  %10 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %6, align 8
  %11 = ptrtoint %"class.std::_Sp_counted_base"* %10 to i64
  %12 = icmp ult i64 %9, %11
  ret i1 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114path5_ListD2Ev(%"struct.std::filesystem::__cxx11::path::_List"* noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"struct.std::filesystem::__cxx11::path::_List"*, align 8
  store %"struct.std::filesystem::__cxx11::path::_List"* %0, %"struct.std::filesystem::__cxx11::path::_List"** %2, align 8
  %3 = load %"struct.std::filesystem::__cxx11::path::_List"*, %"struct.std::filesystem::__cxx11::path::_List"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::filesystem::__cxx11::path::_List", %"struct.std::filesystem::__cxx11::path::_List"* %3, i32 0, i32 0
  call void @_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %2, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3)
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i32 0, i32 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev(%"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* noundef nonnull align 8 dereferenceable(8) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.std::unique_ptr"*, align 8
  %3 = alloca %"struct.std::filesystem::__cxx11::path::_List::_Impl"**, align 8
  store %"class.std::unique_ptr"* %0, %"class.std::unique_ptr"** %2, align 8
  %4 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %2, align 8
  %5 = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %4, i32 0, i32 0
  %6 = bitcast %"struct.std::__uniq_ptr_data"* %5 to %"class.std::__uniq_ptr_impl"*
  %7 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %6)
  store %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %7, %"struct.std::filesystem::__cxx11::path::_List::_Impl"*** %3, align 8
  %8 = load %"struct.std::filesystem::__cxx11::path::_List::_Impl"**, %"struct.std::filesystem::__cxx11::path::_List::_Impl"*** %3, align 8
  %9 = load %"struct.std::filesystem::__cxx11::path::_List::_Impl"*, %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %8, align 8
  %10 = icmp ne %"struct.std::filesystem::__cxx11::path::_List::_Impl"* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = call noundef nonnull align 1 dereferenceable(1) %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* @_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %4) #3
  %13 = load %"struct.std::filesystem::__cxx11::path::_List::_Impl"**, %"struct.std::filesystem::__cxx11::path::_List::_Impl"*** %3, align 8
  %14 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_(%"struct.std::filesystem::__cxx11::path::_List::_Impl"** noundef nonnull align 8 dereferenceable(8) %13) #3
  %15 = load %"struct.std::filesystem::__cxx11::path::_List::_Impl"*, %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %14, align 8
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(%"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* noundef nonnull align 1 dereferenceable(1) %12, %"struct.std::filesystem::__cxx11::path::_List::_Impl"* noundef %15) #3
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %"struct.std::filesystem::__cxx11::path::_List::_Impl"**, %"struct.std::filesystem::__cxx11::path::_List::_Impl"*** %3, align 8
  store %"struct.std::filesystem::__cxx11::path::_List::_Impl"* null, %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %17, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__uniq_ptr_impl"*, align 8
  store %"class.std::__uniq_ptr_impl"* %0, %"class.std::__uniq_ptr_impl"** %2, align 8
  %3 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__uniq_ptr_impl", %"class.std::__uniq_ptr_impl"* %3, i32 0, i32 0
  %5 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %4) #3
  ret %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* @_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::unique_ptr"*, align 8
  store %"class.std::unique_ptr"* %0, %"class.std::unique_ptr"** %2, align 8
  %3 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %2, align 8
  %4 = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::__uniq_ptr_data"* %4 to %"class.std::__uniq_ptr_impl"*
  %6 = call noundef nonnull align 1 dereferenceable(1) %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* @_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %5)
  ret %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* %6
}

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(%"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* noundef nonnull align 1 dereferenceable(1), %"struct.std::filesystem::__cxx11::path::_List::_Impl"* noundef) #2

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_(%"struct.std::filesystem::__cxx11::path::_List::_Impl"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat {
  %2 = alloca %"struct.std::filesystem::__cxx11::path::_List::_Impl"**, align 8
  store %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %0, %"struct.std::filesystem::__cxx11::path::_List::_Impl"*** %2, align 8
  %3 = load %"struct.std::filesystem::__cxx11::path::_List::_Impl"**, %"struct.std::filesystem::__cxx11::path::_List::_Impl"*** %2, align 8
  ret %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %0) #6 comdat {
  %2 = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %0, %"class.std::tuple"** %2, align 8
  %3 = load %"class.std::tuple"*, %"class.std::tuple"** %2, align 8
  %4 = bitcast %"class.std::tuple"* %3 to %"struct.std::_Tuple_impl"*
  %5 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %4) #3
  ret %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %0) #6 comdat {
  %2 = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %0, %"struct.std::_Tuple_impl"** %2, align 8
  %3 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %3) #3
  ret %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %0, %"struct.std::_Tuple_impl"** %2, align 8
  %3 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Tuple_impl"* %3 to %"struct.std::_Head_base.1"*
  %5 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_(%"struct.std::_Head_base.1"* noundef nonnull align 8 dereferenceable(8) %4) #3
  ret %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_(%"struct.std::_Head_base.1"* noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"struct.std::_Head_base.1"*, align 8
  store %"struct.std::_Head_base.1"* %0, %"struct.std::_Head_base.1"** %2, align 8
  %3 = load %"struct.std::_Head_base.1"*, %"struct.std::_Head_base.1"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Head_base.1", %"struct.std::_Head_base.1"* %3, i32 0, i32 0
  ret %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* @_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__uniq_ptr_impl"*, align 8
  store %"class.std::__uniq_ptr_impl"* %0, %"class.std::__uniq_ptr_impl"** %2, align 8
  %3 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__uniq_ptr_impl", %"class.std::__uniq_ptr_impl"* %3, i32 0, i32 0
  %5 = call noundef nonnull align 1 dereferenceable(1) %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* @_ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %4) #3
  ret %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* @_ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %0) #6 comdat {
  %2 = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %0, %"class.std::tuple"** %2, align 8
  %3 = load %"class.std::tuple"*, %"class.std::tuple"** %2, align 8
  %4 = bitcast %"class.std::tuple"* %3 to %"struct.std::_Tuple_impl.0"*
  %5 = call noundef nonnull align 1 dereferenceable(1) %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* @_ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %4) #3
  ret %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* @_ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat {
  %2 = alloca %"struct.std::_Tuple_impl.0"*, align 8
  store %"struct.std::_Tuple_impl.0"* %0, %"struct.std::_Tuple_impl.0"** %2, align 8
  %3 = load %"struct.std::_Tuple_impl.0"*, %"struct.std::_Tuple_impl.0"** %2, align 8
  %4 = call noundef nonnull align 1 dereferenceable(1) %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* @_ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %3) #3
  ret %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* @_ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_(%"struct.std::_Tuple_impl.0"* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 {
  %2 = alloca %"struct.std::_Tuple_impl.0"*, align 8
  store %"struct.std::_Tuple_impl.0"* %0, %"struct.std::_Tuple_impl.0"** %2, align 8
  %3 = load %"struct.std::_Tuple_impl.0"*, %"struct.std::_Tuple_impl.0"** %2, align 8
  %4 = bitcast %"struct.std::_Tuple_impl.0"* %3 to %"struct.std::_Head_base"*
  %5 = call noundef nonnull align 1 dereferenceable(1) %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* @_ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_(%"struct.std::_Head_base"* noundef nonnull align 1 dereferenceable(1) %4) #3
  ret %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* @_ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_(%"struct.std::_Head_base"* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 {
  %2 = alloca %"struct.std::_Head_base"*, align 8
  store %"struct.std::_Head_base"* %0, %"struct.std::_Head_base"** %2, align 8
  %3 = load %"struct.std::_Head_base"*, %"struct.std::_Head_base"** %2, align 8
  %4 = bitcast %"struct.std::_Head_base"* %3 to %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"*
  ret %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %2, align 8
  %4 = call noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3)
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i32 0, i32 2
  %7 = bitcast %union.anon* %6 to i64*
  %8 = load i64, i64* %7, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %8) #3
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev(%"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  %2 = alloca %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"*, align 8
  store %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* %0, %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"** %2, align 8
  %3 = load %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"*, %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"** %2, align 8
  %4 = bitcast %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* %3 to %"class.std::allocator"*
  call void @_ZNSaIcED2Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %2, align 8
  %4 = call noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3)
  %5 = call noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3)
  %6 = icmp eq i8* %4, %5
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #6 comdat align 2 {
  %3 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %3, align 8
  %6 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5)
  %7 = call noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5)
  %8 = load i64, i64* %4, align 8
  %9 = add i64 %8, 1
  call void @_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %6, i8* noundef %7, i64 noundef %9)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  ret i8* %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i32 0, i32 2
  %5 = bitcast %union.anon* %4 to [16 x i8]*
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %7 = call noundef i8* @_ZNSt14pointer_traitsIPKcE10pointer_toERS0_(i8* noundef nonnull align 1 dereferenceable(1) %6) #3
  ret i8* %7
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZNSt14pointer_traitsIPKcE10pointer_toERS0_(i8* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call noundef i8* @_ZSt9addressofIKcEPT_RS1_(i8* noundef nonnull align 1 dereferenceable(1) %3) #3
  ret i8* %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZSt9addressofIKcEPT_RS1_(i8* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call noundef i8* @_ZSt11__addressofIKcEPT_RS1_(i8* noundef nonnull align 1 dereferenceable(1) %3) #3
  ret i8* %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZSt11__addressofIKcEPT_RS1_(i8* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIcEE10deallocateERS0_Pcm(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0, i8* noundef %1, i64 noundef %2) #6 comdat align 2 {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %"class.std::allocator"*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  %10 = load %"class.std::allocator"*, %"class.std::allocator"** %7, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = load i64, i64* %9, align 8
  store %"class.std::allocator"* %10, %"class.std::allocator"** %4, align 8
  store i8* %11, i8** %5, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %14 = bitcast %"class.std::allocator"* %13 to %"class.__gnu_cxx::new_allocator"*
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* %6, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %14, i8* noundef %15, i64 noundef %16) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* %4 to %"class.std::allocator"*
  ret %"class.std::allocator"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIcE10deallocateEPcm(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %0, i8* noundef %1, i64 noundef %2) #6 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %4, align 8
  %8 = load i8*, i8** %5, align 8
  call void @_ZdlPv(i8* noundef %8) #3
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) #8

; Function Attrs: nounwind
declare void @_ZNSaIcED2Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local { i64, i8* } @_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaRKT_(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::basic_string_view", align 8
  %3 = alloca %"class.std::basic_string_view"*, align 8
  store %"class.std::basic_string_view"* %0, %"class.std::basic_string_view"** %3, align 8
  %4 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %3, align 8
  %5 = bitcast %"class.std::basic_string_view"* %2 to i8*
  %6 = bitcast %"class.std::basic_string_view"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 16, i1 false)
  %7 = bitcast %"class.std::basic_string_view"* %2 to { i64, i8* }*
  %8 = load { i64, i8* }, { i64, i8* }* %7, align 8
  ret { i64, i8* } %8
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local { i64, i8* } @_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA2_cEEDaRKT_([2 x i8]* noundef nonnull align 1 dereferenceable(2) %0) #6 comdat {
  %2 = alloca %"class.std::basic_string_view", align 8
  %3 = alloca [2 x i8]*, align 8
  store [2 x i8]* %0, [2 x i8]** %3, align 8
  %4 = load [2 x i8]*, [2 x i8]** %3, align 8
  %5 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  call void @_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef %5) #3
  %6 = bitcast %"class.std::basic_string_view"* %2 to { i64, i8* }*
  %7 = load { i64, i8* }, { i64, i8* }* %6, align 8
  ret { i64, i8* } %7
}

; Function Attrs: nounwind
declare void @_ZNSaIcEC1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, %"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %1, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #5 comdat align 2 {
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %5 = alloca %"class.std::basic_string_view"*, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  %7 = alloca %"struct.std::__cxx11::basic_string<char>::__sv_wrapper", align 8
  %8 = alloca %"class.std::basic_string_view", align 8
  %9 = alloca %"class.std::basic_string_view", align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %4, align 8
  store %"class.std::basic_string_view"* %1, %"class.std::basic_string_view"** %5, align 8
  store %"class.std::allocator"* %2, %"class.std::allocator"** %6, align 8
  %10 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  %11 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %5, align 8
  %12 = bitcast %"class.std::basic_string_view"* %9 to i8*
  %13 = bitcast %"class.std::basic_string_view"* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 16, i1 false)
  %14 = bitcast %"class.std::basic_string_view"* %9 to { i64, i8* }*
  %15 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %14, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = call { i64, i8* } @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17_S_to_string_viewESt17basic_string_viewIcS2_E(i64 %16, i8* %18) #3
  %20 = bitcast %"class.std::basic_string_view"* %8 to { i64, i8* }*
  %21 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %20, i32 0, i32 0
  %22 = extractvalue { i64, i8* } %19, 0
  store i64 %22, i64* %21, align 8
  %23 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %20, i32 0, i32 1
  %24 = extractvalue { i64, i8* } %19, 1
  store i8* %24, i8** %23, align 8
  %25 = bitcast %"class.std::basic_string_view"* %8 to { i64, i8* }*
  %26 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %25, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperC2ESt17basic_string_viewIcS2_E(%"struct.std::__cxx11::basic_string<char>::__sv_wrapper"* noundef nonnull align 8 dereferenceable(16) %7, i64 %27, i8* %29) #3
  %30 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  %31 = bitcast %"struct.std::__cxx11::basic_string<char>::__sv_wrapper"* %7 to { i64, i8* }*
  %32 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %31, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10, i64 %33, i8* %35, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %30)
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSaIcED1Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(%"struct.std::filesystem::__cxx11::path::_List"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40)) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %0, i8* noundef nonnull %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.std::basic_string_view"*, align 8
  %4 = alloca i8*, align 8
  store %"class.std::basic_string_view"* %0, %"class.std::basic_string_view"** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %3, align 8
  %6 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %5, i32 0, i32 0
  %7 = load i8*, i8** %4, align 8
  %8 = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* noundef %7)
  store i64 %8, i64* %6, align 8
  %9 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %5, i32 0, i32 1
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %9, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* noundef %0) #6 comdat align 2 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  store i8* %5, i8** %2, align 8
  br i1 false, label %6, label %9

6:                                                ; preds = %1
  %7 = load i8*, i8** %4, align 8
  %8 = call noundef i64 @_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc(i8* noundef %7)
  store i64 %8, i64* %3, align 8
  br label %12

9:                                                ; preds = %1
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strlen(i8* noundef %10) #3
  store i64 %11, i64* %3, align 8
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i64, i64* %3, align 8
  ret i64 %13
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc(i8* noundef %0) #6 comdat align 2 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %11, %1
  %6 = load i8*, i8** %2, align 8
  %7 = load i64, i64* %3, align 8
  %8 = getelementptr inbounds i8, i8* %6, i64 %7
  store i8 0, i8* %4, align 1
  %9 = call noundef zeroext i1 @_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_(i8* noundef nonnull align 1 dereferenceable(1) %8, i8* noundef nonnull align 1 dereferenceable(1) %4)
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = load i64, i64* %3, align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* %3, align 8
  br label %5, !llvm.loop !6

14:                                               ; preds = %5
  %15 = load i64, i64* %3, align 8
  ret i64 %15
}

; Function Attrs: nounwind
declare i64 @strlen(i8* noundef) #2

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_(i8* noundef nonnull align 1 dereferenceable(1) %0, i8* noundef nonnull align 1 dereferenceable(1) %1) #6 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = load i8*, i8** %4, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %7, %10
  ret i1 %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local { i64, i8* } @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17_S_to_string_viewESt17basic_string_viewIcS2_E(i64 %0, i8* %1) #6 comdat align 2 {
  %3 = alloca %"class.std::basic_string_view", align 8
  %4 = alloca %"class.std::basic_string_view", align 8
  %5 = bitcast %"class.std::basic_string_view"* %4 to { i64, i8* }*
  %6 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %5, i32 0, i32 0
  store i64 %0, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %5, i32 0, i32 1
  store i8* %1, i8** %7, align 8
  %8 = bitcast %"class.std::basic_string_view"* %3 to i8*
  %9 = bitcast %"class.std::basic_string_view"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 16, i1 false)
  %10 = bitcast %"class.std::basic_string_view"* %3 to { i64, i8* }*
  %11 = load { i64, i8* }, { i64, i8* }* %10, align 8
  ret { i64, i8* } %11
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperC2ESt17basic_string_viewIcS2_E(%"struct.std::__cxx11::basic_string<char>::__sv_wrapper"* noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i8* %2) unnamed_addr #5 comdat align 2 {
  %4 = alloca %"class.std::basic_string_view", align 8
  %5 = alloca %"struct.std::__cxx11::basic_string<char>::__sv_wrapper"*, align 8
  %6 = bitcast %"class.std::basic_string_view"* %4 to { i64, i8* }*
  %7 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %6, i32 0, i32 0
  store i64 %1, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %6, i32 0, i32 1
  store i8* %2, i8** %8, align 8
  store %"struct.std::__cxx11::basic_string<char>::__sv_wrapper"* %0, %"struct.std::__cxx11::basic_string<char>::__sv_wrapper"** %5, align 8
  %9 = load %"struct.std::__cxx11::basic_string<char>::__sv_wrapper"*, %"struct.std::__cxx11::basic_string<char>::__sv_wrapper"** %5, align 8
  %10 = getelementptr inbounds %"struct.std::__cxx11::basic_string<char>::__sv_wrapper", %"struct.std::__cxx11::basic_string<char>::__sv_wrapper"* %9, i32 0, i32 0
  %11 = bitcast %"class.std::basic_string_view"* %10 to i8*
  %12 = bitcast %"class.std::basic_string_view"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 %1, i8* %2, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #5 comdat align 2 {
  %5 = alloca %"struct.std::__cxx11::basic_string<char>::__sv_wrapper", align 8
  %6 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %7 = alloca %"class.std::allocator"*, align 8
  %8 = bitcast %"struct.std::__cxx11::basic_string<char>::__sv_wrapper"* %5 to { i64, i8* }*
  %9 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %8, i32 0, i32 0
  store i64 %1, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %8, i32 0, i32 1
  store i8* %2, i8** %10, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %6, align 8
  store %"class.std::allocator"* %3, %"class.std::allocator"** %7, align 8
  %11 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %6, align 8
  %12 = getelementptr inbounds %"struct.std::__cxx11::basic_string<char>::__sv_wrapper", %"struct.std::__cxx11::basic_string<char>::__sv_wrapper"* %5, i32 0, i32 0
  %13 = call noundef i8* @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %12) #3
  %14 = getelementptr inbounds %"struct.std::__cxx11::basic_string<char>::__sv_wrapper", %"struct.std::__cxx11::basic_string<char>::__sv_wrapper"* %5, i32 0, i32 0
  %15 = call noundef i64 @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %14) #3
  %16 = load %"class.std::allocator"*, %"class.std::allocator"** %7, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11, i8* noundef %13, i64 noundef %15, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %16)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::basic_string_view"*, align 8
  store %"class.std::basic_string_view"* %0, %"class.std::basic_string_view"** %2, align 8
  %3 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %2, align 8
  %4 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %3, i32 0, i32 1
  %5 = load i8*, i8** %4, align 8
  ret i8* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::basic_string_view"*, align 8
  store %"class.std::basic_string_view"* %0, %"class.std::basic_string_view"** %2, align 8
  %3 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %2, align 8
  %4 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i32 0, i32 2
  %5 = bitcast %union.anon* %4 to [16 x i8]*
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %7 = call noundef i8* @_ZNSt14pointer_traitsIPcE10pointer_toERc(i8* noundef nonnull align 1 dereferenceable(1) %6) #3
  ret i8* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(%"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* noundef nonnull align 8 dereferenceable(8) %0, i8* noundef %1, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #5 comdat align 2 {
  %4 = alloca %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  store %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* %0, %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"** %4, align 8
  store i8* %1, i8** %5, align 8
  store %"class.std::allocator"* %2, %"class.std::allocator"** %6, align 8
  %7 = load %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"*, %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"** %4, align 8
  %8 = bitcast %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* %7 to %"class.std::allocator"*
  %9 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  call void @_ZNSaIcEC2ERKS_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %8, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %9) #3
  %10 = getelementptr inbounds %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* %7, i32 0, i32 0
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %10, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef %1, i8* noundef %2) #6 comdat align 2 {
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %"struct.std::__false_type", align 1
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %6, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef %9, i8* noundef %10)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZNSt14pointer_traitsIPcE10pointer_toERc(i8* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call noundef i8* @_ZSt9addressofIcEPT_RS0_(i8* noundef nonnull align 1 dereferenceable(1) %3) #3
  ret i8* %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZSt9addressofIcEPT_RS0_(i8* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call noundef i8* @_ZSt11__addressofIcEPT_RS0_(i8* noundef nonnull align 1 dereferenceable(1) %3) #3
  ret i8* %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZSt11__addressofIcEPT_RS0_(i8* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  ret i8* %3
}

; Function Attrs: nounwind
declare void @_ZNSaIcEC2ERKS_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1), %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef %1, i8* noundef %2) #6 comdat align 2 {
  %4 = alloca %"struct.std::__false_type", align 1
  %5 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::forward_iterator_tag", align 1
  %9 = alloca %"struct.std::random_access_iterator_tag", align 1
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast %"struct.std::random_access_iterator_tag"* %9 to %"struct.std::forward_iterator_tag"*
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10, i8* noundef %11, i8* noundef %12)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef %1, i8* noundef %2) #6 comdat align 2 {
  %4 = alloca %"struct.std::forward_iterator_tag", align 1
  %5 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_(i8* noundef %10)
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  call void @_ZSt19__throw_logic_errorPKc(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0)) #12
  unreachable

17:                                               ; preds = %12, %3
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(i8* noundef %18, i8* noundef %19)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp ugt i64 %21, 15
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = call noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9, i64* noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 0)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef %24)
  %25 = load i64, i64* %8, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %25)
  br label %26

26:                                               ; preds = %23, %17
  %27 = call noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9)
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %7, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(i8* noundef %27, i8* noundef %28, i8* noundef %29) #3
  %30 = load i64, i64* %8, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %30)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_(i8* noundef %0) #6 comdat {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp eq i8* %3, null
  ret i1 %4
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(i8* noundef) #10

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(i8* noundef %0, i8* noundef %1) #6 comdat {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %"struct.std::random_access_iterator_tag", align 1
  %6 = alloca %"struct.std::random_access_iterator_tag", align 1
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i8*, i8** %4, align 8
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(i8** noundef nonnull align 8 dereferenceable(8) %3)
  %9 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(i8* noundef %7, i8* noundef %8)
  ret i64 %9
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef %1) #6 comdat align 2 {
  %3 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %4 = alloca i8*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* %7, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64* noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) #6 comdat align 2 {
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = load i64, i64* %8, align 8
  %10 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %7) #3
  %11 = icmp ugt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0)) #12
  unreachable

13:                                               ; preds = %3
  %14 = load i64*, i64** %5, align 8
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %13
  %19 = load i64*, i64** %5, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = mul i64 2, %21
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load i64, i64* %6, align 8
  %26 = mul i64 2, %25
  %27 = load i64*, i64** %5, align 8
  store i64 %26, i64* %27, align 8
  %28 = load i64*, i64** %5, align 8
  %29 = load i64, i64* %28, align 8
  %30 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %7) #3
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %7) #3
  %34 = load i64*, i64** %5, align 8
  store i64 %33, i64* %34, align 8
  br label %35

35:                                               ; preds = %32, %24
  br label %36

36:                                               ; preds = %35, %18, %13
  %37 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %7)
  %38 = load i64*, i64** %5, align 8
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, 1
  %41 = call noundef i8* @_ZNSt16allocator_traitsISaIcEE8allocateERS0_m(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %37, i64 noundef %40)
  ret i8* %41
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #6 comdat align 2 {
  %3 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i32 0, i32 2
  %8 = bitcast %union.anon* %7 to i64*
  store i64 %6, i64* %8, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(i8* noundef %0, i8* noundef %1, i8* noundef %2) #6 comdat align 2 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = ptrtoint i8* %9 to i64
  %12 = ptrtoint i8* %10 to i64
  %13 = sub i64 %11, %12
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm(i8* noundef %7, i8* noundef %8, i64 noundef %13)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #6 comdat align 2 {
  %3 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %3, align 8
  %7 = load i64, i64* %4, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %7)
  %8 = call noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6)
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds i8, i8* %8, i64 %9
  store i8 0, i8* %5, align 1
  call void @_ZNSt11char_traitsIcE6assignERcRKc(i8* noundef nonnull align 1 dereferenceable(1) %10, i8* noundef nonnull align 1 dereferenceable(1) %5) #3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(i8* noundef %0, i8* noundef %1) #6 comdat {
  %3 = alloca %"struct.std::random_access_iterator_tag", align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = ptrtoint i8* %6 to i64
  %9 = ptrtoint i8* %7 to i64
  %10 = sub i64 %8, %9
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(i8** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %2, align 8
  %4 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3)
  %5 = call noundef i64 @_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #3
  %6 = sub i64 %5, 1
  %7 = udiv i64 %6, 2
  ret i64 %7
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8* noundef) #10

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZNSt16allocator_traitsISaIcEE8allocateERS0_m(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #6 comdat align 2 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %"class.std::allocator"*, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %5, align 8
  store i64 %1, i64* %6, align 8
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %5, align 8
  %8 = load i64, i64* %6, align 8
  store %"class.std::allocator"* %7, %"class.std::allocator"** %3, align 8
  store i64 %8, i64* %4, align 8
  %9 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  %10 = bitcast %"class.std::allocator"* %9 to %"class.__gnu_cxx::new_allocator"*
  %11 = load i64, i64* %4, align 8
  %12 = call noundef i8* @_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %10, i64 noundef %11, i8* noundef null) #3
  ret i8* %12
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIcEE8max_sizeERKS0_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  ret i64 -1
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* %4 to %"class.std::allocator"*
  ret %"class.std::allocator"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZN9__gnu_cxx13new_allocatorIcE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, i8* noundef %2) #6 comdat align 2 {
  %4 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call noundef i64 @_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %7) #3
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i64, i64* %5, align 8
  %13 = icmp ugt i64 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @_ZSt28__throw_bad_array_new_lengthv() #12
  unreachable

15:                                               ; preds = %11
  call void @_ZSt17__throw_bad_allocv() #12
  unreachable

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = mul i64 %17, 1
  %19 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %18) #13
  ret i8* %19
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNK9__gnu_cxx13new_allocatorIcE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator"* noundef nonnull align 1 dereferenceable(1) %0) #6 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %0, %"class.__gnu_cxx::new_allocator"** %2, align 8
  %3 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %2, align 8
  ret i64 9223372036854775807
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() #10

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) #11

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 comdat align 2 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i8*, i8** %4, align 8
  %11 = load i8*, i8** %5, align 8
  call void @_ZNSt11char_traitsIcE6assignERcRKc(i8* noundef nonnull align 1 dereferenceable(1) %10, i8* noundef nonnull align 1 dereferenceable(1) %11) #3
  br label %17

12:                                               ; preds = %3
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call noundef i8* @_ZNSt11char_traitsIcE4copyEPcPKcm(i8* noundef %13, i8* noundef %14, i64 noundef %15)
  br label %17

17:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt11char_traitsIcE6assignERcRKc(i8* noundef nonnull align 1 dereferenceable(1) %0, i8* noundef nonnull align 1 dereferenceable(1) %1) #6 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i8, i8* %5, align 1
  %7 = load i8*, i8** %3, align 8
  store i8 %6, i8* %7, align 1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZNSt11char_traitsIcE4copyEPcPKcm(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 comdat align 2 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %4, align 8
  br label %16

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* %7, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 %14, i64 %15, i1 false)
  store i8* %13, i8** %4, align 8
  br label %16

16:                                               ; preds = %12, %10
  %17 = load i8*, i8** %4, align 8
  ret i8* %17
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #6 comdat align 2 {
  %3 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %5, i32 0, i32 1
  store i64 %6, i64* %7, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %0, %"struct.std::__detail::_Quoted_string"* noundef nonnull align 8 dereferenceable(10) %1) #6 comdat {
  %3 = alloca %"class.std::basic_ostream"*, align 8
  %4 = alloca %"struct.std::__detail::_Quoted_string"*, align 8
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8
  %6 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %9 = alloca i8, align 1
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  store %"class.std::basic_ostream"* %0, %"class.std::basic_ostream"** %3, align 8
  store %"struct.std::__detail::_Quoted_string"* %1, %"struct.std::__detail::_Quoted_string"** %4, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_ostringstream"* noundef nonnull align 8 dereferenceable(112) %5)
  %11 = bitcast %"class.std::__cxx11::basic_ostringstream"* %5 to %"class.std::basic_ostream"*
  %12 = load %"struct.std::__detail::_Quoted_string"*, %"struct.std::__detail::_Quoted_string"** %4, align 8
  %13 = getelementptr inbounds %"struct.std::__detail::_Quoted_string", %"struct.std::__detail::_Quoted_string"* %12, i32 0, i32 1
  %14 = load i8, i8* %13, align 8
  %15 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %11, i8 noundef signext %14)
  %16 = load %"struct.std::__detail::_Quoted_string"*, %"struct.std::__detail::_Quoted_string"** %4, align 8
  %17 = getelementptr inbounds %"struct.std::__detail::_Quoted_string", %"struct.std::__detail::_Quoted_string"* %16, i32 0, i32 0
  %18 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %17, align 8
  store %"class.std::__cxx11::basic_string"* %18, %"class.std::__cxx11::basic_string"** %6, align 8
  %19 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %6, align 8
  %20 = call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %19) #3
  %21 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %7, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %6, align 8
  %23 = call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %22) #3
  %24 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %8, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  br label %25

25:                                               ; preds = %56, %2
  %26 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPKcS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T1_EERKNS9_IT0_SB_EE(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %7, %"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %8) #3
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %58

28:                                               ; preds = %25
  %29 = call noundef nonnull align 1 dereferenceable(1) i8* @_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %7) #3
  %30 = load i8, i8* %29, align 1
  store i8 %30, i8* %9, align 1
  %31 = load i8, i8* %9, align 1
  %32 = sext i8 %31 to i32
  %33 = load %"struct.std::__detail::_Quoted_string"*, %"struct.std::__detail::_Quoted_string"** %4, align 8
  %34 = getelementptr inbounds %"struct.std::__detail::_Quoted_string", %"struct.std::__detail::_Quoted_string"* %33, i32 0, i32 1
  %35 = load i8, i8* %34, align 8
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %32, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %28
  %39 = load i8, i8* %9, align 1
  %40 = sext i8 %39 to i32
  %41 = load %"struct.std::__detail::_Quoted_string"*, %"struct.std::__detail::_Quoted_string"** %4, align 8
  %42 = getelementptr inbounds %"struct.std::__detail::_Quoted_string", %"struct.std::__detail::_Quoted_string"* %41, i32 0, i32 2
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %40, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %38, %28
  %47 = bitcast %"class.std::__cxx11::basic_ostringstream"* %5 to %"class.std::basic_ostream"*
  %48 = load %"struct.std::__detail::_Quoted_string"*, %"struct.std::__detail::_Quoted_string"** %4, align 8
  %49 = getelementptr inbounds %"struct.std::__detail::_Quoted_string", %"struct.std::__detail::_Quoted_string"* %48, i32 0, i32 2
  %50 = load i8, i8* %49, align 1
  %51 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %47, i8 noundef signext %50)
  br label %52

52:                                               ; preds = %46, %38
  %53 = bitcast %"class.std::__cxx11::basic_ostringstream"* %5 to %"class.std::basic_ostream"*
  %54 = load i8, i8* %9, align 1
  %55 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %53, i8 noundef signext %54)
  br label %56

56:                                               ; preds = %52
  %57 = call noundef nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %7) #3
  br label %25

58:                                               ; preds = %25
  %59 = bitcast %"class.std::__cxx11::basic_ostringstream"* %5 to %"class.std::basic_ostream"*
  %60 = load %"struct.std::__detail::_Quoted_string"*, %"struct.std::__detail::_Quoted_string"** %4, align 8
  %61 = getelementptr inbounds %"struct.std::__detail::_Quoted_string", %"struct.std::__detail::_Quoted_string"* %60, i32 0, i32 1
  %62 = load i8, i8* %61, align 8
  %63 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %59, i8 noundef signext %62)
  %64 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %3, align 8
  call void @_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %10, %"class.std::__cxx11::basic_ostringstream"* noundef nonnull align 8 dereferenceable(112) %5)
  %65 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %64, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10) #3
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_ostringstream"* noundef nonnull align 8 dereferenceable(112) %5) #3
  ret %"class.std::basic_ostream"* %65
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local { %"class.std::__cxx11::basic_string"*, i64 } @_ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext %1, i8 noundef signext %2) #6 comdat {
  %4 = alloca %"struct.std::__detail::_Quoted_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %8 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %9 = load i8, i8* %6, align 1
  %10 = load i8, i8* %7, align 1
  call void @_ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC2ES8_cc(%"struct.std::__detail::_Quoted_string"* noundef nonnull align 8 dereferenceable(10) %4, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8, i8 noundef signext %9, i8 noundef signext %10)
  %11 = bitcast %"struct.std::__detail::_Quoted_string"* %4 to { %"class.std::__cxx11::basic_string"*, i64 }*
  %12 = load { %"class.std::__cxx11::basic_string"*, i64 }, { %"class.std::__cxx11::basic_string"*, i64 }* %11, align 8
  ret { %"class.std::__cxx11::basic_string"*, i64 } %12
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %1, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %2) #6 comdat align 2 {
  %4 = alloca i8*, align 8
  %5 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  %7 = bitcast %"class.std::__cxx11::basic_string"* %0 to i8*
  store i8* %7, i8** %4, align 8
  store %"class.std::filesystem::__cxx11::path"* %1, %"class.std::filesystem::__cxx11::path"** %5, align 8
  store %"class.std::allocator"* %2, %"class.std::allocator"** %6, align 8
  %8 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %5, align 8
  %9 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %8, i32 0, i32 0
  %10 = call noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9) #3
  %11 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %8, i32 0, i32 0
  %12 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11) #3
  %13 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef %10, i64 noundef %12, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %13)
  ret void
}

declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_ostringstream"* noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #6 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %4 = alloca i8*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %3, align 8
  %5 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %3, align 8
  %6 = call noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5)
  store i8* %6, i8** %4, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %2, i8** noundef nonnull align 8 dereferenceable(8) %4) #3
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  ret i8* %8
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #6 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %4 = alloca i8*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %3, align 8
  %5 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %3, align 8
  %6 = call noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5)
  %7 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5) #3
  %8 = getelementptr inbounds i8, i8* %6, i64 %7
  store i8* %8, i8** %4, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %2, i8** noundef nonnull align 8 dereferenceable(8) %4) #3
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  ret i8* %10
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxeqIPKcS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T1_EERKNS9_IT0_SB_EE(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %0, %"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %1) #6 comdat {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %1, %"class.__gnu_cxx::__normal_iterator"** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) i8** @_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %5) #3
  %7 = load i8*, i8** %6, align 8
  %8 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %4, align 8
  %9 = call noundef nonnull align 8 dereferenceable(8) i8** @_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %8) #3
  %10 = load i8*, i8** %9, align 8
  %11 = icmp eq i8* %7, %10
  ret i1 %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) i8* @_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  ret i8* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %6, i8** %4, align 8
  ret %"class.__gnu_cxx::__normal_iterator"* %3
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #1

declare void @_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8, %"class.std::__cxx11::basic_ostringstream"* noundef nonnull align 8 dereferenceable(112)) #1

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_ostringstream"* noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %0, i8** noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %4 = alloca i8**, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  store i8** %1, i8*** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  %7 = load i8**, i8*** %4, align 8
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i8** @_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  ret i8** %4
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC2ES8_cc(%"struct.std::__detail::_Quoted_string"* noundef nonnull align 8 dereferenceable(10) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext %2, i8 noundef signext %3) unnamed_addr #5 comdat align 2 {
  %5 = alloca %"struct.std::__detail::_Quoted_string"*, align 8
  %6 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %"struct.std::__detail::_Quoted_string"* %0, %"struct.std::__detail::_Quoted_string"** %5, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %6, align 8
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  %9 = load %"struct.std::__detail::_Quoted_string"*, %"struct.std::__detail::_Quoted_string"** %5, align 8
  %10 = getelementptr inbounds %"struct.std::__detail::_Quoted_string", %"struct.std::__detail::_Quoted_string"* %9, i32 0, i32 0
  %11 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %6, align 8
  store %"class.std::__cxx11::basic_string"* %11, %"class.std::__cxx11::basic_string"** %10, align 8
  %12 = getelementptr inbounds %"struct.std::__detail::_Quoted_string", %"struct.std::__detail::_Quoted_string"* %9, i32 0, i32 1
  %13 = load i8, i8* %7, align 1
  store i8 %13, i8* %12, align 8
  %14 = getelementptr inbounds %"struct.std::__detail::_Quoted_string", %"struct.std::__detail::_Quoted_string"* %9, i32 0, i32 2
  %15 = load i8, i8* %8, align 1
  store i8 %15, i8* %14, align 1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %2, align 8
  %4 = call noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3)
  ret i8* %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0) #6 comdat align 2 {
  %2 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %2, align 8
  %3 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef %1, i64 noundef %2, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #5 comdat align 2 {
  %5 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %"class.std::allocator"* %3, %"class.std::allocator"** %8, align 8
  %9 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i32 0, i32 0
  %11 = call noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9)
  %12 = load %"class.std::allocator"*, %"class.std::allocator"** %8, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(%"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* noundef nonnull align 8 dereferenceable(8) %10, i8* noundef %11, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %12)
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef %13, i8* noundef %16)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @_GLOBAL__sub_I_diriter.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn }
attributes #13 = { allocsize(0) }

!llvm.linker.options = !{}
!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
