; ModuleID = 'cpp/simpleshell.cpp'
source_filename = "cpp/simpleshell.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

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
%"class.std::basic_istream" = type { i32 (...)**, i64, %"class.std::basic_ios" }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data" = type { %"class.std::basic_string_view"*, %"class.std::basic_string_view"*, %"class.std::basic_string_view"* }
%"class.std::basic_string_view" = type { i64, i8* }
%"class.std::__new_allocator" = type { i8 }
%"class.std::allocator" = type { i8 }
%"class.std::initializer_list" = type { %"class.std::basic_string_view"*, i64 }
%"struct.std::forward_iterator_tag" = type { i8 }
%"struct.std::random_access_iterator_tag" = type { i8 }
%"class.__gnu_cxx::__normal_iterator.19" = type { %"class.std::basic_string_view"* }
%"class.std::filesystem::__cxx11::path" = type { %"class.std::__cxx11::basic_string", %"struct.std::filesystem::__cxx11::path::_List" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"struct.std::filesystem::__cxx11::path::_List" = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.4" }
%"struct.std::_Head_base.4" = type { %"struct.std::filesystem::__cxx11::path::_List::_Impl"* }
%"struct.std::filesystem::__cxx11::path::_List::_Impl" = type opaque
%"class.std::vector.5" = type { %"struct.std::_Vector_base.6" }
%"struct.std::_Vector_base.6" = type { %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl" }
%"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl" = type { %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data" }
%"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data" = type { %struct.LsItem*, %struct.LsItem*, %struct.LsItem* }
%struct.LsItem = type <{ %"class.std::__cxx11::basic_string", i8, [7 x i8] }>
%"class.std::filesystem::__cxx11::directory_iterator" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { %"struct.std::filesystem::__cxx11::_Dir"*, %"class.std::__shared_count" }
%"struct.std::filesystem::__cxx11::_Dir" = type opaque
%"class.std::__shared_count" = type { %"class.std::_Sp_counted_base"* }
%"class.std::_Sp_counted_base" = type { i32 (...)**, i32, i32 }
%"class.std::filesystem::__cxx11::directory_entry" = type <{ %"class.std::filesystem::__cxx11::path", i8, [7 x i8] }>
%"class.__gnu_cxx::__normal_iterator" = type { %struct.LsItem* }
%class.anon = type { i8 }
%"class.std::filesystem::file_status" = type { i8, i32 }
%"class.std::__new_allocator.1" = type { i8 }
%"class.std::allocator.0" = type { i8 }
%"struct.std::__detail::_Quoted_string" = type <{ %"class.std::__cxx11::basic_string"*, i8, i8, [6 x i8] }>
%"class.std::error_code" = type { i32, %"class.std::_V2::error_category"* }
%"class.std::_V2::error_category" = type { i32 (...)** }
%"class.std::__new_allocator.8" = type { i8 }
%"class.std::allocator.7" = type { i8 }
%"class.std::filesystem::__cxx11::path::iterator" = type <{ %"class.std::filesystem::__cxx11::path"*, %"struct.std::filesystem::__cxx11::path::_Cmpt"*, i8, [7 x i8] }>
%"struct.std::filesystem::__cxx11::path::_Cmpt" = type { %"class.std::filesystem::__cxx11::path", i64 }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter" = type { %class.anon }
%"class.std::__new_allocator.15" = type { i8 }
%"class.std::allocator.14" = type { i8 }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%"class.std::initializer_list.13" = type { %"struct.std::pair"*, i64 }
%"struct.std::pair" = type { %"class.std::__cxx11::basic_string", %"class.std::function" }
%"class.std::function" = type { %"class.std::_Function_base", i32 (%"union.std::_Any_data"*, %"class.std::vector"*)* }
%"class.std::_Function_base" = type { %"union.std::_Any_data", i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"struct.std::_Rb_tree_iterator" = type { %"struct.std::_Rb_tree_node_base"* }
%"class.std::__pair_base" = type { i8 }
%"class.__gnu_cxx::__normal_iterator.24" = type { %"class.std::basic_string_view"* }
%"struct.std::__cxx11::basic_string<char>::__sv_wrapper" = type { %"class.std::basic_string_view" }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [64 x i8] }
%"class.std::__shared_ptr_access" = type { i8 }
%"struct.std::less.17" = type { i8 }
%"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter" = type { i8 }
%"struct.std::_Tuple_impl.3" = type { i8 }
%"struct.std::_Head_base" = type { i8 }
%"struct.std::_Maybe_unary_or_binary_function" = type { i8 }
%struct._Guard = type { %"class.std::__cxx11::basic_string"* }
%"struct.std::integral_constant" = type { i8 }
%"class.std::type_info" = type { i32 (...)**, i8* }
%"struct.std::__invoke_other" = type { i8 }
%"class.std::allocator.10" = type { i8 }
%"class.std::__new_allocator.11" = type { i8 }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { i32 (...)** }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.__gnu_cxx::__normal_iterator.20" = type { i8* }
%"struct.__gnu_cxx::__ops::_Iter_comp_val" = type { %class.anon }
%"struct.__gnu_cxx::__ops::_Val_comp_iter" = type { %class.anon }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node" = type { %"class.std::_Rb_tree"* }
%"struct.std::_Rb_tree_const_iterator" = type { %"struct.std::_Rb_tree_node_base"* }
%"struct.std::pair.21" = type { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }
%"struct.std::_Select1st" = type { i8 }
%"class.std::__pair_base.22" = type { i8 }

$_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5emptyEv = comdat any

$_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEC2Ev = comdat any

$_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m = comdat any

$_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEC2ESt16initializer_listIS3_ERKS4_ = comdat any

$_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv = comdat any

$_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_ = comdat any

$_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm = comdat any

$_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_ = comdat any

$_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev = comdat any

$_ZNSt10filesystem7__cxx114pathC2Ev = comdat any

$_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4sizeEv = comdat any

$_ZNSt10filesystem7__cxx114pathaSIA2_cEERNSt9enable_ifIX13__is_path_srcIT_EES1_E4typeERKS5_ = comdat any

$_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEixEm = comdat any

$_ZNSt10filesystem7__cxx114pathaSISt17basic_string_viewIcSt11char_traitsIcEEEERNSt9enable_ifIX13__is_path_srcIT_EES1_E4typeERKS8_ = comdat any

$_ZNSt10filesystem6existsERKNS_7__cxx114pathE = comdat any

$_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE = comdat any

$_ZNSt6vectorI6LsItemSaIS0_EEC2Ev = comdat any

$_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE = comdat any

$_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE = comdat any

$_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_ = comdat any

$_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev = comdat any

$_ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE = comdat any

$_ZNSt10filesystem7__cxx11neERKNS0_18directory_iteratorES3_ = comdat any

$_ZNSt6vectorI6LsItemSaIS0_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEERS0_DpOT_ = comdat any

$_ZNKSt10filesystem7__cxx1115directory_entry4pathEv = comdat any

$_ZNKSt10filesystem7__cxx114path8filenameEv = comdat any

$_ZNKSt10filesystem7__cxx114path6stringEv = comdat any

$_ZNKSt10filesystem7__cxx1115directory_entry12is_directoryEv = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

$_ZNSt6vectorI6LsItemSaIS0_EE5beginEv = comdat any

$_ZNSt6vectorI6LsItemSaIS0_EE3endEv = comdat any

$_ZN9__gnu_cxxneIP6LsItemSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEppEv = comdat any

$_ZNSt6vectorI6LsItemSaIS0_EED2Ev = comdat any

$_ZNSt10filesystem7__cxx114pathaSIPKcEERNSt9enable_ifIX13__is_path_srcIT_EES1_E4typeERKS6_ = comdat any

$_ZNSt10filesystem12is_directoryERKNS_7__cxx114pathE = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISA_EEEEEC2IRA3_KcRSF_Lb1EEEOT_OT0_ = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISA_EEEEEC2IRA4_KcRSF_Lb1EEEOT_OT0_ = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISA_EEEEEC2IRA5_KcRSF_Lb1EEEOT_OT0_ = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISA_EEEEEC2IRA6_KcRSF_Lb1EEEOT_OT0_ = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaIS9_EEEESt4lessIS5_ESaISt4pairIKS5_SF_EEEC2ESt16initializer_listISK_ERKSH_RKSL_ = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISA_EEEEED2Ev = comdat any

$_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc = comdat any

$_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE5emptyEv = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaIS9_EEEESt4lessIS5_ESaISt4pairIKS5_SF_EEE4findERSJ_ = comdat any

$_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE5frontEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_ = comdat any

$_ZStneRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEESL_ = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaIS9_EEEESt4lessIS5_ESaISt4pairIKS5_SF_EEE3endEv = comdat any

$_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEEptEv = comdat any

$_ZNKSt8functionIFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEEclES8_ = comdat any

$_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaIS9_EEEESt4lessIS5_ESaISt4pairIKS5_SF_EEED2Ev = comdat any

$_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEC2Ev = comdat any

$_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_Vector_implC2Ev = comdat any

$_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcmm = comdat any

$_ZNSt11char_traitsIcE4findEPKcmRS1_ = comdat any

$_ZNSt11char_traitsIcE7compareEPKcS2_m = comdat any

$_ZSt10__sv_checkmmPKc = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKcm = comdat any

$_ZNSt10filesystem6existsENS_11file_statusE = comdat any

$_ZNSt10filesystem12status_knownENS_11file_statusE = comdat any

$_ZNKSt10filesystem11file_status4typeEv = comdat any

$_ZNSt12_Vector_baseI6LsItemSaIS0_EEC2Ev = comdat any

$_ZNSt12_Vector_baseI6LsItemSaIS0_EE12_Vector_implC2Ev = comdat any

$_ZNSt12_Vector_baseI6LsItemSaIS0_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt10filesystem7__cxx1118directory_iteratorC2EOS1_ = comdat any

$_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC2ERKS5_ = comdat any

$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv = comdat any

$_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv = comdat any

$_ZNSt10filesystem7__cxx1118directory_iteratorC2Ev = comdat any

$_ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3_ = comdat any

$_ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE = comdat any

$_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_lessERKS2_ = comdat any

$_ZNKSt4lessIPSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEEclES4_S4_ = comdat any

$_ZNKSt10filesystem7__cxx114path5emptyEv = comdat any

$_ZNKSt10filesystem7__cxx114path7_M_typeEv = comdat any

$_ZNSt10filesystem7__cxx114pathC2ERKS1_ = comdat any

$_ZNKSt10filesystem7__cxx114path3endEv = comdat any

$_ZNSt10filesystem7__cxx114path8iteratormmEv = comdat any

$_ZNKSt10filesystem7__cxx114path8iteratorptEv = comdat any

$_ZNKSt10filesystem7__cxx114path8iteratordeEv = comdat any

$_ZNKSt10filesystem7__cxx114path5_List4typeEv = comdat any

$_ZNKSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE3getEv = comdat any

$_ZNKSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv = comdat any

$_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKSB_ = comdat any

$_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERKT0_RKSt11_Tuple_implIXT_EJS7_DpT1_EE = comdat any

$_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERKS7_ = comdat any

$_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERKS6_ = comdat any

$_ZNSt10filesystem7__cxx114path8iteratorC2EPKS1_PKNS1_5_CmptE = comdat any

$_ZNSt10filesystem7__cxx114path8iteratorC2EPKS1_b = comdat any

$_ZNKSt10filesystem7__cxx114path8iterator11_M_is_multiEv = comdat any

$_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_ = comdat any

$_ZNKSt10filesystem7__cxx1115directory_entry12_M_file_typeEv = comdat any

$_ZNKSt10filesystem7__cxx1115directory_entry6statusEv = comdat any

$_ZNSt10filesystem7__cxx114path5_ListD2Ev = comdat any

$_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev = comdat any

$_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv = comdat any

$_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv = comdat any

$_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_ = comdat any

$_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE = comdat any

$_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_ = comdat any

$_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_ = comdat any

$_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv = comdat any

$_ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_ = comdat any

$_ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE = comdat any

$_ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_ = comdat any

$_ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_ = comdat any

$_ZNSt10filesystem12is_directoryENS_11file_statusE = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt8functionIFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEEC2IRS9_vEEOT_ = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev = comdat any

$_ZNSt14_Function_baseC2Ev = comdat any

$_ZNSt14_Function_base13_Base_managerIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEE21_M_not_empty_functionISA_EEbPT_ = comdat any

$_ZNSt14_Function_base13_Base_managerIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEE15_M_init_functorIRSA_EEvRSt9_Any_dataOT_ = comdat any

$_ZNSt17_Function_handlerIFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEPS9_E9_M_invokeERKSt9_Any_dataS8_ = comdat any

$_ZNSt17_Function_handlerIFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEPS9_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation = comdat any

$_ZNSt14_Function_base13_Base_managerIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEE9_M_createIRSA_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE = comdat any

$_ZNSt9_Any_data9_M_accessEv = comdat any

$_ZSt10__invoke_rIiRPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEJS8_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_ = comdat any

$_ZNSt14_Function_base13_Base_managerIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEE14_M_get_pointerERKSt9_Any_data = comdat any

$_ZSt13__invoke_implIiRPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEJS8_EET_St14__invoke_otherOT0_DpOT1_ = comdat any

$_ZNKSt9_Any_data9_M_accessIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEEERKT_v = comdat any

$_ZNKSt9_Any_data9_M_accessEv = comdat any

$_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v = comdat any

$_ZNSt9_Any_data9_M_accessIPPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEEERT_v = comdat any

$_ZNSt14_Function_base13_Base_managerIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEE10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation = comdat any

$_ZNSt14_Function_base13_Base_managerIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEE15_M_init_functorIRKSB_EEvRSt9_Any_dataOT_ = comdat any

$_ZNSt14_Function_base13_Base_managerIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE = comdat any

$_ZNSt14_Function_base13_Base_managerIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEE9_M_createIRKSB_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE = comdat any

$_ZNSt9_Any_data9_M_accessIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEEERT_v = comdat any

$_ZNSt8functionIFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEED2Ev = comdat any

$_ZNSt14_Function_baseD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE8_M_eraseEPSt13_Rb_tree_nodeISI_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE8_M_beginEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE13_Rb_tree_implISM_Lb1EED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE8_S_rightEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE7_S_leftEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISI_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISI_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE11_M_put_nodeEPSt13_Rb_tree_nodeISI_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE21_M_get_Node_allocatorEv = comdat any

$_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEE9_M_valptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS5_ESaISC_EEEEEE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS5_ESaISC_EEEEEE7_M_addrEv = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS5_ESaISC_EEEEEEE10deallocateEPSK_m = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE9_M_mbeginEv = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS5_ESaISC_EEEEEEED2Ev = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$_ZNSt15__new_allocatorISt17basic_string_viewIcSt11char_traitsIcEEED2Ev = comdat any

$_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEC2ERKS4_ = comdat any

$_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE19_M_range_initializeIPKS3_EEvT_S9_St20forward_iterator_tag = comdat any

$_ZNKSt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE5beginEv = comdat any

$_ZNKSt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE3endEv = comdat any

$_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_Vector_implC2ERKS4_ = comdat any

$_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm = comdat any

$_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_ = comdat any

$_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt22__uninitialized_copy_aIPKSt17basic_string_viewIcSt11char_traitsIcEEPS3_S3_ET0_T_S8_S7_RSaIT1_E = comdat any

$_ZNSt15__new_allocatorISt17basic_string_viewIcSt11char_traitsIcEEE8allocateEmPKv = comdat any

$_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_max_sizeERKS4_ = comdat any

$_ZSt18uninitialized_copyIPKSt17basic_string_viewIcSt11char_traitsIcEEPS3_ET0_T_S8_S7_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKSt17basic_string_viewIcSt11char_traitsIcEEPS5_EET0_T_SA_S9_ = comdat any

$_ZSt16__do_uninit_copyIPKSt17basic_string_viewIcSt11char_traitsIcEEPS3_ET0_T_S8_S7_ = comdat any

$_ZSt10_ConstructISt17basic_string_viewIcSt11char_traitsIcEEJRKS3_EEvPT_DpOT0_ = comdat any

$_ZNKSt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE4sizeEv = comdat any

$_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev = comdat any

$_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEEEvT_S5_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPSt17basic_string_viewIcSt11char_traitsIcEEEEvT_S7_ = comdat any

$_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m = comdat any

$_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_Vector_implD2Ev = comdat any

$_ZNSt15__new_allocatorISt17basic_string_viewIcSt11char_traitsIcEEE10deallocateEPS3_m = comdat any

$_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_ = comdat any

$_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

$_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE3endEv = comdat any

$_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4backEv = comdat any

$_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_ = comdat any

$_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE5beginEv = comdat any

$_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEE4baseEv = comdat any

$_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE8max_sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNKSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE19_M_get_Tp_allocatorEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEC2ERKS5_ = comdat any

$_ZSt12__relocate_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_ = comdat any

$_ZSt14__relocate_a_1IPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_ = comdat any

$_ZSt12__niter_baseIPSt17basic_string_viewIcSt11char_traitsIcEEET_S5_ = comdat any

$_ZSt19__relocate_object_aISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_EEvPT_PT0_RT1_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEmiEl = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEdeEv = comdat any

$_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

$_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathaSEOS1_ = comdat any

$_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_ = comdat any

$_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA2_cEEDaRKT_ = comdat any

$_ZNSt10filesystem7__cxx114path5_ListaSEOS2_ = comdat any

$_ZNSt10filesystem7__cxx114path5clearEv = comdat any

$_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEaSEOS6_ = comdat any

$_ZNSt15__uniq_ptr_dataINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterELb1ELb1EEaSEOS6_ = comdat any

$_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEaSEOS6_ = comdat any

$_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE5resetEPS4_ = comdat any

$_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE7releaseEv = comdat any

$_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx118__detail17__effective_rangeIcSt11char_traitsIcEEESt17basic_string_viewIT_S3_IS6_EERKS5_IS6_T0_E = comdat any

$_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE = comdat any

$_ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_ = comdat any

$_ZN9__gnu_cxxneIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv = comdat any

$_ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC2ES8_cc = comdat any

$_ZNSt12_Vector_baseI6LsItemSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseI6LsItemSaIS0_EED2Ev = comdat any

$_ZSt8_DestroyIP6LsItemEvT_S2_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIP6LsItemEEvT_S4_ = comdat any

$_ZSt8_DestroyI6LsItemEvPT_ = comdat any

$_ZN6LsItemD2Ev = comdat any

$_ZNSt12_Vector_baseI6LsItemSaIS0_EE13_M_deallocateEPS0_m = comdat any

$_ZNSt12_Vector_baseI6LsItemSaIS0_EE12_Vector_implD2Ev = comdat any

$_ZNSt15__new_allocatorI6LsItemE10deallocateEPS0_m = comdat any

$_ZNSt15__new_allocatorI6LsItemED2Ev = comdat any

$_ZNSt6vectorI6LsItemSaIS0_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

$_ZNSt6vectorI6LsItemSaIS0_EE4backEv = comdat any

$_ZN6LsItemC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb = comdat any

$_ZNKSt6vectorI6LsItemSaIS0_EE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIP6LsItemSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_ = comdat any

$_ZNSt12_Vector_baseI6LsItemSaIS0_EE11_M_allocateEm = comdat any

$_ZNSt6vectorI6LsItemSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEE4baseEv = comdat any

$_ZNKSt6vectorI6LsItemSaIS0_EE8max_sizeEv = comdat any

$_ZNKSt6vectorI6LsItemSaIS0_EE4sizeEv = comdat any

$_ZNSt6vectorI6LsItemSaIS0_EE11_S_max_sizeERKS1_ = comdat any

$_ZNKSt12_Vector_baseI6LsItemSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt15__new_allocatorI6LsItemE8allocateEmPKv = comdat any

$_ZSt12__relocate_aIP6LsItemS1_SaIS0_EET0_T_S4_S3_RT1_ = comdat any

$_ZSt14__relocate_a_1IP6LsItemS1_SaIS0_EET0_T_S4_S3_RT1_ = comdat any

$_ZSt12__niter_baseIP6LsItemET_S2_ = comdat any

$_ZSt19__relocate_object_aI6LsItemS0_SaIS0_EEvPT_PT0_RT1_ = comdat any

$_ZN6LsItemC2EOS_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEmiEl = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEC2ERKS2_ = comdat any

$_ZSt4__lgIlET_S0_ = comdat any

$_ZN9__gnu_cxxltIP6LsItemSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEplEl = comdat any

$_ZN6LsItemaSEOS_ = comdat any

$_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEmmEv = comdat any

$_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEES7_EvT_T0_ = comdat any

$_ZSt4swapI6LsItemENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_ = comdat any

$_ZSt11__bit_widthImEiT_ = comdat any

$_ZSt13__countl_zeroImEiT_ = comdat any

$_ZN9__gnu_cxxeqIP6LsItemSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_ = comdat any

$_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_ = comdat any

$_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEEET_S8_ = comdat any

$_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_ = comdat any

$_ZSt23__copy_move_backward_a1ILb1EP6LsItemS1_ET1_T0_S3_S2_ = comdat any

$_ZSt12__niter_baseIP6LsItemSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE = comdat any

$_ZSt23__copy_move_backward_a2ILb1EP6LsItemS1_ET1_T0_S3_S2_ = comdat any

$_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIP6LsItemS4_EET0_T_S6_S5_ = comdat any

$_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx118__detail17__effective_rangeIPKcEEDaRKT_ = comdat any

$_ZNSt15__new_allocatorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EEC2ERKSM_RKSN_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE22_M_insert_range_uniqueIPKSI_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeEST_ST_ = comdat any

$_ZNKSt16initializer_listISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEE5beginEv = comdat any

$_ZNKSt16initializer_listISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEE3endEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE13_Rb_tree_implISM_Lb1EEC2ERKSM_OSaISt13_Rb_tree_nodeISI_EE = comdat any

$_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_ = comdat any

$_ZNSt15_Rb_tree_headerC2Ev = comdat any

$_ZNSt15_Rb_tree_header8_M_resetEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE11_Alloc_nodeC2ERSO_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE17_M_insert_unique_IRKSI_NSO_11_Alloc_nodeEEESt17_Rb_tree_iteratorISI_ESt23_Rb_tree_const_iteratorISI_EOT_RT0_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE3endEv = comdat any

$_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEEC2ERKSt17_Rb_tree_iteratorISI_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISI_ERS7_ = comdat any

$_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEEclERKSI_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE10_M_insert_IRKSI_NSO_11_Alloc_nodeEEESt17_Rb_tree_iteratorISI_EPSt18_Rb_tree_node_baseSW_OT_RT0_ = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEEC2EPSt18_Rb_tree_node_base = comdat any

$_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEE13_M_const_castEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE6_M_endEv = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE4sizeEv = comdat any

$_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE6_S_keyEPKSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE12_M_rightmostEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_Lb1EEERKS1_S5_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE11_M_leftmostEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_ = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEEmmEv = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEEppEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE6_S_keyEPKSt13_Rb_tree_nodeISI_E = comdat any

$_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEE9_M_valptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS5_ESaISC_EEEEEE6_M_ptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS5_ESaISC_EEEEEE7_M_addrEv = comdat any

$_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEESL_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE5beginEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS8_ESaISF_EEEEEERS1_Lb1EEEOT_OT0_ = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE11_Alloc_nodeclIRKSI_EEPSt13_Rb_tree_nodeISI_EOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE14_M_create_nodeIJRKSI_EEEPSt13_Rb_tree_nodeISI_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE11_M_get_nodeEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE17_M_construct_nodeIJRKSI_EEEvPSt13_Rb_tree_nodeISI_EDpOT_ = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS5_ESaISC_EEEEEEE8allocateEmPKv = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISA_EEEEEC2ERKSH_ = comdat any

$_ZNSt8functionIFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEEC2ERKSA_ = comdat any

$_ZNKSt8functionIFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEEcvbEv = comdat any

$_ZNKSt14_Function_base8_M_emptyEv = comdat any

$_ZNKSt16initializer_listISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEE4sizeEv = comdat any

$_ZN9__gnu_cxxeqIPKSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESF_ = comdat any

$_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE5beginEv = comdat any

$_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE3endEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEC2ERKS6_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE4findERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE14_M_lower_boundEPSt13_Rb_tree_nodeISI_EPSt18_Rb_tree_node_baseRS7_ = comdat any

$_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv = comdat any

$_ZTSPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEE = comdat any

$_ZTSFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEE = comdat any

$_ZTIFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEE = comdat any

$_ZTIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEE = comdat any

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid number of arguments: \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Not found: \00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"\1B[36m\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"\1B[39m\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Couldn't find a home directory to return to.\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Couldn't change directory to \00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c": not found\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c": not a directory\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"\1B[2J\1B[3J\1B[H\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"pwd\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"\1B[32m$\1B[39m \00", align 1
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@.str.18 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c": command not found\0A\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"\1B[3\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"m$\1B[39m \00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.22 = private unnamed_addr constant [13 x i8] c"ptr[%p, %p]\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@.str.24 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1
@__libc_single_threaded = external global i8, align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTVN10__cxxabiv119__pointer_type_infoE = external global i8*
@_ZTSPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEE = linkonce_odr dso_local constant [67 x i8] c"PFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEE\00", comdat, align 1
@_ZTVN10__cxxabiv120__function_type_infoE = external global i8*
@_ZTSFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEE = linkonce_odr dso_local constant [66 x i8] c"FiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEE\00", comdat, align 1
@_ZTIFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEE = linkonce_odr dso_local constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__function_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @_ZTSFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEE, i32 0, i32 0) }, comdat, align 8
@_ZTIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEE = linkonce_odr dso_local constant { i8*, i8*, i32, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv119__pointer_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @_ZTSPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEE, i32 0, i32 0), i32 0, i8* bitcast ({ i8*, i8* }* @_ZTIFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEE to i8*) }, comdat, align 8
@.str.26 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define dso_local void @_Z5splitSt17basic_string_viewIcSt11char_traitsIcEES2_b(%"class.std::vector"* noalias sret(%"class.std::vector") align 8 %0, i64 %1, i8* %2, i64 %3, i8* %4, i1 noundef zeroext %5) #0 {
  %7 = alloca %"class.std::__new_allocator"*, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  %9 = alloca %"class.std::allocator"*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %"class.std::basic_string_view", align 8
  %12 = alloca %"class.std::basic_string_view", align 8
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca %"class.std::basic_string_view", align 8
  %16 = alloca %"class.std::initializer_list", align 8
  %17 = alloca [1 x %"class.std::basic_string_view"], align 8
  %18 = alloca %"class.std::allocator", align 1
  %19 = alloca i1, align 1
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %"class.std::basic_string_view", align 8
  %23 = alloca %"class.std::basic_string_view", align 8
  %24 = alloca %"class.std::basic_string_view", align 8
  %25 = bitcast %"class.std::vector"* %0 to i8*
  store i8* %25, i8** %10, align 8
  %26 = bitcast %"class.std::basic_string_view"* %11 to { i64, i8* }*
  %27 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %26, i32 0, i32 0
  store i64 %1, i64* %27, align 8
  %28 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %26, i32 0, i32 1
  store i8* %2, i8** %28, align 8
  %29 = bitcast %"class.std::basic_string_view"* %12 to { i64, i8* }*
  %30 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %29, i32 0, i32 0
  store i64 %3, i64* %30, align 8
  %31 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %29, i32 0, i32 1
  store i8* %4, i8** %31, align 8
  %32 = zext i1 %5 to i8
  store i8 %32, i8* %13, align 1
  %33 = call noundef zeroext i1 @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5emptyEv(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %11) #13
  br i1 %33, label %34, label %36

34:                                               ; preds = %6
  %35 = bitcast %"class.std::vector"* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %35, i8 0, i64 24, i1 false)
  call void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEC2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #13
  br label %113

36:                                               ; preds = %6
  %37 = bitcast %"class.std::basic_string_view"* %15 to i8*
  %38 = bitcast %"class.std::basic_string_view"* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 16, i1 false)
  %39 = bitcast %"class.std::basic_string_view"* %15 to { i64, i8* }*
  %40 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %39, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call noundef i64 @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %11, i64 %41, i8* %43, i64 noundef 0) #13
  store i64 %44, i64* %14, align 8
  %45 = load i64, i64* %14, align 8
  %46 = icmp eq i64 %45, -1
  br i1 %46, label %47, label %64

47:                                               ; preds = %36
  %48 = getelementptr inbounds [1 x %"class.std::basic_string_view"], [1 x %"class.std::basic_string_view"]* %17, i64 0, i64 0
  %49 = bitcast %"class.std::basic_string_view"* %48 to i8*
  %50 = bitcast %"class.std::basic_string_view"* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 16, i1 false)
  %51 = getelementptr inbounds %"class.std::initializer_list", %"class.std::initializer_list"* %16, i32 0, i32 0
  %52 = getelementptr inbounds [1 x %"class.std::basic_string_view"], [1 x %"class.std::basic_string_view"]* %17, i64 0, i64 0
  store %"class.std::basic_string_view"* %52, %"class.std::basic_string_view"** %51, align 8
  %53 = getelementptr inbounds %"class.std::initializer_list", %"class.std::initializer_list"* %16, i32 0, i32 1
  store i64 1, i64* %53, align 8
  store %"class.std::allocator"* %18, %"class.std::allocator"** %9, align 8
  %54 = load %"class.std::allocator"*, %"class.std::allocator"** %9, align 8
  %55 = bitcast %"class.std::allocator"* %54 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %55, %"class.std::__new_allocator"** %7, align 8
  %56 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %7, align 8
  %57 = bitcast %"class.std::initializer_list"* %16 to { %"class.std::basic_string_view"*, i64 }*
  %58 = getelementptr inbounds { %"class.std::basic_string_view"*, i64 }, { %"class.std::basic_string_view"*, i64 }* %57, i32 0, i32 0
  %59 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %58, align 8
  %60 = getelementptr inbounds { %"class.std::basic_string_view"*, i64 }, { %"class.std::basic_string_view"*, i64 }* %57, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  call void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEC2ESt16initializer_listIS3_ERKS4_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, %"class.std::basic_string_view"* %59, i64 %61, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %18)
  store %"class.std::allocator"* %18, %"class.std::allocator"** %8, align 8
  %62 = load %"class.std::allocator"*, %"class.std::allocator"** %8, align 8
  %63 = bitcast %"class.std::allocator"* %62 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorISt17basic_string_viewIcSt11char_traitsIcEEED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %63) #13
  br label %113

64:                                               ; preds = %36
  store i1 false, i1* %19, align 1
  call void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEC2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #13
  %65 = call noundef i64 @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %12) #13
  store i64 %65, i64* %20, align 8
  store i64 0, i64* %21, align 8
  %66 = load i64, i64* %14, align 8
  %67 = call { i64, i8* } @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %11, i64 noundef 0, i64 noundef %66)
  %68 = bitcast %"class.std::basic_string_view"* %22 to { i64, i8* }*
  %69 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %68, i32 0, i32 0
  %70 = extractvalue { i64, i8* } %67, 0
  store i64 %70, i64* %69, align 8
  %71 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %68, i32 0, i32 1
  %72 = extractvalue { i64, i8* } %67, 1
  store i8* %72, i8** %71, align 8
  call void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, %"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %22)
  br label %73

73:                                               ; preds = %108, %64
  %74 = load i64, i64* %14, align 8
  %75 = icmp ne i64 %74, -1
  br i1 %75, label %76, label %109

76:                                               ; preds = %73
  %77 = load i64, i64* %14, align 8
  store i64 %77, i64* %21, align 8
  %78 = bitcast %"class.std::basic_string_view"* %23 to i8*
  %79 = bitcast %"class.std::basic_string_view"* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 16, i1 false)
  %80 = load i64, i64* %21, align 8
  %81 = load i64, i64* %20, align 8
  %82 = add i64 %80, %81
  %83 = bitcast %"class.std::basic_string_view"* %23 to { i64, i8* }*
  %84 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %83, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = call noundef i64 @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %11, i64 %85, i8* %87, i64 noundef %82) #13
  store i64 %88, i64* %14, align 8
  %89 = load i64, i64* %21, align 8
  %90 = load i64, i64* %20, align 8
  %91 = add i64 %89, %90
  %92 = load i64, i64* %14, align 8
  %93 = load i64, i64* %21, align 8
  %94 = sub i64 %92, %93
  %95 = load i64, i64* %20, align 8
  %96 = sub i64 %94, %95
  %97 = call { i64, i8* } @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %11, i64 noundef %91, i64 noundef %96)
  %98 = bitcast %"class.std::basic_string_view"* %24 to { i64, i8* }*
  %99 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %98, i32 0, i32 0
  %100 = extractvalue { i64, i8* } %97, 0
  store i64 %100, i64* %99, align 8
  %101 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %98, i32 0, i32 1
  %102 = extractvalue { i64, i8* } %97, 1
  store i8* %102, i8** %101, align 8
  %103 = call noundef zeroext i1 @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5emptyEv(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %24) #13
  br i1 %103, label %104, label %107

104:                                              ; preds = %76
  %105 = load i8, i8* %13, align 1
  %106 = trunc i8 %105 to i1
  br i1 %106, label %108, label %107

107:                                              ; preds = %104, %76
  call void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, %"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %24)
  br label %108

108:                                              ; preds = %107, %104
  br label %73, !llvm.loop !6

109:                                              ; preds = %73
  store i1 true, i1* %19, align 1
  %110 = load i1, i1* %19, align 1
  br i1 %110, label %112, label %111

111:                                              ; preds = %109
  call void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #13
  br label %112

112:                                              ; preds = %111, %109
  br label %113

113:                                              ; preds = %112, %47, %34
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5emptyEv(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::basic_string_view"*, align 8
  store %"class.std::basic_string_view"* %0, %"class.std::basic_string_view"** %2, align 8
  %3 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %2, align 8
  %4 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  ret i1 %6
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEC2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  %3 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEC2Ev(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %4) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i8* %2, i64 noundef %3) #1 comdat align 2 {
  %5 = alloca %"class.std::basic_string_view", align 8
  %6 = alloca %"class.std::basic_string_view"*, align 8
  %7 = alloca i64, align 8
  %8 = bitcast %"class.std::basic_string_view"* %5 to { i64, i8* }*
  %9 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %8, i32 0, i32 0
  store i64 %1, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %8, i32 0, i32 1
  store i8* %2, i8** %10, align 8
  store %"class.std::basic_string_view"* %0, %"class.std::basic_string_view"** %6, align 8
  store i64 %3, i64* %7, align 8
  %11 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %6, align 8
  %12 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %5, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %5, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call noundef i64 @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcmm(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %11, i8* noundef %13, i64 noundef %14, i64 noundef %16) #13
  ret i64 %17
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEC2ESt16initializer_listIS3_ERKS4_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, %"class.std::basic_string_view"* %1, i64 %2, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat align 2 {
  %5 = alloca %"class.std::initializer_list", align 8
  %6 = alloca %"class.std::vector"*, align 8
  %7 = alloca %"class.std::allocator"*, align 8
  %8 = alloca %"struct.std::forward_iterator_tag", align 1
  %9 = alloca %"struct.std::random_access_iterator_tag", align 1
  %10 = bitcast %"class.std::initializer_list"* %5 to { %"class.std::basic_string_view"*, i64 }*
  %11 = getelementptr inbounds { %"class.std::basic_string_view"*, i64 }, { %"class.std::basic_string_view"*, i64 }* %10, i32 0, i32 0
  store %"class.std::basic_string_view"* %1, %"class.std::basic_string_view"** %11, align 8
  %12 = getelementptr inbounds { %"class.std::basic_string_view"*, i64 }, { %"class.std::basic_string_view"*, i64 }* %10, i32 0, i32 1
  store i64 %2, i64* %12, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %6, align 8
  store %"class.std::allocator"* %3, %"class.std::allocator"** %7, align 8
  %13 = load %"class.std::vector"*, %"class.std::vector"** %6, align 8
  %14 = bitcast %"class.std::vector"* %13 to %"struct.std::_Vector_base"*
  %15 = load %"class.std::allocator"*, %"class.std::allocator"** %7, align 8
  call void @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEC2ERKS4_(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %14, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %15) #13
  %16 = call noundef %"class.std::basic_string_view"* @_ZNKSt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE5beginEv(%"class.std::initializer_list"* noundef nonnull align 8 dereferenceable(16) %5) #13
  %17 = call noundef %"class.std::basic_string_view"* @_ZNKSt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE3endEv(%"class.std::initializer_list"* noundef nonnull align 8 dereferenceable(16) %5) #13
  %18 = bitcast %"struct.std::random_access_iterator_tag"* %9 to %"struct.std::forward_iterator_tag"*
  call void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE19_M_range_initializeIPKS3_EEvT_S9_St20forward_iterator_tag(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %13, %"class.std::basic_string_view"* noundef %16, %"class.std::basic_string_view"* noundef %17)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::basic_string_view"*, align 8
  store %"class.std::basic_string_view"* %0, %"class.std::basic_string_view"** %2, align 8
  %3 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %2, align 8
  %4 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, %"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %1) #1 comdat align 2 {
  %3 = alloca %"class.std::vector"*, align 8
  %4 = alloca %"class.std::basic_string_view"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  store %"class.std::basic_string_view"* %1, %"class.std::basic_string_view"** %4, align 8
  %5 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %6 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %4, align 8
  %7 = call noundef nonnull align 8 dereferenceable(16) %"class.std::basic_string_view"* @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %5, %"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %6)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local { i64, i8* } @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) #1 comdat align 2 {
  %4 = alloca %"class.std::basic_string_view", align 8
  %5 = alloca %"class.std::basic_string_view"*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %"class.std::basic_string_view"* %0, %"class.std::basic_string_view"** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %5, align 8
  %11 = call noundef i64 @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %10) #13
  %12 = load i64, i64* %6, align 8
  %13 = call noundef i64 @_ZSt10__sv_checkmmPKc(i64 noundef %11, i64 noundef %12, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0))
  store i64 %13, i64* %6, align 8
  %14 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %10, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = sub i64 %15, %16
  store i64 %17, i64* %9, align 8
  %18 = call noundef nonnull align 8 dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %7, i64* noundef nonnull align 8 dereferenceable(8) %9)
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %10, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i64, i64* %8, align 8
  call void @_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKcm(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %4, i8* noundef %23, i64 noundef %24) #13
  %25 = bitcast %"class.std::basic_string_view"* %4 to { i64, i8* }*
  %26 = load { i64, i8* }, { i64, i8* }* %25, align 8
  ret { i64, i8* } %26
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backERKS3_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, %"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %1) #1 comdat align 2 {
  %3 = alloca %"class.std::__new_allocator"*, align 8
  %4 = alloca %"class.std::basic_string_view"*, align 8
  %5 = alloca %"class.std::basic_string_view"*, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  %7 = alloca %"class.std::basic_string_view"*, align 8
  %8 = alloca %"class.std::basic_string_view"*, align 8
  %9 = alloca %"class.std::vector"*, align 8
  %10 = alloca %"class.std::basic_string_view"*, align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator.19", align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %9, align 8
  store %"class.std::basic_string_view"* %1, %"class.std::basic_string_view"** %10, align 8
  %12 = load %"class.std::vector"*, %"class.std::vector"** %9, align 8
  %13 = bitcast %"class.std::vector"* %12 to %"struct.std::_Vector_base"*
  %14 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %13, i32 0, i32 0
  %15 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %14 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %16 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %15, i32 0, i32 1
  %17 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %16, align 8
  %18 = bitcast %"class.std::vector"* %12 to %"struct.std::_Vector_base"*
  %19 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %18, i32 0, i32 0
  %20 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %19 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %21 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %20, i32 0, i32 2
  %22 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %21, align 8
  %23 = icmp ne %"class.std::basic_string_view"* %17, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %2
  %25 = bitcast %"class.std::vector"* %12 to %"struct.std::_Vector_base"*
  %26 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %25, i32 0, i32 0
  %27 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %26 to %"class.std::allocator"*
  %28 = bitcast %"class.std::vector"* %12 to %"struct.std::_Vector_base"*
  %29 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %28, i32 0, i32 0
  %30 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %29 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %31 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %30, i32 0, i32 1
  %32 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %31, align 8
  %33 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %10, align 8
  store %"class.std::allocator"* %27, %"class.std::allocator"** %6, align 8
  store %"class.std::basic_string_view"* %32, %"class.std::basic_string_view"** %7, align 8
  store %"class.std::basic_string_view"* %33, %"class.std::basic_string_view"** %8, align 8
  %34 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  %35 = bitcast %"class.std::allocator"* %34 to %"class.std::__new_allocator"*
  %36 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %7, align 8
  %37 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %8, align 8
  store %"class.std::__new_allocator"* %35, %"class.std::__new_allocator"** %3, align 8
  store %"class.std::basic_string_view"* %36, %"class.std::basic_string_view"** %4, align 8
  store %"class.std::basic_string_view"* %37, %"class.std::basic_string_view"** %5, align 8
  %38 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %3, align 8
  %39 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %4, align 8
  %40 = bitcast %"class.std::basic_string_view"* %39 to i8*
  %41 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %5, align 8
  %42 = bitcast %"class.std::basic_string_view"* %39 to i8*
  %43 = bitcast %"class.std::basic_string_view"* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 16, i1 false)
  %44 = bitcast %"class.std::vector"* %12 to %"struct.std::_Vector_base"*
  %45 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %44, i32 0, i32 0
  %46 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %45 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %47 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %46, i32 0, i32 1
  %48 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %47, align 8
  %49 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %48, i32 1
  store %"class.std::basic_string_view"* %49, %"class.std::basic_string_view"** %47, align 8
  br label %56

50:                                               ; preds = %2
  %51 = call %"class.std::basic_string_view"* @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE3endEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %12) #13
  %52 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.19", %"class.__gnu_cxx::__normal_iterator.19"* %11, i32 0, i32 0
  store %"class.std::basic_string_view"* %51, %"class.std::basic_string_view"** %52, align 8
  %53 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %10, align 8
  %54 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.19", %"class.__gnu_cxx::__normal_iterator.19"* %11, i32 0, i32 0
  %55 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %54, align 8
  call void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %12, %"class.std::basic_string_view"* %55, %"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %53)
  br label %56

56:                                               ; preds = %50, %24
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::basic_string_view"*, align 8
  %3 = alloca %"class.std::basic_string_view"*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %5, align 8
  %6 = load %"class.std::vector"*, %"class.std::vector"** %5, align 8
  %7 = bitcast %"class.std::vector"* %6 to %"struct.std::_Vector_base"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %7, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %8 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %9, i32 0, i32 0
  %11 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %10, align 8
  %12 = bitcast %"class.std::vector"* %6 to %"struct.std::_Vector_base"*
  %13 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %12, i32 0, i32 0
  %14 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %13 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %15 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %14, i32 0, i32 1
  %16 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %15, align 8
  %17 = bitcast %"class.std::vector"* %6 to %"struct.std::_Vector_base"*
  %18 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %17) #13
  store %"class.std::basic_string_view"* %11, %"class.std::basic_string_view"** %2, align 8
  store %"class.std::basic_string_view"* %16, %"class.std::basic_string_view"** %3, align 8
  store %"class.std::allocator"* %18, %"class.std::allocator"** %4, align 8
  %19 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %2, align 8
  %20 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %3, align 8
  call void @_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEEEvT_S5_(%"class.std::basic_string_view"* noundef %19, %"class.std::basic_string_view"* noundef %20)
  %21 = bitcast %"class.std::vector"* %6 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %21) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define dso_local noundef i32 @_Z2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca %"class.std::vector"*, align 8
  %4 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %5 = alloca i32, align 4
  %6 = alloca %"class.std::vector.5", align 8
  %7 = alloca %"class.std::filesystem::__cxx11::directory_iterator"*, align 8
  %8 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8
  %9 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8
  %10 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8
  %11 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8
  %12 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8
  %13 = alloca %"class.std::filesystem::__cxx11::directory_entry"*, align 8
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %16 = alloca i8, align 1
  %17 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %18 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %19 = alloca %class.anon, align 1
  %20 = alloca %"class.std::vector.5"*, align 8
  %21 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %22 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %23 = alloca %struct.LsItem*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  call void @_ZNSt10filesystem7__cxx114pathC2Ev(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %4) #13
  %24 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %25 = call noundef i64 @_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %24) #13
  %26 = icmp eq i64 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = call noundef nonnull align 8 dereferenceable(40) %"class.std::filesystem::__cxx11::path"* @_ZNSt10filesystem7__cxx114pathaSIA2_cEERNSt9enable_ifIX13__is_path_srcIT_EES1_E4typeERKS5_(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %4, [2 x i8]* noundef nonnull align 1 dereferenceable(2) @.str)
  br label %44

29:                                               ; preds = %1
  %30 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %31 = call noundef i64 @_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %30) #13
  %32 = icmp eq i64 %31, 2
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %35 = call noundef nonnull align 8 dereferenceable(16) %"class.std::basic_string_view"* @_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEixEm(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %34, i64 noundef 1) #13
  %36 = call noundef nonnull align 8 dereferenceable(40) %"class.std::filesystem::__cxx11::path"* @_ZNSt10filesystem7__cxx114pathaSISt17basic_string_viewIcSt11char_traitsIcEEEERNSt9enable_ifIX13__is_path_srcIT_EES1_E4typeERKS8_(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %4, %"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %35)
  br label %43

37:                                               ; preds = %29
  %38 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %40 = call noundef i64 @_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %39) #13
  %41 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %38, i64 noundef %40)
  %42 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %41, i8 noundef signext 10)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %5, align 4
  br label %104

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %27
  %45 = call noundef zeroext i1 @_ZNSt10filesystem6existsERKNS_7__cxx114pathE(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %4)
  br i1 %45, label %50, label %46

46:                                               ; preds = %44
  %47 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %48 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %47, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %4)
  %49 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %48, i8 noundef signext 10)
  store i32 2, i32* %2, align 4
  store i32 1, i32* %5, align 4
  br label %104

50:                                               ; preds = %44
  call void @_ZNSt6vectorI6LsItemSaIS0_EEC2Ev(%"class.std::vector.5"* noundef nonnull align 8 dereferenceable(24) %6) #13
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %8, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %4)
  store %"class.std::filesystem::__cxx11::directory_iterator"* %8, %"class.std::filesystem::__cxx11::directory_iterator"** %7, align 8
  %51 = load %"class.std::filesystem::__cxx11::directory_iterator"*, %"class.std::filesystem::__cxx11::directory_iterator"** %7, align 8
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %10, %"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %51) #13
  call void @_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE(%"class.std::filesystem::__cxx11::directory_iterator"* sret(%"class.std::filesystem::__cxx11::directory_iterator") align 8 %9, %"class.std::filesystem::__cxx11::directory_iterator"* noundef %10) #13
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %10) #13
  %52 = load %"class.std::filesystem::__cxx11::directory_iterator"*, %"class.std::filesystem::__cxx11::directory_iterator"** %7, align 8
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %12, %"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %52) #13
  call void @_ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE(%"class.std::filesystem::__cxx11::directory_iterator"* sret(%"class.std::filesystem::__cxx11::directory_iterator") align 8 %11, %"class.std::filesystem::__cxx11::directory_iterator"* noundef %12) #13
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %12) #13
  br label %53

53:                                               ; preds = %64, %50
  %54 = call noundef zeroext i1 @_ZNSt10filesystem7__cxx11neERKNS0_18directory_iteratorES3_(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %9, %"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %11) #13
  br i1 %54, label %56, label %55

55:                                               ; preds = %53
  store i32 2, i32* %5, align 4
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %11) #13
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %9) #13
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %8) #13
  br label %66

56:                                               ; preds = %53
  %57 = call noundef nonnull align 8 dereferenceable(41) %"class.std::filesystem::__cxx11::directory_entry"* @_ZNKSt10filesystem7__cxx1118directory_iteratordeEv(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %9) #13
  store %"class.std::filesystem::__cxx11::directory_entry"* %57, %"class.std::filesystem::__cxx11::directory_entry"** %13, align 8
  %58 = load %"class.std::filesystem::__cxx11::directory_entry"*, %"class.std::filesystem::__cxx11::directory_entry"** %13, align 8
  %59 = call noundef nonnull align 8 dereferenceable(40) %"class.std::filesystem::__cxx11::path"* @_ZNKSt10filesystem7__cxx1115directory_entry4pathEv(%"class.std::filesystem::__cxx11::directory_entry"* noundef nonnull align 8 dereferenceable(41) %58) #13
  call void @_ZNKSt10filesystem7__cxx114path8filenameEv(%"class.std::filesystem::__cxx11::path"* sret(%"class.std::filesystem::__cxx11::path") align 8 %15, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %59)
  call void @_ZNKSt10filesystem7__cxx114path6stringEv(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %14, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %15)
  %60 = load %"class.std::filesystem::__cxx11::directory_entry"*, %"class.std::filesystem::__cxx11::directory_entry"** %13, align 8
  %61 = call noundef zeroext i1 @_ZNKSt10filesystem7__cxx1115directory_entry12is_directoryEv(%"class.std::filesystem::__cxx11::directory_entry"* noundef nonnull align 8 dereferenceable(41) %60)
  %62 = zext i1 %61 to i8
  store i8 %62, i8* %16, align 1
  %63 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZNSt6vectorI6LsItemSaIS0_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEERS0_DpOT_(%"class.std::vector.5"* noundef nonnull align 8 dereferenceable(24) %6, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 1 dereferenceable(1) %16)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %14) #13
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %15) #13
  br label %64

64:                                               ; preds = %56
  %65 = call noundef nonnull align 8 dereferenceable(16) %"class.std::filesystem::__cxx11::directory_iterator"* @_ZNSt10filesystem7__cxx1118directory_iteratorppEv(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %9)
  br label %53

66:                                               ; preds = %55
  %67 = call %struct.LsItem* @_ZNSt6vectorI6LsItemSaIS0_EE5beginEv(%"class.std::vector.5"* noundef nonnull align 8 dereferenceable(24) %6) #13
  %68 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %17, i32 0, i32 0
  store %struct.LsItem* %67, %struct.LsItem** %68, align 8
  %69 = call %struct.LsItem* @_ZNSt6vectorI6LsItemSaIS0_EE3endEv(%"class.std::vector.5"* noundef nonnull align 8 dereferenceable(24) %6) #13
  %70 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %18, i32 0, i32 0
  store %struct.LsItem* %69, %struct.LsItem** %70, align 8
  %71 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %17, i32 0, i32 0
  %72 = load %struct.LsItem*, %struct.LsItem** %71, align 8
  %73 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %18, i32 0, i32 0
  %74 = load %struct.LsItem*, %struct.LsItem** %73, align 8
  call void @"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEEZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISB_EEE3$_0EvT_SH_T0_"(%struct.LsItem* %72, %struct.LsItem* %74)
  store %"class.std::vector.5"* %6, %"class.std::vector.5"** %20, align 8
  %75 = load %"class.std::vector.5"*, %"class.std::vector.5"** %20, align 8
  %76 = call %struct.LsItem* @_ZNSt6vectorI6LsItemSaIS0_EE5beginEv(%"class.std::vector.5"* noundef nonnull align 8 dereferenceable(24) %75) #13
  %77 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %21, i32 0, i32 0
  store %struct.LsItem* %76, %struct.LsItem** %77, align 8
  %78 = load %"class.std::vector.5"*, %"class.std::vector.5"** %20, align 8
  %79 = call %struct.LsItem* @_ZNSt6vectorI6LsItemSaIS0_EE3endEv(%"class.std::vector.5"* noundef nonnull align 8 dereferenceable(24) %78) #13
  %80 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %22, i32 0, i32 0
  store %struct.LsItem* %79, %struct.LsItem** %80, align 8
  br label %81

81:                                               ; preds = %101, %66
  %82 = call noundef zeroext i1 @_ZN9__gnu_cxxneIP6LsItemSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %21, %"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %22) #13
  br i1 %82, label %83, label %103

83:                                               ; preds = %81
  %84 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %21) #13
  store %struct.LsItem* %84, %struct.LsItem** %23, align 8
  %85 = load %struct.LsItem*, %struct.LsItem** %23, align 8
  %86 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %85, i32 0, i32 1
  %87 = load i8, i8* %86, align 8
  %88 = trunc i8 %87 to i1
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %91 = load %struct.LsItem*, %struct.LsItem** %23, align 8
  %92 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %91, i32 0, i32 0
  %93 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %90, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %92)
  %94 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %93, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %100

95:                                               ; preds = %83
  %96 = load %struct.LsItem*, %struct.LsItem** %23, align 8
  %97 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %96, i32 0, i32 0
  %98 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %97)
  %99 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %98, i8 noundef signext 10)
  br label %100

100:                                              ; preds = %95, %89
  br label %101

101:                                              ; preds = %100
  %102 = call noundef nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %21) #13
  br label %81

103:                                              ; preds = %81
  store i32 0, i32* %2, align 4
  store i32 1, i32* %5, align 4
  call void @_ZNSt6vectorI6LsItemSaIS0_EED2Ev(%"class.std::vector.5"* noundef nonnull align 8 dereferenceable(24) %6) #13
  br label %104

104:                                              ; preds = %103, %46, %37
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %4) #13
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathC2Ev(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  store %"class.std::filesystem::__cxx11::path"* %0, %"class.std::filesystem::__cxx11::path"** %2, align 8
  %3 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %2, align 8
  %4 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %3, i32 0, i32 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4) #13
  %5 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %3, i32 0, i32 1
  call void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(%"struct.std::filesystem::__cxx11::path::_List"* noundef nonnull align 8 dereferenceable(8) %5)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  %3 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %6 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %5 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %6, i32 0, i32 1
  %8 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %7, align 8
  %9 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %9, i32 0, i32 0
  %11 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %10 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %11, i32 0, i32 0
  %13 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %12, align 8
  %14 = ptrtoint %"class.std::basic_string_view"* %8 to i64
  %15 = ptrtoint %"class.std::basic_string_view"* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 16
  ret i64 %17
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) %"class.std::filesystem::__cxx11::path"* @_ZNSt10filesystem7__cxx114pathaSIA2_cEERNSt9enable_ifIX13__is_path_srcIT_EES1_E4typeERKS5_(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %0, [2 x i8]* noundef nonnull align 1 dereferenceable(2) %1) #1 comdat align 2 {
  %3 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  %4 = alloca [2 x i8]*, align 8
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8
  store %"class.std::filesystem::__cxx11::path"* %0, %"class.std::filesystem::__cxx11::path"** %3, align 8
  store [2 x i8]* %1, [2 x i8]** %4, align 8
  %6 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %3, align 8
  %7 = load [2 x i8]*, [2 x i8]** %4, align 8
  call void @_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %5, [2 x i8]* noundef nonnull align 1 dereferenceable(2) %7, i8 noundef zeroext 2)
  %8 = call noundef nonnull align 8 dereferenceable(40) %"class.std::filesystem::__cxx11::path"* @_ZNSt10filesystem7__cxx114pathaSEOS1_(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %6, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %5) #13
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %5) #13
  ret %"class.std::filesystem::__cxx11::path"* %8
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) %"class.std::basic_string_view"* @_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEixEm(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #1 comdat align 2 {
  %3 = alloca %"class.std::vector"*, align 8
  %4 = alloca i64, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %6 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %7 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %8, i32 0, i32 0
  %10 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %10, i64 %11
  ret %"class.std::basic_string_view"* %12
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) %"class.std::filesystem::__cxx11::path"* @_ZNSt10filesystem7__cxx114pathaSISt17basic_string_viewIcSt11char_traitsIcEEEERNSt9enable_ifIX13__is_path_srcIT_EES1_E4typeERKS8_(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %0, %"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %1) #1 comdat align 2 {
  %3 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  %4 = alloca %"class.std::basic_string_view"*, align 8
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8
  store %"class.std::filesystem::__cxx11::path"* %0, %"class.std::filesystem::__cxx11::path"** %3, align 8
  store %"class.std::basic_string_view"* %1, %"class.std::basic_string_view"** %4, align 8
  %6 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %3, align 8
  %7 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %4, align 8
  call void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %5, %"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %7, i8 noundef zeroext 2)
  %8 = call noundef nonnull align 8 dereferenceable(40) %"class.std::filesystem::__cxx11::path"* @_ZNSt10filesystem7__cxx114pathaSEOS1_(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %6, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %5) #13
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %5) #13
  ret %"class.std::filesystem::__cxx11::path"* %8
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #4

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #4

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i64 noundef) #4

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt10filesystem6existsERKNS_7__cxx114pathE(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %0) #1 comdat {
  %2 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  %3 = alloca %"class.std::filesystem::file_status", align 4
  store %"class.std::filesystem::__cxx11::path"* %0, %"class.std::filesystem::__cxx11::path"** %2, align 8
  %4 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %2, align 8
  %5 = call i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %4)
  %6 = bitcast %"class.std::filesystem::file_status"* %3 to i64*
  store i64 %5, i64* %6, align 4
  %7 = bitcast %"class.std::filesystem::file_status"* %3 to i64*
  %8 = load i64, i64* %7, align 4
  %9 = call noundef zeroext i1 @_ZNSt10filesystem6existsENS_11file_statusE(i64 %8) #13
  ret i1 %9
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSt10filesystem7__cxx11lsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_4pathE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %1) #0 comdat {
  %3 = alloca %"class.std::__new_allocator.1"*, align 8
  %4 = alloca %"class.std::allocator.0"*, align 8
  %5 = alloca %"class.std::allocator.0"*, align 8
  %6 = alloca %"class.std::basic_ostream"*, align 8
  %7 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  %8 = alloca %"struct.std::__detail::_Quoted_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::allocator.0", align 1
  store %"class.std::basic_ostream"* %0, %"class.std::basic_ostream"** %6, align 8
  store %"class.std::filesystem::__cxx11::path"* %1, %"class.std::filesystem::__cxx11::path"** %7, align 8
  %11 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %6, align 8
  %12 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %7, align 8
  store %"class.std::allocator.0"* %10, %"class.std::allocator.0"** %5, align 8
  %13 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %5, align 8
  %14 = bitcast %"class.std::allocator.0"* %13 to %"class.std::__new_allocator.1"*
  store %"class.std::__new_allocator.1"* %14, %"class.std::__new_allocator.1"** %3, align 8
  %15 = load %"class.std::__new_allocator.1"*, %"class.std::__new_allocator.1"** %3, align 8
  call void @_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %9, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %12, %"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1) %10)
  %16 = call { %"class.std::__cxx11::basic_string"*, i64 } @_ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9, i8 noundef signext 34, i8 noundef signext 92)
  %17 = bitcast %"struct.std::__detail::_Quoted_string"* %8 to { %"class.std::__cxx11::basic_string"*, i64 }*
  %18 = getelementptr inbounds { %"class.std::__cxx11::basic_string"*, i64 }, { %"class.std::__cxx11::basic_string"*, i64 }* %17, i32 0, i32 0
  %19 = extractvalue { %"class.std::__cxx11::basic_string"*, i64 } %16, 0
  store %"class.std::__cxx11::basic_string"* %19, %"class.std::__cxx11::basic_string"** %18, align 8
  %20 = getelementptr inbounds { %"class.std::__cxx11::basic_string"*, i64 }, { %"class.std::__cxx11::basic_string"*, i64 }* %17, i32 0, i32 1
  %21 = extractvalue { %"class.std::__cxx11::basic_string"*, i64 } %16, 1
  store i64 %21, i64* %20, align 8
  %22 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %11, %"struct.std::__detail::_Quoted_string"* noundef nonnull align 8 dereferenceable(10) %8)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9) #13
  store %"class.std::allocator.0"* %10, %"class.std::allocator.0"** %4, align 8
  %23 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %4, align 8
  %24 = bitcast %"class.std::allocator.0"* %23 to %"class.std::__new_allocator.1"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator.1"* noundef nonnull align 1 dereferenceable(1) %24) #13
  %25 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %6, align 8
  ret %"class.std::basic_ostream"* %25
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI6LsItemSaIS0_EEC2Ev(%"class.std::vector.5"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::vector.5"*, align 8
  store %"class.std::vector.5"* %0, %"class.std::vector.5"** %2, align 8
  %3 = load %"class.std::vector.5"*, %"class.std::vector.5"** %2, align 8
  %4 = bitcast %"class.std::vector.5"* %3 to %"struct.std::_Vector_base.6"*
  call void @_ZNSt12_Vector_baseI6LsItemSaIS0_EEC2Ev(%"struct.std::_Vector_base.6"* noundef nonnull align 8 dereferenceable(24) %4) #13
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca %"class.std::filesystem::__cxx11::directory_iterator"*, align 8
  %4 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  store %"class.std::filesystem::__cxx11::directory_iterator"* %0, %"class.std::filesystem::__cxx11::directory_iterator"** %3, align 8
  store %"class.std::filesystem::__cxx11::path"* %1, %"class.std::filesystem::__cxx11::path"** %4, align 8
  %5 = load %"class.std::filesystem::__cxx11::directory_iterator"*, %"class.std::filesystem::__cxx11::directory_iterator"** %3, align 8
  %6 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %4, align 8
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %5, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %6, i8 noundef zeroext 0, %"class.std::error_code"* noundef null)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx115beginENS0_18directory_iteratorE(%"class.std::filesystem::__cxx11::directory_iterator"* noalias sret(%"class.std::filesystem::__cxx11::directory_iterator") align 8 %0, %"class.std::filesystem::__cxx11::directory_iterator"* noundef %1) #1 comdat {
  %3 = alloca i8*, align 8
  %4 = bitcast %"class.std::filesystem::__cxx11::directory_iterator"* %0 to i8*
  store i8* %4, i8** %3, align 8
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorC2EOS1_(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %1) #13
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca %"class.std::filesystem::__cxx11::directory_iterator"*, align 8
  %4 = alloca %"class.std::filesystem::__cxx11::directory_iterator"*, align 8
  store %"class.std::filesystem::__cxx11::directory_iterator"* %0, %"class.std::filesystem::__cxx11::directory_iterator"** %3, align 8
  store %"class.std::filesystem::__cxx11::directory_iterator"* %1, %"class.std::filesystem::__cxx11::directory_iterator"** %4, align 8
  %5 = load %"class.std::filesystem::__cxx11::directory_iterator"*, %"class.std::filesystem::__cxx11::directory_iterator"** %3, align 8
  %6 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %5, i32 0, i32 0
  %7 = load %"class.std::filesystem::__cxx11::directory_iterator"*, %"class.std::filesystem::__cxx11::directory_iterator"** %4, align 8
  %8 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %7, i32 0, i32 0
  call void @_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC2ERKS5_(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %6, %"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %8) #13
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::filesystem::__cxx11::directory_iterator"*, align 8
  store %"class.std::filesystem::__cxx11::directory_iterator"* %0, %"class.std::filesystem::__cxx11::directory_iterator"** %2, align 8
  %3 = load %"class.std::filesystem::__cxx11::directory_iterator"*, %"class.std::filesystem::__cxx11::directory_iterator"** %2, align 8
  %4 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %3, i32 0, i32 0
  call void @_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %4) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx113endENS0_18directory_iteratorE(%"class.std::filesystem::__cxx11::directory_iterator"* noalias sret(%"class.std::filesystem::__cxx11::directory_iterator") align 8 %0, %"class.std::filesystem::__cxx11::directory_iterator"* noundef %1) #1 comdat {
  %3 = alloca i8*, align 8
  %4 = bitcast %"class.std::filesystem::__cxx11::directory_iterator"* %0 to i8*
  store i8* %4, i8** %3, align 8
  %5 = bitcast %"class.std::filesystem::__cxx11::directory_iterator"* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 16, i1 false)
  call void @_ZNSt10filesystem7__cxx1118directory_iteratorC2Ev(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt10filesystem7__cxx11neERKNS0_18directory_iteratorES3_(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %1) #1 comdat {
  %3 = alloca %"class.std::filesystem::__cxx11::directory_iterator"*, align 8
  %4 = alloca %"class.std::filesystem::__cxx11::directory_iterator"*, align 8
  store %"class.std::filesystem::__cxx11::directory_iterator"* %0, %"class.std::filesystem::__cxx11::directory_iterator"** %3, align 8
  store %"class.std::filesystem::__cxx11::directory_iterator"* %1, %"class.std::filesystem::__cxx11::directory_iterator"** %4, align 8
  %5 = load %"class.std::filesystem::__cxx11::directory_iterator"*, %"class.std::filesystem::__cxx11::directory_iterator"** %3, align 8
  %6 = load %"class.std::filesystem::__cxx11::directory_iterator"*, %"class.std::filesystem::__cxx11::directory_iterator"** %4, align 8
  %7 = call noundef zeroext i1 @_ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3_(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %5, %"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %6) #13
  %8 = xor i1 %7, true
  ret i1 %8
}

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(41) %"class.std::filesystem::__cxx11::directory_entry"* @_ZNKSt10filesystem7__cxx1118directory_iteratordeEv(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16)) #5

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZNSt6vectorI6LsItemSaIS0_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEERS0_DpOT_(%"class.std::vector.5"* noundef nonnull align 8 dereferenceable(24) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1, i8* noundef nonnull align 1 dereferenceable(1) %2) #1 comdat align 2 {
  %4 = alloca %"class.std::__new_allocator.8"*, align 8
  %5 = alloca %struct.LsItem*, align 8
  %6 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::allocator.7"*, align 8
  %10 = alloca %struct.LsItem*, align 8
  %11 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %"class.std::vector.5"*, align 8
  %14 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector.5"* %0, %"class.std::vector.5"** %13, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %14, align 8
  store i8* %2, i8** %15, align 8
  %17 = load %"class.std::vector.5"*, %"class.std::vector.5"** %13, align 8
  %18 = bitcast %"class.std::vector.5"* %17 to %"struct.std::_Vector_base.6"*
  %19 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %18, i32 0, i32 0
  %20 = bitcast %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* %19 to %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"*
  %21 = getelementptr inbounds %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data", %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"* %20, i32 0, i32 1
  %22 = load %struct.LsItem*, %struct.LsItem** %21, align 8
  %23 = bitcast %"class.std::vector.5"* %17 to %"struct.std::_Vector_base.6"*
  %24 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %23, i32 0, i32 0
  %25 = bitcast %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* %24 to %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"*
  %26 = getelementptr inbounds %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data", %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"* %25, i32 0, i32 2
  %27 = load %struct.LsItem*, %struct.LsItem** %26, align 8
  %28 = icmp ne %struct.LsItem* %22, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %3
  %30 = bitcast %"class.std::vector.5"* %17 to %"struct.std::_Vector_base.6"*
  %31 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %30, i32 0, i32 0
  %32 = bitcast %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* %31 to %"class.std::allocator.7"*
  %33 = bitcast %"class.std::vector.5"* %17 to %"struct.std::_Vector_base.6"*
  %34 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %33, i32 0, i32 0
  %35 = bitcast %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* %34 to %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"*
  %36 = getelementptr inbounds %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data", %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"* %35, i32 0, i32 1
  %37 = load %struct.LsItem*, %struct.LsItem** %36, align 8
  %38 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %14, align 8
  %39 = load i8*, i8** %15, align 8
  store %"class.std::allocator.7"* %32, %"class.std::allocator.7"** %9, align 8
  store %struct.LsItem* %37, %struct.LsItem** %10, align 8
  store %"class.std::__cxx11::basic_string"* %38, %"class.std::__cxx11::basic_string"** %11, align 8
  store i8* %39, i8** %12, align 8
  %40 = load %"class.std::allocator.7"*, %"class.std::allocator.7"** %9, align 8
  %41 = bitcast %"class.std::allocator.7"* %40 to %"class.std::__new_allocator.8"*
  %42 = load %struct.LsItem*, %struct.LsItem** %10, align 8
  %43 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %11, align 8
  %44 = load i8*, i8** %12, align 8
  store %"class.std::__new_allocator.8"* %41, %"class.std::__new_allocator.8"** %4, align 8
  store %struct.LsItem* %42, %struct.LsItem** %5, align 8
  store %"class.std::__cxx11::basic_string"* %43, %"class.std::__cxx11::basic_string"** %6, align 8
  store i8* %44, i8** %7, align 8
  %45 = load %"class.std::__new_allocator.8"*, %"class.std::__new_allocator.8"** %4, align 8
  %46 = load %struct.LsItem*, %struct.LsItem** %5, align 8
  %47 = bitcast %struct.LsItem* %46 to i8*
  %48 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %6, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %48) #13
  %49 = load i8*, i8** %7, align 8
  %50 = load i8, i8* %49, align 1
  %51 = trunc i8 %50 to i1
  call void @_ZN6LsItemC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %46, %"class.std::__cxx11::basic_string"* noundef %8, i1 noundef zeroext %51)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8) #13
  %52 = bitcast %"class.std::vector.5"* %17 to %"struct.std::_Vector_base.6"*
  %53 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %52, i32 0, i32 0
  %54 = bitcast %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* %53 to %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"*
  %55 = getelementptr inbounds %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data", %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"* %54, i32 0, i32 1
  %56 = load %struct.LsItem*, %struct.LsItem** %55, align 8
  %57 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %56, i32 1
  store %struct.LsItem* %57, %struct.LsItem** %55, align 8
  br label %65

58:                                               ; preds = %3
  %59 = call %struct.LsItem* @_ZNSt6vectorI6LsItemSaIS0_EE3endEv(%"class.std::vector.5"* noundef nonnull align 8 dereferenceable(24) %17) #13
  %60 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %16, i32 0, i32 0
  store %struct.LsItem* %59, %struct.LsItem** %60, align 8
  %61 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %14, align 8
  %62 = load i8*, i8** %15, align 8
  %63 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %16, i32 0, i32 0
  %64 = load %struct.LsItem*, %struct.LsItem** %63, align 8
  call void @_ZNSt6vectorI6LsItemSaIS0_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(%"class.std::vector.5"* noundef nonnull align 8 dereferenceable(24) %17, %struct.LsItem* %64, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %61, i8* noundef nonnull align 1 dereferenceable(1) %62)
  br label %65

65:                                               ; preds = %58, %29
  %66 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZNSt6vectorI6LsItemSaIS0_EE4backEv(%"class.std::vector.5"* noundef nonnull align 8 dereferenceable(24) %17) #13
  ret %struct.LsItem* %66
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) %"class.std::filesystem::__cxx11::path"* @_ZNKSt10filesystem7__cxx1115directory_entry4pathEv(%"class.std::filesystem::__cxx11::directory_entry"* noundef nonnull align 8 dereferenceable(41) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::filesystem::__cxx11::directory_entry"*, align 8
  store %"class.std::filesystem::__cxx11::directory_entry"* %0, %"class.std::filesystem::__cxx11::directory_entry"** %2, align 8
  %3 = load %"class.std::filesystem::__cxx11::directory_entry"*, %"class.std::filesystem::__cxx11::directory_entry"** %2, align 8
  %4 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_entry", %"class.std::filesystem::__cxx11::directory_entry"* %3, i32 0, i32 0
  ret %"class.std::filesystem::__cxx11::path"* %4
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNKSt10filesystem7__cxx114path8filenameEv(%"class.std::filesystem::__cxx11::path"* noalias sret(%"class.std::filesystem::__cxx11::path") align 8 %0, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %1) #1 comdat align 2 {
  %3 = alloca i8*, align 8
  %4 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  %5 = alloca %"class.std::filesystem::__cxx11::path::iterator", align 8
  %6 = alloca %"class.std::filesystem::__cxx11::path::iterator", align 8
  %7 = bitcast %"class.std::filesystem::__cxx11::path"* %0 to i8*
  store i8* %7, i8** %3, align 8
  store %"class.std::filesystem::__cxx11::path"* %1, %"class.std::filesystem::__cxx11::path"** %4, align 8
  %8 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %4, align 8
  %9 = call noundef zeroext i1 @_ZNKSt10filesystem7__cxx114path5emptyEv(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %8) #13
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  call void @_ZNSt10filesystem7__cxx114pathC2Ev(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %0) #13
  br label %38

11:                                               ; preds = %2
  %12 = call noundef zeroext i8 @_ZNKSt10filesystem7__cxx114path7_M_typeEv(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %8) #13
  %13 = icmp eq i8 %12, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @_ZNSt10filesystem7__cxx114pathC2ERKS1_(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %0, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %8)
  br label %38

15:                                               ; preds = %11
  %16 = call noundef zeroext i8 @_ZNKSt10filesystem7__cxx114path7_M_typeEv(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %8) #13
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %8, i32 0, i32 0
  %20 = call noundef nonnull align 1 dereferenceable(1) i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4backEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %19) #13
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 47
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  call void @_ZNSt10filesystem7__cxx114pathC2Ev(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %0) #13
  br label %38

25:                                               ; preds = %18
  call void @_ZNKSt10filesystem7__cxx114path3endEv(%"class.std::filesystem::__cxx11::path::iterator"* sret(%"class.std::filesystem::__cxx11::path::iterator") align 8 %6, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %8) #13
  %26 = call noundef nonnull align 8 dereferenceable(17) %"class.std::filesystem::__cxx11::path::iterator"* @_ZNSt10filesystem7__cxx114path8iteratormmEv(%"class.std::filesystem::__cxx11::path::iterator"* noundef nonnull align 8 dereferenceable(17) %6) #13
  %27 = bitcast %"class.std::filesystem::__cxx11::path::iterator"* %5 to i8*
  %28 = bitcast %"class.std::filesystem::__cxx11::path::iterator"* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 24, i1 false)
  %29 = call noundef %"class.std::filesystem::__cxx11::path"* @_ZNKSt10filesystem7__cxx114path8iteratorptEv(%"class.std::filesystem::__cxx11::path::iterator"* noundef nonnull align 8 dereferenceable(17) %5) #13
  %30 = call noundef zeroext i8 @_ZNKSt10filesystem7__cxx114path7_M_typeEv(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %29) #13
  %31 = icmp eq i8 %30, 3
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = call noundef nonnull align 8 dereferenceable(40) %"class.std::filesystem::__cxx11::path"* @_ZNKSt10filesystem7__cxx114path8iteratordeEv(%"class.std::filesystem::__cxx11::path::iterator"* noundef nonnull align 8 dereferenceable(17) %5) #13
  call void @_ZNSt10filesystem7__cxx114pathC2ERKS1_(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %0, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %33)
  br label %38

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %15
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36
  call void @_ZNSt10filesystem7__cxx114pathC2Ev(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %0) #13
  br label %38

38:                                               ; preds = %37, %32, %24, %14, %10
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNKSt10filesystem7__cxx114path6stringEv(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %1) #0 comdat align 2 {
  %3 = alloca %"class.std::__new_allocator.1"*, align 8
  %4 = alloca %"class.std::allocator.0"*, align 8
  %5 = alloca %"class.std::allocator.0"*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  %8 = alloca %"class.std::allocator.0", align 1
  %9 = bitcast %"class.std::__cxx11::basic_string"* %0 to i8*
  store i8* %9, i8** %6, align 8
  store %"class.std::filesystem::__cxx11::path"* %1, %"class.std::filesystem::__cxx11::path"** %7, align 8
  %10 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %7, align 8
  store %"class.std::allocator.0"* %8, %"class.std::allocator.0"** %5, align 8
  %11 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %5, align 8
  %12 = bitcast %"class.std::allocator.0"* %11 to %"class.std::__new_allocator.1"*
  store %"class.std::__new_allocator.1"* %12, %"class.std::__new_allocator.1"** %3, align 8
  %13 = load %"class.std::__new_allocator.1"*, %"class.std::__new_allocator.1"** %3, align 8
  call void @_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %10, %"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1) %8)
  store %"class.std::allocator.0"* %8, %"class.std::allocator.0"** %4, align 8
  %14 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %4, align 8
  %15 = bitcast %"class.std::allocator.0"* %14 to %"class.std::__new_allocator.1"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator.1"* noundef nonnull align 1 dereferenceable(1) %15) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt10filesystem7__cxx1115directory_entry12is_directoryEv(%"class.std::filesystem::__cxx11::directory_entry"* noundef nonnull align 8 dereferenceable(41) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::filesystem::__cxx11::directory_entry"*, align 8
  store %"class.std::filesystem::__cxx11::directory_entry"* %0, %"class.std::filesystem::__cxx11::directory_entry"** %2, align 8
  %3 = load %"class.std::filesystem::__cxx11::directory_entry"*, %"class.std::filesystem::__cxx11::directory_entry"** %2, align 8
  %4 = call noundef signext i8 @_ZNKSt10filesystem7__cxx1115directory_entry12_M_file_typeEv(%"class.std::filesystem::__cxx11::directory_entry"* noundef nonnull align 8 dereferenceable(41) %3)
  %5 = icmp eq i8 %4, 2
  ret i1 %5
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathD2Ev(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  store %"class.std::filesystem::__cxx11::path"* %0, %"class.std::filesystem::__cxx11::path"** %2, align 8
  %3 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %2, align 8
  %4 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %3, i32 0, i32 1
  call void @_ZNSt10filesystem7__cxx114path5_ListD2Ev(%"struct.std::filesystem::__cxx11::path::_List"* noundef nonnull align 8 dereferenceable(8) %4) #13
  %5 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %3, i32 0, i32 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5) #13
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) %"class.std::filesystem::__cxx11::directory_iterator"* @_ZNSt10filesystem7__cxx1118directory_iteratorppEv(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16)) #4

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define internal void @"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEEZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISB_EEE3$_0EvT_SH_T0_"(%struct.LsItem* %0, %struct.LsItem* %1) #1 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %class.anon, align 1
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %9 = alloca %class.anon, align 1
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  store %struct.LsItem* %0, %struct.LsItem** %11, align 8
  %12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  store %struct.LsItem* %1, %struct.LsItem** %12, align 8
  %13 = bitcast %"class.__gnu_cxx::__normal_iterator"* %6 to i8*
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %15 = bitcast %"class.__gnu_cxx::__normal_iterator"* %7 to i8*
  %16 = bitcast %"class.__gnu_cxx::__normal_iterator"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 8, i1 false)
  call void @"_ZN9__gnu_cxx5__ops16__iter_comp_iterIZ2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE3$_0EENS0_15_Iter_comp_iterIT_EESD_"()
  %17 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %6, i32 0, i32 0
  %18 = load %struct.LsItem*, %struct.LsItem** %17, align 8
  %19 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %7, i32 0, i32 0
  %20 = load %struct.LsItem*, %struct.LsItem** %19, align 8
  call void @"_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_SK_T0_"(%struct.LsItem* %18, %struct.LsItem* %20)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local %struct.LsItem* @_ZNSt6vectorI6LsItemSaIS0_EE5beginEv(%"class.std::vector.5"* noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"class.std::vector.5"*, align 8
  store %"class.std::vector.5"* %0, %"class.std::vector.5"** %3, align 8
  %4 = load %"class.std::vector.5"*, %"class.std::vector.5"** %3, align 8
  %5 = bitcast %"class.std::vector.5"* %4 to %"struct.std::_Vector_base.6"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* %6 to %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data", %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"* %7, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %2, %struct.LsItem** noundef nonnull align 8 dereferenceable(8) %8) #13
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  %10 = load %struct.LsItem*, %struct.LsItem** %9, align 8
  ret %struct.LsItem* %10
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local %struct.LsItem* @_ZNSt6vectorI6LsItemSaIS0_EE3endEv(%"class.std::vector.5"* noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"class.std::vector.5"*, align 8
  store %"class.std::vector.5"* %0, %"class.std::vector.5"** %3, align 8
  %4 = load %"class.std::vector.5"*, %"class.std::vector.5"** %3, align 8
  %5 = bitcast %"class.std::vector.5"* %4 to %"struct.std::_Vector_base.6"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* %6 to %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data", %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"* %7, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %2, %struct.LsItem** noundef nonnull align 8 dereferenceable(8) %8) #13
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  %10 = load %struct.LsItem*, %struct.LsItem** %9, align 8
  ret %struct.LsItem* %10
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxneIP6LsItemSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %0, %"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %1) #1 comdat {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %1, %"class.__gnu_cxx::__normal_iterator"** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) %struct.LsItem** @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %5) #13
  %7 = load %struct.LsItem*, %struct.LsItem** %6, align 8
  %8 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %4, align 8
  %9 = call noundef nonnull align 8 dereferenceable(8) %struct.LsItem** @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %8) #13
  %10 = load %struct.LsItem*, %struct.LsItem** %9, align 8
  %11 = icmp ne %struct.LsItem* %7, %10
  ret i1 %11
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  %5 = load %struct.LsItem*, %struct.LsItem** %4, align 8
  ret %struct.LsItem* %5
}

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #4

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  %5 = load %struct.LsItem*, %struct.LsItem** %4, align 8
  %6 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %5, i32 1
  store %struct.LsItem* %6, %struct.LsItem** %4, align 8
  ret %"class.__gnu_cxx::__normal_iterator"* %3
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI6LsItemSaIS0_EED2Ev(%"class.std::vector.5"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %struct.LsItem*, align 8
  %3 = alloca %struct.LsItem*, align 8
  %4 = alloca %"class.std::allocator.7"*, align 8
  %5 = alloca %"class.std::vector.5"*, align 8
  store %"class.std::vector.5"* %0, %"class.std::vector.5"** %5, align 8
  %6 = load %"class.std::vector.5"*, %"class.std::vector.5"** %5, align 8
  %7 = bitcast %"class.std::vector.5"* %6 to %"struct.std::_Vector_base.6"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %7, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* %8 to %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data", %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"* %9, i32 0, i32 0
  %11 = load %struct.LsItem*, %struct.LsItem** %10, align 8
  %12 = bitcast %"class.std::vector.5"* %6 to %"struct.std::_Vector_base.6"*
  %13 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %12, i32 0, i32 0
  %14 = bitcast %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* %13 to %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"*
  %15 = getelementptr inbounds %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data", %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"* %14, i32 0, i32 1
  %16 = load %struct.LsItem*, %struct.LsItem** %15, align 8
  %17 = bitcast %"class.std::vector.5"* %6 to %"struct.std::_Vector_base.6"*
  %18 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.7"* @_ZNSt12_Vector_baseI6LsItemSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.6"* noundef nonnull align 8 dereferenceable(24) %17) #13
  store %struct.LsItem* %11, %struct.LsItem** %2, align 8
  store %struct.LsItem* %16, %struct.LsItem** %3, align 8
  store %"class.std::allocator.7"* %18, %"class.std::allocator.7"** %4, align 8
  %19 = load %struct.LsItem*, %struct.LsItem** %2, align 8
  %20 = load %struct.LsItem*, %struct.LsItem** %3, align 8
  call void @_ZSt8_DestroyIP6LsItemEvT_S2_(%struct.LsItem* noundef %19, %struct.LsItem* noundef %20)
  %21 = bitcast %"class.std::vector.5"* %6 to %"struct.std::_Vector_base.6"*
  call void @_ZNSt12_Vector_baseI6LsItemSaIS0_EED2Ev(%"struct.std::_Vector_base.6"* noundef nonnull align 8 dereferenceable(24) %21) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define dso_local noundef i32 @_Z3pwdRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca %"class.std::vector"*, align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  %6 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %7 = call noundef i64 @_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %6) #13
  %8 = icmp ne i64 %7, 1
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %11 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %12 = call noundef i64 @_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %11) #13
  %13 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %12)
  %14 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %13, i8 noundef signext 10)
  store i32 1, i32* %2, align 4
  br label %18

15:                                               ; preds = %1
  call void @_ZNSt10filesystem12current_pathB5cxx11Ev(%"class.std::filesystem::__cxx11::path"* sret(%"class.std::filesystem::__cxx11::path") align 8 %5)
  call void @_ZNKSt10filesystem7__cxx114path6stringEv(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %4, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %5)
  %16 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4)
  %17 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %16, i8 noundef signext 10)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4) #13
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %5) #13
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %15, %9
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare void @_ZNSt10filesystem12current_pathB5cxx11Ev(%"class.std::filesystem::__cxx11::path"* sret(%"class.std::filesystem::__cxx11::path") align 8) #4

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define dso_local noundef i32 @_Z2cdRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca %"class.std::vector"*, align 8
  %4 = alloca %"class.std::filesystem::__cxx11::path", align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  %9 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %10 = call noundef i64 @_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %9) #13
  %11 = icmp ult i64 2, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %15 = call noundef i64 @_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %14) #13
  %16 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEm(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %13, i64 noundef %15)
  %17 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %16, i8 noundef signext 10)
  store i32 1, i32* %2, align 4
  br label %54

18:                                               ; preds = %1
  call void @_ZNSt10filesystem7__cxx114pathC2Ev(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %4) #13
  %19 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %20 = call noundef i64 @_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %19) #13
  %21 = icmp eq i64 %20, 2
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %24 = call noundef nonnull align 8 dereferenceable(16) %"class.std::basic_string_view"* @_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEixEm(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %23, i64 noundef 1) #13
  %25 = call noundef nonnull align 8 dereferenceable(40) %"class.std::filesystem::__cxx11::path"* @_ZNSt10filesystem7__cxx114pathaSISt17basic_string_viewIcSt11char_traitsIcEEEERNSt9enable_ifIX13__is_path_srcIT_EES1_E4typeERKS8_(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %4, %"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %24)
  br label %40

26:                                               ; preds = %18
  %27 = call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #13
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call noundef nonnull align 8 dereferenceable(40) %"class.std::filesystem::__cxx11::path"* @_ZNSt10filesystem7__cxx114pathaSIPKcEERNSt9enable_ifIX13__is_path_srcIT_EES1_E4typeERKS6_(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %4, i8** noundef nonnull align 8 dereferenceable(8) %5)
  br label %39

37:                                               ; preds = %30, %26
  %38 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %53

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39, %22
  %41 = call noundef zeroext i1 @_ZNSt10filesystem6existsERKNS_7__cxx114pathE(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %4)
  br i1 %41, label %46, label %42

42:                                               ; preds = %40
  %43 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  call void @_ZNKSt10filesystem7__cxx114path6stringEv(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %7, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %4)
  %44 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %43, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %7)
  %45 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %44, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %7) #13
  store i32 3, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %53

46:                                               ; preds = %40
  %47 = call noundef zeroext i1 @_ZNSt10filesystem12is_directoryERKNS_7__cxx114pathE(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %4)
  br i1 %47, label %52, label %48

48:                                               ; preds = %46
  %49 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  call void @_ZNKSt10filesystem7__cxx114path6stringEv(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %8, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %4)
  %50 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %49, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8)
  %51 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %50, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8) #13
  store i32 4, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %53

52:                                               ; preds = %46
  call void @_ZNSt10filesystem12current_pathERKNS_7__cxx114pathE(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %4)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %53

53:                                               ; preds = %52, %48, %42, %37
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %4) #13
  br label %54

54:                                               ; preds = %53, %12
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

; Function Attrs: nounwind
declare i8* @getenv(i8* noundef) #5

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) %"class.std::filesystem::__cxx11::path"* @_ZNSt10filesystem7__cxx114pathaSIPKcEERNSt9enable_ifIX13__is_path_srcIT_EES1_E4typeERKS6_(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %0, i8** noundef nonnull align 8 dereferenceable(8) %1) #1 comdat align 2 {
  %3 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8
  store %"class.std::filesystem::__cxx11::path"* %0, %"class.std::filesystem::__cxx11::path"** %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %3, align 8
  %7 = load i8**, i8*** %4, align 8
  call void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %5, i8** noundef nonnull align 8 dereferenceable(8) %7, i8 noundef zeroext 2)
  %8 = call noundef nonnull align 8 dereferenceable(40) %"class.std::filesystem::__cxx11::path"* @_ZNSt10filesystem7__cxx114pathaSEOS1_(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %6, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %5) #13
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %5) #13
  ret %"class.std::filesystem::__cxx11::path"* %8
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt10filesystem12is_directoryERKNS_7__cxx114pathE(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %0) #1 comdat {
  %2 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  %3 = alloca %"class.std::filesystem::file_status", align 4
  store %"class.std::filesystem::__cxx11::path"* %0, %"class.std::filesystem::__cxx11::path"** %2, align 8
  %4 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %2, align 8
  %5 = call i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %4)
  %6 = bitcast %"class.std::filesystem::file_status"* %3 to i64*
  store i64 %5, i64* %6, align 4
  %7 = bitcast %"class.std::filesystem::file_status"* %3 to i64*
  %8 = load i64, i64* %7, align 4
  %9 = call noundef zeroext i1 @_ZNSt10filesystem12is_directoryENS_11file_statusE(i64 %8) #13
  ret i1 %9
}

declare void @_ZNSt10filesystem12current_pathERKNS_7__cxx114pathE(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40)) #4

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define dso_local noundef i32 @_Z4quitRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #1 {
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  call void @exit(i32 noundef 0) #14
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #6

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define dso_local noundef i32 @_Z5clearRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #1 {
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind optnone sspstrong uwtable
define dso_local noundef i32 @main() #7 {
  %1 = alloca %"class.std::__new_allocator.15"*, align 8
  %2 = alloca %"class.std::__new_allocator.1"*, align 8
  %3 = alloca %"class.std::allocator.0"*, align 8
  %4 = alloca %"class.std::allocator.0"*, align 8
  %5 = alloca %"class.std::allocator.14"*, align 8
  %6 = alloca %"class.std::allocator.14"*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %"class.std::map", align 8
  %9 = alloca %"class.std::initializer_list.13", align 8
  %10 = alloca [6 x %"struct.std::pair"], align 8
  %11 = alloca %"struct.std::less", align 1
  %12 = alloca %"class.std::allocator.14", align 1
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"class.std::vector", align 8
  %15 = alloca %"class.std::basic_string_view", align 8
  %16 = alloca %"class.std::basic_string_view", align 8
  %17 = alloca i32, align 4
  %18 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %19 = alloca %"class.std::__cxx11::basic_string", align 8
  %20 = alloca %"class.std::allocator.0", align 1
  %21 = alloca i8, align 1
  %22 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %23 = alloca %"class.std::basic_string_view", align 8
  store i32 0, i32* %7, align 4
  %24 = getelementptr inbounds [6 x %"struct.std::pair"], [6 x %"struct.std::pair"]* %10, i64 0, i64 0
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISA_EEEEEC2IRA3_KcRSF_Lb1EEEOT_OT0_(%"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %24, [3 x i8]* noundef nonnull align 1 dereferenceable(3) @.str.11, i32 (%"class.std::vector"*)* noundef nonnull @_Z2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE)
  %25 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %24, i64 1
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISA_EEEEEC2IRA4_KcRSF_Lb1EEEOT_OT0_(%"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %25, [4 x i8]* noundef nonnull align 1 dereferenceable(4) @.str.12, i32 (%"class.std::vector"*)* noundef nonnull @_Z3pwdRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE)
  %26 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %25, i64 1
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISA_EEEEEC2IRA3_KcRSF_Lb1EEEOT_OT0_(%"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %26, [3 x i8]* noundef nonnull align 1 dereferenceable(3) @.str.13, i32 (%"class.std::vector"*)* noundef nonnull @_Z2cdRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE)
  %27 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %26, i64 1
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISA_EEEEEC2IRA5_KcRSF_Lb1EEEOT_OT0_(%"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %27, [5 x i8]* noundef nonnull align 1 dereferenceable(5) @.str.14, i32 (%"class.std::vector"*)* noundef nonnull @_Z4quitRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE)
  %28 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %27, i64 1
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISA_EEEEEC2IRA5_KcRSF_Lb1EEEOT_OT0_(%"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %28, [5 x i8]* noundef nonnull align 1 dereferenceable(5) @.str.15, i32 (%"class.std::vector"*)* noundef nonnull @_Z4quitRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE)
  %29 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %28, i64 1
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISA_EEEEEC2IRA6_KcRSF_Lb1EEEOT_OT0_(%"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %29, [6 x i8]* noundef nonnull align 1 dereferenceable(6) @.str.16, i32 (%"class.std::vector"*)* noundef nonnull @_Z5clearRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE)
  %30 = getelementptr inbounds %"class.std::initializer_list.13", %"class.std::initializer_list.13"* %9, i32 0, i32 0
  %31 = getelementptr inbounds [6 x %"struct.std::pair"], [6 x %"struct.std::pair"]* %10, i64 0, i64 0
  store %"struct.std::pair"* %31, %"struct.std::pair"** %30, align 8
  %32 = getelementptr inbounds %"class.std::initializer_list.13", %"class.std::initializer_list.13"* %9, i32 0, i32 1
  store i64 6, i64* %32, align 8
  store %"class.std::allocator.14"* %12, %"class.std::allocator.14"** %6, align 8
  %33 = load %"class.std::allocator.14"*, %"class.std::allocator.14"** %6, align 8
  %34 = bitcast %"class.std::allocator.14"* %33 to %"class.std::__new_allocator.15"*
  store %"class.std::__new_allocator.15"* %34, %"class.std::__new_allocator.15"** %1, align 8
  %35 = load %"class.std::__new_allocator.15"*, %"class.std::__new_allocator.15"** %1, align 8
  %36 = bitcast %"class.std::initializer_list.13"* %9 to { %"struct.std::pair"*, i64 }*
  %37 = getelementptr inbounds { %"struct.std::pair"*, i64 }, { %"struct.std::pair"*, i64 }* %36, i32 0, i32 0
  %38 = load %"struct.std::pair"*, %"struct.std::pair"** %37, align 8
  %39 = getelementptr inbounds { %"struct.std::pair"*, i64 }, { %"struct.std::pair"*, i64 }* %36, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaIS9_EEEESt4lessIS5_ESaISt4pairIKS5_SF_EEEC2ESt16initializer_listISK_ERKSH_RKSL_(%"class.std::map"* noundef nonnull align 8 dereferenceable(48) %8, %"struct.std::pair"* %38, i64 %40, %"struct.std::less"* noundef nonnull align 1 dereferenceable(1) %11, %"class.std::allocator.14"* noundef nonnull align 1 dereferenceable(1) %12)
  store %"class.std::allocator.14"* %12, %"class.std::allocator.14"** %5, align 8
  %41 = load %"class.std::allocator.14"*, %"class.std::allocator.14"** %5, align 8
  %42 = bitcast %"class.std::allocator.14"* %41 to %"class.std::__new_allocator.15"*
  call void @_ZNSt15__new_allocatorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEED2Ev(%"class.std::__new_allocator.15"* noundef nonnull align 1 dereferenceable(1) %42) #13
  %43 = getelementptr inbounds [6 x %"struct.std::pair"], [6 x %"struct.std::pair"]* %10, i32 0, i32 0
  %44 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %43, i64 6
  br label %45

45:                                               ; preds = %45, %0
  %46 = phi %"struct.std::pair"* [ %44, %0 ], [ %47, %45 ]
  %47 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %46, i64 -1
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISA_EEEEED2Ev(%"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %47) #13
  %48 = icmp eq %"struct.std::pair"* %47, %43
  br i1 %48, label %49, label %45

49:                                               ; preds = %45
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13) #13
  %50 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  br label %51

51:                                               ; preds = %120, %118, %49
  %52 = call noundef nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_istream"* noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13)
  %53 = bitcast %"class.std::basic_istream"* %52 to i8**
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr i8, i8* %54, i64 -24
  %56 = bitcast i8* %55 to i64*
  %57 = load i64, i64* %56, align 8
  %58 = bitcast %"class.std::basic_istream"* %52 to i8*
  %59 = getelementptr inbounds i8, i8* %58, i64 %57
  %60 = bitcast i8* %59 to %"class.std::basic_ios"*
  %61 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(%"class.std::basic_ios"* noundef nonnull align 8 dereferenceable(264) %60)
  br i1 %61, label %62, label %121

62:                                               ; preds = %51
  %63 = call { i64, i8* } @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEcvSt17basic_string_viewIcS2_EEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13) #13
  %64 = bitcast %"class.std::basic_string_view"* %15 to { i64, i8* }*
  %65 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %64, i32 0, i32 0
  %66 = extractvalue { i64, i8* } %63, 0
  store i64 %66, i64* %65, align 8
  %67 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %64, i32 0, i32 1
  %68 = extractvalue { i64, i8* } %63, 1
  store i8* %68, i8** %67, align 8
  call void @_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %16, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #13
  %69 = bitcast %"class.std::basic_string_view"* %15 to { i64, i8* }*
  %70 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %69, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = bitcast %"class.std::basic_string_view"* %16 to { i64, i8* }*
  %75 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %74, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  call void @_Z5splitSt17basic_string_viewIcSt11char_traitsIcEES2_b(%"class.std::vector"* sret(%"class.std::vector") align 8 %14, i64 %71, i8* %73, i64 %76, i8* %78, i1 noundef zeroext true)
  %79 = call noundef zeroext i1 @_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE5emptyEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %14) #13
  br i1 %79, label %80, label %81

80:                                               ; preds = %62
  store i32 2, i32* %17, align 4
  br label %118, !llvm.loop !8

81:                                               ; preds = %62
  %82 = call noundef nonnull align 8 dereferenceable(16) %"class.std::basic_string_view"* @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE5frontEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %14) #13
  store %"class.std::allocator.0"* %20, %"class.std::allocator.0"** %4, align 8
  %83 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %4, align 8
  %84 = bitcast %"class.std::allocator.0"* %83 to %"class.std::__new_allocator.1"*
  store %"class.std::__new_allocator.1"* %84, %"class.std::__new_allocator.1"** %2, align 8
  %85 = load %"class.std::__new_allocator.1"*, %"class.std::__new_allocator.1"** %2, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %19, %"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %82, %"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1) %20)
  %86 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaIS9_EEEESt4lessIS5_ESaISt4pairIKS5_SF_EEE4findERSJ_(%"class.std::map"* noundef nonnull align 8 dereferenceable(48) %8, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %19)
  %87 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %18, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %86, %"struct.std::_Rb_tree_node_base"** %87, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %19) #13
  store %"class.std::allocator.0"* %20, %"class.std::allocator.0"** %3, align 8
  %88 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %3, align 8
  %89 = bitcast %"class.std::allocator.0"* %88 to %"class.std::__new_allocator.1"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator.1"* noundef nonnull align 1 dereferenceable(1) %89) #13
  store i8 0, i8* %21, align 1
  %90 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaIS9_EEEESt4lessIS5_ESaISt4pairIKS5_SF_EEE3endEv(%"class.std::map"* noundef nonnull align 8 dereferenceable(48) %8) #13
  %91 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %22, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %90, %"struct.std::_Rb_tree_node_base"** %91, align 8
  %92 = call noundef zeroext i1 @_ZStneRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEESL_(%"struct.std::_Rb_tree_iterator"* noundef nonnull align 8 dereferenceable(8) %18, %"struct.std::_Rb_tree_iterator"* noundef nonnull align 8 dereferenceable(8) %22) #13
  br i1 %92, label %93, label %99

93:                                               ; preds = %81
  %94 = call noundef %"struct.std::pair"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEEptEv(%"struct.std::_Rb_tree_iterator"* noundef nonnull align 8 dereferenceable(8) %18) #13
  %95 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %94, i32 0, i32 1
  %96 = call noundef i32 @_ZNKSt8functionIFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEEclES8_(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %95, %"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %14)
  %97 = icmp eq i32 %96, 0
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %21, align 1
  br label %110

99:                                               ; preds = %81
  %100 = call noundef nonnull align 8 dereferenceable(16) %"class.std::basic_string_view"* @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE5frontEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %14) #13
  %101 = bitcast %"class.std::basic_string_view"* %23 to i8*
  %102 = bitcast %"class.std::basic_string_view"* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %101, i8* align 8 %102, i64 16, i1 false)
  %103 = bitcast %"class.std::basic_string_view"* %23 to { i64, i8* }*
  %104 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %103, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i64 %105, i8* %107)
  %109 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %108, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0))
  br label %110

110:                                              ; preds = %99, %93
  %111 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  %112 = load i8, i8* %21, align 1
  %113 = trunc i8 %112 to i1
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8 50, i8 49
  %116 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %111, i8 noundef signext %115)
  %117 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %116, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  br label %118

118:                                              ; preds = %110, %80
  call void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %14) #13
  %119 = load i32, i32* %17, align 4
  switch i32 %119, label %123 [
    i32 0, label %120
    i32 2, label %51
  ]

120:                                              ; preds = %118
  br label %51, !llvm.loop !8

121:                                              ; preds = %51
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13) #13
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaIS9_EEEESt4lessIS5_ESaISt4pairIKS5_SF_EEED2Ev(%"class.std::map"* noundef nonnull align 8 dereferenceable(48) %8) #13
  %122 = load i32, i32* %7, align 4
  ret i32 %122

123:                                              ; preds = %118
  unreachable
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISA_EEEEEC2IRA3_KcRSF_Lb1EEEOT_OT0_(%"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %0, [3 x i8]* noundef nonnull align 1 dereferenceable(3) %1, i32 (%"class.std::vector"*)* noundef nonnull %2) unnamed_addr #0 comdat align 2 {
  %4 = alloca %"class.std::__new_allocator.1"*, align 8
  %5 = alloca %"class.std::allocator.0"*, align 8
  %6 = alloca %"class.std::allocator.0"*, align 8
  %7 = alloca %"struct.std::pair"*, align 8
  %8 = alloca [3 x i8]*, align 8
  %9 = alloca i32 (%"class.std::vector"*)*, align 8
  %10 = alloca %"class.std::allocator.0", align 1
  store %"struct.std::pair"* %0, %"struct.std::pair"** %7, align 8
  store [3 x i8]* %1, [3 x i8]** %8, align 8
  store i32 (%"class.std::vector"*)* %2, i32 (%"class.std::vector"*)** %9, align 8
  %11 = load %"struct.std::pair"*, %"struct.std::pair"** %7, align 8
  %12 = bitcast %"struct.std::pair"* %11 to %"class.std::__pair_base"*
  %13 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %11, i32 0, i32 0
  %14 = load [3 x i8]*, [3 x i8]** %8, align 8
  %15 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 0
  store %"class.std::allocator.0"* %10, %"class.std::allocator.0"** %6, align 8
  %16 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %6, align 8
  %17 = bitcast %"class.std::allocator.0"* %16 to %"class.std::__new_allocator.1"*
  store %"class.std::__new_allocator.1"* %17, %"class.std::__new_allocator.1"** %4, align 8
  %18 = load %"class.std::__new_allocator.1"*, %"class.std::__new_allocator.1"** %4, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13, i8* noundef %15, %"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1) %10)
  store %"class.std::allocator.0"* %10, %"class.std::allocator.0"** %5, align 8
  %19 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %5, align 8
  %20 = bitcast %"class.std::allocator.0"* %19 to %"class.std::__new_allocator.1"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator.1"* noundef nonnull align 1 dereferenceable(1) %20) #13
  %21 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %11, i32 0, i32 1
  %22 = load i32 (%"class.std::vector"*)*, i32 (%"class.std::vector"*)** %9, align 8
  call void @_ZNSt8functionIFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEEC2IRS9_vEEOT_(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %21, i32 (%"class.std::vector"*)* noundef nonnull %22) #13
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISA_EEEEEC2IRA4_KcRSF_Lb1EEEOT_OT0_(%"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %0, [4 x i8]* noundef nonnull align 1 dereferenceable(4) %1, i32 (%"class.std::vector"*)* noundef nonnull %2) unnamed_addr #0 comdat align 2 {
  %4 = alloca %"class.std::__new_allocator.1"*, align 8
  %5 = alloca %"class.std::allocator.0"*, align 8
  %6 = alloca %"class.std::allocator.0"*, align 8
  %7 = alloca %"struct.std::pair"*, align 8
  %8 = alloca [4 x i8]*, align 8
  %9 = alloca i32 (%"class.std::vector"*)*, align 8
  %10 = alloca %"class.std::allocator.0", align 1
  store %"struct.std::pair"* %0, %"struct.std::pair"** %7, align 8
  store [4 x i8]* %1, [4 x i8]** %8, align 8
  store i32 (%"class.std::vector"*)* %2, i32 (%"class.std::vector"*)** %9, align 8
  %11 = load %"struct.std::pair"*, %"struct.std::pair"** %7, align 8
  %12 = bitcast %"struct.std::pair"* %11 to %"class.std::__pair_base"*
  %13 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %11, i32 0, i32 0
  %14 = load [4 x i8]*, [4 x i8]** %8, align 8
  %15 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  store %"class.std::allocator.0"* %10, %"class.std::allocator.0"** %6, align 8
  %16 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %6, align 8
  %17 = bitcast %"class.std::allocator.0"* %16 to %"class.std::__new_allocator.1"*
  store %"class.std::__new_allocator.1"* %17, %"class.std::__new_allocator.1"** %4, align 8
  %18 = load %"class.std::__new_allocator.1"*, %"class.std::__new_allocator.1"** %4, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13, i8* noundef %15, %"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1) %10)
  store %"class.std::allocator.0"* %10, %"class.std::allocator.0"** %5, align 8
  %19 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %5, align 8
  %20 = bitcast %"class.std::allocator.0"* %19 to %"class.std::__new_allocator.1"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator.1"* noundef nonnull align 1 dereferenceable(1) %20) #13
  %21 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %11, i32 0, i32 1
  %22 = load i32 (%"class.std::vector"*)*, i32 (%"class.std::vector"*)** %9, align 8
  call void @_ZNSt8functionIFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEEC2IRS9_vEEOT_(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %21, i32 (%"class.std::vector"*)* noundef nonnull %22) #13
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISA_EEEEEC2IRA5_KcRSF_Lb1EEEOT_OT0_(%"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %0, [5 x i8]* noundef nonnull align 1 dereferenceable(5) %1, i32 (%"class.std::vector"*)* noundef nonnull %2) unnamed_addr #0 comdat align 2 {
  %4 = alloca %"class.std::__new_allocator.1"*, align 8
  %5 = alloca %"class.std::allocator.0"*, align 8
  %6 = alloca %"class.std::allocator.0"*, align 8
  %7 = alloca %"struct.std::pair"*, align 8
  %8 = alloca [5 x i8]*, align 8
  %9 = alloca i32 (%"class.std::vector"*)*, align 8
  %10 = alloca %"class.std::allocator.0", align 1
  store %"struct.std::pair"* %0, %"struct.std::pair"** %7, align 8
  store [5 x i8]* %1, [5 x i8]** %8, align 8
  store i32 (%"class.std::vector"*)* %2, i32 (%"class.std::vector"*)** %9, align 8
  %11 = load %"struct.std::pair"*, %"struct.std::pair"** %7, align 8
  %12 = bitcast %"struct.std::pair"* %11 to %"class.std::__pair_base"*
  %13 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %11, i32 0, i32 0
  %14 = load [5 x i8]*, [5 x i8]** %8, align 8
  %15 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 0
  store %"class.std::allocator.0"* %10, %"class.std::allocator.0"** %6, align 8
  %16 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %6, align 8
  %17 = bitcast %"class.std::allocator.0"* %16 to %"class.std::__new_allocator.1"*
  store %"class.std::__new_allocator.1"* %17, %"class.std::__new_allocator.1"** %4, align 8
  %18 = load %"class.std::__new_allocator.1"*, %"class.std::__new_allocator.1"** %4, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13, i8* noundef %15, %"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1) %10)
  store %"class.std::allocator.0"* %10, %"class.std::allocator.0"** %5, align 8
  %19 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %5, align 8
  %20 = bitcast %"class.std::allocator.0"* %19 to %"class.std::__new_allocator.1"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator.1"* noundef nonnull align 1 dereferenceable(1) %20) #13
  %21 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %11, i32 0, i32 1
  %22 = load i32 (%"class.std::vector"*)*, i32 (%"class.std::vector"*)** %9, align 8
  call void @_ZNSt8functionIFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEEC2IRS9_vEEOT_(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %21, i32 (%"class.std::vector"*)* noundef nonnull %22) #13
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISA_EEEEEC2IRA6_KcRSF_Lb1EEEOT_OT0_(%"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %0, [6 x i8]* noundef nonnull align 1 dereferenceable(6) %1, i32 (%"class.std::vector"*)* noundef nonnull %2) unnamed_addr #0 comdat align 2 {
  %4 = alloca %"class.std::__new_allocator.1"*, align 8
  %5 = alloca %"class.std::allocator.0"*, align 8
  %6 = alloca %"class.std::allocator.0"*, align 8
  %7 = alloca %"struct.std::pair"*, align 8
  %8 = alloca [6 x i8]*, align 8
  %9 = alloca i32 (%"class.std::vector"*)*, align 8
  %10 = alloca %"class.std::allocator.0", align 1
  store %"struct.std::pair"* %0, %"struct.std::pair"** %7, align 8
  store [6 x i8]* %1, [6 x i8]** %8, align 8
  store i32 (%"class.std::vector"*)* %2, i32 (%"class.std::vector"*)** %9, align 8
  %11 = load %"struct.std::pair"*, %"struct.std::pair"** %7, align 8
  %12 = bitcast %"struct.std::pair"* %11 to %"class.std::__pair_base"*
  %13 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %11, i32 0, i32 0
  %14 = load [6 x i8]*, [6 x i8]** %8, align 8
  %15 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  store %"class.std::allocator.0"* %10, %"class.std::allocator.0"** %6, align 8
  %16 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %6, align 8
  %17 = bitcast %"class.std::allocator.0"* %16 to %"class.std::__new_allocator.1"*
  store %"class.std::__new_allocator.1"* %17, %"class.std::__new_allocator.1"** %4, align 8
  %18 = load %"class.std::__new_allocator.1"*, %"class.std::__new_allocator.1"** %4, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13, i8* noundef %15, %"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1) %10)
  store %"class.std::allocator.0"* %10, %"class.std::allocator.0"** %5, align 8
  %19 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %5, align 8
  %20 = bitcast %"class.std::allocator.0"* %19 to %"class.std::__new_allocator.1"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator.1"* noundef nonnull align 1 dereferenceable(1) %20) #13
  %21 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %11, i32 0, i32 1
  %22 = load i32 (%"class.std::vector"*)*, i32 (%"class.std::vector"*)** %9, align 8
  call void @_ZNSt8functionIFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEEC2IRS9_vEEOT_(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %21, i32 (%"class.std::vector"*)* noundef nonnull %22) #13
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaIS9_EEEESt4lessIS5_ESaISt4pairIKS5_SF_EEEC2ESt16initializer_listISK_ERKSH_RKSL_(%"class.std::map"* noundef nonnull align 8 dereferenceable(48) %0, %"struct.std::pair"* %1, i64 %2, %"struct.std::less"* noundef nonnull align 1 dereferenceable(1) %3, %"class.std::allocator.14"* noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #0 comdat align 2 {
  %6 = alloca %"class.std::__new_allocator.15"*, align 8
  %7 = alloca %"class.std::__new_allocator.15"*, align 8
  %8 = alloca %"class.std::allocator.14"*, align 8
  %9 = alloca %"class.std::allocator.14"*, align 8
  %10 = alloca %"class.std::allocator.14"*, align 8
  %11 = alloca %"class.std::initializer_list.13", align 8
  %12 = alloca %"class.std::map"*, align 8
  %13 = alloca %"struct.std::less"*, align 8
  %14 = alloca %"class.std::allocator.14"*, align 8
  %15 = alloca %"class.std::allocator.14", align 1
  %16 = bitcast %"class.std::initializer_list.13"* %11 to { %"struct.std::pair"*, i64 }*
  %17 = getelementptr inbounds { %"struct.std::pair"*, i64 }, { %"struct.std::pair"*, i64 }* %16, i32 0, i32 0
  store %"struct.std::pair"* %1, %"struct.std::pair"** %17, align 8
  %18 = getelementptr inbounds { %"struct.std::pair"*, i64 }, { %"struct.std::pair"*, i64 }* %16, i32 0, i32 1
  store i64 %2, i64* %18, align 8
  store %"class.std::map"* %0, %"class.std::map"** %12, align 8
  store %"struct.std::less"* %3, %"struct.std::less"** %13, align 8
  store %"class.std::allocator.14"* %4, %"class.std::allocator.14"** %14, align 8
  %19 = load %"class.std::map"*, %"class.std::map"** %12, align 8
  %20 = getelementptr inbounds %"class.std::map", %"class.std::map"* %19, i32 0, i32 0
  %21 = load %"struct.std::less"*, %"struct.std::less"** %13, align 8
  %22 = load %"class.std::allocator.14"*, %"class.std::allocator.14"** %14, align 8
  store %"class.std::allocator.14"* %15, %"class.std::allocator.14"** %8, align 8
  store %"class.std::allocator.14"* %22, %"class.std::allocator.14"** %9, align 8
  %23 = load %"class.std::allocator.14"*, %"class.std::allocator.14"** %8, align 8
  %24 = bitcast %"class.std::allocator.14"* %23 to %"class.std::__new_allocator.15"*
  %25 = load %"class.std::allocator.14"*, %"class.std::allocator.14"** %9, align 8
  %26 = bitcast %"class.std::allocator.14"* %25 to %"class.std::__new_allocator.15"*
  store %"class.std::__new_allocator.15"* %24, %"class.std::__new_allocator.15"** %6, align 8
  store %"class.std::__new_allocator.15"* %26, %"class.std::__new_allocator.15"** %7, align 8
  %27 = load %"class.std::__new_allocator.15"*, %"class.std::__new_allocator.15"** %6, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EEC2ERKSM_RKSN_(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %20, %"struct.std::less"* noundef nonnull align 1 dereferenceable(1) %21, %"class.std::allocator.14"* noundef nonnull align 1 dereferenceable(1) %15)
  store %"class.std::allocator.14"* %15, %"class.std::allocator.14"** %10, align 8
  %28 = load %"class.std::allocator.14"*, %"class.std::allocator.14"** %10, align 8
  %29 = bitcast %"class.std::allocator.14"* %28 to %"class.std::__new_allocator.15"*
  call void @_ZNSt15__new_allocatorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEED2Ev(%"class.std::__new_allocator.15"* noundef nonnull align 1 dereferenceable(1) %29) #13
  %30 = getelementptr inbounds %"class.std::map", %"class.std::map"* %19, i32 0, i32 0
  %31 = call noundef %"struct.std::pair"* @_ZNKSt16initializer_listISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEE5beginEv(%"class.std::initializer_list.13"* noundef nonnull align 8 dereferenceable(16) %11) #13
  %32 = call noundef %"struct.std::pair"* @_ZNKSt16initializer_listISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEE3endEv(%"class.std::initializer_list.13"* noundef nonnull align 8 dereferenceable(16) %11) #13
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE22_M_insert_range_uniqueIPKSI_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeEST_ST_(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %30, %"struct.std::pair"* noundef %31, %"struct.std::pair"* noundef %32)
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISA_EEEEED2Ev(%"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"struct.std::pair"*, align 8
  store %"struct.std::pair"* %0, %"struct.std::pair"** %2, align 8
  %3 = load %"struct.std::pair"*, %"struct.std::pair"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %3, i32 0, i32 1
  call void @_ZNSt8functionIFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEED2Ev(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %4) #13
  %5 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %3, i32 0, i32 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5) #13
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_istream"* noundef nonnull align 8 dereferenceable(16), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #4

declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(%"class.std::basic_ios"* noundef nonnull align 8 dereferenceable(264)) #4

; Function Attrs: nounwind
declare { i64, i8* } @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEcvSt17basic_string_viewIcS2_EEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #5

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %0, i8* noundef nonnull %1) unnamed_addr #0 comdat align 2 {
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

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE5emptyEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::vector"*, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.24", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.24", align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  %5 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %6 = call %"class.std::basic_string_view"* @_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE5beginEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %5) #13
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.24", %"class.__gnu_cxx::__normal_iterator.24"* %3, i32 0, i32 0
  store %"class.std::basic_string_view"* %6, %"class.std::basic_string_view"** %7, align 8
  %8 = call %"class.std::basic_string_view"* @_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE3endEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %5) #13
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.24", %"class.__gnu_cxx::__normal_iterator.24"* %4, i32 0, i32 0
  store %"class.std::basic_string_view"* %8, %"class.std::basic_string_view"** %9, align 8
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPKSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESF_(%"class.__gnu_cxx::__normal_iterator.24"* noundef nonnull align 8 dereferenceable(8) %3, %"class.__gnu_cxx::__normal_iterator.24"* noundef nonnull align 8 dereferenceable(8) %4) #13
  ret i1 %10
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaIS9_EEEESt4lessIS5_ESaISt4pairIKS5_SF_EEE4findERSJ_(%"class.std::map"* noundef nonnull align 8 dereferenceable(48) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1) #1 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca %"class.std::map"*, align 8
  %5 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::map"* %0, %"class.std::map"** %4, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %5, align 8
  %6 = load %"class.std::map"*, %"class.std::map"** %4, align 8
  %7 = getelementptr inbounds %"class.std::map", %"class.std::map"* %6, i32 0, i32 0
  %8 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %9 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE4findERS7_(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %7, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8)
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %9, %"struct.std::_Rb_tree_node_base"** %10, align 8
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  %12 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %11, align 8
  ret %"struct.std::_Rb_tree_node_base"* %12
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) %"class.std::basic_string_view"* @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE5frontEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::vector"*, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.19", align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  %4 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %5 = call %"class.std::basic_string_view"* @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE5beginEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %4) #13
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.19", %"class.__gnu_cxx::__normal_iterator.19"* %3, i32 0, i32 0
  store %"class.std::basic_string_view"* %5, %"class.std::basic_string_view"** %6, align 8
  %7 = call noundef nonnull align 8 dereferenceable(16) %"class.std::basic_string_view"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.19"* noundef nonnull align 8 dereferenceable(8) %3) #13
  ret %"class.std::basic_string_view"* %7
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, %"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %1, %"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 {
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %5 = alloca %"class.std::basic_string_view"*, align 8
  %6 = alloca %"class.std::allocator.0"*, align 8
  %7 = alloca %"struct.std::__cxx11::basic_string<char>::__sv_wrapper", align 8
  %8 = alloca %"class.std::basic_string_view", align 8
  %9 = alloca %"class.std::basic_string_view", align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %4, align 8
  store %"class.std::basic_string_view"* %1, %"class.std::basic_string_view"** %5, align 8
  store %"class.std::allocator.0"* %2, %"class.std::allocator.0"** %6, align 8
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
  %19 = call { i64, i8* } @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17_S_to_string_viewESt17basic_string_viewIcS2_E(i64 %16, i8* %18) #13
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
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperC1ESt17basic_string_viewIcS2_E(%"struct.std::__cxx11::basic_string<char>::__sv_wrapper"* noundef nonnull align 8 dereferenceable(16) %7, i64 %27, i8* %29) #13
  %30 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %6, align 8
  %31 = bitcast %"struct.std::__cxx11::basic_string<char>::__sv_wrapper"* %7 to { i64, i8* }*
  %32 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %31, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10, i64 %33, i8* %35, %"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1) %30)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEESL_(%"struct.std::_Rb_tree_iterator"* noundef nonnull align 8 dereferenceable(8) %0, %"struct.std::_Rb_tree_iterator"* noundef nonnull align 8 dereferenceable(8) %1) #1 comdat {
  %3 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %0, %"struct.std::_Rb_tree_iterator"** %3, align 8
  store %"struct.std::_Rb_tree_iterator"* %1, %"struct.std::_Rb_tree_iterator"** %4, align 8
  %5 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %5, i32 0, i32 0
  %7 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %6, align 8
  %8 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %4, align 8
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %8, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %11 = icmp ne %"struct.std::_Rb_tree_node_base"* %7, %10
  ret i1 %11
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaIS9_EEEESt4lessIS5_ESaISt4pairIKS5_SF_EEE3endEv(%"class.std::map"* noundef nonnull align 8 dereferenceable(48) %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = alloca %"class.std::map"*, align 8
  store %"class.std::map"* %0, %"class.std::map"** %3, align 8
  %4 = load %"class.std::map"*, %"class.std::map"** %3, align 8
  %5 = getelementptr inbounds %"class.std::map", %"class.std::map"* %4, i32 0, i32 0
  %6 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE3endEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %5) #13
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %2, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %6, %"struct.std::_Rb_tree_node_base"** %7, align 8
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %2, i32 0, i32 0
  %9 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %8, align 8
  ret %"struct.std::_Rb_tree_node_base"* %9
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"struct.std::pair"* @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEEptEv(%"struct.std::_Rb_tree_iterator"* noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %0, %"struct.std::_Rb_tree_iterator"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %4, align 8
  %6 = bitcast %"struct.std::_Rb_tree_node_base"* %5 to %"struct.std::_Rb_tree_node"*
  %7 = call noundef %"struct.std::pair"* @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* noundef nonnull align 8 dereferenceable(96) %6)
  ret %"struct.std::pair"* %7
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i32 @_ZNKSt8functionIFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEEclES8_(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %0, %"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %1) #1 comdat align 2 {
  %3 = alloca %"class.std::function"*, align 8
  %4 = alloca %"class.std::vector"*, align 8
  store %"class.std::function"* %0, %"class.std::function"** %3, align 8
  store %"class.std::vector"* %1, %"class.std::vector"** %4, align 8
  %5 = load %"class.std::function"*, %"class.std::function"** %3, align 8
  %6 = bitcast %"class.std::function"* %5 to %"class.std::_Function_base"*
  %7 = call noundef zeroext i1 @_ZNKSt14_Function_base8_M_emptyEv(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %6)
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  call void @_ZSt25__throw_bad_function_callv() #15
  unreachable

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.std::function", %"class.std::function"* %5, i32 0, i32 1
  %11 = load i32 (%"union.std::_Any_data"*, %"class.std::vector"*)*, i32 (%"union.std::_Any_data"*, %"class.std::vector"*)** %10, align 8
  %12 = bitcast %"class.std::function"* %5 to %"class.std::_Function_base"*
  %13 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %12, i32 0, i32 0
  %14 = load %"class.std::vector"*, %"class.std::vector"** %4, align 8
  %15 = call noundef i32 %11(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %13, %"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %14)
  ret i32 %15
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i8* %2) #1 comdat {
  %4 = alloca %"class.std::basic_string_view", align 8
  %5 = alloca %"class.std::basic_ostream"*, align 8
  %6 = bitcast %"class.std::basic_string_view"* %4 to { i64, i8* }*
  %7 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %6, i32 0, i32 0
  store i64 %1, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %6, i32 0, i32 1
  store i8* %2, i8** %8, align 8
  store %"class.std::basic_ostream"* %0, %"class.std::basic_ostream"** %5, align 8
  %9 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %5, align 8
  %10 = call noundef i8* @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %4) #13
  %11 = call noundef i64 @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4sizeEv(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %4) #13
  %12 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %9, i8* noundef %10, i64 noundef %11)
  ret %"class.std::basic_ostream"* %12
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaIS9_EEEESt4lessIS5_ESaISt4pairIKS5_SF_EEED2Ev(%"class.std::map"* noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::map"*, align 8
  store %"class.std::map"* %0, %"class.std::map"** %2, align 8
  %3 = load %"class.std::map"*, %"class.std::map"** %2, align 8
  %4 = getelementptr inbounds %"class.std::map", %"class.std::map"* %3, i32 0, i32 0
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EED2Ev(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %4) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define dso_local void @pr(i8* noundef %0, i8* noundef %1) #1 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i8* noundef %6, i8* noundef %7)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEC2Ev(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  %3 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  call void @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %4) #13
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::__new_allocator"*, align 8
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %0, %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"** %4, align 8
  %5 = load %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"*, %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"** %4, align 8
  %6 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %5 to %"class.std::allocator"*
  store %"class.std::allocator"* %6, %"class.std::allocator"** %3, align 8
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  %8 = bitcast %"class.std::allocator"* %7 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %8, %"class.std::__new_allocator"** %2, align 8
  %9 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %2, align 8
  %10 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %5 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  call void @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* noundef nonnull align 8 dereferenceable(24) %10) #13
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*, align 8
  store %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %0, %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"** %2, align 8
  %3 = load %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*, %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %3, i32 0, i32 0
  store %"class.std::basic_string_view"* null, %"class.std::basic_string_view"** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %3, i32 0, i32 1
  store %"class.std::basic_string_view"* null, %"class.std::basic_string_view"** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %3, i32 0, i32 2
  store %"class.std::basic_string_view"* null, %"class.std::basic_string_view"** %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcmm(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %0, i8* noundef %1, i64 noundef %2, i64 noundef %3) #1 comdat align 2 {
  %5 = alloca i64, align 8
  %6 = alloca %"class.std::basic_string_view"*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %"class.std::basic_string_view"* %0, %"class.std::basic_string_view"** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %6, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %14, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ule i64 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i64, i64* %8, align 8
  br label %25

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i64 [ %23, %22 ], [ -1, %24 ]
  store i64 %26, i64* %5, align 8
  br label %85

27:                                               ; preds = %4
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %14, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp uge i64 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i64 -1, i64* %5, align 8
  br label %85

33:                                               ; preds = %27
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  store i8 %36, i8* %10, align 1
  %37 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %14, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %11, align 8
  %41 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %14, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %14, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  store i8* %45, i8** %12, align 8
  %46 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %14, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = sub i64 %47, %48
  store i64 %49, i64* %13, align 8
  br label %50

50:                                               ; preds = %77, %33
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp uge i64 %51, %52
  br i1 %53, label %54, label %84

54:                                               ; preds = %50
  %55 = load i8*, i8** %11, align 8
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* %9, align 8
  %58 = sub i64 %56, %57
  %59 = add i64 %58, 1
  %60 = call noundef i8* @_ZNSt11char_traitsIcE4findEPKcmRS1_(i8* noundef %55, i64 noundef %59, i8* noundef nonnull align 1 dereferenceable(1) %10)
  store i8* %60, i8** %11, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %54
  store i64 -1, i64* %5, align 8
  br label %85

64:                                               ; preds = %54
  %65 = load i8*, i8** %11, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call noundef i32 @_ZNSt11char_traitsIcE7compareEPKcS2_m(i8* noundef %65, i8* noundef %66, i64 noundef %67)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load i8*, i8** %11, align 8
  %72 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %14, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = ptrtoint i8* %71 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  store i64 %76, i64* %5, align 8
  br label %85

77:                                               ; preds = %64
  %78 = load i8*, i8** %12, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %11, align 8
  %81 = ptrtoint i8* %78 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  store i64 %83, i64* %13, align 8
  br label %50, !llvm.loop !9

84:                                               ; preds = %50
  store i64 -1, i64* %5, align 8
  br label %85

85:                                               ; preds = %84, %70, %63, %32, %25
  %86 = load i64, i64* %5, align 8
  ret i64 %86
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i8* @_ZNSt11char_traitsIcE4findEPKcmRS1_(i8* noundef %0, i64 noundef %1, i8* noundef nonnull align 1 dereferenceable(1) %2) #1 comdat align 2 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %18

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = load i64, i64* %6, align 8
  %17 = call i8* @memchr(i8* noundef %12, i32 noundef %15, i64 noundef %16) #13
  store i8* %17, i8** %4, align 8
  br label %18

18:                                               ; preds = %11, %10
  %19 = load i8*, i8** %4, align 8
  ret i8* %19
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt11char_traitsIcE7compareEPKcS2_m(i8* noundef %0, i8* noundef %1, i64 noundef %2) #1 comdat align 2 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %16

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @memcmp(i8* noundef %12, i8* noundef %13, i64 noundef %14) #13
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %11, %10
  %17 = load i32, i32* %4, align 4
  ret i32 %17
}

; Function Attrs: nounwind
declare i8* @memchr(i8* noundef, i32 noundef, i64 noundef) #5

; Function Attrs: nounwind
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #5

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__sv_checkmmPKc(i64 noundef %0, i64 noundef %1, i8* noundef %2) #1 comdat {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ugt i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i8*, i8** %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %4, align 8
  call void (i8*, ...) @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.24, i64 0, i64 0), i8* noundef %11, i64 noundef %12, i64 noundef %13) #15
  unreachable

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  ret i64 %15
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %0, i64* noundef nonnull align 8 dereferenceable(8) %1) #1 comdat {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load i64*, i64** %5, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i64*, i64** %5, align 8
  store i64* %12, i64** %3, align 8
  br label %15

13:                                               ; preds = %2
  %14 = load i64*, i64** %4, align 8
  store i64* %14, i64** %3, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i64*, i64** %3, align 8
  ret i64* %16
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKcm(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %0, i8* noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
  %4 = alloca %"class.std::basic_string_view"*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %"class.std::basic_string_view"* %0, %"class.std::basic_string_view"** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %4, align 8
  %8 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  store i64 %9, i64* %8, align 8
  %10 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %7, i32 0, i32 1
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %10, align 8
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(i8* noundef, ...) #8

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(%"struct.std::filesystem::__cxx11::path::_List"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt10filesystem6existsENS_11file_statusE(i64 %0) #1 comdat {
  %2 = alloca %"class.std::filesystem::file_status", align 4
  %3 = alloca %"class.std::filesystem::file_status", align 4
  %4 = bitcast %"class.std::filesystem::file_status"* %2 to i64*
  store i64 %0, i64* %4, align 4
  %5 = bitcast %"class.std::filesystem::file_status"* %3 to i8*
  %6 = bitcast %"class.std::filesystem::file_status"* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 8, i1 false)
  %7 = bitcast %"class.std::filesystem::file_status"* %3 to i64*
  %8 = load i64, i64* %7, align 4
  %9 = call noundef zeroext i1 @_ZNSt10filesystem12status_knownENS_11file_statusE(i64 %8) #13
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = call noundef signext i8 @_ZNKSt10filesystem11file_status4typeEv(%"class.std::filesystem::file_status"* noundef nonnull align 4 dereferenceable(8) %2) #13
  %12 = icmp ne i8 %11, -1
  br label %13

13:                                               ; preds = %10, %1
  %14 = phi i1 [ false, %1 ], [ %12, %10 ]
  ret i1 %14
}

declare i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40)) #4

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt10filesystem12status_knownENS_11file_statusE(i64 %0) #1 comdat {
  %2 = alloca %"class.std::filesystem::file_status", align 4
  %3 = bitcast %"class.std::filesystem::file_status"* %2 to i64*
  store i64 %0, i64* %3, align 4
  %4 = call noundef signext i8 @_ZNKSt10filesystem11file_status4typeEv(%"class.std::filesystem::file_status"* noundef nonnull align 4 dereferenceable(8) %2) #13
  %5 = icmp ne i8 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt10filesystem11file_status4typeEv(%"class.std::filesystem::file_status"* noundef nonnull align 4 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::filesystem::file_status"*, align 8
  store %"class.std::filesystem::file_status"* %0, %"class.std::filesystem::file_status"** %2, align 8
  %3 = load %"class.std::filesystem::file_status"*, %"class.std::filesystem::file_status"** %2, align 8
  %4 = getelementptr inbounds %"class.std::filesystem::file_status", %"class.std::filesystem::file_status"* %3, i32 0, i32 0
  %5 = load i8, i8* %4, align 4
  ret i8 %5
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI6LsItemSaIS0_EEC2Ev(%"struct.std::_Vector_base.6"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base.6"*, align 8
  store %"struct.std::_Vector_base.6"* %0, %"struct.std::_Vector_base.6"** %2, align 8
  %3 = load %"struct.std::_Vector_base.6"*, %"struct.std::_Vector_base.6"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %3, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI6LsItemSaIS0_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %4) #13
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI6LsItemSaIS0_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::__new_allocator.8"*, align 8
  %3 = alloca %"class.std::allocator.7"*, align 8
  %4 = alloca %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* %0, %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"** %4, align 8
  %5 = load %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"*, %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"** %4, align 8
  %6 = bitcast %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* %5 to %"class.std::allocator.7"*
  store %"class.std::allocator.7"* %6, %"class.std::allocator.7"** %3, align 8
  %7 = load %"class.std::allocator.7"*, %"class.std::allocator.7"** %3, align 8
  %8 = bitcast %"class.std::allocator.7"* %7 to %"class.std::__new_allocator.8"*
  store %"class.std::__new_allocator.8"* %8, %"class.std::__new_allocator.8"** %2, align 8
  %9 = load %"class.std::__new_allocator.8"*, %"class.std::__new_allocator.8"** %2, align 8
  %10 = bitcast %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* %5 to %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"*
  call void @_ZNSt12_Vector_baseI6LsItemSaIS0_EE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"* noundef nonnull align 8 dereferenceable(24) %10) #13
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI6LsItemSaIS0_EE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"*, align 8
  store %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"* %0, %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"** %2, align 8
  %3 = load %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"*, %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data", %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"* %3, i32 0, i32 0
  store %struct.LsItem* null, %struct.LsItem** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data", %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"* %3, i32 0, i32 1
  store %struct.LsItem* null, %struct.LsItem** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data", %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"* %3, i32 0, i32 2
  store %struct.LsItem* null, %struct.LsItem** %6, align 8
  ret void
}

declare void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16), %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40), i8 noundef zeroext, %"class.std::error_code"* noundef) unnamed_addr #4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx1118directory_iteratorC2EOS1_(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca %"class.std::filesystem::__cxx11::directory_iterator"*, align 8
  %4 = alloca %"class.std::filesystem::__cxx11::directory_iterator"*, align 8
  store %"class.std::filesystem::__cxx11::directory_iterator"* %0, %"class.std::filesystem::__cxx11::directory_iterator"** %3, align 8
  store %"class.std::filesystem::__cxx11::directory_iterator"* %1, %"class.std::filesystem::__cxx11::directory_iterator"** %4, align 8
  %5 = load %"class.std::filesystem::__cxx11::directory_iterator"*, %"class.std::filesystem::__cxx11::directory_iterator"** %3, align 8
  %6 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %5, i32 0, i32 0
  %7 = load %"class.std::filesystem::__cxx11::directory_iterator"*, %"class.std::filesystem::__cxx11::directory_iterator"** %4, align 8
  %8 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %7, i32 0, i32 0
  call void @_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC1EOS5_(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %6, %"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %8) #13
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC1EOS5_(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16), %"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC2ERKS5_(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
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
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %13, %"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %15) #13
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2ERKS2_(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
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

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %0) #1 comdat align 2 {
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

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::__shared_ptr"*, align 8
  store %"class.std::__shared_ptr"* %0, %"class.std::__shared_ptr"** %2, align 8
  %3 = load %"class.std::__shared_ptr"*, %"class.std::__shared_ptr"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %3, i32 0, i32 1
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %4) #13
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
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
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %9) #13
  br label %10

10:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %0) #1 comdat align 2 {
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
  %12 = alloca %"class.std::_Sp_counted_base"*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  store %"class.std::_Sp_counted_base"* %0, %"class.std::_Sp_counted_base"** %12, align 8
  %21 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %12, align 8
  store i8 1, i8* %13, align 1
  store i8 1, i8* %14, align 1
  store i8 1, i8* %15, align 1
  store i32 32, i32* %16, align 4
  store i32 32, i32* %17, align 4
  store i64 4294967297, i64* %18, align 8
  %22 = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %21, i32 0, i32 1
  %23 = bitcast i32* %22 to i64*
  store i64* %23, i64** %19, align 8
  %24 = load i64*, i64** %19, align 8
  %25 = load atomic i64, i64* %24 acquire, align 8
  store i64 %25, i64* %20, align 8
  %26 = load i64, i64* %20, align 8
  %27 = icmp eq i64 %26, 4294967297
  br i1 %27, label %28, label %39

28:                                               ; preds = %1
  %29 = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %21, i32 0, i32 1
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %21, i32 0, i32 2
  store i32 0, i32* %30, align 4
  %31 = bitcast %"class.std::_Sp_counted_base"* %21 to void (%"class.std::_Sp_counted_base"*)***
  %32 = load void (%"class.std::_Sp_counted_base"*)**, void (%"class.std::_Sp_counted_base"*)*** %31, align 8
  %33 = getelementptr inbounds void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %32, i64 2
  %34 = load void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %33, align 8
  call void %34(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %21) #13
  %35 = bitcast %"class.std::_Sp_counted_base"* %21 to void (%"class.std::_Sp_counted_base"*)***
  %36 = load void (%"class.std::_Sp_counted_base"*)**, void (%"class.std::_Sp_counted_base"*)*** %35, align 8
  %37 = getelementptr inbounds void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %36, i64 3
  %38 = load void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %37, align 8
  call void %38(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %21) #13
  br label %65

39:                                               ; preds = %1
  %40 = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %21, i32 0, i32 1
  store i32* %40, i32** %10, align 8
  store i32 -1, i32* %11, align 4
  %41 = load i8, i8* @__libc_single_threaded, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %11, align 4
  store i32* %44, i32** %6, align 8
  store i32 %45, i32* %7, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, %48
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %9, align 4
  br label %61

53:                                               ; preds = %39
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %11, align 4
  store i32* %54, i32** %2, align 8
  store i32 %55, i32* %3, align 4
  %56 = load i32*, i32** %2, align 8
  %57 = load i32, i32* %3, align 4
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = atomicrmw volatile add i32* %56, i32 %58 acq_rel, align 4
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %43, %53
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %21) #13
  br label %65

65:                                               ; preds = %28, %64, %61
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::_Sp_counted_base"*, align 8
  store %"class.std::_Sp_counted_base"* %0, %"class.std::_Sp_counted_base"** %2, align 8
  %3 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %2, align 8
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %3) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %0) #1 comdat align 2 {
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
  %12 = alloca %"class.std::_Sp_counted_base"*, align 8
  store %"class.std::_Sp_counted_base"* %0, %"class.std::_Sp_counted_base"** %12, align 8
  %13 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %12, align 8
  %14 = bitcast %"class.std::_Sp_counted_base"* %13 to void (%"class.std::_Sp_counted_base"*)***
  %15 = load void (%"class.std::_Sp_counted_base"*)**, void (%"class.std::_Sp_counted_base"*)*** %14, align 8
  %16 = getelementptr inbounds void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %15, i64 2
  %17 = load void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %16, align 8
  call void %17(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %13) #13
  %18 = getelementptr inbounds %"class.std::_Sp_counted_base", %"class.std::_Sp_counted_base"* %13, i32 0, i32 2
  store i32* %18, i32** %10, align 8
  store i32 -1, i32* %11, align 4
  %19 = load i8, i8* @__libc_single_threaded, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %1
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %11, align 4
  store i32* %22, i32** %6, align 8
  store i32 %23, i32* %7, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, %26
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %9, align 4
  br label %39

31:                                               ; preds = %1
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %11, align 4
  store i32* %32, i32** %2, align 8
  store i32 %33, i32* %3, align 4
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* %3, align 4
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = atomicrmw volatile add i32* %34, i32 %36 acq_rel, align 4
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %21, %31
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = bitcast %"class.std::_Sp_counted_base"* %13 to void (%"class.std::_Sp_counted_base"*)***
  %44 = load void (%"class.std::_Sp_counted_base"*)**, void (%"class.std::_Sp_counted_base"*)*** %43, align 8
  %45 = getelementptr inbounds void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %44, i64 3
  %46 = load void (%"class.std::_Sp_counted_base"*)*, void (%"class.std::_Sp_counted_base"*)** %45, align 8
  call void %46(%"class.std::_Sp_counted_base"* noundef nonnull align 8 dereferenceable(16) %13) #13
  br label %47

47:                                               ; preds = %42, %39
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx1118directory_iteratorC2Ev(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::filesystem::__cxx11::directory_iterator"*, align 8
  store %"class.std::filesystem::__cxx11::directory_iterator"* %0, %"class.std::filesystem::__cxx11::directory_iterator"** %2, align 8
  %3 = load %"class.std::filesystem::__cxx11::directory_iterator"*, %"class.std::filesystem::__cxx11::directory_iterator"** %2, align 8
  %4 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %3, i32 0, i32 0
  call void @_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC1Ev(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %4) #13
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EEC1Ev(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt10filesystem7__cxx11eqERKNS0_18directory_iteratorES3_(%"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::filesystem::__cxx11::directory_iterator"* noundef nonnull align 8 dereferenceable(16) %1) #1 comdat {
  %3 = alloca %"class.std::filesystem::__cxx11::directory_iterator"*, align 8
  %4 = alloca %"class.std::filesystem::__cxx11::directory_iterator"*, align 8
  store %"class.std::filesystem::__cxx11::directory_iterator"* %0, %"class.std::filesystem::__cxx11::directory_iterator"** %3, align 8
  store %"class.std::filesystem::__cxx11::directory_iterator"* %1, %"class.std::filesystem::__cxx11::directory_iterator"** %4, align 8
  %5 = load %"class.std::filesystem::__cxx11::directory_iterator"*, %"class.std::filesystem::__cxx11::directory_iterator"** %4, align 8
  %6 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %5, i32 0, i32 0
  %7 = load %"class.std::filesystem::__cxx11::directory_iterator"*, %"class.std::filesystem::__cxx11::directory_iterator"** %3, align 8
  %8 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %7, i32 0, i32 0
  %9 = call noundef zeroext i1 @_ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %6, %"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %8) #13
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load %"class.std::filesystem::__cxx11::directory_iterator"*, %"class.std::filesystem::__cxx11::directory_iterator"** %3, align 8
  %12 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %11, i32 0, i32 0
  %13 = load %"class.std::filesystem::__cxx11::directory_iterator"*, %"class.std::filesystem::__cxx11::directory_iterator"** %4, align 8
  %14 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_iterator", %"class.std::filesystem::__cxx11::directory_iterator"* %13, i32 0, i32 0
  %15 = call noundef zeroext i1 @_ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %12, %"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %14) #13
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %10, %2
  %18 = phi i1 [ false, %2 ], [ %16, %10 ]
  ret i1 %18
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt12__shared_ptrINSt10filesystem7__cxx114_DirELN9__gnu_cxx12_Lock_policyE2EE12owner_beforeIS2_EEbRKS_IT_LS4_2EE(%"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::__shared_ptr"* noundef nonnull align 8 dereferenceable(16) %1) #1 comdat align 2 {
  %3 = alloca %"class.std::__shared_ptr"*, align 8
  %4 = alloca %"class.std::__shared_ptr"*, align 8
  store %"class.std::__shared_ptr"* %0, %"class.std::__shared_ptr"** %3, align 8
  store %"class.std::__shared_ptr"* %1, %"class.std::__shared_ptr"** %4, align 8
  %5 = load %"class.std::__shared_ptr"*, %"class.std::__shared_ptr"** %3, align 8
  %6 = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %5, i32 0, i32 1
  %7 = load %"class.std::__shared_ptr"*, %"class.std::__shared_ptr"** %4, align 8
  %8 = getelementptr inbounds %"class.std::__shared_ptr", %"class.std::__shared_ptr"* %7, i32 0, i32 1
  %9 = call noundef zeroext i1 @_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_lessERKS2_(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %6, %"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %8) #13
  ret i1 %9
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_lessERKS2_(%"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::__shared_count"* noundef nonnull align 8 dereferenceable(8) %1) #1 comdat align 2 {
  %3 = alloca %"class.std::__shared_count"*, align 8
  %4 = alloca %"class.std::__shared_count"*, align 8
  %5 = alloca %"struct.std::less.17", align 1
  store %"class.std::__shared_count"* %0, %"class.std::__shared_count"** %3, align 8
  store %"class.std::__shared_count"* %1, %"class.std::__shared_count"** %4, align 8
  %6 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %3, align 8
  %7 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %6, i32 0, i32 0
  %8 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %7, align 8
  %9 = load %"class.std::__shared_count"*, %"class.std::__shared_count"** %4, align 8
  %10 = getelementptr inbounds %"class.std::__shared_count", %"class.std::__shared_count"* %9, i32 0, i32 0
  %11 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %10, align 8
  %12 = call noundef zeroext i1 @_ZNKSt4lessIPSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEEclES4_S4_(%"struct.std::less.17"* noundef nonnull align 1 dereferenceable(1) %5, %"class.std::_Sp_counted_base"* noundef %8, %"class.std::_Sp_counted_base"* noundef %11) #13
  ret i1 %12
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt4lessIPSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EEEclES4_S4_(%"struct.std::less.17"* noundef nonnull align 1 dereferenceable(1) %0, %"class.std::_Sp_counted_base"* noundef %1, %"class.std::_Sp_counted_base"* noundef %2) #1 comdat align 2 {
  %4 = alloca %"struct.std::less.17"*, align 8
  %5 = alloca %"class.std::_Sp_counted_base"*, align 8
  %6 = alloca %"class.std::_Sp_counted_base"*, align 8
  store %"struct.std::less.17"* %0, %"struct.std::less.17"** %4, align 8
  store %"class.std::_Sp_counted_base"* %1, %"class.std::_Sp_counted_base"** %5, align 8
  store %"class.std::_Sp_counted_base"* %2, %"class.std::_Sp_counted_base"** %6, align 8
  %7 = load %"struct.std::less.17"*, %"struct.std::less.17"** %4, align 8
  %8 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %5, align 8
  %9 = ptrtoint %"class.std::_Sp_counted_base"* %8 to i64
  %10 = load %"class.std::_Sp_counted_base"*, %"class.std::_Sp_counted_base"** %6, align 8
  %11 = ptrtoint %"class.std::_Sp_counted_base"* %10 to i64
  %12 = icmp ult i64 %9, %11
  ret i1 %12
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt10filesystem7__cxx114path5emptyEv(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  store %"class.std::filesystem::__cxx11::path"* %0, %"class.std::filesystem::__cxx11::path"** %2, align 8
  %3 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %2, align 8
  %4 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %3, i32 0, i32 0
  %5 = call noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4) #13
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZNKSt10filesystem7__cxx114path7_M_typeEv(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  store %"class.std::filesystem::__cxx11::path"* %0, %"class.std::filesystem::__cxx11::path"** %2, align 8
  %3 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %2, align 8
  %4 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %3, i32 0, i32 1
  %5 = call noundef zeroext i8 @_ZNKSt10filesystem7__cxx114path5_List4typeEv(%"struct.std::filesystem::__cxx11::path::_List"* noundef nonnull align 8 dereferenceable(8) %4) #13
  ret i8 %5
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathC2ERKS1_(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %0, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  %4 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  store %"class.std::filesystem::__cxx11::path"* %0, %"class.std::filesystem::__cxx11::path"** %3, align 8
  store %"class.std::filesystem::__cxx11::path"* %1, %"class.std::filesystem::__cxx11::path"** %4, align 8
  %5 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %3, align 8
  %6 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %5, i32 0, i32 0
  %7 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %4, align 8
  %8 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %7, i32 0, i32 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8)
  %9 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %5, i32 0, i32 1
  %10 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %4, align 8
  %11 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %10, i32 0, i32 1
  call void @_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_(%"struct.std::filesystem::__cxx11::path::_List"* noundef nonnull align 8 dereferenceable(8) %9, %"struct.std::filesystem::__cxx11::path::_List"* noundef nonnull align 8 dereferenceable(8) %11)
  ret void
}

; Function Attrs: nounwind
declare noundef nonnull align 1 dereferenceable(1) i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4backEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #5

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNKSt10filesystem7__cxx114path3endEv(%"class.std::filesystem::__cxx11::path::iterator"* noalias sret(%"class.std::filesystem::__cxx11::path::iterator") align 8 %0, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %1) #1 comdat align 2 {
  %3 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  store %"class.std::filesystem::__cxx11::path"* %1, %"class.std::filesystem::__cxx11::path"** %3, align 8
  %4 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %3, align 8
  %5 = call noundef zeroext i8 @_ZNKSt10filesystem7__cxx114path7_M_typeEv(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %4) #13
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %4, i32 0, i32 1
  %9 = call noundef %"struct.std::filesystem::__cxx11::path::_Cmpt"* @_ZNKSt10filesystem7__cxx114path5_List3endEv(%"struct.std::filesystem::__cxx11::path::_List"* noundef nonnull align 8 dereferenceable(8) %8) #13
  call void @_ZNSt10filesystem7__cxx114path8iteratorC2EPKS1_PKNS1_5_CmptE(%"class.std::filesystem::__cxx11::path::iterator"* noundef nonnull align 8 dereferenceable(17) %0, %"class.std::filesystem::__cxx11::path"* noundef %4, %"struct.std::filesystem::__cxx11::path::_Cmpt"* noundef %9) #13
  br label %11

10:                                               ; preds = %2
  call void @_ZNSt10filesystem7__cxx114path8iteratorC2EPKS1_b(%"class.std::filesystem::__cxx11::path::iterator"* noundef nonnull align 8 dereferenceable(17) %0, %"class.std::filesystem::__cxx11::path"* noundef %4, i1 noundef zeroext true) #13
  br label %11

11:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(17) %"class.std::filesystem::__cxx11::path::iterator"* @_ZNSt10filesystem7__cxx114path8iteratormmEv(%"class.std::filesystem::__cxx11::path::iterator"* noundef nonnull align 8 dereferenceable(17) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::filesystem::__cxx11::path::iterator"*, align 8
  store %"class.std::filesystem::__cxx11::path::iterator"* %0, %"class.std::filesystem::__cxx11::path::iterator"** %2, align 8
  %3 = load %"class.std::filesystem::__cxx11::path::iterator"*, %"class.std::filesystem::__cxx11::path::iterator"** %2, align 8
  br label %4

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4
  %6 = call noundef zeroext i1 @_ZNKSt10filesystem7__cxx114path8iterator11_M_is_multiEv(%"class.std::filesystem::__cxx11::path::iterator"* noundef nonnull align 8 dereferenceable(17) %3) #13
  br i1 %6, label %7, label %13

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %7
  br label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.std::filesystem::__cxx11::path::iterator", %"class.std::filesystem::__cxx11::path::iterator"* %3, i32 0, i32 1
  %11 = load %"struct.std::filesystem::__cxx11::path::_Cmpt"*, %"struct.std::filesystem::__cxx11::path::_Cmpt"** %10, align 8
  %12 = getelementptr inbounds %"struct.std::filesystem::__cxx11::path::_Cmpt", %"struct.std::filesystem::__cxx11::path::_Cmpt"* %11, i32 -1
  store %"struct.std::filesystem::__cxx11::path::_Cmpt"* %12, %"struct.std::filesystem::__cxx11::path::_Cmpt"** %10, align 8
  br label %17

13:                                               ; preds = %5
  br label %14

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %"class.std::filesystem::__cxx11::path::iterator", %"class.std::filesystem::__cxx11::path::iterator"* %3, i32 0, i32 2
  store i8 0, i8* %16, align 8
  br label %17

17:                                               ; preds = %15, %9
  ret %"class.std::filesystem::__cxx11::path::iterator"* %3
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"class.std::filesystem::__cxx11::path"* @_ZNKSt10filesystem7__cxx114path8iteratorptEv(%"class.std::filesystem::__cxx11::path::iterator"* noundef nonnull align 8 dereferenceable(17) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::filesystem::__cxx11::path::iterator"*, align 8
  store %"class.std::filesystem::__cxx11::path::iterator"* %0, %"class.std::filesystem::__cxx11::path::iterator"** %2, align 8
  %3 = load %"class.std::filesystem::__cxx11::path::iterator"*, %"class.std::filesystem::__cxx11::path::iterator"** %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(40) %"class.std::filesystem::__cxx11::path"* @_ZNKSt10filesystem7__cxx114path8iteratordeEv(%"class.std::filesystem::__cxx11::path::iterator"* noundef nonnull align 8 dereferenceable(17) %3) #13
  ret %"class.std::filesystem::__cxx11::path"* %4
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) %"class.std::filesystem::__cxx11::path"* @_ZNKSt10filesystem7__cxx114path8iteratordeEv(%"class.std::filesystem::__cxx11::path::iterator"* noundef nonnull align 8 dereferenceable(17) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  %3 = alloca %"class.std::filesystem::__cxx11::path::iterator"*, align 8
  store %"class.std::filesystem::__cxx11::path::iterator"* %0, %"class.std::filesystem::__cxx11::path::iterator"** %3, align 8
  %4 = load %"class.std::filesystem::__cxx11::path::iterator"*, %"class.std::filesystem::__cxx11::path::iterator"** %3, align 8
  br label %5

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5
  %7 = call noundef zeroext i1 @_ZNKSt10filesystem7__cxx114path8iterator11_M_is_multiEv(%"class.std::filesystem::__cxx11::path::iterator"* noundef nonnull align 8 dereferenceable(17) %4) #13
  br i1 %7, label %8, label %14

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %8
  br label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %"class.std::filesystem::__cxx11::path::iterator", %"class.std::filesystem::__cxx11::path::iterator"* %4, i32 0, i32 1
  %12 = load %"struct.std::filesystem::__cxx11::path::_Cmpt"*, %"struct.std::filesystem::__cxx11::path::_Cmpt"** %11, align 8
  %13 = bitcast %"struct.std::filesystem::__cxx11::path::_Cmpt"* %12 to %"class.std::filesystem::__cxx11::path"*
  store %"class.std::filesystem::__cxx11::path"* %13, %"class.std::filesystem::__cxx11::path"** %2, align 8
  br label %17

14:                                               ; preds = %6
  %15 = getelementptr inbounds %"class.std::filesystem::__cxx11::path::iterator", %"class.std::filesystem::__cxx11::path::iterator"* %4, i32 0, i32 0
  %16 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %15, align 8
  store %"class.std::filesystem::__cxx11::path"* %16, %"class.std::filesystem::__cxx11::path"** %2, align 8
  br label %17

17:                                               ; preds = %14, %10
  %18 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %2, align 8
  ret %"class.std::filesystem::__cxx11::path"* %18
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #5

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZNKSt10filesystem7__cxx114path5_List4typeEv(%"struct.std::filesystem::__cxx11::path::_List"* noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::filesystem::__cxx11::path::_List"*, align 8
  store %"struct.std::filesystem::__cxx11::path::_List"* %0, %"struct.std::filesystem::__cxx11::path::_List"** %2, align 8
  %3 = load %"struct.std::filesystem::__cxx11::path::_List"*, %"struct.std::filesystem::__cxx11::path::_List"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::filesystem::__cxx11::path::_List", %"struct.std::filesystem::__cxx11::path::_List"* %3, i32 0, i32 0
  %5 = call noundef %"struct.std::filesystem::__cxx11::path::_List::_Impl"* @_ZNKSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE3getEv(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %4) #13
  %6 = ptrtoint %"struct.std::filesystem::__cxx11::path::_List::_Impl"* %5 to i64
  %7 = and i64 %6, 3
  %8 = trunc i64 %7 to i8
  ret i8 %8
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"struct.std::filesystem::__cxx11::path::_List::_Impl"* @_ZNKSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE3getEv(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::unique_ptr"*, align 8
  store %"class.std::unique_ptr"* %0, %"class.std::unique_ptr"** %2, align 8
  %3 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %2, align 8
  %4 = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::__uniq_ptr_data"* %4 to %"class.std::__uniq_ptr_impl"*
  %6 = call noundef %"struct.std::filesystem::__cxx11::path::_List::_Impl"* @_ZNKSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %5) #13
  ret %"struct.std::filesystem::__cxx11::path::_List::_Impl"* %6
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"struct.std::filesystem::__cxx11::path::_List::_Impl"* @_ZNKSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::__uniq_ptr_impl"*, align 8
  store %"class.std::__uniq_ptr_impl"* %0, %"class.std::__uniq_ptr_impl"** %2, align 8
  %3 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__uniq_ptr_impl", %"class.std::__uniq_ptr_impl"* %3, i32 0, i32 0
  %5 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKSB_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %4) #13
  %6 = load %"struct.std::filesystem::__cxx11::path::_List::_Impl"*, %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %5, align 8
  ret %"struct.std::filesystem::__cxx11::path::_List::_Impl"* %6
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKSB_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %0) #1 comdat {
  %2 = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %0, %"class.std::tuple"** %2, align 8
  %3 = load %"class.std::tuple"*, %"class.std::tuple"** %2, align 8
  %4 = bitcast %"class.std::tuple"* %3 to %"struct.std::_Tuple_impl"*
  %5 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERKT0_RKSt11_Tuple_implIXT_EJS7_DpT1_EE(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %4) #13
  ret %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERKT0_RKSt11_Tuple_implIXT_EJS7_DpT1_EE(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %0) #1 comdat {
  %2 = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %0, %"struct.std::_Tuple_impl"** %2, align 8
  %3 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERKS7_(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %3) #13
  ret %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %4
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERKS7_(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %0, %"struct.std::_Tuple_impl"** %2, align 8
  %3 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Tuple_impl"* %3 to %"struct.std::_Head_base.4"*
  %5 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERKS6_(%"struct.std::_Head_base.4"* noundef nonnull align 8 dereferenceable(8) %4) #13
  ret %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERKS6_(%"struct.std::_Head_base.4"* noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Head_base.4"*, align 8
  store %"struct.std::_Head_base.4"* %0, %"struct.std::_Head_base.4"** %2, align 8
  %3 = load %"struct.std::_Head_base.4"*, %"struct.std::_Head_base.4"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Head_base.4", %"struct.std::_Head_base.4"* %3, i32 0, i32 0
  ret %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %4
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

declare void @_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_(%"struct.std::filesystem::__cxx11::path::_List"* noundef nonnull align 8 dereferenceable(8), %"struct.std::filesystem::__cxx11::path::_List"* noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: nounwind
declare noundef %"struct.std::filesystem::__cxx11::path::_Cmpt"* @_ZNKSt10filesystem7__cxx114path5_List3endEv(%"struct.std::filesystem::__cxx11::path::_List"* noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114path8iteratorC2EPKS1_PKNS1_5_CmptE(%"class.std::filesystem::__cxx11::path::iterator"* noundef nonnull align 8 dereferenceable(17) %0, %"class.std::filesystem::__cxx11::path"* noundef %1, %"struct.std::filesystem::__cxx11::path::_Cmpt"* noundef %2) unnamed_addr #0 comdat align 2 {
  %4 = alloca %"class.std::filesystem::__cxx11::path::iterator"*, align 8
  %5 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  %6 = alloca %"struct.std::filesystem::__cxx11::path::_Cmpt"*, align 8
  store %"class.std::filesystem::__cxx11::path::iterator"* %0, %"class.std::filesystem::__cxx11::path::iterator"** %4, align 8
  store %"class.std::filesystem::__cxx11::path"* %1, %"class.std::filesystem::__cxx11::path"** %5, align 8
  store %"struct.std::filesystem::__cxx11::path::_Cmpt"* %2, %"struct.std::filesystem::__cxx11::path::_Cmpt"** %6, align 8
  %7 = load %"class.std::filesystem::__cxx11::path::iterator"*, %"class.std::filesystem::__cxx11::path::iterator"** %4, align 8
  %8 = getelementptr inbounds %"class.std::filesystem::__cxx11::path::iterator", %"class.std::filesystem::__cxx11::path::iterator"* %7, i32 0, i32 0
  %9 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %5, align 8
  store %"class.std::filesystem::__cxx11::path"* %9, %"class.std::filesystem::__cxx11::path"** %8, align 8
  %10 = getelementptr inbounds %"class.std::filesystem::__cxx11::path::iterator", %"class.std::filesystem::__cxx11::path::iterator"* %7, i32 0, i32 1
  %11 = load %"struct.std::filesystem::__cxx11::path::_Cmpt"*, %"struct.std::filesystem::__cxx11::path::_Cmpt"** %6, align 8
  store %"struct.std::filesystem::__cxx11::path::_Cmpt"* %11, %"struct.std::filesystem::__cxx11::path::_Cmpt"** %10, align 8
  %12 = getelementptr inbounds %"class.std::filesystem::__cxx11::path::iterator", %"class.std::filesystem::__cxx11::path::iterator"* %7, i32 0, i32 2
  store i8 0, i8* %12, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114path8iteratorC2EPKS1_b(%"class.std::filesystem::__cxx11::path::iterator"* noundef nonnull align 8 dereferenceable(17) %0, %"class.std::filesystem::__cxx11::path"* noundef %1, i1 noundef zeroext %2) unnamed_addr #0 comdat align 2 {
  %4 = alloca %"class.std::filesystem::__cxx11::path::iterator"*, align 8
  %5 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  %6 = alloca i8, align 1
  store %"class.std::filesystem::__cxx11::path::iterator"* %0, %"class.std::filesystem::__cxx11::path::iterator"** %4, align 8
  store %"class.std::filesystem::__cxx11::path"* %1, %"class.std::filesystem::__cxx11::path"** %5, align 8
  %7 = zext i1 %2 to i8
  store i8 %7, i8* %6, align 1
  %8 = load %"class.std::filesystem::__cxx11::path::iterator"*, %"class.std::filesystem::__cxx11::path::iterator"** %4, align 8
  %9 = getelementptr inbounds %"class.std::filesystem::__cxx11::path::iterator", %"class.std::filesystem::__cxx11::path::iterator"* %8, i32 0, i32 0
  %10 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %5, align 8
  store %"class.std::filesystem::__cxx11::path"* %10, %"class.std::filesystem::__cxx11::path"** %9, align 8
  %11 = getelementptr inbounds %"class.std::filesystem::__cxx11::path::iterator", %"class.std::filesystem::__cxx11::path::iterator"* %8, i32 0, i32 1
  store %"struct.std::filesystem::__cxx11::path::_Cmpt"* null, %"struct.std::filesystem::__cxx11::path::_Cmpt"** %11, align 8
  %12 = getelementptr inbounds %"class.std::filesystem::__cxx11::path::iterator", %"class.std::filesystem::__cxx11::path::iterator"* %8, i32 0, i32 2
  %13 = load i8, i8* %6, align 1
  %14 = trunc i8 %13 to i1
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %12, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt10filesystem7__cxx114path8iterator11_M_is_multiEv(%"class.std::filesystem::__cxx11::path::iterator"* noundef nonnull align 8 dereferenceable(17) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::filesystem::__cxx11::path::iterator"*, align 8
  store %"class.std::filesystem::__cxx11::path::iterator"* %0, %"class.std::filesystem::__cxx11::path::iterator"** %2, align 8
  %3 = load %"class.std::filesystem::__cxx11::path::iterator"*, %"class.std::filesystem::__cxx11::path::iterator"** %2, align 8
  %4 = getelementptr inbounds %"class.std::filesystem::__cxx11::path::iterator", %"class.std::filesystem::__cxx11::path::iterator"* %3, i32 0, i32 0
  %5 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %4, align 8
  %6 = call noundef zeroext i8 @_ZNKSt10filesystem7__cxx114path7_M_typeEv(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %5) #13
  %7 = icmp eq i8 %6, 0
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %0, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %1, %"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1) %2) #1 comdat align 2 {
  %4 = alloca i8*, align 8
  %5 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  %6 = alloca %"class.std::allocator.0"*, align 8
  %7 = bitcast %"class.std::__cxx11::basic_string"* %0 to i8*
  store i8* %7, i8** %4, align 8
  store %"class.std::filesystem::__cxx11::path"* %1, %"class.std::filesystem::__cxx11::path"** %5, align 8
  store %"class.std::allocator.0"* %2, %"class.std::allocator.0"** %6, align 8
  %8 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %5, align 8
  %9 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %8, i32 0, i32 0
  %10 = call noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9) #13
  %11 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %8, i32 0, i32 0
  %12 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11) #13
  %13 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %6, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcmRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef %10, i64 noundef %12, %"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1) %13)
  ret void
}

; Function Attrs: nounwind
declare noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #5

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #5

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcmRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i8* noundef, i64 noundef, %"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt10filesystem7__cxx1115directory_entry12_M_file_typeEv(%"class.std::filesystem::__cxx11::directory_entry"* noundef nonnull align 8 dereferenceable(41) %0) #1 comdat align 2 {
  %2 = alloca i8, align 1
  %3 = alloca %"class.std::filesystem::__cxx11::directory_entry"*, align 8
  %4 = alloca %"class.std::filesystem::file_status", align 4
  store %"class.std::filesystem::__cxx11::directory_entry"* %0, %"class.std::filesystem::__cxx11::directory_entry"** %3, align 8
  %5 = load %"class.std::filesystem::__cxx11::directory_entry"*, %"class.std::filesystem::__cxx11::directory_entry"** %3, align 8
  %6 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_entry", %"class.std::filesystem::__cxx11::directory_entry"* %5, i32 0, i32 1
  %7 = load i8, i8* %6, align 8
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_entry", %"class.std::filesystem::__cxx11::directory_entry"* %5, i32 0, i32 1
  %11 = load i8, i8* %10, align 8
  %12 = icmp ne i8 %11, 3
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_entry", %"class.std::filesystem::__cxx11::directory_entry"* %5, i32 0, i32 1
  %15 = load i8, i8* %14, align 8
  store i8 %15, i8* %2, align 1
  br label %20

16:                                               ; preds = %9, %1
  %17 = call i64 @_ZNKSt10filesystem7__cxx1115directory_entry6statusEv(%"class.std::filesystem::__cxx11::directory_entry"* noundef nonnull align 8 dereferenceable(41) %5)
  %18 = bitcast %"class.std::filesystem::file_status"* %4 to i64*
  store i64 %17, i64* %18, align 4
  %19 = call noundef signext i8 @_ZNKSt10filesystem11file_status4typeEv(%"class.std::filesystem::file_status"* noundef nonnull align 4 dereferenceable(8) %4) #13
  store i8 %19, i8* %2, align 1
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i8, i8* %2, align 1
  ret i8 %21
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local i64 @_ZNKSt10filesystem7__cxx1115directory_entry6statusEv(%"class.std::filesystem::__cxx11::directory_entry"* noundef nonnull align 8 dereferenceable(41) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::filesystem::file_status", align 4
  %3 = alloca %"class.std::filesystem::__cxx11::directory_entry"*, align 8
  store %"class.std::filesystem::__cxx11::directory_entry"* %0, %"class.std::filesystem::__cxx11::directory_entry"** %3, align 8
  %4 = load %"class.std::filesystem::__cxx11::directory_entry"*, %"class.std::filesystem::__cxx11::directory_entry"** %3, align 8
  %5 = getelementptr inbounds %"class.std::filesystem::__cxx11::directory_entry", %"class.std::filesystem::__cxx11::directory_entry"* %4, i32 0, i32 0
  %6 = call i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %5)
  %7 = bitcast %"class.std::filesystem::file_status"* %2 to i64*
  store i64 %6, i64* %7, align 4
  %8 = bitcast %"class.std::filesystem::file_status"* %2 to i64*
  %9 = load i64, i64* %8, align 4
  ret i64 %9
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114path5_ListD2Ev(%"struct.std::filesystem::__cxx11::path::_List"* noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"struct.std::filesystem::__cxx11::path::_List"*, align 8
  store %"struct.std::filesystem::__cxx11::path::_List"* %0, %"struct.std::filesystem::__cxx11::path::_List"** %2, align 8
  %3 = load %"struct.std::filesystem::__cxx11::path::_List"*, %"struct.std::filesystem::__cxx11::path::_List"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::filesystem::__cxx11::path::_List", %"struct.std::filesystem::__cxx11::path::_List"* %3, i32 0, i32 0
  call void @_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %4) #13
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::unique_ptr"*, align 8
  %3 = alloca %"struct.std::filesystem::__cxx11::path::_List::_Impl"**, align 8
  store %"class.std::unique_ptr"* %0, %"class.std::unique_ptr"** %2, align 8
  %4 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %2, align 8
  %5 = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %4, i32 0, i32 0
  %6 = bitcast %"struct.std::__uniq_ptr_data"* %5 to %"class.std::__uniq_ptr_impl"*
  %7 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %6) #13
  store %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %7, %"struct.std::filesystem::__cxx11::path::_List::_Impl"*** %3, align 8
  %8 = load %"struct.std::filesystem::__cxx11::path::_List::_Impl"**, %"struct.std::filesystem::__cxx11::path::_List::_Impl"*** %3, align 8
  %9 = load %"struct.std::filesystem::__cxx11::path::_List::_Impl"*, %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %8, align 8
  %10 = icmp ne %"struct.std::filesystem::__cxx11::path::_List::_Impl"* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = call noundef nonnull align 1 dereferenceable(1) %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* @_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %4) #13
  %13 = load %"struct.std::filesystem::__cxx11::path::_List::_Impl"**, %"struct.std::filesystem::__cxx11::path::_List::_Impl"*** %3, align 8
  %14 = load %"struct.std::filesystem::__cxx11::path::_List::_Impl"*, %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %13, align 8
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(%"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* noundef nonnull align 1 dereferenceable(1) %12, %"struct.std::filesystem::__cxx11::path::_List::_Impl"* noundef %14) #13
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %"struct.std::filesystem::__cxx11::path::_List::_Impl"**, %"struct.std::filesystem::__cxx11::path::_List::_Impl"*** %3, align 8
  store %"struct.std::filesystem::__cxx11::path::_List::_Impl"* null, %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %16, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::__uniq_ptr_impl"*, align 8
  store %"class.std::__uniq_ptr_impl"* %0, %"class.std::__uniq_ptr_impl"** %2, align 8
  %3 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__uniq_ptr_impl", %"class.std::__uniq_ptr_impl"* %3, i32 0, i32 0
  %5 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %4) #13
  ret %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* @_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::unique_ptr"*, align 8
  store %"class.std::unique_ptr"* %0, %"class.std::unique_ptr"** %2, align 8
  %3 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %2, align 8
  %4 = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::__uniq_ptr_data"* %4 to %"class.std::__uniq_ptr_impl"*
  %6 = call noundef nonnull align 1 dereferenceable(1) %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* @_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %5) #13
  ret %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* %6
}

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(%"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* noundef nonnull align 1 dereferenceable(1), %"struct.std::filesystem::__cxx11::path::_List::_Impl"* noundef) #5

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %0) #1 comdat {
  %2 = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %0, %"class.std::tuple"** %2, align 8
  %3 = load %"class.std::tuple"*, %"class.std::tuple"** %2, align 8
  %4 = bitcast %"class.std::tuple"* %3 to %"struct.std::_Tuple_impl"*
  %5 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %4) #13
  ret %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %0) #1 comdat {
  %2 = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %0, %"struct.std::_Tuple_impl"** %2, align 8
  %3 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %3) #13
  ret %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %4
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_(%"struct.std::_Tuple_impl"* noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Tuple_impl"*, align 8
  store %"struct.std::_Tuple_impl"* %0, %"struct.std::_Tuple_impl"** %2, align 8
  %3 = load %"struct.std::_Tuple_impl"*, %"struct.std::_Tuple_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Tuple_impl"* %3 to %"struct.std::_Head_base.4"*
  %5 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_(%"struct.std::_Head_base.4"* noundef nonnull align 8 dereferenceable(8) %4) #13
  ret %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_(%"struct.std::_Head_base.4"* noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Head_base.4"*, align 8
  store %"struct.std::_Head_base.4"* %0, %"struct.std::_Head_base.4"** %2, align 8
  %3 = load %"struct.std::_Head_base.4"*, %"struct.std::_Head_base.4"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Head_base.4", %"struct.std::_Head_base.4"* %3, i32 0, i32 0
  ret %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %4
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* @_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::__uniq_ptr_impl"*, align 8
  store %"class.std::__uniq_ptr_impl"* %0, %"class.std::__uniq_ptr_impl"** %2, align 8
  %3 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %2, align 8
  %4 = getelementptr inbounds %"class.std::__uniq_ptr_impl", %"class.std::__uniq_ptr_impl"* %3, i32 0, i32 0
  %5 = call noundef nonnull align 1 dereferenceable(1) %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* @_ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %4) #13
  ret %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* @_ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_(%"class.std::tuple"* noundef nonnull align 8 dereferenceable(8) %0) #1 comdat {
  %2 = alloca %"class.std::tuple"*, align 8
  store %"class.std::tuple"* %0, %"class.std::tuple"** %2, align 8
  %3 = load %"class.std::tuple"*, %"class.std::tuple"** %2, align 8
  %4 = bitcast %"class.std::tuple"* %3 to %"struct.std::_Tuple_impl.3"*
  %5 = call noundef nonnull align 1 dereferenceable(1) %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* @_ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE(%"struct.std::_Tuple_impl.3"* noundef nonnull align 1 dereferenceable(1) %4) #13
  ret %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* @_ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE(%"struct.std::_Tuple_impl.3"* noundef nonnull align 1 dereferenceable(1) %0) #1 comdat {
  %2 = alloca %"struct.std::_Tuple_impl.3"*, align 8
  store %"struct.std::_Tuple_impl.3"* %0, %"struct.std::_Tuple_impl.3"** %2, align 8
  %3 = load %"struct.std::_Tuple_impl.3"*, %"struct.std::_Tuple_impl.3"** %2, align 8
  %4 = call noundef nonnull align 1 dereferenceable(1) %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* @_ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_(%"struct.std::_Tuple_impl.3"* noundef nonnull align 1 dereferenceable(1) %3) #13
  ret %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* %4
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* @_ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_(%"struct.std::_Tuple_impl.3"* noundef nonnull align 1 dereferenceable(1) %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Tuple_impl.3"*, align 8
  store %"struct.std::_Tuple_impl.3"* %0, %"struct.std::_Tuple_impl.3"** %2, align 8
  %3 = load %"struct.std::_Tuple_impl.3"*, %"struct.std::_Tuple_impl.3"** %2, align 8
  %4 = bitcast %"struct.std::_Tuple_impl.3"* %3 to %"struct.std::_Head_base"*
  %5 = call noundef nonnull align 1 dereferenceable(1) %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* @_ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_(%"struct.std::_Head_base"* noundef nonnull align 1 dereferenceable(1) %4) #13
  ret %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* @_ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_(%"struct.std::_Head_base"* noundef nonnull align 1 dereferenceable(1) %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Head_base"*, align 8
  store %"struct.std::_Head_base"* %0, %"struct.std::_Head_base"** %2, align 8
  %3 = load %"struct.std::_Head_base"*, %"struct.std::_Head_base"** %2, align 8
  %4 = bitcast %"struct.std::_Head_base"* %3 to %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"*
  ret %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* %4
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt10filesystem12is_directoryENS_11file_statusE(i64 %0) #1 comdat {
  %2 = alloca %"class.std::filesystem::file_status", align 4
  %3 = bitcast %"class.std::filesystem::file_status"* %2 to i64*
  store i64 %0, i64* %3, align 4
  %4 = call noundef signext i8 @_ZNKSt10filesystem11file_status4typeEv(%"class.std::filesystem::file_status"* noundef nonnull align 4 dereferenceable(8) %2) #13
  %5 = icmp eq i8 %4, 2
  ret i1 %5
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef %1, %"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 {
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %"class.std::allocator.0"*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %"struct.std::forward_iterator_tag", align 1
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %4, align 8
  store i8* %1, i8** %5, align 8
  store %"class.std::allocator.0"* %2, %"class.std::allocator.0"** %6, align 8
  %9 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %9, i32 0, i32 0
  %11 = call noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9)
  %12 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %6, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_(%"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* noundef nonnull align 8 dereferenceable(8) %10, i8* noundef %11, %"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1) %12)
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  call void @_ZSt19__throw_logic_errorPKc(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i64 0, i64 0)) #15
  unreachable

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* noundef %18)
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** %7, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef %21, i8* noundef %22)
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt8functionIFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEEC2IRS9_vEEOT_(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %0, i32 (%"class.std::vector"*)* noundef nonnull %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca %"class.std::function"*, align 8
  %4 = alloca i32 (%"class.std::vector"*)*, align 8
  store %"class.std::function"* %0, %"class.std::function"** %3, align 8
  store i32 (%"class.std::vector"*)* %1, i32 (%"class.std::vector"*)** %4, align 8
  %5 = load %"class.std::function"*, %"class.std::function"** %3, align 8
  %6 = bitcast %"class.std::function"* %5 to %"struct.std::_Maybe_unary_or_binary_function"*
  %7 = bitcast %"class.std::function"* %5 to %"class.std::_Function_base"*
  %8 = bitcast %"class.std::_Function_base"* %7 to i8*
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  call void @_ZNSt14_Function_baseC2Ev(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %7) #13
  %10 = getelementptr inbounds %"class.std::function", %"class.std::function"* %5, i32 0, i32 1
  store i32 (%"union.std::_Any_data"*, %"class.std::vector"*)* null, i32 (%"union.std::_Any_data"*, %"class.std::vector"*)** %10, align 8
  %11 = load i32 (%"class.std::vector"*)*, i32 (%"class.std::vector"*)** %4, align 8
  %12 = call noundef zeroext i1 @_ZNSt14_Function_base13_Base_managerIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEE21_M_not_empty_functionISA_EEbPT_(i32 (%"class.std::vector"*)* noundef %11) #13
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = bitcast %"class.std::function"* %5 to %"class.std::_Function_base"*
  %15 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %14, i32 0, i32 0
  %16 = load i32 (%"class.std::vector"*)*, i32 (%"class.std::vector"*)** %4, align 8
  call void @_ZNSt14_Function_base13_Base_managerIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEE15_M_init_functorIRSA_EEvRSt9_Any_dataOT_(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %15, i32 (%"class.std::vector"*)* noundef nonnull %16) #13
  %17 = getelementptr inbounds %"class.std::function", %"class.std::function"* %5, i32 0, i32 1
  store i32 (%"union.std::_Any_data"*, %"class.std::vector"*)* @_ZNSt17_Function_handlerIFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEPS9_E9_M_invokeERKSt9_Any_dataS8_, i32 (%"union.std::_Any_data"*, %"class.std::vector"*)** %17, align 8
  %18 = bitcast %"class.std::function"* %5 to %"class.std::_Function_base"*
  %19 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %18, i32 0, i32 1
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* @_ZNSt17_Function_handlerIFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEPS9_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %19, align 8
  br label %20

20:                                               ; preds = %13, %2
  ret void
}

declare noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_(%"struct.std::__cxx11::basic_string<char>::_Alloc_hider"* noundef nonnull align 8 dereferenceable(8), i8* noundef, %"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(i8* noundef) #8

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* noundef %0) #1 comdat align 2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i64 @strlen(i8* noundef %3) #13
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i8* noundef %1, i8* noundef %2) #1 comdat align 2 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %"struct.std::forward_iterator_tag", align 1
  %11 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct._Guard, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  %16 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %11, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = load i8*, i8** %13, align 8
  store i8* %17, i8** %8, align 8
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %9, align 8
  store i8** %8, i8*** %4, align 8
  store i8* %19, i8** %5, align 8
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = ptrtoint i8* %21 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  store i64 %25, i64* %14, align 8
  %26 = load i64, i64* %14, align 8
  %27 = icmp ugt i64 %26, 15
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = call noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %16, i64* noundef nonnull align 8 dereferenceable(8) %14, i64 noundef 0)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %16, i8* noundef %29)
  %30 = load i64, i64* %14, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %30)
  br label %34

31:                                               ; preds = %3
  store %"class.std::__cxx11::basic_string"* %16, %"class.std::__cxx11::basic_string"** %7, align 8
  %32 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %7, align 8
  %33 = call noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %32) #13
  br label %34

34:                                               ; preds = %31, %28
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(%struct._Guard* noundef nonnull align 8 dereferenceable(8) %15, %"class.std::__cxx11::basic_string"* noundef %16)
  %35 = call noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %16)
  %36 = load i8*, i8** %12, align 8
  %37 = load i8*, i8** %13, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(i8* noundef %35, i8* noundef %36, i8* noundef %37) #13
  %38 = getelementptr inbounds %struct._Guard, %struct._Guard* %15, i32 0, i32 0
  store %"class.std::__cxx11::basic_string"* null, %"class.std::__cxx11::basic_string"** %38, align 8
  %39 = load i64, i64* %14, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %39)
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(%struct._Guard* noundef nonnull align 8 dereferenceable(8) %15) #13
  ret void
}

; Function Attrs: nounwind
declare i64 @strlen(i8* noundef) #5

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i8* noundef) #4

declare noundef i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64* noundef nonnull align 8 dereferenceable(8), i64 noundef) #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef) #4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(%struct._Guard* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::__cxx11::basic_string"* noundef %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca %struct._Guard*, align 8
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %struct._Guard* %0, %struct._Guard** %3, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %4, align 8
  %5 = load %struct._Guard*, %struct._Guard** %3, align 8
  %6 = getelementptr inbounds %struct._Guard, %struct._Guard* %5, i32 0, i32 0
  %7 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  store %"class.std::__cxx11::basic_string"* %7, %"class.std::__cxx11::basic_string"** %6, align 8
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(i8* noundef, i8* noundef, i8* noundef) #5

declare noundef i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64 noundef) #4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(%struct._Guard* noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %struct._Guard*, align 8
  store %struct._Guard* %0, %struct._Guard** %2, align 8
  %3 = load %struct._Guard*, %struct._Guard** %2, align 8
  %4 = getelementptr inbounds %struct._Guard, %struct._Guard* %3, i32 0, i32 0
  %5 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  %6 = icmp ne %"class.std::__cxx11::basic_string"* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._Guard, %struct._Guard* %3, i32 0, i32 0
  %9 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %8, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9)
  br label %10

10:                                               ; preds = %7, %1
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #4

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_baseC2Ev(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::_Function_base"*, align 8
  store %"class.std::_Function_base"* %0, %"class.std::_Function_base"** %2, align 8
  %3 = load %"class.std::_Function_base"*, %"class.std::_Function_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %3, i32 0, i32 0
  %5 = bitcast %"union.std::_Any_data"* %4 to %"union.std::_Nocopy_types"*
  %6 = bitcast %"union.std::_Nocopy_types"* %5 to i8**
  store i8* null, i8** %6, align 8
  %7 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %3, i32 0, i32 1
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* null, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %7, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt14_Function_base13_Base_managerIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEE21_M_not_empty_functionISA_EEbPT_(i32 (%"class.std::vector"*)* noundef %0) #1 comdat align 2 {
  %2 = alloca i32 (%"class.std::vector"*)*, align 8
  store i32 (%"class.std::vector"*)* %0, i32 (%"class.std::vector"*)** %2, align 8
  %3 = load i32 (%"class.std::vector"*)*, i32 (%"class.std::vector"*)** %2, align 8
  %4 = icmp ne i32 (%"class.std::vector"*)* %3, null
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_base13_Base_managerIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEE15_M_init_functorIRSA_EEvRSt9_Any_dataOT_(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, i32 (%"class.std::vector"*)* noundef nonnull %1) #1 comdat align 2 {
  %3 = alloca %"union.std::_Any_data"*, align 8
  %4 = alloca i32 (%"class.std::vector"*)*, align 8
  %5 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %3, align 8
  store i32 (%"class.std::vector"*)* %1, i32 (%"class.std::vector"*)** %4, align 8
  %6 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %3, align 8
  %7 = load i32 (%"class.std::vector"*)*, i32 (%"class.std::vector"*)** %4, align 8
  call void @_ZNSt14_Function_base13_Base_managerIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEE9_M_createIRSA_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %6, i32 (%"class.std::vector"*)* noundef nonnull %7)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt17_Function_handlerIFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEPS9_E9_M_invokeERKSt9_Any_dataS8_(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %1) #1 comdat align 2 {
  %3 = alloca %"union.std::_Any_data"*, align 8
  %4 = alloca %"class.std::vector"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %3, align 8
  store %"class.std::vector"* %1, %"class.std::vector"** %4, align 8
  %5 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %3, align 8
  %6 = call noundef i32 (%"class.std::vector"*)** @_ZNSt14_Function_base13_Base_managerIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEE14_M_get_pointerERKSt9_Any_data(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %5) #13
  %7 = load %"class.std::vector"*, %"class.std::vector"** %4, align 8
  %8 = call noundef i32 @_ZSt10__invoke_rIiRPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEJS8_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_(i32 (%"class.std::vector"*)** noundef nonnull align 8 dereferenceable(8) %6, %"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %7)
  ret i32 %8
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEPS9_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #1 comdat align 2 {
  %4 = alloca %"union.std::_Any_data"*, align 8
  %5 = alloca %"union.std::_Any_data"*, align 8
  %6 = alloca i32, align 4
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %4, align 8
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %16 [
    i32 0, label %8
    i32 1, label %11
  ]

8:                                                ; preds = %3
  %9 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8
  %10 = call noundef nonnull align 8 dereferenceable(8) %"class.std::type_info"** @_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %9) #13
  store %"class.std::type_info"* bitcast ({ i8*, i8*, i32, i8* }* @_ZTIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEE to %"class.std::type_info"*), %"class.std::type_info"** %10, align 8
  br label %21

11:                                               ; preds = %3
  %12 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %5, align 8
  %13 = call noundef i32 (%"class.std::vector"*)** @_ZNSt14_Function_base13_Base_managerIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEE14_M_get_pointerERKSt9_Any_data(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %12) #13
  %14 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8
  %15 = call noundef nonnull align 8 dereferenceable(8) i32 (%"class.std::vector"*)*** @_ZNSt9_Any_data9_M_accessIPPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEEERT_v(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %14) #13
  store i32 (%"class.std::vector"*)** %13, i32 (%"class.std::vector"*)*** %15, align 8
  br label %21

16:                                               ; preds = %3
  %17 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8
  %18 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call noundef zeroext i1 @_ZNSt14_Function_base13_Base_managerIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEE10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %17, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %18, i32 noundef %19)
  br label %21

21:                                               ; preds = %16, %11, %8
  ret i1 false
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_base13_Base_managerIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEE9_M_createIRSA_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, i32 (%"class.std::vector"*)* noundef nonnull %1) #1 comdat align 2 {
  %3 = alloca %"struct.std::integral_constant", align 1
  %4 = alloca %"union.std::_Any_data"*, align 8
  %5 = alloca i32 (%"class.std::vector"*)*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %4, align 8
  store i32 (%"class.std::vector"*)* %1, i32 (%"class.std::vector"*)** %5, align 8
  %6 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8
  %7 = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %6) #13
  %8 = bitcast i8* %7 to i32 (%"class.std::vector"*)**
  %9 = load i32 (%"class.std::vector"*)*, i32 (%"class.std::vector"*)** %5, align 8
  store i32 (%"class.std::vector"*)* %9, i32 (%"class.std::vector"*)** %8, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #1 comdat align 2 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8
  %4 = bitcast %"union.std::_Any_data"* %3 to [16 x i8]*
  %5 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  ret i8* %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i32 @_ZSt10__invoke_rIiRPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEJS8_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_(i32 (%"class.std::vector"*)** noundef nonnull align 8 dereferenceable(8) %0, %"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %1) #1 comdat {
  %3 = alloca i32 (%"class.std::vector"*)**, align 8
  %4 = alloca %"class.std::vector"*, align 8
  %5 = alloca %"struct.std::__invoke_other", align 1
  store i32 (%"class.std::vector"*)** %0, i32 (%"class.std::vector"*)*** %3, align 8
  store %"class.std::vector"* %1, %"class.std::vector"** %4, align 8
  %6 = load i32 (%"class.std::vector"*)**, i32 (%"class.std::vector"*)*** %3, align 8
  %7 = load %"class.std::vector"*, %"class.std::vector"** %4, align 8
  %8 = call noundef i32 @_ZSt13__invoke_implIiRPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEJS8_EET_St14__invoke_otherOT0_DpOT1_(i32 (%"class.std::vector"*)** noundef nonnull align 8 dereferenceable(8) %6, %"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %7)
  ret i32 %8
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i32 (%"class.std::vector"*)** @_ZNSt14_Function_base13_Base_managerIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEE14_M_get_pointerERKSt9_Any_data(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #1 comdat align 2 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  %3 = alloca i32 (%"class.std::vector"*)**, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %4 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8
  %5 = call noundef nonnull align 8 dereferenceable(8) i32 (%"class.std::vector"*)** @_ZNKSt9_Any_data9_M_accessIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEEERKT_v(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %4) #13
  store i32 (%"class.std::vector"*)** %5, i32 (%"class.std::vector"*)*** %3, align 8
  %6 = load i32 (%"class.std::vector"*)**, i32 (%"class.std::vector"*)*** %3, align 8
  ret i32 (%"class.std::vector"*)** %6
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i32 @_ZSt13__invoke_implIiRPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEJS8_EET_St14__invoke_otherOT0_DpOT1_(i32 (%"class.std::vector"*)** noundef nonnull align 8 dereferenceable(8) %0, %"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %1) #1 comdat {
  %3 = alloca %"struct.std::__invoke_other", align 1
  %4 = alloca i32 (%"class.std::vector"*)**, align 8
  %5 = alloca %"class.std::vector"*, align 8
  store i32 (%"class.std::vector"*)** %0, i32 (%"class.std::vector"*)*** %4, align 8
  store %"class.std::vector"* %1, %"class.std::vector"** %5, align 8
  %6 = load i32 (%"class.std::vector"*)**, i32 (%"class.std::vector"*)*** %4, align 8
  %7 = load i32 (%"class.std::vector"*)*, i32 (%"class.std::vector"*)** %6, align 8
  %8 = load %"class.std::vector"*, %"class.std::vector"** %5, align 8
  %9 = call noundef i32 %7(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %8)
  ret i32 %9
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32 (%"class.std::vector"*)** @_ZNKSt9_Any_data9_M_accessIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEEERKT_v(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #1 comdat align 2 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8
  %4 = call noundef i8* @_ZNKSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %3) #13
  %5 = bitcast i8* %4 to i32 (%"class.std::vector"*)**
  ret i32 (%"class.std::vector"*)** %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i8* @_ZNKSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #1 comdat align 2 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8
  %4 = bitcast %"union.std::_Any_data"* %3 to [16 x i8]*
  %5 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  ret i8* %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::type_info"** @_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #1 comdat align 2 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8
  %4 = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %3) #13
  %5 = bitcast i8* %4 to %"class.std::type_info"**
  ret %"class.std::type_info"** %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32 (%"class.std::vector"*)*** @_ZNSt9_Any_data9_M_accessIPPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEEERT_v(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #1 comdat align 2 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8
  %4 = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %3) #13
  %5 = bitcast i8* %4 to i32 (%"class.std::vector"*)***
  ret i32 (%"class.std::vector"*)*** %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt14_Function_base13_Base_managerIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEE10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #1 comdat align 2 {
  %4 = alloca %"union.std::_Any_data"*, align 8
  %5 = alloca %"union.std::_Any_data"*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %4, align 8
  store %"union.std::_Any_data"* %1, %"union.std::_Any_data"** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %23 [
    i32 0, label %9
    i32 1, label %12
    i32 2, label %17
    i32 3, label %21
  ]

9:                                                ; preds = %3
  %10 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8
  %11 = call noundef nonnull align 8 dereferenceable(8) %"class.std::type_info"** @_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %10) #13
  store %"class.std::type_info"* bitcast ({ i8*, i8*, i32, i8* }* @_ZTIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEE to %"class.std::type_info"*), %"class.std::type_info"** %11, align 8
  br label %23

12:                                               ; preds = %3
  %13 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %5, align 8
  %14 = call noundef i32 (%"class.std::vector"*)** @_ZNSt14_Function_base13_Base_managerIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEE14_M_get_pointerERKSt9_Any_data(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %13) #13
  %15 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8
  %16 = call noundef nonnull align 8 dereferenceable(8) i32 (%"class.std::vector"*)*** @_ZNSt9_Any_data9_M_accessIPPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEEERT_v(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %15) #13
  store i32 (%"class.std::vector"*)** %14, i32 (%"class.std::vector"*)*** %16, align 8
  br label %23

17:                                               ; preds = %3
  %18 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8
  %19 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %5, align 8
  %20 = call noundef i32 (%"class.std::vector"*)** @_ZNSt14_Function_base13_Base_managerIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEE14_M_get_pointerERKSt9_Any_data(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %19) #13
  call void @_ZNSt14_Function_base13_Base_managerIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEE15_M_init_functorIRKSB_EEvRSt9_Any_dataOT_(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %18, i32 (%"class.std::vector"*)** noundef nonnull align 8 dereferenceable(8) %20) #13
  br label %23

21:                                               ; preds = %3
  %22 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8
  call void @_ZNSt14_Function_base13_Base_managerIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %22)
  br label %23

23:                                               ; preds = %3, %21, %17, %12, %9
  ret i1 false
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_base13_Base_managerIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEE15_M_init_functorIRKSB_EEvRSt9_Any_dataOT_(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, i32 (%"class.std::vector"*)** noundef nonnull align 8 dereferenceable(8) %1) #1 comdat align 2 {
  %3 = alloca %"union.std::_Any_data"*, align 8
  %4 = alloca i32 (%"class.std::vector"*)**, align 8
  %5 = alloca %"struct.std::integral_constant", align 1
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %3, align 8
  store i32 (%"class.std::vector"*)** %1, i32 (%"class.std::vector"*)*** %4, align 8
  %6 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %3, align 8
  %7 = load i32 (%"class.std::vector"*)**, i32 (%"class.std::vector"*)*** %4, align 8
  call void @_ZNSt14_Function_base13_Base_managerIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEE9_M_createIRKSB_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %6, i32 (%"class.std::vector"*)** noundef nonnull align 8 dereferenceable(8) %7)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_base13_Base_managerIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::integral_constant", align 1
  %3 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %3, align 8
  %4 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %3, align 8
  %5 = call noundef nonnull align 8 dereferenceable(8) i32 (%"class.std::vector"*)** @_ZNSt9_Any_data9_M_accessIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEEERT_v(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %4) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_base13_Base_managerIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEE9_M_createIRKSB_EEvRSt9_Any_dataOT_St17integral_constantIbLb1EE(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0, i32 (%"class.std::vector"*)** noundef nonnull align 8 dereferenceable(8) %1) #1 comdat align 2 {
  %3 = alloca %"struct.std::integral_constant", align 1
  %4 = alloca %"union.std::_Any_data"*, align 8
  %5 = alloca i32 (%"class.std::vector"*)**, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %4, align 8
  store i32 (%"class.std::vector"*)** %1, i32 (%"class.std::vector"*)*** %5, align 8
  %6 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %4, align 8
  %7 = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %6) #13
  %8 = bitcast i8* %7 to i32 (%"class.std::vector"*)**
  %9 = load i32 (%"class.std::vector"*)**, i32 (%"class.std::vector"*)*** %5, align 8
  %10 = load i32 (%"class.std::vector"*)*, i32 (%"class.std::vector"*)** %9, align 8
  store i32 (%"class.std::vector"*)* %10, i32 (%"class.std::vector"*)** %8, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i32 (%"class.std::vector"*)** @_ZNSt9_Any_data9_M_accessIPFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS5_EEEEERT_v(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %0) #1 comdat align 2 {
  %2 = alloca %"union.std::_Any_data"*, align 8
  store %"union.std::_Any_data"* %0, %"union.std::_Any_data"** %2, align 8
  %3 = load %"union.std::_Any_data"*, %"union.std::_Any_data"** %2, align 8
  %4 = call noundef i8* @_ZNSt9_Any_data9_M_accessEv(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %3) #13
  %5 = bitcast i8* %4 to i32 (%"class.std::vector"*)**
  ret i32 (%"class.std::vector"*)** %5
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt8functionIFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEED2Ev(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::function"*, align 8
  store %"class.std::function"* %0, %"class.std::function"** %2, align 8
  %3 = load %"class.std::function"*, %"class.std::function"** %2, align 8
  %4 = bitcast %"class.std::function"* %3 to %"class.std::_Function_base"*
  call void @_ZNSt14_Function_baseD2Ev(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %4) #13
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_baseD2Ev(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::_Function_base"*, align 8
  store %"class.std::_Function_base"* %0, %"class.std::_Function_base"** %2, align 8
  %3 = load %"class.std::_Function_base"*, %"class.std::_Function_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %3, i32 0, i32 1
  %5 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %4, align 8
  %6 = icmp ne i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %3, i32 0, i32 1
  %9 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %8, align 8
  %10 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %3, i32 0, i32 0
  %11 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %3, i32 0, i32 0
  %12 = call noundef zeroext i1 %9(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %10, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 3)
  br label %13

13:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EED2Ev(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = call noundef %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE8_M_beginEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %3) #13
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE8_M_eraseEPSt13_Rb_tree_nodeISI_E(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %3, %"struct.std::_Rb_tree_node"* noundef %4)
  %5 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %3, i32 0, i32 0
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE13_Rb_tree_implISM_Lb1EED2Ev(%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* noundef nonnull align 8 dereferenceable(48) %5) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE8_M_eraseEPSt13_Rb_tree_nodeISI_E(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0, %"struct.std::_Rb_tree_node"* noundef %1) #1 comdat align 2 {
  %3 = alloca %"class.std::_Rb_tree"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %3, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %4, align 8
  %6 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %3, align 8
  br label %7

7:                                                ; preds = %10, %2
  %8 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  %9 = icmp ne %"struct.std::_Rb_tree_node"* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  %12 = bitcast %"struct.std::_Rb_tree_node"* %11 to %"struct.std::_Rb_tree_node_base"*
  %13 = call noundef %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* noundef %12) #13
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE8_M_eraseEPSt13_Rb_tree_nodeISI_E(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %6, %"struct.std::_Rb_tree_node"* noundef %13)
  %14 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  %15 = bitcast %"struct.std::_Rb_tree_node"* %14 to %"struct.std::_Rb_tree_node_base"*
  %16 = call noundef %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* noundef %15) #13
  store %"struct.std::_Rb_tree_node"* %16, %"struct.std::_Rb_tree_node"** %5, align 8
  %17 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISI_E(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %6, %"struct.std::_Rb_tree_node"* noundef %17) #13
  %18 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %5, align 8
  store %"struct.std::_Rb_tree_node"* %18, %"struct.std::_Rb_tree_node"** %4, align 8
  br label %7, !llvm.loop !10

19:                                               ; preds = %7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE8_M_beginEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = call noundef %"struct.std::_Rb_tree_node"* @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE9_M_mbeginEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %3) #13
  ret %"struct.std::_Rb_tree_node"* %4
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE13_Rb_tree_implISM_Lb1EED2Ev(%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::allocator.10"*, align 8
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"*, align 8
  store %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* %0, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"** %3, align 8
  %4 = load %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"*, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"** %3, align 8
  %5 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* %4 to %"class.std::allocator.10"*
  store %"class.std::allocator.10"* %5, %"class.std::allocator.10"** %2, align 8
  %6 = load %"class.std::allocator.10"*, %"class.std::allocator.10"** %2, align 8
  %7 = bitcast %"class.std::allocator.10"* %6 to %"class.std::__new_allocator.11"*
  call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS5_ESaISC_EEEEEEED2Ev(%"class.std::__new_allocator.11"* noundef nonnull align 1 dereferenceable(1) %7) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* noundef %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %0, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %3, i32 0, i32 3
  %5 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %4, align 8
  %6 = bitcast %"struct.std::_Rb_tree_node_base"* %5 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %6
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* noundef %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %0, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %3, i32 0, i32 2
  %5 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %4, align 8
  %6 = bitcast %"struct.std::_Rb_tree_node_base"* %5 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %6
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISI_E(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0, %"struct.std::_Rb_tree_node"* noundef %1) #1 comdat align 2 {
  %3 = alloca %"class.std::_Rb_tree"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %3, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %4, align 8
  %5 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %3, align 8
  %6 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISI_E(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %5, %"struct.std::_Rb_tree_node"* noundef %6) #13
  %7 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE11_M_put_nodeEPSt13_Rb_tree_nodeISI_E(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %5, %"struct.std::_Rb_tree_node"* noundef %7) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISI_E(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0, %"struct.std::_Rb_tree_node"* noundef %1) #1 comdat align 2 {
  %3 = alloca %"class.std::__new_allocator.11"*, align 8
  %4 = alloca %"struct.std::pair"*, align 8
  %5 = alloca %"class.std::allocator.10"*, align 8
  %6 = alloca %"struct.std::pair"*, align 8
  %7 = alloca %"class.std::_Rb_tree"*, align 8
  %8 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %7, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %8, align 8
  %9 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %7, align 8
  %10 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.10"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %9) #13
  %11 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %8, align 8
  %12 = call noundef %"struct.std::pair"* @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* noundef nonnull align 8 dereferenceable(96) %11)
  store %"class.std::allocator.10"* %10, %"class.std::allocator.10"** %5, align 8
  store %"struct.std::pair"* %12, %"struct.std::pair"** %6, align 8
  %13 = load %"class.std::allocator.10"*, %"class.std::allocator.10"** %5, align 8
  %14 = bitcast %"class.std::allocator.10"* %13 to %"class.std::__new_allocator.11"*
  %15 = load %"struct.std::pair"*, %"struct.std::pair"** %6, align 8
  store %"class.std::__new_allocator.11"* %14, %"class.std::__new_allocator.11"** %3, align 8
  store %"struct.std::pair"* %15, %"struct.std::pair"** %4, align 8
  %16 = load %"class.std::__new_allocator.11"*, %"class.std::__new_allocator.11"** %3, align 8
  %17 = load %"struct.std::pair"*, %"struct.std::pair"** %4, align 8
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISA_EEEEED2Ev(%"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %17) #13
  %18 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %8, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE11_M_put_nodeEPSt13_Rb_tree_nodeISI_E(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0, %"struct.std::_Rb_tree_node"* noundef %1) #1 comdat align 2 {
  %3 = alloca %"class.std::allocator.10"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %"class.std::_Rb_tree"*, align 8
  %7 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %6, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %7, align 8
  %8 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %6, align 8
  %9 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.10"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %8) #13
  %10 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  store %"class.std::allocator.10"* %9, %"class.std::allocator.10"** %3, align 8
  store %"struct.std::_Rb_tree_node"* %10, %"struct.std::_Rb_tree_node"** %4, align 8
  store i64 1, i64* %5, align 8
  %11 = load %"class.std::allocator.10"*, %"class.std::allocator.10"** %3, align 8
  %12 = bitcast %"class.std::allocator.10"* %11 to %"class.std::__new_allocator.11"*
  %13 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %4, align 8
  %14 = load i64, i64* %5, align 8
  call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS5_ESaISC_EEEEEEE10deallocateEPSK_m(%"class.std::__new_allocator.11"* noundef nonnull align 1 dereferenceable(1) %12, %"struct.std::_Rb_tree_node"* noundef %13, i64 noundef %14)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.10"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* %4 to %"class.std::allocator.10"*
  ret %"class.std::allocator.10"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"struct.std::pair"* @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* noundef nonnull align 8 dereferenceable(96) %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %0, %"struct.std::_Rb_tree_node"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %3, i32 0, i32 1
  %5 = call noundef %"struct.std::pair"* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS5_ESaISC_EEEEEE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* noundef nonnull align 8 dereferenceable(64) %4) #13
  ret %"struct.std::pair"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"struct.std::pair"* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS5_ESaISC_EEEEEE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* noundef nonnull align 8 dereferenceable(64) %0) #1 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %0, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %4 = call noundef i8* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS5_ESaISC_EEEEEE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* noundef nonnull align 8 dereferenceable(64) %3) #13
  %5 = bitcast i8* %4 to %"struct.std::pair"*
  ret %"struct.std::pair"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i8* @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS5_ESaISC_EEEEEE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* noundef nonnull align 8 dereferenceable(64) %0) #1 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %0, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %4 = getelementptr inbounds %"struct.__gnu_cxx::__aligned_membuf", %"struct.__gnu_cxx::__aligned_membuf"* %3, i32 0, i32 0
  %5 = bitcast [64 x i8]* %4 to i8*
  ret i8* %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS5_ESaISC_EEEEEEE10deallocateEPSK_m(%"class.std::__new_allocator.11"* noundef nonnull align 1 dereferenceable(1) %0, %"struct.std::_Rb_tree_node"* noundef %1, i64 noundef %2) #1 comdat align 2 {
  %4 = alloca %"class.std::__new_allocator.11"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %6 = alloca i64, align 8
  store %"class.std::__new_allocator.11"* %0, %"class.std::__new_allocator.11"** %4, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::__new_allocator.11"*, %"class.std::__new_allocator.11"** %4, align 8
  %8 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %5, align 8
  %9 = bitcast %"struct.std::_Rb_tree_node"* %8 to i8*
  call void @_ZdlPv(i8* noundef %9) #16
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) #9

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"struct.std::_Rb_tree_node"* @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE9_M_mbeginEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* %4 to i8*
  %6 = getelementptr inbounds i8, i8* %5, i64 8
  %7 = bitcast i8* %6 to %"struct.std::_Rb_tree_header"*
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %8, i32 0, i32 1
  %10 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %11 = bitcast %"struct.std::_Rb_tree_node_base"* %10 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %11
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS5_ESaISC_EEEEEEED2Ev(%"class.std::__new_allocator.11"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::__new_allocator.11"*, align 8
  store %"class.std::__new_allocator.11"* %0, %"class.std::__new_allocator.11"** %2, align 8
  %3 = load %"class.std::__new_allocator.11"*, %"class.std::__new_allocator.11"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator.1"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::__new_allocator.1"*, align 8
  store %"class.std::__new_allocator.1"* %0, %"class.std::__new_allocator.1"** %2, align 8
  %3 = load %"class.std::__new_allocator.1"*, %"class.std::__new_allocator.1"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt17basic_string_viewIcSt11char_traitsIcEEED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::__new_allocator"*, align 8
  store %"class.std::__new_allocator"* %0, %"class.std::__new_allocator"** %2, align 8
  %3 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEC2ERKS4_(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %0, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca %"struct.std::_Vector_base"*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %3, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %4, align 8
  %5 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  call void @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_Vector_implC2ERKS4_(%"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %6, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %7) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE19_M_range_initializeIPKS3_EEvT_S9_St20forward_iterator_tag(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, %"class.std::basic_string_view"* noundef %1, %"class.std::basic_string_view"* noundef %2) #1 comdat align 2 {
  %4 = alloca %"class.std::basic_string_view"**, align 8
  %5 = alloca %"class.std::basic_string_view"*, align 8
  %6 = alloca %"class.std::basic_string_view"*, align 8
  %7 = alloca %"class.std::basic_string_view"*, align 8
  %8 = alloca %"class.std::basic_string_view"*, align 8
  %9 = alloca %"struct.std::forward_iterator_tag", align 1
  %10 = alloca %"class.std::vector"*, align 8
  %11 = alloca %"class.std::basic_string_view"*, align 8
  %12 = alloca %"class.std::basic_string_view"*, align 8
  %13 = alloca i64, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %10, align 8
  store %"class.std::basic_string_view"* %1, %"class.std::basic_string_view"** %11, align 8
  store %"class.std::basic_string_view"* %2, %"class.std::basic_string_view"** %12, align 8
  %14 = load %"class.std::vector"*, %"class.std::vector"** %10, align 8
  %15 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %11, align 8
  %16 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %12, align 8
  store %"class.std::basic_string_view"* %15, %"class.std::basic_string_view"** %7, align 8
  store %"class.std::basic_string_view"* %16, %"class.std::basic_string_view"** %8, align 8
  %17 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %7, align 8
  %18 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %8, align 8
  store %"class.std::basic_string_view"** %7, %"class.std::basic_string_view"*** %4, align 8
  store %"class.std::basic_string_view"* %17, %"class.std::basic_string_view"** %5, align 8
  store %"class.std::basic_string_view"* %18, %"class.std::basic_string_view"** %6, align 8
  %19 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %6, align 8
  %20 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %5, align 8
  %21 = ptrtoint %"class.std::basic_string_view"* %19 to i64
  %22 = ptrtoint %"class.std::basic_string_view"* %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 16
  store i64 %24, i64* %13, align 8
  %25 = bitcast %"class.std::vector"* %14 to %"struct.std::_Vector_base"*
  %26 = load i64, i64* %13, align 8
  %27 = bitcast %"class.std::vector"* %14 to %"struct.std::_Vector_base"*
  %28 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %27) #13
  %29 = call noundef i64 @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_(i64 noundef %26, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %28)
  %30 = call noundef %"class.std::basic_string_view"* @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %25, i64 noundef %29)
  %31 = bitcast %"class.std::vector"* %14 to %"struct.std::_Vector_base"*
  %32 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %31, i32 0, i32 0
  %33 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %32 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %34 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %33, i32 0, i32 0
  store %"class.std::basic_string_view"* %30, %"class.std::basic_string_view"** %34, align 8
  %35 = bitcast %"class.std::vector"* %14 to %"struct.std::_Vector_base"*
  %36 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %35, i32 0, i32 0
  %37 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %36 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %38 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %37, i32 0, i32 0
  %39 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %38, align 8
  %40 = load i64, i64* %13, align 8
  %41 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %39, i64 %40
  %42 = bitcast %"class.std::vector"* %14 to %"struct.std::_Vector_base"*
  %43 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %42, i32 0, i32 0
  %44 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %43 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %45 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %44, i32 0, i32 2
  store %"class.std::basic_string_view"* %41, %"class.std::basic_string_view"** %45, align 8
  %46 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %11, align 8
  %47 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %12, align 8
  %48 = bitcast %"class.std::vector"* %14 to %"struct.std::_Vector_base"*
  %49 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %48, i32 0, i32 0
  %50 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %49 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %51 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %50, i32 0, i32 0
  %52 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %51, align 8
  %53 = bitcast %"class.std::vector"* %14 to %"struct.std::_Vector_base"*
  %54 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %53) #13
  %55 = call noundef %"class.std::basic_string_view"* @_ZSt22__uninitialized_copy_aIPKSt17basic_string_viewIcSt11char_traitsIcEEPS3_S3_ET0_T_S8_S7_RSaIT1_E(%"class.std::basic_string_view"* noundef %46, %"class.std::basic_string_view"* noundef %47, %"class.std::basic_string_view"* noundef %52, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %54)
  %56 = bitcast %"class.std::vector"* %14 to %"struct.std::_Vector_base"*
  %57 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %56, i32 0, i32 0
  %58 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %57 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %59 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %58, i32 0, i32 1
  store %"class.std::basic_string_view"* %55, %"class.std::basic_string_view"** %59, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"class.std::basic_string_view"* @_ZNKSt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE5beginEv(%"class.std::initializer_list"* noundef nonnull align 8 dereferenceable(16) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::initializer_list"*, align 8
  store %"class.std::initializer_list"* %0, %"class.std::initializer_list"** %2, align 8
  %3 = load %"class.std::initializer_list"*, %"class.std::initializer_list"** %2, align 8
  %4 = getelementptr inbounds %"class.std::initializer_list", %"class.std::initializer_list"* %3, i32 0, i32 0
  %5 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %4, align 8
  ret %"class.std::basic_string_view"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"class.std::basic_string_view"* @_ZNKSt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE3endEv(%"class.std::initializer_list"* noundef nonnull align 8 dereferenceable(16) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::initializer_list"*, align 8
  store %"class.std::initializer_list"* %0, %"class.std::initializer_list"** %2, align 8
  %3 = load %"class.std::initializer_list"*, %"class.std::initializer_list"** %2, align 8
  %4 = call noundef %"class.std::basic_string_view"* @_ZNKSt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE5beginEv(%"class.std::initializer_list"* noundef nonnull align 8 dereferenceable(16) %3) #13
  %5 = call noundef i64 @_ZNKSt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE4sizeEv(%"class.std::initializer_list"* noundef nonnull align 8 dereferenceable(16) %3) #13
  %6 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %4, i64 %5
  ret %"class.std::basic_string_view"* %6
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_Vector_implC2ERKS4_(%"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %0, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca %"class.std::__new_allocator"*, align 8
  %4 = alloca %"class.std::__new_allocator"*, align 8
  %5 = alloca %"class.std::allocator"*, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  %7 = alloca %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"*, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  store %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %0, %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"** %7, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %8, align 8
  %9 = load %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"*, %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"** %7, align 8
  %10 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %9 to %"class.std::allocator"*
  %11 = load %"class.std::allocator"*, %"class.std::allocator"** %8, align 8
  store %"class.std::allocator"* %10, %"class.std::allocator"** %5, align 8
  store %"class.std::allocator"* %11, %"class.std::allocator"** %6, align 8
  %12 = load %"class.std::allocator"*, %"class.std::allocator"** %5, align 8
  %13 = bitcast %"class.std::allocator"* %12 to %"class.std::__new_allocator"*
  %14 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  %15 = bitcast %"class.std::allocator"* %14 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %13, %"class.std::__new_allocator"** %3, align 8
  store %"class.std::__new_allocator"* %15, %"class.std::__new_allocator"** %4, align 8
  %16 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %3, align 8
  %17 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %9 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  call void @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* noundef nonnull align 8 dereferenceable(24) %17) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"class.std::basic_string_view"* @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #1 comdat align 2 {
  %3 = alloca %"class.std::allocator"*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %"struct.std::_Vector_base"*, align 8
  %6 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %5, align 8
  store i64 %1, i64* %6, align 8
  %7 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %5, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %7, i32 0, i32 0
  %12 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %11 to %"class.std::allocator"*
  %13 = load i64, i64* %6, align 8
  store %"class.std::allocator"* %12, %"class.std::allocator"** %3, align 8
  store i64 %13, i64* %4, align 8
  %14 = load %"class.std::allocator"*, %"class.std::allocator"** %3, align 8
  %15 = bitcast %"class.std::allocator"* %14 to %"class.std::__new_allocator"*
  %16 = load i64, i64* %4, align 8
  %17 = call noundef %"class.std::basic_string_view"* @_ZNSt15__new_allocatorISt17basic_string_viewIcSt11char_traitsIcEEE8allocateEmPKv(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %15, i64 noundef %16, i8* noundef null)
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %10
  %20 = phi %"class.std::basic_string_view"* [ %17, %10 ], [ null, %18 ]
  ret %"class.std::basic_string_view"* %20
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_(i64 noundef %0, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %1) #0 comdat align 2 {
  %3 = alloca %"class.std::__new_allocator"*, align 8
  %4 = alloca %"class.std::__new_allocator"*, align 8
  %5 = alloca %"class.std::allocator"*, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  %7 = alloca %"class.std::allocator"*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %"class.std::allocator"*, align 8
  %10 = alloca %"class.std::allocator", align 1
  store i64 %0, i64* %8, align 8
  store %"class.std::allocator"* %1, %"class.std::allocator"** %9, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load %"class.std::allocator"*, %"class.std::allocator"** %9, align 8
  store %"class.std::allocator"* %10, %"class.std::allocator"** %5, align 8
  store %"class.std::allocator"* %12, %"class.std::allocator"** %6, align 8
  %13 = load %"class.std::allocator"*, %"class.std::allocator"** %5, align 8
  %14 = bitcast %"class.std::allocator"* %13 to %"class.std::__new_allocator"*
  %15 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  %16 = bitcast %"class.std::allocator"* %15 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %14, %"class.std::__new_allocator"** %3, align 8
  store %"class.std::__new_allocator"* %16, %"class.std::__new_allocator"** %4, align 8
  %17 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %3, align 8
  %18 = call noundef i64 @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_max_sizeERKS4_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %10) #13
  %19 = icmp ugt i64 %11, %18
  store %"class.std::allocator"* %10, %"class.std::allocator"** %7, align 8
  %20 = load %"class.std::allocator"*, %"class.std::allocator"** %7, align 8
  %21 = bitcast %"class.std::allocator"* %20 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorISt17basic_string_viewIcSt11char_traitsIcEEED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %21) #13
  br i1 %19, label %22, label %23

22:                                               ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.26, i64 0, i64 0)) #15
  unreachable

23:                                               ; preds = %2
  %24 = load i64, i64* %8, align 8
  ret i64 %24
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  %3 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %4 to %"class.std::allocator"*
  ret %"class.std::allocator"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"class.std::basic_string_view"* @_ZSt22__uninitialized_copy_aIPKSt17basic_string_viewIcSt11char_traitsIcEEPS3_S3_ET0_T_S8_S7_RSaIT1_E(%"class.std::basic_string_view"* noundef %0, %"class.std::basic_string_view"* noundef %1, %"class.std::basic_string_view"* noundef %2, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %3) #1 comdat {
  %5 = alloca %"class.std::basic_string_view"*, align 8
  %6 = alloca %"class.std::basic_string_view"*, align 8
  %7 = alloca %"class.std::basic_string_view"*, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  store %"class.std::basic_string_view"* %0, %"class.std::basic_string_view"** %5, align 8
  store %"class.std::basic_string_view"* %1, %"class.std::basic_string_view"** %6, align 8
  store %"class.std::basic_string_view"* %2, %"class.std::basic_string_view"** %7, align 8
  store %"class.std::allocator"* %3, %"class.std::allocator"** %8, align 8
  %9 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %5, align 8
  %10 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %6, align 8
  %11 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %7, align 8
  %12 = call noundef %"class.std::basic_string_view"* @_ZSt18uninitialized_copyIPKSt17basic_string_viewIcSt11char_traitsIcEEPS3_ET0_T_S8_S7_(%"class.std::basic_string_view"* noundef %9, %"class.std::basic_string_view"* noundef %10, %"class.std::basic_string_view"* noundef %11)
  ret %"class.std::basic_string_view"* %12
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"class.std::basic_string_view"* @_ZNSt15__new_allocatorISt17basic_string_viewIcSt11char_traitsIcEEE8allocateEmPKv(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, i8* noundef %2) #1 comdat align 2 {
  %4 = alloca %"class.std::__new_allocator"*, align 8
  %5 = alloca %"class.std::__new_allocator"*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %"class.std::__new_allocator"* %0, %"class.std::__new_allocator"** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %5, align 8
  %9 = load i64, i64* %6, align 8
  store %"class.std::__new_allocator"* %8, %"class.std::__new_allocator"** %4, align 8
  %10 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %4, align 8
  %11 = icmp ugt i64 %9, 576460752303423487
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = icmp ugt i64 %13, 1152921504606846975
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

16:                                               ; preds = %12
  call void @_ZSt17__throw_bad_allocv() #15
  unreachable

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = mul i64 %18, 16
  %20 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %19) #17
  %21 = bitcast i8* %20 to %"class.std::basic_string_view"*
  ret %"class.std::basic_string_view"* %21
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) #10

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_max_sizeERKS4_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::__new_allocator"*, align 8
  %3 = alloca %"class.std::__new_allocator"*, align 8
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %"class.std::allocator"*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %5, align 8
  store i64 576460752303423487, i64* %6, align 8
  %8 = load %"class.std::allocator"*, %"class.std::allocator"** %5, align 8
  store %"class.std::allocator"* %8, %"class.std::allocator"** %4, align 8
  %9 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %10 = bitcast %"class.std::allocator"* %9 to %"class.std::__new_allocator"*
  store %"class.std::__new_allocator"* %10, %"class.std::__new_allocator"** %3, align 8
  %11 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %3, align 8
  store %"class.std::__new_allocator"* %11, %"class.std::__new_allocator"** %2, align 8
  %12 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %2, align 8
  store i64 576460752303423487, i64* %7, align 8
  %13 = call noundef nonnull align 8 dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %6, i64* noundef nonnull align 8 dereferenceable(8) %7)
  %14 = load i64, i64* %13, align 8
  ret i64 %14
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8* noundef) #8

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"class.std::basic_string_view"* @_ZSt18uninitialized_copyIPKSt17basic_string_viewIcSt11char_traitsIcEEPS3_ET0_T_S8_S7_(%"class.std::basic_string_view"* noundef %0, %"class.std::basic_string_view"* noundef %1, %"class.std::basic_string_view"* noundef %2) #1 comdat {
  %4 = alloca %"class.std::basic_string_view"*, align 8
  %5 = alloca %"class.std::basic_string_view"*, align 8
  %6 = alloca %"class.std::basic_string_view"*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %"class.std::basic_string_view"* %0, %"class.std::basic_string_view"** %4, align 8
  store %"class.std::basic_string_view"* %1, %"class.std::basic_string_view"** %5, align 8
  store %"class.std::basic_string_view"* %2, %"class.std::basic_string_view"** %6, align 8
  store i8 0, i8* %7, align 1
  store i8 0, i8* %8, align 1
  %9 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %4, align 8
  %10 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %5, align 8
  %11 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %6, align 8
  %12 = call noundef %"class.std::basic_string_view"* @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKSt17basic_string_viewIcSt11char_traitsIcEEPS5_EET0_T_SA_S9_(%"class.std::basic_string_view"* noundef %9, %"class.std::basic_string_view"* noundef %10, %"class.std::basic_string_view"* noundef %11)
  ret %"class.std::basic_string_view"* %12
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"class.std::basic_string_view"* @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKSt17basic_string_viewIcSt11char_traitsIcEEPS5_EET0_T_SA_S9_(%"class.std::basic_string_view"* noundef %0, %"class.std::basic_string_view"* noundef %1, %"class.std::basic_string_view"* noundef %2) #1 comdat align 2 {
  %4 = alloca %"class.std::basic_string_view"*, align 8
  %5 = alloca %"class.std::basic_string_view"*, align 8
  %6 = alloca %"class.std::basic_string_view"*, align 8
  store %"class.std::basic_string_view"* %0, %"class.std::basic_string_view"** %4, align 8
  store %"class.std::basic_string_view"* %1, %"class.std::basic_string_view"** %5, align 8
  store %"class.std::basic_string_view"* %2, %"class.std::basic_string_view"** %6, align 8
  %7 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %4, align 8
  %8 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %5, align 8
  %9 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %6, align 8
  %10 = call noundef %"class.std::basic_string_view"* @_ZSt16__do_uninit_copyIPKSt17basic_string_viewIcSt11char_traitsIcEEPS3_ET0_T_S8_S7_(%"class.std::basic_string_view"* noundef %7, %"class.std::basic_string_view"* noundef %8, %"class.std::basic_string_view"* noundef %9)
  ret %"class.std::basic_string_view"* %10
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"class.std::basic_string_view"* @_ZSt16__do_uninit_copyIPKSt17basic_string_viewIcSt11char_traitsIcEEPS3_ET0_T_S8_S7_(%"class.std::basic_string_view"* noundef %0, %"class.std::basic_string_view"* noundef %1, %"class.std::basic_string_view"* noundef %2) #1 comdat {
  %4 = alloca %"class.std::basic_string_view"*, align 8
  %5 = alloca %"class.std::basic_string_view"*, align 8
  %6 = alloca %"class.std::basic_string_view"*, align 8
  %7 = alloca %"class.std::basic_string_view"*, align 8
  store %"class.std::basic_string_view"* %0, %"class.std::basic_string_view"** %4, align 8
  store %"class.std::basic_string_view"* %1, %"class.std::basic_string_view"** %5, align 8
  store %"class.std::basic_string_view"* %2, %"class.std::basic_string_view"** %6, align 8
  %8 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %6, align 8
  store %"class.std::basic_string_view"* %8, %"class.std::basic_string_view"** %7, align 8
  br label %9

9:                                                ; preds = %16, %3
  %10 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %4, align 8
  %11 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %5, align 8
  %12 = icmp ne %"class.std::basic_string_view"* %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %7, align 8
  %15 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %4, align 8
  call void @_ZSt10_ConstructISt17basic_string_viewIcSt11char_traitsIcEEJRKS3_EEvPT_DpOT0_(%"class.std::basic_string_view"* noundef %14, %"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %15)
  br label %16

16:                                               ; preds = %13
  %17 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %4, align 8
  %18 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %17, i32 1
  store %"class.std::basic_string_view"* %18, %"class.std::basic_string_view"** %4, align 8
  %19 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %7, align 8
  %20 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %19, i32 1
  store %"class.std::basic_string_view"* %20, %"class.std::basic_string_view"** %7, align 8
  br label %9, !llvm.loop !11

21:                                               ; preds = %9
  %22 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %7, align 8
  ret %"class.std::basic_string_view"* %22
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructISt17basic_string_viewIcSt11char_traitsIcEEJRKS3_EEvPT_DpOT0_(%"class.std::basic_string_view"* noundef %0, %"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %1) #1 comdat {
  %3 = alloca %"class.std::basic_string_view"*, align 8
  %4 = alloca %"class.std::basic_string_view"*, align 8
  store %"class.std::basic_string_view"* %0, %"class.std::basic_string_view"** %3, align 8
  store %"class.std::basic_string_view"* %1, %"class.std::basic_string_view"** %4, align 8
  %5 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %3, align 8
  %6 = bitcast %"class.std::basic_string_view"* %5 to i8*
  %7 = bitcast i8* %6 to %"class.std::basic_string_view"*
  %8 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %4, align 8
  %9 = bitcast %"class.std::basic_string_view"* %7 to i8*
  %10 = bitcast %"class.std::basic_string_view"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE4sizeEv(%"class.std::initializer_list"* noundef nonnull align 8 dereferenceable(16) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::initializer_list"*, align 8
  store %"class.std::initializer_list"* %0, %"class.std::initializer_list"** %2, align 8
  %3 = load %"class.std::initializer_list"*, %"class.std::initializer_list"** %2, align 8
  %4 = getelementptr inbounds %"class.std::initializer_list", %"class.std::initializer_list"* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  %3 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %4 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %5, i32 0, i32 0
  %7 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %6, align 8
  %8 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %8 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %9, i32 0, i32 2
  %11 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %10, align 8
  %12 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %13 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %12 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %14 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %13, i32 0, i32 0
  %15 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %14, align 8
  %16 = ptrtoint %"class.std::basic_string_view"* %11 to i64
  %17 = ptrtoint %"class.std::basic_string_view"* %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 16
  call void @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %3, %"class.std::basic_string_view"* noundef %7, i64 noundef %19)
  %20 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  call void @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %20) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPSt17basic_string_viewIcSt11char_traitsIcEEEvT_S5_(%"class.std::basic_string_view"* noundef %0, %"class.std::basic_string_view"* noundef %1) #1 comdat {
  %3 = alloca %"class.std::basic_string_view"*, align 8
  %4 = alloca %"class.std::basic_string_view"*, align 8
  store %"class.std::basic_string_view"* %0, %"class.std::basic_string_view"** %3, align 8
  store %"class.std::basic_string_view"* %1, %"class.std::basic_string_view"** %4, align 8
  %5 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %3, align 8
  %6 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %4, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPSt17basic_string_viewIcSt11char_traitsIcEEEEvT_S7_(%"class.std::basic_string_view"* noundef %5, %"class.std::basic_string_view"* noundef %6)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPSt17basic_string_viewIcSt11char_traitsIcEEEEvT_S7_(%"class.std::basic_string_view"* noundef %0, %"class.std::basic_string_view"* noundef %1) #1 comdat align 2 {
  %3 = alloca %"class.std::basic_string_view"*, align 8
  %4 = alloca %"class.std::basic_string_view"*, align 8
  store %"class.std::basic_string_view"* %0, %"class.std::basic_string_view"** %3, align 8
  store %"class.std::basic_string_view"* %1, %"class.std::basic_string_view"** %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %0, %"class.std::basic_string_view"* noundef %1, i64 noundef %2) #1 comdat align 2 {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %"class.std::basic_string_view"*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %"struct.std::_Vector_base"*, align 8
  %8 = alloca %"class.std::basic_string_view"*, align 8
  %9 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %7, align 8
  store %"class.std::basic_string_view"* %1, %"class.std::basic_string_view"** %8, align 8
  store i64 %2, i64* %9, align 8
  %10 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %7, align 8
  %11 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %8, align 8
  %12 = icmp ne %"class.std::basic_string_view"* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %10, i32 0, i32 0
  %15 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %14 to %"class.std::allocator"*
  %16 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %8, align 8
  %17 = load i64, i64* %9, align 8
  store %"class.std::allocator"* %15, %"class.std::allocator"** %4, align 8
  store %"class.std::basic_string_view"* %16, %"class.std::basic_string_view"** %5, align 8
  store i64 %17, i64* %6, align 8
  %18 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %19 = bitcast %"class.std::allocator"* %18 to %"class.std::__new_allocator"*
  %20 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %5, align 8
  %21 = load i64, i64* %6, align 8
  call void @_ZNSt15__new_allocatorISt17basic_string_viewIcSt11char_traitsIcEEE10deallocateEPS3_m(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %19, %"class.std::basic_string_view"* noundef %20, i64 noundef %21)
  br label %22

22:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  %3 = alloca %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %0, %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"** %3, align 8
  %4 = load %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"*, %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"** %3, align 8
  %5 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %4 to %"class.std::allocator"*
  store %"class.std::allocator"* %5, %"class.std::allocator"** %2, align 8
  %6 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %7 = bitcast %"class.std::allocator"* %6 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorISt17basic_string_viewIcSt11char_traitsIcEEED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %7) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt17basic_string_viewIcSt11char_traitsIcEEE10deallocateEPS3_m(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %0, %"class.std::basic_string_view"* noundef %1, i64 noundef %2) #1 comdat align 2 {
  %4 = alloca %"class.std::__new_allocator"*, align 8
  %5 = alloca %"class.std::basic_string_view"*, align 8
  %6 = alloca i64, align 8
  store %"class.std::__new_allocator"* %0, %"class.std::__new_allocator"** %4, align 8
  store %"class.std::basic_string_view"* %1, %"class.std::basic_string_view"** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %4, align 8
  %8 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %5, align 8
  %9 = bitcast %"class.std::basic_string_view"* %8 to i8*
  call void @_ZdlPv(i8* noundef %9) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) %"class.std::basic_string_view"* @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, %"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %1) #1 comdat align 2 {
  %3 = alloca %"class.std::__new_allocator"*, align 8
  %4 = alloca %"class.std::basic_string_view"*, align 8
  %5 = alloca %"class.std::basic_string_view"*, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  %7 = alloca %"class.std::basic_string_view"*, align 8
  %8 = alloca %"class.std::basic_string_view"*, align 8
  %9 = alloca %"class.std::vector"*, align 8
  %10 = alloca %"class.std::basic_string_view"*, align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator.19", align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %9, align 8
  store %"class.std::basic_string_view"* %1, %"class.std::basic_string_view"** %10, align 8
  %12 = load %"class.std::vector"*, %"class.std::vector"** %9, align 8
  %13 = bitcast %"class.std::vector"* %12 to %"struct.std::_Vector_base"*
  %14 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %13, i32 0, i32 0
  %15 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %14 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %16 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %15, i32 0, i32 1
  %17 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %16, align 8
  %18 = bitcast %"class.std::vector"* %12 to %"struct.std::_Vector_base"*
  %19 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %18, i32 0, i32 0
  %20 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %19 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %21 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %20, i32 0, i32 2
  %22 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %21, align 8
  %23 = icmp ne %"class.std::basic_string_view"* %17, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %2
  %25 = bitcast %"class.std::vector"* %12 to %"struct.std::_Vector_base"*
  %26 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %25, i32 0, i32 0
  %27 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %26 to %"class.std::allocator"*
  %28 = bitcast %"class.std::vector"* %12 to %"struct.std::_Vector_base"*
  %29 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %28, i32 0, i32 0
  %30 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %29 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %31 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %30, i32 0, i32 1
  %32 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %31, align 8
  %33 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %10, align 8
  store %"class.std::allocator"* %27, %"class.std::allocator"** %6, align 8
  store %"class.std::basic_string_view"* %32, %"class.std::basic_string_view"** %7, align 8
  store %"class.std::basic_string_view"* %33, %"class.std::basic_string_view"** %8, align 8
  %34 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  %35 = bitcast %"class.std::allocator"* %34 to %"class.std::__new_allocator"*
  %36 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %7, align 8
  %37 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %8, align 8
  store %"class.std::__new_allocator"* %35, %"class.std::__new_allocator"** %3, align 8
  store %"class.std::basic_string_view"* %36, %"class.std::basic_string_view"** %4, align 8
  store %"class.std::basic_string_view"* %37, %"class.std::basic_string_view"** %5, align 8
  %38 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %3, align 8
  %39 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %4, align 8
  %40 = bitcast %"class.std::basic_string_view"* %39 to i8*
  %41 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %5, align 8
  %42 = bitcast %"class.std::basic_string_view"* %39 to i8*
  %43 = bitcast %"class.std::basic_string_view"* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 16, i1 false)
  %44 = bitcast %"class.std::vector"* %12 to %"struct.std::_Vector_base"*
  %45 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %44, i32 0, i32 0
  %46 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %45 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %47 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %46, i32 0, i32 1
  %48 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %47, align 8
  %49 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %48, i32 1
  store %"class.std::basic_string_view"* %49, %"class.std::basic_string_view"** %47, align 8
  br label %56

50:                                               ; preds = %2
  %51 = call %"class.std::basic_string_view"* @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE3endEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %12) #13
  %52 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.19", %"class.__gnu_cxx::__normal_iterator.19"* %11, i32 0, i32 0
  store %"class.std::basic_string_view"* %51, %"class.std::basic_string_view"** %52, align 8
  %53 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %10, align 8
  %54 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.19", %"class.__gnu_cxx::__normal_iterator.19"* %11, i32 0, i32 0
  %55 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %54, align 8
  call void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %12, %"class.std::basic_string_view"* %55, %"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %53)
  br label %56

56:                                               ; preds = %50, %24
  %57 = call noundef nonnull align 8 dereferenceable(16) %"class.std::basic_string_view"* @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4backEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %12) #13
  ret %"class.std::basic_string_view"* %57
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, %"class.std::basic_string_view"* %1, %"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %2) #1 comdat align 2 {
  %4 = alloca %"class.std::__new_allocator"*, align 8
  %5 = alloca %"class.std::basic_string_view"*, align 8
  %6 = alloca %"class.std::basic_string_view"*, align 8
  %7 = alloca %"class.std::allocator"*, align 8
  %8 = alloca %"class.std::basic_string_view"*, align 8
  %9 = alloca %"class.std::basic_string_view"*, align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.19", align 8
  %11 = alloca %"class.std::vector"*, align 8
  %12 = alloca %"class.std::basic_string_view"*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %"class.std::basic_string_view"*, align 8
  %15 = alloca %"class.std::basic_string_view"*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %"class.__gnu_cxx::__normal_iterator.19", align 8
  %18 = alloca %"class.std::basic_string_view"*, align 8
  %19 = alloca %"class.std::basic_string_view"*, align 8
  %20 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.19", %"class.__gnu_cxx::__normal_iterator.19"* %10, i32 0, i32 0
  store %"class.std::basic_string_view"* %1, %"class.std::basic_string_view"** %20, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %11, align 8
  store %"class.std::basic_string_view"* %2, %"class.std::basic_string_view"** %12, align 8
  %21 = load %"class.std::vector"*, %"class.std::vector"** %11, align 8
  %22 = call noundef i64 @_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %21, i64 noundef 1, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0))
  store i64 %22, i64* %13, align 8
  %23 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %24 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %23, i32 0, i32 0
  %25 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %24 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %26 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %25, i32 0, i32 0
  %27 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %26, align 8
  store %"class.std::basic_string_view"* %27, %"class.std::basic_string_view"** %14, align 8
  %28 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %29 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %28, i32 0, i32 0
  %30 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %29 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %31 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %30, i32 0, i32 1
  %32 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %31, align 8
  store %"class.std::basic_string_view"* %32, %"class.std::basic_string_view"** %15, align 8
  %33 = call %"class.std::basic_string_view"* @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE5beginEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %21) #13
  %34 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.19", %"class.__gnu_cxx::__normal_iterator.19"* %17, i32 0, i32 0
  store %"class.std::basic_string_view"* %33, %"class.std::basic_string_view"** %34, align 8
  %35 = call noundef i64 @_ZN9__gnu_cxxmiIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_(%"class.__gnu_cxx::__normal_iterator.19"* noundef nonnull align 8 dereferenceable(8) %10, %"class.__gnu_cxx::__normal_iterator.19"* noundef nonnull align 8 dereferenceable(8) %17) #13
  store i64 %35, i64* %16, align 8
  %36 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %37 = load i64, i64* %13, align 8
  %38 = call noundef %"class.std::basic_string_view"* @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %36, i64 noundef %37)
  store %"class.std::basic_string_view"* %38, %"class.std::basic_string_view"** %18, align 8
  %39 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %18, align 8
  store %"class.std::basic_string_view"* %39, %"class.std::basic_string_view"** %19, align 8
  %40 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %41 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %40, i32 0, i32 0
  %42 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %41 to %"class.std::allocator"*
  %43 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %18, align 8
  %44 = load i64, i64* %16, align 8
  %45 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %43, i64 %44
  %46 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %12, align 8
  store %"class.std::allocator"* %42, %"class.std::allocator"** %7, align 8
  store %"class.std::basic_string_view"* %45, %"class.std::basic_string_view"** %8, align 8
  store %"class.std::basic_string_view"* %46, %"class.std::basic_string_view"** %9, align 8
  %47 = load %"class.std::allocator"*, %"class.std::allocator"** %7, align 8
  %48 = bitcast %"class.std::allocator"* %47 to %"class.std::__new_allocator"*
  %49 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %8, align 8
  %50 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %9, align 8
  store %"class.std::__new_allocator"* %48, %"class.std::__new_allocator"** %4, align 8
  store %"class.std::basic_string_view"* %49, %"class.std::basic_string_view"** %5, align 8
  store %"class.std::basic_string_view"* %50, %"class.std::basic_string_view"** %6, align 8
  %51 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %4, align 8
  %52 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %5, align 8
  %53 = bitcast %"class.std::basic_string_view"* %52 to i8*
  %54 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %6, align 8
  %55 = bitcast %"class.std::basic_string_view"* %52 to i8*
  %56 = bitcast %"class.std::basic_string_view"* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 16, i1 false)
  store %"class.std::basic_string_view"* null, %"class.std::basic_string_view"** %19, align 8
  %57 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %14, align 8
  %58 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string_view"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.19"* noundef nonnull align 8 dereferenceable(8) %10) #13
  %59 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %58, align 8
  %60 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %18, align 8
  %61 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %62 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %61) #13
  %63 = call noundef %"class.std::basic_string_view"* @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_(%"class.std::basic_string_view"* noundef %57, %"class.std::basic_string_view"* noundef %59, %"class.std::basic_string_view"* noundef %60, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %62) #13
  store %"class.std::basic_string_view"* %63, %"class.std::basic_string_view"** %19, align 8
  %64 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %19, align 8
  %65 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %64, i32 1
  store %"class.std::basic_string_view"* %65, %"class.std::basic_string_view"** %19, align 8
  %66 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string_view"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.19"* noundef nonnull align 8 dereferenceable(8) %10) #13
  %67 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %66, align 8
  %68 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %15, align 8
  %69 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %19, align 8
  %70 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %71 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %70) #13
  %72 = call noundef %"class.std::basic_string_view"* @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_(%"class.std::basic_string_view"* noundef %67, %"class.std::basic_string_view"* noundef %68, %"class.std::basic_string_view"* noundef %69, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %71) #13
  store %"class.std::basic_string_view"* %72, %"class.std::basic_string_view"** %19, align 8
  %73 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %74 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %14, align 8
  %75 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %76 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %75, i32 0, i32 0
  %77 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %76 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %78 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %77, i32 0, i32 2
  %79 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %78, align 8
  %80 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %14, align 8
  %81 = ptrtoint %"class.std::basic_string_view"* %79 to i64
  %82 = ptrtoint %"class.std::basic_string_view"* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 16
  call void @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %73, %"class.std::basic_string_view"* noundef %74, i64 noundef %84)
  %85 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %18, align 8
  %86 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %87 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %86, i32 0, i32 0
  %88 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %87 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %89 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %88, i32 0, i32 0
  store %"class.std::basic_string_view"* %85, %"class.std::basic_string_view"** %89, align 8
  %90 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %19, align 8
  %91 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %92 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %91, i32 0, i32 0
  %93 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %92 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %94 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %93, i32 0, i32 1
  store %"class.std::basic_string_view"* %90, %"class.std::basic_string_view"** %94, align 8
  %95 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %18, align 8
  %96 = load i64, i64* %13, align 8
  %97 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %95, i64 %96
  %98 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %99 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %98, i32 0, i32 0
  %100 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %99 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %101 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %100, i32 0, i32 2
  store %"class.std::basic_string_view"* %97, %"class.std::basic_string_view"** %101, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local %"class.std::basic_string_view"* @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE3endEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.19", align 8
  %3 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  %4 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %6 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %7, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEC2ERKS5_(%"class.__gnu_cxx::__normal_iterator.19"* noundef nonnull align 8 dereferenceable(8) %2, %"class.std::basic_string_view"** noundef nonnull align 8 dereferenceable(8) %8) #13
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.19", %"class.__gnu_cxx::__normal_iterator.19"* %2, i32 0, i32 0
  %10 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %9, align 8
  ret %"class.std::basic_string_view"* %10
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) %"class.std::basic_string_view"* @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4backEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::vector"*, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.19", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.19", align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  %5 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %6 = call %"class.std::basic_string_view"* @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE3endEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %5) #13
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.19", %"class.__gnu_cxx::__normal_iterator.19"* %4, i32 0, i32 0
  store %"class.std::basic_string_view"* %6, %"class.std::basic_string_view"** %7, align 8
  %8 = call %"class.std::basic_string_view"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEmiEl(%"class.__gnu_cxx::__normal_iterator.19"* noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 1) #13
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.19", %"class.__gnu_cxx::__normal_iterator.19"* %3, i32 0, i32 0
  store %"class.std::basic_string_view"* %8, %"class.std::basic_string_view"** %9, align 8
  %10 = call noundef nonnull align 8 dereferenceable(16) %"class.std::basic_string_view"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.19"* noundef nonnull align 8 dereferenceable(8) %3) #13
  ret %"class.std::basic_string_view"* %10
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i8* noundef %2) #1 comdat align 2 {
  %4 = alloca %"class.std::vector"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %"class.std::vector"*, %"class.std::vector"** %4, align 8
  %10 = call noundef i64 @_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE8max_sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %9) #13
  %11 = call noundef i64 @_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %9) #13
  %12 = sub i64 %10, %11
  %13 = load i64, i64* %5, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* noundef %16) #15
  unreachable

17:                                               ; preds = %3
  %18 = call noundef i64 @_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %9) #13
  %19 = call noundef i64 @_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %9) #13
  store i64 %19, i64* %8, align 8
  %20 = call noundef nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %8, i64* noundef nonnull align 8 dereferenceable(8) %5)
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %18, %21
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call noundef i64 @_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE4sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %9) #13
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = load i64, i64* %7, align 8
  %28 = call noundef i64 @_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE8max_sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %9) #13
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %17
  %31 = call noundef i64 @_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE8max_sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %9) #13
  br label %34

32:                                               ; preds = %26
  %33 = load i64, i64* %7, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ]
  ret i64 %35
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_(%"class.__gnu_cxx::__normal_iterator.19"* noundef nonnull align 8 dereferenceable(8) %0, %"class.__gnu_cxx::__normal_iterator.19"* noundef nonnull align 8 dereferenceable(8) %1) #1 comdat {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.19"*, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.19"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.19"* %0, %"class.__gnu_cxx::__normal_iterator.19"** %3, align 8
  store %"class.__gnu_cxx::__normal_iterator.19"* %1, %"class.__gnu_cxx::__normal_iterator.19"** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator.19"*, %"class.__gnu_cxx::__normal_iterator.19"** %3, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string_view"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.19"* noundef nonnull align 8 dereferenceable(8) %5) #13
  %7 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %6, align 8
  %8 = load %"class.__gnu_cxx::__normal_iterator.19"*, %"class.__gnu_cxx::__normal_iterator.19"** %4, align 8
  %9 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string_view"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.19"* noundef nonnull align 8 dereferenceable(8) %8) #13
  %10 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %9, align 8
  %11 = ptrtoint %"class.std::basic_string_view"* %7 to i64
  %12 = ptrtoint %"class.std::basic_string_view"* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 16
  ret i64 %14
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local %"class.std::basic_string_view"* @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE5beginEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.19", align 8
  %3 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  %4 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %6 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %7, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEC2ERKS5_(%"class.__gnu_cxx::__normal_iterator.19"* noundef nonnull align 8 dereferenceable(8) %2, %"class.std::basic_string_view"** noundef nonnull align 8 dereferenceable(8) %8) #13
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.19", %"class.__gnu_cxx::__normal_iterator.19"* %2, i32 0, i32 0
  %10 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %9, align 8
  ret %"class.std::basic_string_view"* %10
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"class.std::basic_string_view"* @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_(%"class.std::basic_string_view"* noundef %0, %"class.std::basic_string_view"* noundef %1, %"class.std::basic_string_view"* noundef %2, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %3) #1 comdat align 2 {
  %5 = alloca %"class.std::basic_string_view"*, align 8
  %6 = alloca %"class.std::basic_string_view"*, align 8
  %7 = alloca %"class.std::basic_string_view"*, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  store %"class.std::basic_string_view"* %0, %"class.std::basic_string_view"** %5, align 8
  store %"class.std::basic_string_view"* %1, %"class.std::basic_string_view"** %6, align 8
  store %"class.std::basic_string_view"* %2, %"class.std::basic_string_view"** %7, align 8
  store %"class.std::allocator"* %3, %"class.std::allocator"** %8, align 8
  %9 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %5, align 8
  %10 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %6, align 8
  %11 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %7, align 8
  %12 = load %"class.std::allocator"*, %"class.std::allocator"** %8, align 8
  %13 = call noundef %"class.std::basic_string_view"* @_ZSt12__relocate_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_(%"class.std::basic_string_view"* noundef %9, %"class.std::basic_string_view"* noundef %10, %"class.std::basic_string_view"* noundef %11, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %12) #13
  ret %"class.std::basic_string_view"* %13
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string_view"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.19"* noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.19"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.19"* %0, %"class.__gnu_cxx::__normal_iterator.19"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.19"*, %"class.__gnu_cxx::__normal_iterator.19"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.19", %"class.__gnu_cxx::__normal_iterator.19"* %3, i32 0, i32 0
  ret %"class.std::basic_string_view"** %4
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE8max_sizeEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  %3 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  %5 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %4) #13
  %6 = call noundef i64 @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_max_sizeERKS4_(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %5) #13
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %0, i64* noundef nonnull align 8 dereferenceable(8) %1) #1 comdat {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load i64*, i64** %4, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i64*, i64** %5, align 8
  store i64* %12, i64** %3, align 8
  br label %15

13:                                               ; preds = %2
  %14 = load i64*, i64** %4, align 8
  store i64* %14, i64** %3, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i64*, i64** %3, align 8
  ret i64* %16
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  %3 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %4 to %"class.std::allocator"*
  ret %"class.std::allocator"* %5
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEC2ERKS5_(%"class.__gnu_cxx::__normal_iterator.19"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::basic_string_view"** noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.19"*, align 8
  %4 = alloca %"class.std::basic_string_view"**, align 8
  store %"class.__gnu_cxx::__normal_iterator.19"* %0, %"class.__gnu_cxx::__normal_iterator.19"** %3, align 8
  store %"class.std::basic_string_view"** %1, %"class.std::basic_string_view"*** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator.19"*, %"class.__gnu_cxx::__normal_iterator.19"** %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.19", %"class.__gnu_cxx::__normal_iterator.19"* %5, i32 0, i32 0
  %7 = load %"class.std::basic_string_view"**, %"class.std::basic_string_view"*** %4, align 8
  %8 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %7, align 8
  store %"class.std::basic_string_view"* %8, %"class.std::basic_string_view"** %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"class.std::basic_string_view"* @_ZSt12__relocate_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_(%"class.std::basic_string_view"* noundef %0, %"class.std::basic_string_view"* noundef %1, %"class.std::basic_string_view"* noundef %2, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %3) #1 comdat {
  %5 = alloca %"class.std::basic_string_view"*, align 8
  %6 = alloca %"class.std::basic_string_view"*, align 8
  %7 = alloca %"class.std::basic_string_view"*, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  store %"class.std::basic_string_view"* %0, %"class.std::basic_string_view"** %5, align 8
  store %"class.std::basic_string_view"* %1, %"class.std::basic_string_view"** %6, align 8
  store %"class.std::basic_string_view"* %2, %"class.std::basic_string_view"** %7, align 8
  store %"class.std::allocator"* %3, %"class.std::allocator"** %8, align 8
  %9 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %5, align 8
  %10 = call noundef %"class.std::basic_string_view"* @_ZSt12__niter_baseIPSt17basic_string_viewIcSt11char_traitsIcEEET_S5_(%"class.std::basic_string_view"* noundef %9) #13
  %11 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %6, align 8
  %12 = call noundef %"class.std::basic_string_view"* @_ZSt12__niter_baseIPSt17basic_string_viewIcSt11char_traitsIcEEET_S5_(%"class.std::basic_string_view"* noundef %11) #13
  %13 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %7, align 8
  %14 = call noundef %"class.std::basic_string_view"* @_ZSt12__niter_baseIPSt17basic_string_viewIcSt11char_traitsIcEEET_S5_(%"class.std::basic_string_view"* noundef %13) #13
  %15 = load %"class.std::allocator"*, %"class.std::allocator"** %8, align 8
  %16 = call noundef %"class.std::basic_string_view"* @_ZSt14__relocate_a_1IPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_(%"class.std::basic_string_view"* noundef %10, %"class.std::basic_string_view"* noundef %12, %"class.std::basic_string_view"* noundef %14, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %15) #13
  ret %"class.std::basic_string_view"* %16
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"class.std::basic_string_view"* @_ZSt14__relocate_a_1IPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_(%"class.std::basic_string_view"* noundef %0, %"class.std::basic_string_view"* noundef %1, %"class.std::basic_string_view"* noundef %2, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %3) #1 comdat {
  %5 = alloca %"class.std::basic_string_view"*, align 8
  %6 = alloca %"class.std::basic_string_view"*, align 8
  %7 = alloca %"class.std::basic_string_view"*, align 8
  %8 = alloca %"class.std::allocator"*, align 8
  %9 = alloca %"class.std::basic_string_view"*, align 8
  store %"class.std::basic_string_view"* %0, %"class.std::basic_string_view"** %5, align 8
  store %"class.std::basic_string_view"* %1, %"class.std::basic_string_view"** %6, align 8
  store %"class.std::basic_string_view"* %2, %"class.std::basic_string_view"** %7, align 8
  store %"class.std::allocator"* %3, %"class.std::allocator"** %8, align 8
  %10 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %7, align 8
  store %"class.std::basic_string_view"* %10, %"class.std::basic_string_view"** %9, align 8
  br label %11

11:                                               ; preds = %19, %4
  %12 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %5, align 8
  %13 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %6, align 8
  %14 = icmp ne %"class.std::basic_string_view"* %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %9, align 8
  %17 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %5, align 8
  %18 = load %"class.std::allocator"*, %"class.std::allocator"** %8, align 8
  call void @_ZSt19__relocate_object_aISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_EEvPT_PT0_RT1_(%"class.std::basic_string_view"* noundef %16, %"class.std::basic_string_view"* noundef %17, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %18) #13
  br label %19

19:                                               ; preds = %15
  %20 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %5, align 8
  %21 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %20, i32 1
  store %"class.std::basic_string_view"* %21, %"class.std::basic_string_view"** %5, align 8
  %22 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %9, align 8
  %23 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %22, i32 1
  store %"class.std::basic_string_view"* %23, %"class.std::basic_string_view"** %9, align 8
  br label %11, !llvm.loop !12

24:                                               ; preds = %11
  %25 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %9, align 8
  ret %"class.std::basic_string_view"* %25
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"class.std::basic_string_view"* @_ZSt12__niter_baseIPSt17basic_string_viewIcSt11char_traitsIcEEET_S5_(%"class.std::basic_string_view"* noundef %0) #1 comdat {
  %2 = alloca %"class.std::basic_string_view"*, align 8
  store %"class.std::basic_string_view"* %0, %"class.std::basic_string_view"** %2, align 8
  %3 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %2, align 8
  ret %"class.std::basic_string_view"* %3
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZSt19__relocate_object_aISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_EEvPT_PT0_RT1_(%"class.std::basic_string_view"* noalias noundef %0, %"class.std::basic_string_view"* noalias noundef %1, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %2) #1 comdat {
  %4 = alloca %"class.std::__new_allocator"*, align 8
  %5 = alloca %"class.std::basic_string_view"*, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  %7 = alloca %"class.std::basic_string_view"*, align 8
  %8 = alloca %"class.std::__new_allocator"*, align 8
  %9 = alloca %"class.std::basic_string_view"*, align 8
  %10 = alloca %"class.std::basic_string_view"*, align 8
  %11 = alloca %"class.std::allocator"*, align 8
  %12 = alloca %"class.std::basic_string_view"*, align 8
  %13 = alloca %"class.std::basic_string_view"*, align 8
  %14 = alloca %"class.std::basic_string_view"*, align 8
  %15 = alloca %"class.std::basic_string_view"*, align 8
  %16 = alloca %"class.std::allocator"*, align 8
  store %"class.std::basic_string_view"* %0, %"class.std::basic_string_view"** %14, align 8
  store %"class.std::basic_string_view"* %1, %"class.std::basic_string_view"** %15, align 8
  store %"class.std::allocator"* %2, %"class.std::allocator"** %16, align 8
  %17 = load %"class.std::allocator"*, %"class.std::allocator"** %16, align 8
  %18 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %14, align 8
  %19 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %15, align 8
  store %"class.std::allocator"* %17, %"class.std::allocator"** %11, align 8
  store %"class.std::basic_string_view"* %18, %"class.std::basic_string_view"** %12, align 8
  store %"class.std::basic_string_view"* %19, %"class.std::basic_string_view"** %13, align 8
  %20 = load %"class.std::allocator"*, %"class.std::allocator"** %11, align 8
  %21 = bitcast %"class.std::allocator"* %20 to %"class.std::__new_allocator"*
  %22 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %12, align 8
  %23 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %13, align 8
  store %"class.std::__new_allocator"* %21, %"class.std::__new_allocator"** %8, align 8
  store %"class.std::basic_string_view"* %22, %"class.std::basic_string_view"** %9, align 8
  store %"class.std::basic_string_view"* %23, %"class.std::basic_string_view"** %10, align 8
  %24 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %8, align 8
  %25 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %9, align 8
  %26 = bitcast %"class.std::basic_string_view"* %25 to i8*
  %27 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %10, align 8
  %28 = bitcast %"class.std::basic_string_view"* %25 to i8*
  %29 = bitcast %"class.std::basic_string_view"* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 16, i1 false)
  %30 = load %"class.std::allocator"*, %"class.std::allocator"** %16, align 8
  %31 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %15, align 8
  store %"class.std::allocator"* %30, %"class.std::allocator"** %6, align 8
  store %"class.std::basic_string_view"* %31, %"class.std::basic_string_view"** %7, align 8
  %32 = load %"class.std::allocator"*, %"class.std::allocator"** %6, align 8
  %33 = bitcast %"class.std::allocator"* %32 to %"class.std::__new_allocator"*
  %34 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %7, align 8
  store %"class.std::__new_allocator"* %33, %"class.std::__new_allocator"** %4, align 8
  store %"class.std::basic_string_view"* %34, %"class.std::basic_string_view"** %5, align 8
  %35 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %4, align 8
  %36 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %5, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local %"class.std::basic_string_view"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEmiEl(%"class.__gnu_cxx::__normal_iterator.19"* noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) #1 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.19", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.19"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %"class.std::basic_string_view"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.19"* %0, %"class.__gnu_cxx::__normal_iterator.19"** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %"class.__gnu_cxx::__normal_iterator.19"*, %"class.__gnu_cxx::__normal_iterator.19"** %4, align 8
  %8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.19", %"class.__gnu_cxx::__normal_iterator.19"* %7, i32 0, i32 0
  %9 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = sub i64 0, %10
  %12 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %9, i64 %11
  store %"class.std::basic_string_view"* %12, %"class.std::basic_string_view"** %6, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEC2ERKS5_(%"class.__gnu_cxx::__normal_iterator.19"* noundef nonnull align 8 dereferenceable(8) %3, %"class.std::basic_string_view"** noundef nonnull align 8 dereferenceable(8) %6) #13
  %13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.19", %"class.__gnu_cxx::__normal_iterator.19"* %3, i32 0, i32 0
  %14 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %13, align 8
  ret %"class.std::basic_string_view"* %14
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) %"class.std::basic_string_view"* @_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEdeEv(%"class.__gnu_cxx::__normal_iterator.19"* noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.19"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.19"* %0, %"class.__gnu_cxx::__normal_iterator.19"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.19"*, %"class.__gnu_cxx::__normal_iterator.19"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.19", %"class.__gnu_cxx::__normal_iterator.19"* %3, i32 0, i32 0
  %5 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %4, align 8
  ret %"class.std::basic_string_view"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, %"class.std::basic_string_view"* %1, %"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %2) #1 comdat align 2 {
  %4 = alloca %"class.std::__new_allocator"*, align 8
  %5 = alloca %"class.std::basic_string_view"*, align 8
  %6 = alloca %"class.std::basic_string_view"*, align 8
  %7 = alloca %"class.std::allocator"*, align 8
  %8 = alloca %"class.std::basic_string_view"*, align 8
  %9 = alloca %"class.std::basic_string_view"*, align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.19", align 8
  %11 = alloca %"class.std::vector"*, align 8
  %12 = alloca %"class.std::basic_string_view"*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %"class.std::basic_string_view"*, align 8
  %15 = alloca %"class.std::basic_string_view"*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %"class.__gnu_cxx::__normal_iterator.19", align 8
  %18 = alloca %"class.std::basic_string_view"*, align 8
  %19 = alloca %"class.std::basic_string_view"*, align 8
  %20 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.19", %"class.__gnu_cxx::__normal_iterator.19"* %10, i32 0, i32 0
  store %"class.std::basic_string_view"* %1, %"class.std::basic_string_view"** %20, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %11, align 8
  store %"class.std::basic_string_view"* %2, %"class.std::basic_string_view"** %12, align 8
  %21 = load %"class.std::vector"*, %"class.std::vector"** %11, align 8
  %22 = call noundef i64 @_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %21, i64 noundef 1, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0))
  store i64 %22, i64* %13, align 8
  %23 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %24 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %23, i32 0, i32 0
  %25 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %24 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %26 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %25, i32 0, i32 0
  %27 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %26, align 8
  store %"class.std::basic_string_view"* %27, %"class.std::basic_string_view"** %14, align 8
  %28 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %29 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %28, i32 0, i32 0
  %30 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %29 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %31 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %30, i32 0, i32 1
  %32 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %31, align 8
  store %"class.std::basic_string_view"* %32, %"class.std::basic_string_view"** %15, align 8
  %33 = call %"class.std::basic_string_view"* @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE5beginEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %21) #13
  %34 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.19", %"class.__gnu_cxx::__normal_iterator.19"* %17, i32 0, i32 0
  store %"class.std::basic_string_view"* %33, %"class.std::basic_string_view"** %34, align 8
  %35 = call noundef i64 @_ZN9__gnu_cxxmiIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_(%"class.__gnu_cxx::__normal_iterator.19"* noundef nonnull align 8 dereferenceable(8) %10, %"class.__gnu_cxx::__normal_iterator.19"* noundef nonnull align 8 dereferenceable(8) %17) #13
  store i64 %35, i64* %16, align 8
  %36 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %37 = load i64, i64* %13, align 8
  %38 = call noundef %"class.std::basic_string_view"* @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %36, i64 noundef %37)
  store %"class.std::basic_string_view"* %38, %"class.std::basic_string_view"** %18, align 8
  %39 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %18, align 8
  store %"class.std::basic_string_view"* %39, %"class.std::basic_string_view"** %19, align 8
  %40 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %41 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %40, i32 0, i32 0
  %42 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %41 to %"class.std::allocator"*
  %43 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %18, align 8
  %44 = load i64, i64* %16, align 8
  %45 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %43, i64 %44
  %46 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %12, align 8
  store %"class.std::allocator"* %42, %"class.std::allocator"** %7, align 8
  store %"class.std::basic_string_view"* %45, %"class.std::basic_string_view"** %8, align 8
  store %"class.std::basic_string_view"* %46, %"class.std::basic_string_view"** %9, align 8
  %47 = load %"class.std::allocator"*, %"class.std::allocator"** %7, align 8
  %48 = bitcast %"class.std::allocator"* %47 to %"class.std::__new_allocator"*
  %49 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %8, align 8
  %50 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %9, align 8
  store %"class.std::__new_allocator"* %48, %"class.std::__new_allocator"** %4, align 8
  store %"class.std::basic_string_view"* %49, %"class.std::basic_string_view"** %5, align 8
  store %"class.std::basic_string_view"* %50, %"class.std::basic_string_view"** %6, align 8
  %51 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %4, align 8
  %52 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %5, align 8
  %53 = bitcast %"class.std::basic_string_view"* %52 to i8*
  %54 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %6, align 8
  %55 = bitcast %"class.std::basic_string_view"* %52 to i8*
  %56 = bitcast %"class.std::basic_string_view"* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 16, i1 false)
  store %"class.std::basic_string_view"* null, %"class.std::basic_string_view"** %19, align 8
  %57 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %14, align 8
  %58 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string_view"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.19"* noundef nonnull align 8 dereferenceable(8) %10) #13
  %59 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %58, align 8
  %60 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %18, align 8
  %61 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %62 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %61) #13
  %63 = call noundef %"class.std::basic_string_view"* @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_(%"class.std::basic_string_view"* noundef %57, %"class.std::basic_string_view"* noundef %59, %"class.std::basic_string_view"* noundef %60, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %62) #13
  store %"class.std::basic_string_view"* %63, %"class.std::basic_string_view"** %19, align 8
  %64 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %19, align 8
  %65 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %64, i32 1
  store %"class.std::basic_string_view"* %65, %"class.std::basic_string_view"** %19, align 8
  %66 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string_view"** @_ZNK9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.19"* noundef nonnull align 8 dereferenceable(8) %10) #13
  %67 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %66, align 8
  %68 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %15, align 8
  %69 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %19, align 8
  %70 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %71 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %70) #13
  %72 = call noundef %"class.std::basic_string_view"* @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_(%"class.std::basic_string_view"* noundef %67, %"class.std::basic_string_view"* noundef %68, %"class.std::basic_string_view"* noundef %69, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %71) #13
  store %"class.std::basic_string_view"* %72, %"class.std::basic_string_view"** %19, align 8
  %73 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %74 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %14, align 8
  %75 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %76 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %75, i32 0, i32 0
  %77 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %76 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %78 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %77, i32 0, i32 2
  %79 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %78, align 8
  %80 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %14, align 8
  %81 = ptrtoint %"class.std::basic_string_view"* %79 to i64
  %82 = ptrtoint %"class.std::basic_string_view"* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 16
  call void @_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %73, %"class.std::basic_string_view"* noundef %74, i64 noundef %84)
  %85 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %18, align 8
  %86 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %87 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %86, i32 0, i32 0
  %88 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %87 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %89 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %88, i32 0, i32 0
  store %"class.std::basic_string_view"* %85, %"class.std::basic_string_view"** %89, align 8
  %90 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %19, align 8
  %91 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %92 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %91, i32 0, i32 0
  %93 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %92 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %94 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %93, i32 0, i32 1
  store %"class.std::basic_string_view"* %90, %"class.std::basic_string_view"** %94, align 8
  %95 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %18, align 8
  %96 = load i64, i64* %13, align 8
  %97 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %95, i64 %96
  %98 = bitcast %"class.std::vector"* %21 to %"struct.std::_Vector_base"*
  %99 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %98, i32 0, i32 0
  %100 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %99 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %101 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %100, i32 0, i32 2
  store %"class.std::basic_string_view"* %97, %"class.std::basic_string_view"** %101, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathC2IA2_cS1_EERKT_NS1_6formatE(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %0, [2 x i8]* noundef nonnull align 1 dereferenceable(2) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 {
  %4 = alloca %"class.std::__new_allocator.1"*, align 8
  %5 = alloca %"class.std::allocator.0"*, align 8
  %6 = alloca %"class.std::allocator.0"*, align 8
  %7 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  %8 = alloca [2 x i8]*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %"class.std::basic_string_view", align 8
  %11 = alloca %"class.std::basic_string_view", align 8
  %12 = alloca %"class.std::allocator.0", align 1
  store %"class.std::filesystem::__cxx11::path"* %0, %"class.std::filesystem::__cxx11::path"** %7, align 8
  store [2 x i8]* %1, [2 x i8]** %8, align 8
  store i8 %2, i8* %9, align 1
  %13 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %7, align 8
  %14 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %13, i32 0, i32 0
  %15 = load [2 x i8]*, [2 x i8]** %8, align 8
  %16 = call { i64, i8* } @_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA2_cEEDaRKT_([2 x i8]* noundef nonnull align 1 dereferenceable(2) %15)
  %17 = bitcast %"class.std::basic_string_view"* %11 to { i64, i8* }*
  %18 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %17, i32 0, i32 0
  %19 = extractvalue { i64, i8* } %16, 0
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %17, i32 0, i32 1
  %21 = extractvalue { i64, i8* } %16, 1
  store i8* %21, i8** %20, align 8
  %22 = bitcast %"class.std::basic_string_view"* %11 to { i64, i8* }*
  %23 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %22, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call { i64, i8* } @_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_(i64 %24, i8* %26) #13
  %28 = bitcast %"class.std::basic_string_view"* %10 to { i64, i8* }*
  %29 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %28, i32 0, i32 0
  %30 = extractvalue { i64, i8* } %27, 0
  store i64 %30, i64* %29, align 8
  %31 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %28, i32 0, i32 1
  %32 = extractvalue { i64, i8* } %27, 1
  store i8* %32, i8** %31, align 8
  store %"class.std::allocator.0"* %12, %"class.std::allocator.0"** %6, align 8
  %33 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %6, align 8
  %34 = bitcast %"class.std::allocator.0"* %33 to %"class.std::__new_allocator.1"*
  store %"class.std::__new_allocator.1"* %34, %"class.std::__new_allocator.1"** %4, align 8
  %35 = load %"class.std::__new_allocator.1"*, %"class.std::__new_allocator.1"** %4, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %14, %"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %10, %"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1) %12)
  store %"class.std::allocator.0"* %12, %"class.std::allocator.0"** %5, align 8
  %36 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %5, align 8
  %37 = bitcast %"class.std::allocator.0"* %36 to %"class.std::__new_allocator.1"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator.1"* noundef nonnull align 1 dereferenceable(1) %37) #13
  %38 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %13, i32 0, i32 1
  call void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(%"struct.std::filesystem::__cxx11::path::_List"* noundef nonnull align 8 dereferenceable(8) %38)
  call void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %13)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) %"class.std::filesystem::__cxx11::path"* @_ZNSt10filesystem7__cxx114pathaSEOS1_(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %0, %"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %1) #1 comdat align 2 {
  %3 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  %4 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  %5 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  store %"class.std::filesystem::__cxx11::path"* %0, %"class.std::filesystem::__cxx11::path"** %4, align 8
  store %"class.std::filesystem::__cxx11::path"* %1, %"class.std::filesystem::__cxx11::path"** %5, align 8
  %6 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %4, align 8
  %7 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %5, align 8
  %8 = icmp eq %"class.std::filesystem::__cxx11::path"* %7, %6
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %"class.std::filesystem::__cxx11::path"* %6, %"class.std::filesystem::__cxx11::path"** %3, align 8
  br label %20

10:                                               ; preds = %2
  %11 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %5, align 8
  %12 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %11, i32 0, i32 0
  %13 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %6, i32 0, i32 0
  %14 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %13, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %12) #13
  %15 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %5, align 8
  %16 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %15, i32 0, i32 1
  %17 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %6, i32 0, i32 1
  %18 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List"* @_ZNSt10filesystem7__cxx114path5_ListaSEOS2_(%"struct.std::filesystem::__cxx11::path::_List"* noundef nonnull align 8 dereferenceable(8) %17, %"struct.std::filesystem::__cxx11::path::_List"* noundef nonnull align 8 dereferenceable(8) %16) #13
  %19 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %5, align 8
  call void @_ZNSt10filesystem7__cxx114path5clearEv(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %19) #13
  store %"class.std::filesystem::__cxx11::path"* %6, %"class.std::filesystem::__cxx11::path"** %3, align 8
  br label %20

20:                                               ; preds = %10, %9
  %21 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %3, align 8
  ret %"class.std::filesystem::__cxx11::path"* %21
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local { i64, i8* } @_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_(i64 %0, i8* %1) #1 comdat align 2 {
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

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local { i64, i8* } @_ZNSt10filesystem7__cxx118__detail17__effective_rangeIA2_cEEDaRKT_([2 x i8]* noundef nonnull align 1 dereferenceable(2) %0) #1 comdat {
  %2 = alloca %"class.std::basic_string_view", align 8
  %3 = alloca [2 x i8]*, align 8
  store [2 x i8]* %0, [2 x i8]** %3, align 8
  %4 = load [2 x i8]*, [2 x i8]** %3, align 8
  %5 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  call void @_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef %5) #13
  %6 = bitcast %"class.std::basic_string_view"* %2 to { i64, i8* }*
  %7 = load { i64, i8* }, { i64, i8* }* %6, align 8
  ret { i64, i8* } %7
}

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40)) #4

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #5

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List"* @_ZNSt10filesystem7__cxx114path5_ListaSEOS2_(%"struct.std::filesystem::__cxx11::path::_List"* noundef nonnull align 8 dereferenceable(8) %0, %"struct.std::filesystem::__cxx11::path::_List"* noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
  %3 = alloca %"struct.std::filesystem::__cxx11::path::_List"*, align 8
  %4 = alloca %"struct.std::filesystem::__cxx11::path::_List"*, align 8
  store %"struct.std::filesystem::__cxx11::path::_List"* %0, %"struct.std::filesystem::__cxx11::path::_List"** %3, align 8
  store %"struct.std::filesystem::__cxx11::path::_List"* %1, %"struct.std::filesystem::__cxx11::path::_List"** %4, align 8
  %5 = load %"struct.std::filesystem::__cxx11::path::_List"*, %"struct.std::filesystem::__cxx11::path::_List"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::filesystem::__cxx11::path::_List", %"struct.std::filesystem::__cxx11::path::_List"* %5, i32 0, i32 0
  %7 = load %"struct.std::filesystem::__cxx11::path::_List"*, %"struct.std::filesystem::__cxx11::path::_List"** %4, align 8
  %8 = getelementptr inbounds %"struct.std::filesystem::__cxx11::path::_List", %"struct.std::filesystem::__cxx11::path::_List"* %7, i32 0, i32 0
  %9 = call noundef nonnull align 8 dereferenceable(8) %"class.std::unique_ptr"* @_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEaSEOS6_(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %6, %"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %8) #13
  ret %"struct.std::filesystem::__cxx11::path::_List"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114path5clearEv(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  store %"class.std::filesystem::__cxx11::path"* %0, %"class.std::filesystem::__cxx11::path"** %2, align 8
  %3 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %2, align 8
  %4 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %3, i32 0, i32 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5clearEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4) #13
  call void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %3)
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::unique_ptr"* @_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEaSEOS6_(%"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::unique_ptr"* noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
  %3 = alloca %"class.std::unique_ptr"*, align 8
  %4 = alloca %"class.std::unique_ptr"*, align 8
  store %"class.std::unique_ptr"* %0, %"class.std::unique_ptr"** %3, align 8
  store %"class.std::unique_ptr"* %1, %"class.std::unique_ptr"** %4, align 8
  %5 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %3, align 8
  %6 = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %5, i32 0, i32 0
  %7 = load %"class.std::unique_ptr"*, %"class.std::unique_ptr"** %4, align 8
  %8 = getelementptr inbounds %"class.std::unique_ptr", %"class.std::unique_ptr"* %7, i32 0, i32 0
  %9 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::__uniq_ptr_data"* @_ZNSt15__uniq_ptr_dataINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterELb1ELb1EEaSEOS6_(%"struct.std::__uniq_ptr_data"* noundef nonnull align 8 dereferenceable(8) %6, %"struct.std::__uniq_ptr_data"* noundef nonnull align 8 dereferenceable(8) %8) #13
  ret %"class.std::unique_ptr"* %5
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::__uniq_ptr_data"* @_ZNSt15__uniq_ptr_dataINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterELb1ELb1EEaSEOS6_(%"struct.std::__uniq_ptr_data"* noundef nonnull align 8 dereferenceable(8) %0, %"struct.std::__uniq_ptr_data"* noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
  %3 = alloca %"struct.std::__uniq_ptr_data"*, align 8
  %4 = alloca %"struct.std::__uniq_ptr_data"*, align 8
  store %"struct.std::__uniq_ptr_data"* %0, %"struct.std::__uniq_ptr_data"** %3, align 8
  store %"struct.std::__uniq_ptr_data"* %1, %"struct.std::__uniq_ptr_data"** %4, align 8
  %5 = load %"struct.std::__uniq_ptr_data"*, %"struct.std::__uniq_ptr_data"** %3, align 8
  %6 = bitcast %"struct.std::__uniq_ptr_data"* %5 to %"class.std::__uniq_ptr_impl"*
  %7 = load %"struct.std::__uniq_ptr_data"*, %"struct.std::__uniq_ptr_data"** %4, align 8
  %8 = bitcast %"struct.std::__uniq_ptr_data"* %7 to %"class.std::__uniq_ptr_impl"*
  %9 = call noundef nonnull align 8 dereferenceable(8) %"class.std::__uniq_ptr_impl"* @_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEaSEOS6_(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %6, %"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %8) #13
  ret %"struct.std::__uniq_ptr_data"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::__uniq_ptr_impl"* @_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEaSEOS6_(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %1) #1 comdat align 2 {
  %3 = alloca %"class.std::__uniq_ptr_impl"*, align 8
  %4 = alloca %"class.std::__uniq_ptr_impl"*, align 8
  store %"class.std::__uniq_ptr_impl"* %0, %"class.std::__uniq_ptr_impl"** %3, align 8
  store %"class.std::__uniq_ptr_impl"* %1, %"class.std::__uniq_ptr_impl"** %4, align 8
  %5 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %3, align 8
  %6 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %4, align 8
  %7 = call noundef %"struct.std::filesystem::__cxx11::path::_List::_Impl"* @_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE7releaseEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %6) #13
  call void @_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE5resetEPS4_(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %5, %"struct.std::filesystem::__cxx11::path::_List::_Impl"* noundef %7) #13
  %8 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %4, align 8
  %9 = call noundef nonnull align 1 dereferenceable(1) %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* @_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %8) #13
  %10 = call noundef nonnull align 1 dereferenceable(1) %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* @_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %5) #13
  ret %"class.std::__uniq_ptr_impl"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE5resetEPS4_(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %0, %"struct.std::filesystem::__cxx11::path::_List::_Impl"* noundef %1) #1 comdat align 2 {
  %3 = alloca %"class.std::__uniq_ptr_impl"*, align 8
  %4 = alloca %"struct.std::filesystem::__cxx11::path::_List::_Impl"*, align 8
  %5 = alloca %"struct.std::filesystem::__cxx11::path::_List::_Impl"*, align 8
  store %"class.std::__uniq_ptr_impl"* %0, %"class.std::__uniq_ptr_impl"** %3, align 8
  store %"struct.std::filesystem::__cxx11::path::_List::_Impl"* %1, %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %4, align 8
  %6 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %3, align 8
  %7 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %6) #13
  %8 = load %"struct.std::filesystem::__cxx11::path::_List::_Impl"*, %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %7, align 8
  store %"struct.std::filesystem::__cxx11::path::_List::_Impl"* %8, %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %5, align 8
  %9 = load %"struct.std::filesystem::__cxx11::path::_List::_Impl"*, %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %4, align 8
  %10 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %6) #13
  store %"struct.std::filesystem::__cxx11::path::_List::_Impl"* %9, %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %10, align 8
  %11 = load %"struct.std::filesystem::__cxx11::path::_List::_Impl"*, %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %5, align 8
  %12 = icmp ne %"struct.std::filesystem::__cxx11::path::_List::_Impl"* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = call noundef nonnull align 1 dereferenceable(1) %"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* @_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %6) #13
  %15 = load %"struct.std::filesystem::__cxx11::path::_List::_Impl"*, %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %5, align 8
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(%"struct.std::filesystem::__cxx11::path::_List::_Impl_deleter"* noundef nonnull align 1 dereferenceable(1) %14, %"struct.std::filesystem::__cxx11::path::_List::_Impl"* noundef %15) #13
  br label %16

16:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"struct.std::filesystem::__cxx11::path::_List::_Impl"* @_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE7releaseEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::__uniq_ptr_impl"*, align 8
  %3 = alloca %"struct.std::filesystem::__cxx11::path::_List::_Impl"*, align 8
  store %"class.std::__uniq_ptr_impl"* %0, %"class.std::__uniq_ptr_impl"** %2, align 8
  %4 = load %"class.std::__uniq_ptr_impl"*, %"class.std::__uniq_ptr_impl"** %2, align 8
  %5 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %4) #13
  %6 = load %"struct.std::filesystem::__cxx11::path::_List::_Impl"*, %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %5, align 8
  store %"struct.std::filesystem::__cxx11::path::_List::_Impl"* %6, %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %3, align 8
  %7 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::filesystem::__cxx11::path::_List::_Impl"** @_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv(%"class.std::__uniq_ptr_impl"* noundef nonnull align 8 dereferenceable(8) %4) #13
  store %"struct.std::filesystem::__cxx11::path::_List::_Impl"* null, %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %7, align 8
  %8 = load %"struct.std::filesystem::__cxx11::path::_List::_Impl"*, %"struct.std::filesystem::__cxx11::path::_List::_Impl"** %3, align 8
  ret %"struct.std::filesystem::__cxx11::path::_List::_Impl"* %8
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5clearEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #5

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %0, %"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 {
  %4 = alloca %"class.std::__new_allocator.1"*, align 8
  %5 = alloca %"class.std::allocator.0"*, align 8
  %6 = alloca %"class.std::allocator.0"*, align 8
  %7 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  %8 = alloca %"class.std::basic_string_view"*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %"class.std::basic_string_view", align 8
  %11 = alloca %"class.std::basic_string_view", align 8
  %12 = alloca %"class.std::allocator.0", align 1
  store %"class.std::filesystem::__cxx11::path"* %0, %"class.std::filesystem::__cxx11::path"** %7, align 8
  store %"class.std::basic_string_view"* %1, %"class.std::basic_string_view"** %8, align 8
  store i8 %2, i8* %9, align 1
  %13 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %7, align 8
  %14 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %13, i32 0, i32 0
  %15 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %8, align 8
  %16 = call { i64, i8* } @_ZNSt10filesystem7__cxx118__detail17__effective_rangeIcSt11char_traitsIcEEESt17basic_string_viewIT_S3_IS6_EERKS5_IS6_T0_E(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %15) #13
  %17 = bitcast %"class.std::basic_string_view"* %11 to { i64, i8* }*
  %18 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %17, i32 0, i32 0
  %19 = extractvalue { i64, i8* } %16, 0
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %17, i32 0, i32 1
  %21 = extractvalue { i64, i8* } %16, 1
  store i8* %21, i8** %20, align 8
  %22 = bitcast %"class.std::basic_string_view"* %11 to { i64, i8* }*
  %23 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %22, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call { i64, i8* } @_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_(i64 %24, i8* %26) #13
  %28 = bitcast %"class.std::basic_string_view"* %10 to { i64, i8* }*
  %29 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %28, i32 0, i32 0
  %30 = extractvalue { i64, i8* } %27, 0
  store i64 %30, i64* %29, align 8
  %31 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %28, i32 0, i32 1
  %32 = extractvalue { i64, i8* } %27, 1
  store i8* %32, i8** %31, align 8
  store %"class.std::allocator.0"* %12, %"class.std::allocator.0"** %6, align 8
  %33 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %6, align 8
  %34 = bitcast %"class.std::allocator.0"* %33 to %"class.std::__new_allocator.1"*
  store %"class.std::__new_allocator.1"* %34, %"class.std::__new_allocator.1"** %4, align 8
  %35 = load %"class.std::__new_allocator.1"*, %"class.std::__new_allocator.1"** %4, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %14, %"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %10, %"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1) %12)
  store %"class.std::allocator.0"* %12, %"class.std::allocator.0"** %5, align 8
  %36 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %5, align 8
  %37 = bitcast %"class.std::allocator.0"* %36 to %"class.std::__new_allocator.1"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator.1"* noundef nonnull align 1 dereferenceable(1) %37) #13
  %38 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %13, i32 0, i32 1
  call void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(%"struct.std::filesystem::__cxx11::path::_List"* noundef nonnull align 8 dereferenceable(8) %38)
  call void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %13)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local { i64, i8* } @_ZNSt10filesystem7__cxx118__detail17__effective_rangeIcSt11char_traitsIcEEESt17basic_string_viewIT_S3_IS6_EERKS5_IS6_T0_E(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %0) #1 comdat {
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

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSt8__detaillsIcSt11char_traitsIcERKNSt7__cxx1112basic_stringIcS2_SaIcEEEEERSt13basic_ostreamIT_T0_ESD_RKNS_14_Quoted_stringIT1_SA_EE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %0, %"struct.std::__detail::_Quoted_string"* noundef nonnull align 8 dereferenceable(10) %1) #1 comdat {
  %3 = alloca %"class.std::basic_ostream"*, align 8
  %4 = alloca %"struct.std::__detail::_Quoted_string"*, align 8
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8
  %6 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.20", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator.20", align 8
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
  %20 = call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %19) #13
  %21 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.20", %"class.__gnu_cxx::__normal_iterator.20"* %7, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %6, align 8
  %23 = call i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %22) #13
  %24 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.20", %"class.__gnu_cxx::__normal_iterator.20"* %8, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  br label %25

25:                                               ; preds = %55, %2
  %26 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_(%"class.__gnu_cxx::__normal_iterator.20"* noundef nonnull align 8 dereferenceable(8) %7, %"class.__gnu_cxx::__normal_iterator.20"* noundef nonnull align 8 dereferenceable(8) %8) #13
  br i1 %26, label %27, label %57

27:                                               ; preds = %25
  %28 = call noundef nonnull align 1 dereferenceable(1) i8* @_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv(%"class.__gnu_cxx::__normal_iterator.20"* noundef nonnull align 8 dereferenceable(8) %7) #13
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %9, align 1
  %30 = load i8, i8* %9, align 1
  %31 = sext i8 %30 to i32
  %32 = load %"struct.std::__detail::_Quoted_string"*, %"struct.std::__detail::_Quoted_string"** %4, align 8
  %33 = getelementptr inbounds %"struct.std::__detail::_Quoted_string", %"struct.std::__detail::_Quoted_string"* %32, i32 0, i32 1
  %34 = load i8, i8* %33, align 8
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %31, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %27
  %38 = load i8, i8* %9, align 1
  %39 = sext i8 %38 to i32
  %40 = load %"struct.std::__detail::_Quoted_string"*, %"struct.std::__detail::_Quoted_string"** %4, align 8
  %41 = getelementptr inbounds %"struct.std::__detail::_Quoted_string", %"struct.std::__detail::_Quoted_string"* %40, i32 0, i32 2
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %39, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %37, %27
  %46 = bitcast %"class.std::__cxx11::basic_ostringstream"* %5 to %"class.std::basic_ostream"*
  %47 = load %"struct.std::__detail::_Quoted_string"*, %"struct.std::__detail::_Quoted_string"** %4, align 8
  %48 = getelementptr inbounds %"struct.std::__detail::_Quoted_string", %"struct.std::__detail::_Quoted_string"* %47, i32 0, i32 2
  %49 = load i8, i8* %48, align 1
  %50 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %46, i8 noundef signext %49)
  br label %51

51:                                               ; preds = %45, %37
  %52 = bitcast %"class.std::__cxx11::basic_ostringstream"* %5 to %"class.std::basic_ostream"*
  %53 = load i8, i8* %9, align 1
  %54 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %52, i8 noundef signext %53)
  br label %55

55:                                               ; preds = %51
  %56 = call noundef nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator.20"* @_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv(%"class.__gnu_cxx::__normal_iterator.20"* noundef nonnull align 8 dereferenceable(8) %7) #13
  br label %25

57:                                               ; preds = %25
  %58 = bitcast %"class.std::__cxx11::basic_ostringstream"* %5 to %"class.std::basic_ostream"*
  %59 = load %"struct.std::__detail::_Quoted_string"*, %"struct.std::__detail::_Quoted_string"** %4, align 8
  %60 = getelementptr inbounds %"struct.std::__detail::_Quoted_string", %"struct.std::__detail::_Quoted_string"* %59, i32 0, i32 1
  %61 = load i8, i8* %60, align 8
  %62 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %58, i8 noundef signext %61)
  %63 = load %"class.std::basic_ostream"*, %"class.std::basic_ostream"** %3, align 8
  call void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %10, %"class.std::__cxx11::basic_ostringstream"* noundef nonnull align 8 dereferenceable(112) %5)
  %64 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %63, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %10) #13
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_ostringstream"* noundef nonnull align 8 dereferenceable(112) %5) #13
  ret %"class.std::basic_ostream"* %64
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local { %"class.std::__cxx11::basic_string"*, i64 } @_ZSt6quotedIcSt11char_traitsIcESaIcEEDaRKNSt7__cxx1112basic_stringIT_T0_T1_EES5_S5_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext %1, i8 noundef signext %2) #1 comdat {
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

declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_ostringstream"* noundef nonnull align 8 dereferenceable(112)) unnamed_addr #4

; Function Attrs: nounwind
declare i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #5

; Function Attrs: nounwind
declare i8* @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #5

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxneIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESE_(%"class.__gnu_cxx::__normal_iterator.20"* noundef nonnull align 8 dereferenceable(8) %0, %"class.__gnu_cxx::__normal_iterator.20"* noundef nonnull align 8 dereferenceable(8) %1) #1 comdat {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.20"*, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.20"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.20"* %0, %"class.__gnu_cxx::__normal_iterator.20"** %3, align 8
  store %"class.__gnu_cxx::__normal_iterator.20"* %1, %"class.__gnu_cxx::__normal_iterator.20"** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator.20"*, %"class.__gnu_cxx::__normal_iterator.20"** %3, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) i8** @_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.20"* noundef nonnull align 8 dereferenceable(8) %5) #13
  %7 = load i8*, i8** %6, align 8
  %8 = load %"class.__gnu_cxx::__normal_iterator.20"*, %"class.__gnu_cxx::__normal_iterator.20"** %4, align 8
  %9 = call noundef nonnull align 8 dereferenceable(8) i8** @_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.20"* noundef nonnull align 8 dereferenceable(8) %8) #13
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %7, %10
  ret i1 %11
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) i8* @_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv(%"class.__gnu_cxx::__normal_iterator.20"* noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.20"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.20"* %0, %"class.__gnu_cxx::__normal_iterator.20"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.20"*, %"class.__gnu_cxx::__normal_iterator.20"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.20", %"class.__gnu_cxx::__normal_iterator.20"* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  ret i8* %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator.20"* @_ZN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv(%"class.__gnu_cxx::__normal_iterator.20"* noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.20"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.20"* %0, %"class.__gnu_cxx::__normal_iterator.20"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.20"*, %"class.__gnu_cxx::__normal_iterator.20"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.20", %"class.__gnu_cxx::__normal_iterator.20"* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %6, i8** %4, align 8
  ret %"class.__gnu_cxx::__normal_iterator.20"* %3
}

declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8, %"class.std::__cxx11::basic_ostringstream"* noundef nonnull align 8 dereferenceable(112)) #4

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_ostringstream"* noundef nonnull align 8 dereferenceable(112)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) i8** @_ZNK9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv(%"class.__gnu_cxx::__normal_iterator.20"* noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.20"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.20"* %0, %"class.__gnu_cxx::__normal_iterator.20"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.20"*, %"class.__gnu_cxx::__normal_iterator.20"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.20", %"class.__gnu_cxx::__normal_iterator.20"* %3, i32 0, i32 0
  ret i8** %4
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt8__detail14_Quoted_stringIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEC2ES8_cc(%"struct.std::__detail::_Quoted_string"* noundef nonnull align 8 dereferenceable(10) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext %2, i8 noundef signext %3) unnamed_addr #0 comdat align 2 {
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

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.7"* @_ZNSt12_Vector_baseI6LsItemSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.6"* noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base.6"*, align 8
  store %"struct.std::_Vector_base.6"* %0, %"struct.std::_Vector_base.6"** %2, align 8
  %3 = load %"struct.std::_Vector_base.6"*, %"struct.std::_Vector_base.6"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* %4 to %"class.std::allocator.7"*
  ret %"class.std::allocator.7"* %5
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI6LsItemSaIS0_EED2Ev(%"struct.std::_Vector_base.6"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base.6"*, align 8
  store %"struct.std::_Vector_base.6"* %0, %"struct.std::_Vector_base.6"** %2, align 8
  %3 = load %"struct.std::_Vector_base.6"*, %"struct.std::_Vector_base.6"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* %4 to %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data", %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"* %5, i32 0, i32 0
  %7 = load %struct.LsItem*, %struct.LsItem** %6, align 8
  %8 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %3, i32 0, i32 0
  %9 = bitcast %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* %8 to %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data", %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"* %9, i32 0, i32 2
  %11 = load %struct.LsItem*, %struct.LsItem** %10, align 8
  %12 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %3, i32 0, i32 0
  %13 = bitcast %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* %12 to %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"*
  %14 = getelementptr inbounds %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data", %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"* %13, i32 0, i32 0
  %15 = load %struct.LsItem*, %struct.LsItem** %14, align 8
  %16 = ptrtoint %struct.LsItem* %11 to i64
  %17 = ptrtoint %struct.LsItem* %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 40
  call void @_ZNSt12_Vector_baseI6LsItemSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base.6"* noundef nonnull align 8 dereferenceable(24) %3, %struct.LsItem* noundef %7, i64 noundef %19)
  %20 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %3, i32 0, i32 0
  call void @_ZNSt12_Vector_baseI6LsItemSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %20) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP6LsItemEvT_S2_(%struct.LsItem* noundef %0, %struct.LsItem* noundef %1) #1 comdat {
  %3 = alloca %struct.LsItem*, align 8
  %4 = alloca %struct.LsItem*, align 8
  store %struct.LsItem* %0, %struct.LsItem** %3, align 8
  store %struct.LsItem* %1, %struct.LsItem** %4, align 8
  %5 = load %struct.LsItem*, %struct.LsItem** %3, align 8
  %6 = load %struct.LsItem*, %struct.LsItem** %4, align 8
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIP6LsItemEEvT_S4_(%struct.LsItem* noundef %5, %struct.LsItem* noundef %6)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIP6LsItemEEvT_S4_(%struct.LsItem* noundef %0, %struct.LsItem* noundef %1) #1 comdat align 2 {
  %3 = alloca %struct.LsItem*, align 8
  %4 = alloca %struct.LsItem*, align 8
  store %struct.LsItem* %0, %struct.LsItem** %3, align 8
  store %struct.LsItem* %1, %struct.LsItem** %4, align 8
  br label %5

5:                                                ; preds = %11, %2
  %6 = load %struct.LsItem*, %struct.LsItem** %3, align 8
  %7 = load %struct.LsItem*, %struct.LsItem** %4, align 8
  %8 = icmp ne %struct.LsItem* %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = load %struct.LsItem*, %struct.LsItem** %3, align 8
  call void @_ZSt8_DestroyI6LsItemEvPT_(%struct.LsItem* noundef %10)
  br label %11

11:                                               ; preds = %9
  %12 = load %struct.LsItem*, %struct.LsItem** %3, align 8
  %13 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %12, i32 1
  store %struct.LsItem* %13, %struct.LsItem** %3, align 8
  br label %5, !llvm.loop !13

14:                                               ; preds = %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyI6LsItemEvPT_(%struct.LsItem* noundef %0) #1 comdat {
  %2 = alloca %struct.LsItem*, align 8
  store %struct.LsItem* %0, %struct.LsItem** %2, align 8
  %3 = load %struct.LsItem*, %struct.LsItem** %2, align 8
  call void @_ZN6LsItemD2Ev(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %3) #13
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZN6LsItemD2Ev(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %struct.LsItem*, align 8
  store %struct.LsItem* %0, %struct.LsItem** %2, align 8
  %3 = load %struct.LsItem*, %struct.LsItem** %2, align 8
  %4 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %3, i32 0, i32 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %4) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI6LsItemSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base.6"* noundef nonnull align 8 dereferenceable(24) %0, %struct.LsItem* noundef %1, i64 noundef %2) #1 comdat align 2 {
  %4 = alloca %"class.std::allocator.7"*, align 8
  %5 = alloca %struct.LsItem*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %"struct.std::_Vector_base.6"*, align 8
  %8 = alloca %struct.LsItem*, align 8
  %9 = alloca i64, align 8
  store %"struct.std::_Vector_base.6"* %0, %"struct.std::_Vector_base.6"** %7, align 8
  store %struct.LsItem* %1, %struct.LsItem** %8, align 8
  store i64 %2, i64* %9, align 8
  %10 = load %"struct.std::_Vector_base.6"*, %"struct.std::_Vector_base.6"** %7, align 8
  %11 = load %struct.LsItem*, %struct.LsItem** %8, align 8
  %12 = icmp ne %struct.LsItem* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %10, i32 0, i32 0
  %15 = bitcast %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* %14 to %"class.std::allocator.7"*
  %16 = load %struct.LsItem*, %struct.LsItem** %8, align 8
  %17 = load i64, i64* %9, align 8
  store %"class.std::allocator.7"* %15, %"class.std::allocator.7"** %4, align 8
  store %struct.LsItem* %16, %struct.LsItem** %5, align 8
  store i64 %17, i64* %6, align 8
  %18 = load %"class.std::allocator.7"*, %"class.std::allocator.7"** %4, align 8
  %19 = bitcast %"class.std::allocator.7"* %18 to %"class.std::__new_allocator.8"*
  %20 = load %struct.LsItem*, %struct.LsItem** %5, align 8
  %21 = load i64, i64* %6, align 8
  call void @_ZNSt15__new_allocatorI6LsItemE10deallocateEPS0_m(%"class.std::__new_allocator.8"* noundef nonnull align 1 dereferenceable(1) %19, %struct.LsItem* noundef %20, i64 noundef %21)
  br label %22

22:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI6LsItemSaIS0_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::allocator.7"*, align 8
  %3 = alloca %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* %0, %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"** %3, align 8
  %4 = load %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"*, %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"** %3, align 8
  %5 = bitcast %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* %4 to %"class.std::allocator.7"*
  store %"class.std::allocator.7"* %5, %"class.std::allocator.7"** %2, align 8
  %6 = load %"class.std::allocator.7"*, %"class.std::allocator.7"** %2, align 8
  %7 = bitcast %"class.std::allocator.7"* %6 to %"class.std::__new_allocator.8"*
  call void @_ZNSt15__new_allocatorI6LsItemED2Ev(%"class.std::__new_allocator.8"* noundef nonnull align 1 dereferenceable(1) %7) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI6LsItemE10deallocateEPS0_m(%"class.std::__new_allocator.8"* noundef nonnull align 1 dereferenceable(1) %0, %struct.LsItem* noundef %1, i64 noundef %2) #1 comdat align 2 {
  %4 = alloca %"class.std::__new_allocator.8"*, align 8
  %5 = alloca %struct.LsItem*, align 8
  %6 = alloca i64, align 8
  store %"class.std::__new_allocator.8"* %0, %"class.std::__new_allocator.8"** %4, align 8
  store %struct.LsItem* %1, %struct.LsItem** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::__new_allocator.8"*, %"class.std::__new_allocator.8"** %4, align 8
  %8 = load %struct.LsItem*, %struct.LsItem** %5, align 8
  %9 = bitcast %struct.LsItem* %8 to i8*
  call void @_ZdlPv(i8* noundef %9) #16
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI6LsItemED2Ev(%"class.std::__new_allocator.8"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::__new_allocator.8"*, align 8
  store %"class.std::__new_allocator.8"* %0, %"class.std::__new_allocator.8"** %2, align 8
  %3 = load %"class.std::__new_allocator.8"*, %"class.std::__new_allocator.8"** %2, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI6LsItemSaIS0_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(%"class.std::vector.5"* noundef nonnull align 8 dereferenceable(24) %0, %struct.LsItem* %1, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %2, i8* noundef nonnull align 1 dereferenceable(1) %3) #1 comdat align 2 {
  %5 = alloca %"class.std::__new_allocator.8"*, align 8
  %6 = alloca %struct.LsItem*, align 8
  %7 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::allocator.7"*, align 8
  %11 = alloca %struct.LsItem*, align 8
  %12 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %15 = alloca %"class.std::vector.5"*, align 8
  %16 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.LsItem*, align 8
  %20 = alloca %struct.LsItem*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %23 = alloca %struct.LsItem*, align 8
  %24 = alloca %struct.LsItem*, align 8
  %25 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %14, i32 0, i32 0
  store %struct.LsItem* %1, %struct.LsItem** %25, align 8
  store %"class.std::vector.5"* %0, %"class.std::vector.5"** %15, align 8
  store %"class.std::__cxx11::basic_string"* %2, %"class.std::__cxx11::basic_string"** %16, align 8
  store i8* %3, i8** %17, align 8
  %26 = load %"class.std::vector.5"*, %"class.std::vector.5"** %15, align 8
  %27 = call noundef i64 @_ZNKSt6vectorI6LsItemSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector.5"* noundef nonnull align 8 dereferenceable(24) %26, i64 noundef 1, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0))
  store i64 %27, i64* %18, align 8
  %28 = bitcast %"class.std::vector.5"* %26 to %"struct.std::_Vector_base.6"*
  %29 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %28, i32 0, i32 0
  %30 = bitcast %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* %29 to %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"*
  %31 = getelementptr inbounds %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data", %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"* %30, i32 0, i32 0
  %32 = load %struct.LsItem*, %struct.LsItem** %31, align 8
  store %struct.LsItem* %32, %struct.LsItem** %19, align 8
  %33 = bitcast %"class.std::vector.5"* %26 to %"struct.std::_Vector_base.6"*
  %34 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %33, i32 0, i32 0
  %35 = bitcast %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* %34 to %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"*
  %36 = getelementptr inbounds %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data", %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"* %35, i32 0, i32 1
  %37 = load %struct.LsItem*, %struct.LsItem** %36, align 8
  store %struct.LsItem* %37, %struct.LsItem** %20, align 8
  %38 = call %struct.LsItem* @_ZNSt6vectorI6LsItemSaIS0_EE5beginEv(%"class.std::vector.5"* noundef nonnull align 8 dereferenceable(24) %26) #13
  %39 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %22, i32 0, i32 0
  store %struct.LsItem* %38, %struct.LsItem** %39, align 8
  %40 = call noundef i64 @_ZN9__gnu_cxxmiIP6LsItemSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %14, %"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %22) #13
  store i64 %40, i64* %21, align 8
  %41 = bitcast %"class.std::vector.5"* %26 to %"struct.std::_Vector_base.6"*
  %42 = load i64, i64* %18, align 8
  %43 = call noundef %struct.LsItem* @_ZNSt12_Vector_baseI6LsItemSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base.6"* noundef nonnull align 8 dereferenceable(24) %41, i64 noundef %42)
  store %struct.LsItem* %43, %struct.LsItem** %23, align 8
  %44 = load %struct.LsItem*, %struct.LsItem** %23, align 8
  store %struct.LsItem* %44, %struct.LsItem** %24, align 8
  %45 = bitcast %"class.std::vector.5"* %26 to %"struct.std::_Vector_base.6"*
  %46 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %45, i32 0, i32 0
  %47 = bitcast %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* %46 to %"class.std::allocator.7"*
  %48 = load %struct.LsItem*, %struct.LsItem** %23, align 8
  %49 = load i64, i64* %21, align 8
  %50 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %48, i64 %49
  %51 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %16, align 8
  %52 = load i8*, i8** %17, align 8
  store %"class.std::allocator.7"* %47, %"class.std::allocator.7"** %10, align 8
  store %struct.LsItem* %50, %struct.LsItem** %11, align 8
  store %"class.std::__cxx11::basic_string"* %51, %"class.std::__cxx11::basic_string"** %12, align 8
  store i8* %52, i8** %13, align 8
  %53 = load %"class.std::allocator.7"*, %"class.std::allocator.7"** %10, align 8
  %54 = bitcast %"class.std::allocator.7"* %53 to %"class.std::__new_allocator.8"*
  %55 = load %struct.LsItem*, %struct.LsItem** %11, align 8
  %56 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %12, align 8
  %57 = load i8*, i8** %13, align 8
  store %"class.std::__new_allocator.8"* %54, %"class.std::__new_allocator.8"** %5, align 8
  store %struct.LsItem* %55, %struct.LsItem** %6, align 8
  store %"class.std::__cxx11::basic_string"* %56, %"class.std::__cxx11::basic_string"** %7, align 8
  store i8* %57, i8** %8, align 8
  %58 = load %"class.std::__new_allocator.8"*, %"class.std::__new_allocator.8"** %5, align 8
  %59 = load %struct.LsItem*, %struct.LsItem** %6, align 8
  %60 = bitcast %struct.LsItem* %59 to i8*
  %61 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %7, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %61) #13
  %62 = load i8*, i8** %8, align 8
  %63 = load i8, i8* %62, align 1
  %64 = trunc i8 %63 to i1
  call void @_ZN6LsItemC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %59, %"class.std::__cxx11::basic_string"* noundef %9, i1 noundef zeroext %64)
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9) #13
  store %struct.LsItem* null, %struct.LsItem** %24, align 8
  %65 = load %struct.LsItem*, %struct.LsItem** %19, align 8
  %66 = call noundef nonnull align 8 dereferenceable(8) %struct.LsItem** @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %14) #13
  %67 = load %struct.LsItem*, %struct.LsItem** %66, align 8
  %68 = load %struct.LsItem*, %struct.LsItem** %23, align 8
  %69 = bitcast %"class.std::vector.5"* %26 to %"struct.std::_Vector_base.6"*
  %70 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.7"* @_ZNSt12_Vector_baseI6LsItemSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.6"* noundef nonnull align 8 dereferenceable(24) %69) #13
  %71 = call noundef %struct.LsItem* @_ZNSt6vectorI6LsItemSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_(%struct.LsItem* noundef %65, %struct.LsItem* noundef %67, %struct.LsItem* noundef %68, %"class.std::allocator.7"* noundef nonnull align 1 dereferenceable(1) %70) #13
  store %struct.LsItem* %71, %struct.LsItem** %24, align 8
  %72 = load %struct.LsItem*, %struct.LsItem** %24, align 8
  %73 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %72, i32 1
  store %struct.LsItem* %73, %struct.LsItem** %24, align 8
  %74 = call noundef nonnull align 8 dereferenceable(8) %struct.LsItem** @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %14) #13
  %75 = load %struct.LsItem*, %struct.LsItem** %74, align 8
  %76 = load %struct.LsItem*, %struct.LsItem** %20, align 8
  %77 = load %struct.LsItem*, %struct.LsItem** %24, align 8
  %78 = bitcast %"class.std::vector.5"* %26 to %"struct.std::_Vector_base.6"*
  %79 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.7"* @_ZNSt12_Vector_baseI6LsItemSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.6"* noundef nonnull align 8 dereferenceable(24) %78) #13
  %80 = call noundef %struct.LsItem* @_ZNSt6vectorI6LsItemSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_(%struct.LsItem* noundef %75, %struct.LsItem* noundef %76, %struct.LsItem* noundef %77, %"class.std::allocator.7"* noundef nonnull align 1 dereferenceable(1) %79) #13
  store %struct.LsItem* %80, %struct.LsItem** %24, align 8
  %81 = bitcast %"class.std::vector.5"* %26 to %"struct.std::_Vector_base.6"*
  %82 = load %struct.LsItem*, %struct.LsItem** %19, align 8
  %83 = bitcast %"class.std::vector.5"* %26 to %"struct.std::_Vector_base.6"*
  %84 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %83, i32 0, i32 0
  %85 = bitcast %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* %84 to %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"*
  %86 = getelementptr inbounds %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data", %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"* %85, i32 0, i32 2
  %87 = load %struct.LsItem*, %struct.LsItem** %86, align 8
  %88 = load %struct.LsItem*, %struct.LsItem** %19, align 8
  %89 = ptrtoint %struct.LsItem* %87 to i64
  %90 = ptrtoint %struct.LsItem* %88 to i64
  %91 = sub i64 %89, %90
  %92 = sdiv exact i64 %91, 40
  call void @_ZNSt12_Vector_baseI6LsItemSaIS0_EE13_M_deallocateEPS0_m(%"struct.std::_Vector_base.6"* noundef nonnull align 8 dereferenceable(24) %81, %struct.LsItem* noundef %82, i64 noundef %92)
  %93 = load %struct.LsItem*, %struct.LsItem** %23, align 8
  %94 = bitcast %"class.std::vector.5"* %26 to %"struct.std::_Vector_base.6"*
  %95 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %94, i32 0, i32 0
  %96 = bitcast %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* %95 to %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"*
  %97 = getelementptr inbounds %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data", %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"* %96, i32 0, i32 0
  store %struct.LsItem* %93, %struct.LsItem** %97, align 8
  %98 = load %struct.LsItem*, %struct.LsItem** %24, align 8
  %99 = bitcast %"class.std::vector.5"* %26 to %"struct.std::_Vector_base.6"*
  %100 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %99, i32 0, i32 0
  %101 = bitcast %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* %100 to %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"*
  %102 = getelementptr inbounds %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data", %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"* %101, i32 0, i32 1
  store %struct.LsItem* %98, %struct.LsItem** %102, align 8
  %103 = load %struct.LsItem*, %struct.LsItem** %23, align 8
  %104 = load i64, i64* %18, align 8
  %105 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %103, i64 %104
  %106 = bitcast %"class.std::vector.5"* %26 to %"struct.std::_Vector_base.6"*
  %107 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %106, i32 0, i32 0
  %108 = bitcast %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* %107 to %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"*
  %109 = getelementptr inbounds %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data", %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"* %108, i32 0, i32 2
  store %struct.LsItem* %105, %struct.LsItem** %109, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZNSt6vectorI6LsItemSaIS0_EE4backEv(%"class.std::vector.5"* noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::vector.5"*, align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector.5"* %0, %"class.std::vector.5"** %2, align 8
  %5 = load %"class.std::vector.5"*, %"class.std::vector.5"** %2, align 8
  %6 = call %struct.LsItem* @_ZNSt6vectorI6LsItemSaIS0_EE3endEv(%"class.std::vector.5"* noundef nonnull align 8 dereferenceable(24) %5) #13
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  store %struct.LsItem* %6, %struct.LsItem** %7, align 8
  %8 = call %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEmiEl(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 1) #13
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  store %struct.LsItem* %8, %struct.LsItem** %9, align 8
  %10 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %3) #13
  ret %struct.LsItem* %10
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZN6LsItemC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %0, %"class.std::__cxx11::basic_string"* noundef %1, i1 noundef zeroext %2) unnamed_addr #0 comdat align 2 {
  %4 = alloca %struct.LsItem*, align 8
  %5 = alloca i8, align 1
  store %struct.LsItem* %0, %struct.LsItem** %4, align 8
  %6 = zext i1 %2 to i8
  store i8 %6, i8* %5, align 1
  %7 = load %struct.LsItem*, %struct.LsItem** %4, align 8
  %8 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %7, i32 0, i32 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1) #13
  %9 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %7, i32 0, i32 1
  %10 = load i8, i8* %5, align 1
  %11 = trunc i8 %10 to i1
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %9, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI6LsItemSaIS0_EE12_M_check_lenEmPKc(%"class.std::vector.5"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i8* noundef %2) #1 comdat align 2 {
  %4 = alloca %"class.std::vector.5"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %"class.std::vector.5"* %0, %"class.std::vector.5"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %"class.std::vector.5"*, %"class.std::vector.5"** %4, align 8
  %10 = call noundef i64 @_ZNKSt6vectorI6LsItemSaIS0_EE8max_sizeEv(%"class.std::vector.5"* noundef nonnull align 8 dereferenceable(24) %9) #13
  %11 = call noundef i64 @_ZNKSt6vectorI6LsItemSaIS0_EE4sizeEv(%"class.std::vector.5"* noundef nonnull align 8 dereferenceable(24) %9) #13
  %12 = sub i64 %10, %11
  %13 = load i64, i64* %5, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* noundef %16) #15
  unreachable

17:                                               ; preds = %3
  %18 = call noundef i64 @_ZNKSt6vectorI6LsItemSaIS0_EE4sizeEv(%"class.std::vector.5"* noundef nonnull align 8 dereferenceable(24) %9) #13
  %19 = call noundef i64 @_ZNKSt6vectorI6LsItemSaIS0_EE4sizeEv(%"class.std::vector.5"* noundef nonnull align 8 dereferenceable(24) %9) #13
  store i64 %19, i64* %8, align 8
  %20 = call noundef nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %8, i64* noundef nonnull align 8 dereferenceable(8) %5)
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %18, %21
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call noundef i64 @_ZNKSt6vectorI6LsItemSaIS0_EE4sizeEv(%"class.std::vector.5"* noundef nonnull align 8 dereferenceable(24) %9) #13
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = load i64, i64* %7, align 8
  %28 = call noundef i64 @_ZNKSt6vectorI6LsItemSaIS0_EE8max_sizeEv(%"class.std::vector.5"* noundef nonnull align 8 dereferenceable(24) %9) #13
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %17
  %31 = call noundef i64 @_ZNKSt6vectorI6LsItemSaIS0_EE8max_sizeEv(%"class.std::vector.5"* noundef nonnull align 8 dereferenceable(24) %9) #13
  br label %34

32:                                               ; preds = %26
  %33 = load i64, i64* %7, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ]
  ret i64 %35
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIP6LsItemSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %0, %"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %1) #1 comdat {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %1, %"class.__gnu_cxx::__normal_iterator"** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) %struct.LsItem** @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %5) #13
  %7 = load %struct.LsItem*, %struct.LsItem** %6, align 8
  %8 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %4, align 8
  %9 = call noundef nonnull align 8 dereferenceable(8) %struct.LsItem** @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %8) #13
  %10 = load %struct.LsItem*, %struct.LsItem** %9, align 8
  %11 = ptrtoint %struct.LsItem* %7 to i64
  %12 = ptrtoint %struct.LsItem* %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 40
  ret i64 %14
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %struct.LsItem* @_ZNSt12_Vector_baseI6LsItemSaIS0_EE11_M_allocateEm(%"struct.std::_Vector_base.6"* noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #1 comdat align 2 {
  %3 = alloca %"class.std::allocator.7"*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %"struct.std::_Vector_base.6"*, align 8
  %6 = alloca i64, align 8
  store %"struct.std::_Vector_base.6"* %0, %"struct.std::_Vector_base.6"** %5, align 8
  store i64 %1, i64* %6, align 8
  %7 = load %"struct.std::_Vector_base.6"*, %"struct.std::_Vector_base.6"** %5, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %7, i32 0, i32 0
  %12 = bitcast %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* %11 to %"class.std::allocator.7"*
  %13 = load i64, i64* %6, align 8
  store %"class.std::allocator.7"* %12, %"class.std::allocator.7"** %3, align 8
  store i64 %13, i64* %4, align 8
  %14 = load %"class.std::allocator.7"*, %"class.std::allocator.7"** %3, align 8
  %15 = bitcast %"class.std::allocator.7"* %14 to %"class.std::__new_allocator.8"*
  %16 = load i64, i64* %4, align 8
  %17 = call noundef %struct.LsItem* @_ZNSt15__new_allocatorI6LsItemE8allocateEmPKv(%"class.std::__new_allocator.8"* noundef nonnull align 1 dereferenceable(1) %15, i64 noundef %16, i8* noundef null)
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %10
  %20 = phi %struct.LsItem* [ %17, %10 ], [ null, %18 ]
  ret %struct.LsItem* %20
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %struct.LsItem* @_ZNSt6vectorI6LsItemSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_(%struct.LsItem* noundef %0, %struct.LsItem* noundef %1, %struct.LsItem* noundef %2, %"class.std::allocator.7"* noundef nonnull align 1 dereferenceable(1) %3) #1 comdat align 2 {
  %5 = alloca %struct.LsItem*, align 8
  %6 = alloca %struct.LsItem*, align 8
  %7 = alloca %struct.LsItem*, align 8
  %8 = alloca %"class.std::allocator.7"*, align 8
  store %struct.LsItem* %0, %struct.LsItem** %5, align 8
  store %struct.LsItem* %1, %struct.LsItem** %6, align 8
  store %struct.LsItem* %2, %struct.LsItem** %7, align 8
  store %"class.std::allocator.7"* %3, %"class.std::allocator.7"** %8, align 8
  %9 = load %struct.LsItem*, %struct.LsItem** %5, align 8
  %10 = load %struct.LsItem*, %struct.LsItem** %6, align 8
  %11 = load %struct.LsItem*, %struct.LsItem** %7, align 8
  %12 = load %"class.std::allocator.7"*, %"class.std::allocator.7"** %8, align 8
  %13 = call noundef %struct.LsItem* @_ZSt12__relocate_aIP6LsItemS1_SaIS0_EET0_T_S4_S3_RT1_(%struct.LsItem* noundef %9, %struct.LsItem* noundef %10, %struct.LsItem* noundef %11, %"class.std::allocator.7"* noundef nonnull align 1 dereferenceable(1) %12) #13
  ret %struct.LsItem* %13
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %struct.LsItem** @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  ret %struct.LsItem** %4
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI6LsItemSaIS0_EE8max_sizeEv(%"class.std::vector.5"* noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::vector.5"*, align 8
  store %"class.std::vector.5"* %0, %"class.std::vector.5"** %2, align 8
  %3 = load %"class.std::vector.5"*, %"class.std::vector.5"** %2, align 8
  %4 = bitcast %"class.std::vector.5"* %3 to %"struct.std::_Vector_base.6"*
  %5 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.7"* @_ZNKSt12_Vector_baseI6LsItemSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.6"* noundef nonnull align 8 dereferenceable(24) %4) #13
  %6 = call noundef i64 @_ZNSt6vectorI6LsItemSaIS0_EE11_S_max_sizeERKS1_(%"class.std::allocator.7"* noundef nonnull align 1 dereferenceable(1) %5) #13
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI6LsItemSaIS0_EE4sizeEv(%"class.std::vector.5"* noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::vector.5"*, align 8
  store %"class.std::vector.5"* %0, %"class.std::vector.5"** %2, align 8
  %3 = load %"class.std::vector.5"*, %"class.std::vector.5"** %2, align 8
  %4 = bitcast %"class.std::vector.5"* %3 to %"struct.std::_Vector_base.6"*
  %5 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %4, i32 0, i32 0
  %6 = bitcast %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* %5 to %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data", %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"* %6, i32 0, i32 1
  %8 = load %struct.LsItem*, %struct.LsItem** %7, align 8
  %9 = bitcast %"class.std::vector.5"* %3 to %"struct.std::_Vector_base.6"*
  %10 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %9, i32 0, i32 0
  %11 = bitcast %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* %10 to %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data", %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl_data"* %11, i32 0, i32 0
  %13 = load %struct.LsItem*, %struct.LsItem** %12, align 8
  %14 = ptrtoint %struct.LsItem* %8 to i64
  %15 = ptrtoint %struct.LsItem* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 40
  ret i64 %17
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorI6LsItemSaIS0_EE11_S_max_sizeERKS1_(%"class.std::allocator.7"* noundef nonnull align 1 dereferenceable(1) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::__new_allocator.8"*, align 8
  %3 = alloca %"class.std::__new_allocator.8"*, align 8
  %4 = alloca %"class.std::allocator.7"*, align 8
  %5 = alloca %"class.std::allocator.7"*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %"class.std::allocator.7"* %0, %"class.std::allocator.7"** %5, align 8
  store i64 230584300921369395, i64* %6, align 8
  %8 = load %"class.std::allocator.7"*, %"class.std::allocator.7"** %5, align 8
  store %"class.std::allocator.7"* %8, %"class.std::allocator.7"** %4, align 8
  %9 = load %"class.std::allocator.7"*, %"class.std::allocator.7"** %4, align 8
  %10 = bitcast %"class.std::allocator.7"* %9 to %"class.std::__new_allocator.8"*
  store %"class.std::__new_allocator.8"* %10, %"class.std::__new_allocator.8"** %3, align 8
  %11 = load %"class.std::__new_allocator.8"*, %"class.std::__new_allocator.8"** %3, align 8
  store %"class.std::__new_allocator.8"* %11, %"class.std::__new_allocator.8"** %2, align 8
  %12 = load %"class.std::__new_allocator.8"*, %"class.std::__new_allocator.8"** %2, align 8
  store i64 230584300921369395, i64* %7, align 8
  %13 = call noundef nonnull align 8 dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* noundef nonnull align 8 dereferenceable(8) %6, i64* noundef nonnull align 8 dereferenceable(8) %7)
  %14 = load i64, i64* %13, align 8
  ret i64 %14
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.7"* @_ZNKSt12_Vector_baseI6LsItemSaIS0_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.6"* noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base.6"*, align 8
  store %"struct.std::_Vector_base.6"* %0, %"struct.std::_Vector_base.6"** %2, align 8
  %3 = load %"struct.std::_Vector_base.6"*, %"struct.std::_Vector_base.6"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base.6", %"struct.std::_Vector_base.6"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<LsItem, std::allocator<LsItem>>::_Vector_impl"* %4 to %"class.std::allocator.7"*
  ret %"class.std::allocator.7"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %struct.LsItem* @_ZNSt15__new_allocatorI6LsItemE8allocateEmPKv(%"class.std::__new_allocator.8"* noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, i8* noundef %2) #1 comdat align 2 {
  %4 = alloca %"class.std::__new_allocator.8"*, align 8
  %5 = alloca %"class.std::__new_allocator.8"*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %"class.std::__new_allocator.8"* %0, %"class.std::__new_allocator.8"** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %"class.std::__new_allocator.8"*, %"class.std::__new_allocator.8"** %5, align 8
  %9 = load i64, i64* %6, align 8
  store %"class.std::__new_allocator.8"* %8, %"class.std::__new_allocator.8"** %4, align 8
  %10 = load %"class.std::__new_allocator.8"*, %"class.std::__new_allocator.8"** %4, align 8
  %11 = icmp ugt i64 %9, 230584300921369395
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = icmp ugt i64 %13, 461168601842738790
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

16:                                               ; preds = %12
  call void @_ZSt17__throw_bad_allocv() #15
  unreachable

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = mul i64 %18, 40
  %20 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %19) #17
  %21 = bitcast i8* %20 to %struct.LsItem*
  ret %struct.LsItem* %21
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %struct.LsItem* @_ZSt12__relocate_aIP6LsItemS1_SaIS0_EET0_T_S4_S3_RT1_(%struct.LsItem* noundef %0, %struct.LsItem* noundef %1, %struct.LsItem* noundef %2, %"class.std::allocator.7"* noundef nonnull align 1 dereferenceable(1) %3) #1 comdat {
  %5 = alloca %struct.LsItem*, align 8
  %6 = alloca %struct.LsItem*, align 8
  %7 = alloca %struct.LsItem*, align 8
  %8 = alloca %"class.std::allocator.7"*, align 8
  store %struct.LsItem* %0, %struct.LsItem** %5, align 8
  store %struct.LsItem* %1, %struct.LsItem** %6, align 8
  store %struct.LsItem* %2, %struct.LsItem** %7, align 8
  store %"class.std::allocator.7"* %3, %"class.std::allocator.7"** %8, align 8
  %9 = load %struct.LsItem*, %struct.LsItem** %5, align 8
  %10 = call noundef %struct.LsItem* @_ZSt12__niter_baseIP6LsItemET_S2_(%struct.LsItem* noundef %9) #13
  %11 = load %struct.LsItem*, %struct.LsItem** %6, align 8
  %12 = call noundef %struct.LsItem* @_ZSt12__niter_baseIP6LsItemET_S2_(%struct.LsItem* noundef %11) #13
  %13 = load %struct.LsItem*, %struct.LsItem** %7, align 8
  %14 = call noundef %struct.LsItem* @_ZSt12__niter_baseIP6LsItemET_S2_(%struct.LsItem* noundef %13) #13
  %15 = load %"class.std::allocator.7"*, %"class.std::allocator.7"** %8, align 8
  %16 = call noundef %struct.LsItem* @_ZSt14__relocate_a_1IP6LsItemS1_SaIS0_EET0_T_S4_S3_RT1_(%struct.LsItem* noundef %10, %struct.LsItem* noundef %12, %struct.LsItem* noundef %14, %"class.std::allocator.7"* noundef nonnull align 1 dereferenceable(1) %15) #13
  ret %struct.LsItem* %16
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %struct.LsItem* @_ZSt14__relocate_a_1IP6LsItemS1_SaIS0_EET0_T_S4_S3_RT1_(%struct.LsItem* noundef %0, %struct.LsItem* noundef %1, %struct.LsItem* noundef %2, %"class.std::allocator.7"* noundef nonnull align 1 dereferenceable(1) %3) #1 comdat {
  %5 = alloca %struct.LsItem*, align 8
  %6 = alloca %struct.LsItem*, align 8
  %7 = alloca %struct.LsItem*, align 8
  %8 = alloca %"class.std::allocator.7"*, align 8
  %9 = alloca %struct.LsItem*, align 8
  store %struct.LsItem* %0, %struct.LsItem** %5, align 8
  store %struct.LsItem* %1, %struct.LsItem** %6, align 8
  store %struct.LsItem* %2, %struct.LsItem** %7, align 8
  store %"class.std::allocator.7"* %3, %"class.std::allocator.7"** %8, align 8
  %10 = load %struct.LsItem*, %struct.LsItem** %7, align 8
  store %struct.LsItem* %10, %struct.LsItem** %9, align 8
  br label %11

11:                                               ; preds = %19, %4
  %12 = load %struct.LsItem*, %struct.LsItem** %5, align 8
  %13 = load %struct.LsItem*, %struct.LsItem** %6, align 8
  %14 = icmp ne %struct.LsItem* %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load %struct.LsItem*, %struct.LsItem** %9, align 8
  %17 = load %struct.LsItem*, %struct.LsItem** %5, align 8
  %18 = load %"class.std::allocator.7"*, %"class.std::allocator.7"** %8, align 8
  call void @_ZSt19__relocate_object_aI6LsItemS0_SaIS0_EEvPT_PT0_RT1_(%struct.LsItem* noundef %16, %struct.LsItem* noundef %17, %"class.std::allocator.7"* noundef nonnull align 1 dereferenceable(1) %18) #13
  br label %19

19:                                               ; preds = %15
  %20 = load %struct.LsItem*, %struct.LsItem** %5, align 8
  %21 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %20, i32 1
  store %struct.LsItem* %21, %struct.LsItem** %5, align 8
  %22 = load %struct.LsItem*, %struct.LsItem** %9, align 8
  %23 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %22, i32 1
  store %struct.LsItem* %23, %struct.LsItem** %9, align 8
  br label %11, !llvm.loop !14

24:                                               ; preds = %11
  %25 = load %struct.LsItem*, %struct.LsItem** %9, align 8
  ret %struct.LsItem* %25
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %struct.LsItem* @_ZSt12__niter_baseIP6LsItemET_S2_(%struct.LsItem* noundef %0) #1 comdat {
  %2 = alloca %struct.LsItem*, align 8
  store %struct.LsItem* %0, %struct.LsItem** %2, align 8
  %3 = load %struct.LsItem*, %struct.LsItem** %2, align 8
  ret %struct.LsItem* %3
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZSt19__relocate_object_aI6LsItemS0_SaIS0_EEvPT_PT0_RT1_(%struct.LsItem* noalias noundef %0, %struct.LsItem* noalias noundef %1, %"class.std::allocator.7"* noundef nonnull align 1 dereferenceable(1) %2) #1 comdat {
  %4 = alloca %"class.std::__new_allocator.8"*, align 8
  %5 = alloca %struct.LsItem*, align 8
  %6 = alloca %"class.std::__new_allocator.8"*, align 8
  %7 = alloca %struct.LsItem*, align 8
  %8 = alloca %struct.LsItem*, align 8
  %9 = alloca %"class.std::allocator.7"*, align 8
  %10 = alloca %struct.LsItem*, align 8
  %11 = alloca %"class.std::allocator.7"*, align 8
  %12 = alloca %struct.LsItem*, align 8
  %13 = alloca %struct.LsItem*, align 8
  %14 = alloca %struct.LsItem*, align 8
  %15 = alloca %struct.LsItem*, align 8
  %16 = alloca %"class.std::allocator.7"*, align 8
  store %struct.LsItem* %0, %struct.LsItem** %14, align 8
  store %struct.LsItem* %1, %struct.LsItem** %15, align 8
  store %"class.std::allocator.7"* %2, %"class.std::allocator.7"** %16, align 8
  %17 = load %"class.std::allocator.7"*, %"class.std::allocator.7"** %16, align 8
  %18 = load %struct.LsItem*, %struct.LsItem** %14, align 8
  %19 = load %struct.LsItem*, %struct.LsItem** %15, align 8
  store %"class.std::allocator.7"* %17, %"class.std::allocator.7"** %11, align 8
  store %struct.LsItem* %18, %struct.LsItem** %12, align 8
  store %struct.LsItem* %19, %struct.LsItem** %13, align 8
  %20 = load %"class.std::allocator.7"*, %"class.std::allocator.7"** %11, align 8
  %21 = bitcast %"class.std::allocator.7"* %20 to %"class.std::__new_allocator.8"*
  %22 = load %struct.LsItem*, %struct.LsItem** %12, align 8
  %23 = load %struct.LsItem*, %struct.LsItem** %13, align 8
  store %"class.std::__new_allocator.8"* %21, %"class.std::__new_allocator.8"** %6, align 8
  store %struct.LsItem* %22, %struct.LsItem** %7, align 8
  store %struct.LsItem* %23, %struct.LsItem** %8, align 8
  %24 = load %"class.std::__new_allocator.8"*, %"class.std::__new_allocator.8"** %6, align 8
  %25 = load %struct.LsItem*, %struct.LsItem** %7, align 8
  %26 = bitcast %struct.LsItem* %25 to i8*
  %27 = load %struct.LsItem*, %struct.LsItem** %8, align 8
  call void @_ZN6LsItemC2EOS_(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %25, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %27) #13
  %28 = load %"class.std::allocator.7"*, %"class.std::allocator.7"** %16, align 8
  %29 = load %struct.LsItem*, %struct.LsItem** %15, align 8
  store %"class.std::allocator.7"* %28, %"class.std::allocator.7"** %9, align 8
  store %struct.LsItem* %29, %struct.LsItem** %10, align 8
  %30 = load %"class.std::allocator.7"*, %"class.std::allocator.7"** %9, align 8
  %31 = bitcast %"class.std::allocator.7"* %30 to %"class.std::__new_allocator.8"*
  %32 = load %struct.LsItem*, %struct.LsItem** %10, align 8
  store %"class.std::__new_allocator.8"* %31, %"class.std::__new_allocator.8"** %4, align 8
  store %struct.LsItem* %32, %struct.LsItem** %5, align 8
  %33 = load %"class.std::__new_allocator.8"*, %"class.std::__new_allocator.8"** %4, align 8
  %34 = load %struct.LsItem*, %struct.LsItem** %5, align 8
  call void @_ZN6LsItemD2Ev(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %34) #13
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZN6LsItemC2EOS_(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %0, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca %struct.LsItem*, align 8
  %4 = alloca %struct.LsItem*, align 8
  store %struct.LsItem* %0, %struct.LsItem** %3, align 8
  store %struct.LsItem* %1, %struct.LsItem** %4, align 8
  %5 = load %struct.LsItem*, %struct.LsItem** %3, align 8
  %6 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %5, i32 0, i32 0
  %7 = load %struct.LsItem*, %struct.LsItem** %4, align 8
  %8 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %7, i32 0, i32 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8) #13
  %9 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %5, i32 0, i32 1
  %10 = load %struct.LsItem*, %struct.LsItem** %4, align 8
  %11 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %10, i32 0, i32 1
  %12 = load i8, i8* %11, align 8
  %13 = trunc i8 %12 to i1
  %14 = zext i1 %13 to i8
  store i8 %14, i8* %9, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEmiEl(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) #1 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.LsItem*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %4, align 8
  %8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %7, i32 0, i32 0
  %9 = load %struct.LsItem*, %struct.LsItem** %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = sub i64 0, %10
  %12 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %9, i64 %11
  store %struct.LsItem* %12, %struct.LsItem** %6, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %3, %struct.LsItem** noundef nonnull align 8 dereferenceable(8) %6) #13
  %13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  %14 = load %struct.LsItem*, %struct.LsItem** %13, align 8
  ret %struct.LsItem* %14
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %0, %struct.LsItem** noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %4 = alloca %struct.LsItem**, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  store %struct.LsItem** %1, %struct.LsItem*** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  %7 = load %struct.LsItem**, %struct.LsItem*** %4, align 8
  %8 = load %struct.LsItem*, %struct.LsItem** %7, align 8
  store %struct.LsItem* %8, %struct.LsItem** %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define internal void @"_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_SK_T0_"(%struct.LsItem* %0, %struct.LsItem* %1) #1 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %11 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  store %struct.LsItem* %0, %struct.LsItem** %12, align 8
  %13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  store %struct.LsItem* %1, %struct.LsItem** %13, align 8
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxxneIP6LsItemSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %3, %"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %4) #13
  br i1 %14, label %15, label %39

15:                                               ; preds = %2
  %16 = bitcast %"class.__gnu_cxx::__normal_iterator"* %6 to i8*
  %17 = bitcast %"class.__gnu_cxx::__normal_iterator"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false)
  %18 = bitcast %"class.__gnu_cxx::__normal_iterator"* %7 to i8*
  %19 = bitcast %"class.__gnu_cxx::__normal_iterator"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 8, i1 false)
  %20 = call noundef i64 @_ZN9__gnu_cxxmiIP6LsItemSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %4, %"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %3) #13
  %21 = call noundef i64 @_ZSt4__lgIlET_S0_(i64 noundef %20)
  %22 = mul nsw i64 %21, 2
  %23 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %8 to i8*
  %24 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %23, i8* align 1 %24, i64 1, i1 false)
  %25 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %6, i32 0, i32 0
  %26 = load %struct.LsItem*, %struct.LsItem** %25, align 8
  %27 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %7, i32 0, i32 0
  %28 = load %struct.LsItem*, %struct.LsItem** %27, align 8
  call void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_SK_T0_T1_"(%struct.LsItem* %26, %struct.LsItem* %28, i64 noundef %22)
  %29 = bitcast %"class.__gnu_cxx::__normal_iterator"* %9 to i8*
  %30 = bitcast %"class.__gnu_cxx::__normal_iterator"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 8, i1 false)
  %31 = bitcast %"class.__gnu_cxx::__normal_iterator"* %10 to i8*
  %32 = bitcast %"class.__gnu_cxx::__normal_iterator"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 8, i1 false)
  %33 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %11 to i8*
  %34 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %33, i8* align 1 %34, i64 1, i1 false)
  %35 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %9, i32 0, i32 0
  %36 = load %struct.LsItem*, %struct.LsItem** %35, align 8
  %37 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %10, i32 0, i32 0
  %38 = load %struct.LsItem*, %struct.LsItem** %37, align 8
  call void @"_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_SK_T0_"(%struct.LsItem* %36, %struct.LsItem* %38)
  br label %39

39:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define internal void @"_ZN9__gnu_cxx5__ops16__iter_comp_iterIZ2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE3$_0EENS0_15_Iter_comp_iterIT_EESD_"() #1 {
  %1 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %2 = alloca %class.anon, align 1
  %3 = alloca %class.anon, align 1
  call void @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE3$_0EC2ESB_"(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 1 dereferenceable(1) %1)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define internal void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_SK_T0_T1_"(%struct.LsItem* %0, %struct.LsItem* %1, i64 noundef %2) #1 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %7 = alloca i64, align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %11 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %12 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %13 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %14 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %15 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %16 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %17 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %18 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %19 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  store %struct.LsItem* %0, %struct.LsItem** %19, align 8
  %20 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  store %struct.LsItem* %1, %struct.LsItem** %20, align 8
  store i64 %2, i64* %7, align 8
  br label %21

21:                                               ; preds = %42, %3
  %22 = call noundef i64 @_ZN9__gnu_cxxmiIP6LsItemSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %5, %"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %4) #13
  %23 = icmp sgt i64 %22, 16
  br i1 %23, label %24, label %70

24:                                               ; preds = %21
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = bitcast %"class.__gnu_cxx::__normal_iterator"* %8 to i8*
  %29 = bitcast %"class.__gnu_cxx::__normal_iterator"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 8, i1 false)
  %30 = bitcast %"class.__gnu_cxx::__normal_iterator"* %9 to i8*
  %31 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 8, i1 false)
  %32 = bitcast %"class.__gnu_cxx::__normal_iterator"* %10 to i8*
  %33 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 8, i1 false)
  %34 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %11 to i8*
  %35 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %34, i8* align 1 %35, i64 1, i1 false)
  %36 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %8, i32 0, i32 0
  %37 = load %struct.LsItem*, %struct.LsItem** %36, align 8
  %38 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %9, i32 0, i32 0
  %39 = load %struct.LsItem*, %struct.LsItem** %38, align 8
  %40 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %10, i32 0, i32 0
  %41 = load %struct.LsItem*, %struct.LsItem** %40, align 8
  call void @"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_SK_SK_T0_"(%struct.LsItem* %37, %struct.LsItem* %39, %struct.LsItem* %41)
  br label %70

42:                                               ; preds = %24
  %43 = load i64, i64* %7, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %7, align 8
  %45 = bitcast %"class.__gnu_cxx::__normal_iterator"* %13 to i8*
  %46 = bitcast %"class.__gnu_cxx::__normal_iterator"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 8, i1 false)
  %47 = bitcast %"class.__gnu_cxx::__normal_iterator"* %14 to i8*
  %48 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 8, i1 false)
  %49 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %15 to i8*
  %50 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %49, i8* align 1 %50, i64 1, i1 false)
  %51 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %13, i32 0, i32 0
  %52 = load %struct.LsItem*, %struct.LsItem** %51, align 8
  %53 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %14, i32 0, i32 0
  %54 = load %struct.LsItem*, %struct.LsItem** %53, align 8
  %55 = call %struct.LsItem* @"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEET_SK_SK_T0_"(%struct.LsItem* %52, %struct.LsItem* %54)
  %56 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %12, i32 0, i32 0
  store %struct.LsItem* %55, %struct.LsItem** %56, align 8
  %57 = bitcast %"class.__gnu_cxx::__normal_iterator"* %16 to i8*
  %58 = bitcast %"class.__gnu_cxx::__normal_iterator"* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 8, i1 false)
  %59 = bitcast %"class.__gnu_cxx::__normal_iterator"* %17 to i8*
  %60 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 8, i1 false)
  %61 = load i64, i64* %7, align 8
  %62 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %18 to i8*
  %63 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %62, i8* align 1 %63, i64 1, i1 false)
  %64 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %16, i32 0, i32 0
  %65 = load %struct.LsItem*, %struct.LsItem** %64, align 8
  %66 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %17, i32 0, i32 0
  %67 = load %struct.LsItem*, %struct.LsItem** %66, align 8
  call void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_SK_T0_T1_"(%struct.LsItem* %65, %struct.LsItem* %67, i64 noundef %61)
  %68 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  %69 = bitcast %"class.__gnu_cxx::__normal_iterator"* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 8, i1 false)
  br label %21, !llvm.loop !15

70:                                               ; preds = %27, %21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i64 @_ZSt4__lgIlET_S0_(i64 noundef %0) #1 comdat {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noundef i32 @_ZSt11__bit_widthImEiT_(i64 noundef %3) #13
  %5 = sub nsw i32 %4, 1
  %6 = sext i32 %5 to i64
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define internal void @"_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_SK_T0_"(%struct.LsItem* %0, %struct.LsItem* %1) #1 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %11 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %12 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %13 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %14 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  store %struct.LsItem* %0, %struct.LsItem** %15, align 8
  %16 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  store %struct.LsItem* %1, %struct.LsItem** %16, align 8
  %17 = call noundef i64 @_ZN9__gnu_cxxmiIP6LsItemSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %4, %"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %3) #13
  %18 = icmp sgt i64 %17, 16
  br i1 %18, label %19, label %40

19:                                               ; preds = %2
  %20 = bitcast %"class.__gnu_cxx::__normal_iterator"* %6 to i8*
  %21 = bitcast %"class.__gnu_cxx::__normal_iterator"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 8, i1 false)
  %22 = call %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 16) #13
  %23 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %7, i32 0, i32 0
  store %struct.LsItem* %22, %struct.LsItem** %23, align 8
  %24 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %8 to i8*
  %25 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 %25, i64 1, i1 false)
  %26 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %6, i32 0, i32 0
  %27 = load %struct.LsItem*, %struct.LsItem** %26, align 8
  %28 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %7, i32 0, i32 0
  %29 = load %struct.LsItem*, %struct.LsItem** %28, align 8
  call void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_SK_T0_"(%struct.LsItem* %27, %struct.LsItem* %29)
  %30 = call %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 16) #13
  %31 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %9, i32 0, i32 0
  store %struct.LsItem* %30, %struct.LsItem** %31, align 8
  %32 = bitcast %"class.__gnu_cxx::__normal_iterator"* %10 to i8*
  %33 = bitcast %"class.__gnu_cxx::__normal_iterator"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 8, i1 false)
  %34 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %11 to i8*
  %35 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %34, i8* align 1 %35, i64 1, i1 false)
  %36 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %9, i32 0, i32 0
  %37 = load %struct.LsItem*, %struct.LsItem** %36, align 8
  %38 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %10, i32 0, i32 0
  %39 = load %struct.LsItem*, %struct.LsItem** %38, align 8
  call void @"_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_SK_T0_"(%struct.LsItem* %37, %struct.LsItem* %39)
  br label %51

40:                                               ; preds = %2
  %41 = bitcast %"class.__gnu_cxx::__normal_iterator"* %12 to i8*
  %42 = bitcast %"class.__gnu_cxx::__normal_iterator"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 8, i1 false)
  %43 = bitcast %"class.__gnu_cxx::__normal_iterator"* %13 to i8*
  %44 = bitcast %"class.__gnu_cxx::__normal_iterator"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 8, i1 false)
  %45 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %14 to i8*
  %46 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %45, i8* align 1 %46, i64 1, i1 false)
  %47 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %12, i32 0, i32 0
  %48 = load %struct.LsItem*, %struct.LsItem** %47, align 8
  %49 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %13, i32 0, i32 0
  %50 = load %struct.LsItem*, %struct.LsItem** %49, align 8
  call void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_SK_T0_"(%struct.LsItem* %48, %struct.LsItem* %50)
  br label %51

51:                                               ; preds = %40, %19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define internal void @"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_SK_SK_T0_"(%struct.LsItem* %0, %struct.LsItem* %1, %struct.LsItem* %2) #1 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %11 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %12 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %13 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  store %struct.LsItem* %0, %struct.LsItem** %14, align 8
  %15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  store %struct.LsItem* %1, %struct.LsItem** %15, align 8
  %16 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %6, i32 0, i32 0
  store %struct.LsItem* %2, %struct.LsItem** %16, align 8
  %17 = bitcast %"class.__gnu_cxx::__normal_iterator"* %8 to i8*
  %18 = bitcast %"class.__gnu_cxx::__normal_iterator"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 8, i1 false)
  %19 = bitcast %"class.__gnu_cxx::__normal_iterator"* %9 to i8*
  %20 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 8, i1 false)
  %21 = bitcast %"class.__gnu_cxx::__normal_iterator"* %10 to i8*
  %22 = bitcast %"class.__gnu_cxx::__normal_iterator"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 8, i1 false)
  %23 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %11 to i8*
  %24 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %23, i8* align 1 %24, i64 1, i1 false)
  %25 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %8, i32 0, i32 0
  %26 = load %struct.LsItem*, %struct.LsItem** %25, align 8
  %27 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %9, i32 0, i32 0
  %28 = load %struct.LsItem*, %struct.LsItem** %27, align 8
  %29 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %10, i32 0, i32 0
  %30 = load %struct.LsItem*, %struct.LsItem** %29, align 8
  call void @"_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_SK_SK_T0_"(%struct.LsItem* %26, %struct.LsItem* %28, %struct.LsItem* %30)
  %31 = bitcast %"class.__gnu_cxx::__normal_iterator"* %12 to i8*
  %32 = bitcast %"class.__gnu_cxx::__normal_iterator"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 8, i1 false)
  %33 = bitcast %"class.__gnu_cxx::__normal_iterator"* %13 to i8*
  %34 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 8, i1 false)
  %35 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %12, i32 0, i32 0
  %36 = load %struct.LsItem*, %struct.LsItem** %35, align 8
  %37 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %13, i32 0, i32 0
  %38 = load %struct.LsItem*, %struct.LsItem** %37, align 8
  call void @"_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_SK_RT0_"(%struct.LsItem* %36, %struct.LsItem* %38, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 1 dereferenceable(1) %7)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define internal %struct.LsItem* @"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEET_SK_SK_T0_"(%struct.LsItem* %0, %struct.LsItem* %1) #1 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %12 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %13 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %14 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %15 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %16 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %17 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  store %struct.LsItem* %0, %struct.LsItem** %17, align 8
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  store %struct.LsItem* %1, %struct.LsItem** %18, align 8
  %19 = call noundef i64 @_ZN9__gnu_cxxmiIP6LsItemSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %5, %"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %4) #13
  %20 = sdiv i64 %19, 2
  %21 = call %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %20) #13
  %22 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %7, i32 0, i32 0
  store %struct.LsItem* %21, %struct.LsItem** %22, align 8
  %23 = bitcast %"class.__gnu_cxx::__normal_iterator"* %8 to i8*
  %24 = bitcast %"class.__gnu_cxx::__normal_iterator"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 8, i1 false)
  %25 = call %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 1) #13
  %26 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %9, i32 0, i32 0
  store %struct.LsItem* %25, %struct.LsItem** %26, align 8
  %27 = bitcast %"class.__gnu_cxx::__normal_iterator"* %10 to i8*
  %28 = bitcast %"class.__gnu_cxx::__normal_iterator"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 8, i1 false)
  %29 = call %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEmiEl(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 1) #13
  %30 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %11, i32 0, i32 0
  store %struct.LsItem* %29, %struct.LsItem** %30, align 8
  %31 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %12 to i8*
  %32 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %31, i8* align 1 %32, i64 1, i1 false)
  %33 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %8, i32 0, i32 0
  %34 = load %struct.LsItem*, %struct.LsItem** %33, align 8
  %35 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %9, i32 0, i32 0
  %36 = load %struct.LsItem*, %struct.LsItem** %35, align 8
  %37 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %10, i32 0, i32 0
  %38 = load %struct.LsItem*, %struct.LsItem** %37, align 8
  %39 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %11, i32 0, i32 0
  %40 = load %struct.LsItem*, %struct.LsItem** %39, align 8
  call void @"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_SK_SK_SK_T0_"(%struct.LsItem* %34, %struct.LsItem* %36, %struct.LsItem* %38, %struct.LsItem* %40)
  %41 = call %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 1) #13
  %42 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %13, i32 0, i32 0
  store %struct.LsItem* %41, %struct.LsItem** %42, align 8
  %43 = bitcast %"class.__gnu_cxx::__normal_iterator"* %14 to i8*
  %44 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 8, i1 false)
  %45 = bitcast %"class.__gnu_cxx::__normal_iterator"* %15 to i8*
  %46 = bitcast %"class.__gnu_cxx::__normal_iterator"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 8, i1 false)
  %47 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %16 to i8*
  %48 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 %48, i64 1, i1 false)
  %49 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %13, i32 0, i32 0
  %50 = load %struct.LsItem*, %struct.LsItem** %49, align 8
  %51 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %14, i32 0, i32 0
  %52 = load %struct.LsItem*, %struct.LsItem** %51, align 8
  %53 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %15, i32 0, i32 0
  %54 = load %struct.LsItem*, %struct.LsItem** %53, align 8
  %55 = call %struct.LsItem* @"_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEET_SK_SK_SK_T0_"(%struct.LsItem* %50, %struct.LsItem* %52, %struct.LsItem* %54)
  %56 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  store %struct.LsItem* %55, %struct.LsItem** %56, align 8
  %57 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  %58 = load %struct.LsItem*, %struct.LsItem** %57, align 8
  ret %struct.LsItem* %58
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define internal void @"_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_SK_SK_T0_"(%struct.LsItem* %0, %struct.LsItem* %1, %struct.LsItem* %2) #1 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %12 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %13 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %14 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %15 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %16 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  store %struct.LsItem* %0, %struct.LsItem** %16, align 8
  %17 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  store %struct.LsItem* %1, %struct.LsItem** %17, align 8
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %6, i32 0, i32 0
  store %struct.LsItem* %2, %struct.LsItem** %18, align 8
  %19 = bitcast %"class.__gnu_cxx::__normal_iterator"* %8 to i8*
  %20 = bitcast %"class.__gnu_cxx::__normal_iterator"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 8, i1 false)
  %21 = bitcast %"class.__gnu_cxx::__normal_iterator"* %9 to i8*
  %22 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 8, i1 false)
  %23 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %8, i32 0, i32 0
  %24 = load %struct.LsItem*, %struct.LsItem** %23, align 8
  %25 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %9, i32 0, i32 0
  %26 = load %struct.LsItem*, %struct.LsItem** %25, align 8
  call void @"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_SK_RT0_"(%struct.LsItem* %24, %struct.LsItem* %26, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 1 dereferenceable(1) %7)
  %27 = bitcast %"class.__gnu_cxx::__normal_iterator"* %10 to i8*
  %28 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 8, i1 false)
  br label %29

29:                                               ; preds = %55, %3
  %30 = call noundef zeroext i1 @_ZN9__gnu_cxxltIP6LsItemSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %10, %"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %6) #13
  br i1 %30, label %31, label %57

31:                                               ; preds = %29
  %32 = bitcast %"class.__gnu_cxx::__normal_iterator"* %11 to i8*
  %33 = bitcast %"class.__gnu_cxx::__normal_iterator"* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 8, i1 false)
  %34 = bitcast %"class.__gnu_cxx::__normal_iterator"* %12 to i8*
  %35 = bitcast %"class.__gnu_cxx::__normal_iterator"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 8, i1 false)
  %36 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %11, i32 0, i32 0
  %37 = load %struct.LsItem*, %struct.LsItem** %36, align 8
  %38 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %12, i32 0, i32 0
  %39 = load %struct.LsItem*, %struct.LsItem** %38, align 8
  %40 = call noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE3$_0EclINS_17__normal_iteratorIP6LsItemS2_ISF_SaISF_EEEESJ_EEbT_T0_"(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 1 dereferenceable(1) %7, %struct.LsItem* %37, %struct.LsItem* %39)
  br i1 %40, label %41, label %54

41:                                               ; preds = %31
  %42 = bitcast %"class.__gnu_cxx::__normal_iterator"* %13 to i8*
  %43 = bitcast %"class.__gnu_cxx::__normal_iterator"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 8, i1 false)
  %44 = bitcast %"class.__gnu_cxx::__normal_iterator"* %14 to i8*
  %45 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 8, i1 false)
  %46 = bitcast %"class.__gnu_cxx::__normal_iterator"* %15 to i8*
  %47 = bitcast %"class.__gnu_cxx::__normal_iterator"* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 8, i1 false)
  %48 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %13, i32 0, i32 0
  %49 = load %struct.LsItem*, %struct.LsItem** %48, align 8
  %50 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %14, i32 0, i32 0
  %51 = load %struct.LsItem*, %struct.LsItem** %50, align 8
  %52 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %15, i32 0, i32 0
  %53 = load %struct.LsItem*, %struct.LsItem** %52, align 8
  call void @"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_SK_SK_RT0_"(%struct.LsItem* %49, %struct.LsItem* %51, %struct.LsItem* %53, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 1 dereferenceable(1) %7)
  br label %54

54:                                               ; preds = %41, %31
  br label %55

55:                                               ; preds = %54
  %56 = call noundef nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %10) #13
  br label %29, !llvm.loop !16

57:                                               ; preds = %29
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define internal void @"_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_SK_RT0_"(%struct.LsItem* %0, %struct.LsItem* %1, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 1 dereferenceable(1) %2) #1 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %10 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  store %struct.LsItem* %0, %struct.LsItem** %10, align 8
  %11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  store %struct.LsItem* %1, %struct.LsItem** %11, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %2, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %6, align 8
  br label %12

12:                                               ; preds = %15, %3
  %13 = call noundef i64 @_ZN9__gnu_cxxmiIP6LsItemSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %5, %"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %4) #13
  %14 = icmp sgt i64 %13, 1
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = call noundef nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEmmEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %5) #13
  %17 = bitcast %"class.__gnu_cxx::__normal_iterator"* %7 to i8*
  %18 = bitcast %"class.__gnu_cxx::__normal_iterator"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 8, i1 false)
  %19 = bitcast %"class.__gnu_cxx::__normal_iterator"* %8 to i8*
  %20 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 8, i1 false)
  %21 = bitcast %"class.__gnu_cxx::__normal_iterator"* %9 to i8*
  %22 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 8, i1 false)
  %23 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %6, align 8
  %24 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %7, i32 0, i32 0
  %25 = load %struct.LsItem*, %struct.LsItem** %24, align 8
  %26 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %8, i32 0, i32 0
  %27 = load %struct.LsItem*, %struct.LsItem** %26, align 8
  %28 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %9, i32 0, i32 0
  %29 = load %struct.LsItem*, %struct.LsItem** %28, align 8
  call void @"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_SK_SK_RT0_"(%struct.LsItem* %25, %struct.LsItem* %27, %struct.LsItem* %29, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 1 dereferenceable(1) %23)
  br label %12, !llvm.loop !17

30:                                               ; preds = %12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define internal void @"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_SK_RT0_"(%struct.LsItem* %0, %struct.LsItem* %1, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 1 dereferenceable(1) %2) #1 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.LsItem, align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %12 = alloca %struct.LsItem, align 8
  %13 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  store %struct.LsItem* %0, %struct.LsItem** %15, align 8
  %16 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  store %struct.LsItem* %1, %struct.LsItem** %16, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %2, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %6, align 8
  %17 = call noundef i64 @_ZN9__gnu_cxxmiIP6LsItemSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %5, %"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %4) #13
  %18 = icmp slt i64 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %48

20:                                               ; preds = %3
  %21 = call noundef i64 @_ZN9__gnu_cxxmiIP6LsItemSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %5, %"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %4) #13
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = sub nsw i64 %22, 2
  %24 = sdiv i64 %23, 2
  store i64 %24, i64* %8, align 8
  br label %25

25:                                               ; preds = %20, %47
  %26 = load i64, i64* %8, align 8
  %27 = call %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %26) #13
  %28 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %10, i32 0, i32 0
  store %struct.LsItem* %27, %struct.LsItem** %28, align 8
  %29 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %10) #13
  call void @_ZN6LsItemC2EOS_(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %9, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %29) #13
  %30 = bitcast %"class.__gnu_cxx::__normal_iterator"* %11 to i8*
  %31 = bitcast %"class.__gnu_cxx::__normal_iterator"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 8, i1 false)
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %7, align 8
  call void @_ZN6LsItemC2EOS_(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %12, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %9) #13
  %34 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %6, align 8
  %35 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %13 to i8*
  %36 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %35, i8* align 1 %36, i64 1, i1 false)
  %37 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %11, i32 0, i32 0
  %38 = load %struct.LsItem*, %struct.LsItem** %37, align 8
  call void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_T0_SL_T1_T2_"(%struct.LsItem* %38, i64 noundef %32, i64 noundef %33, %struct.LsItem* noundef %12)
  call void @_ZN6LsItemD2Ev(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %12) #13
  %39 = load i64, i64* %8, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %25
  store i32 1, i32* %14, align 4
  br label %45

42:                                               ; preds = %25
  %43 = load i64, i64* %8, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %8, align 8
  store i32 0, i32* %14, align 4
  br label %45

45:                                               ; preds = %42, %41
  call void @_ZN6LsItemD2Ev(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %9) #13
  %46 = load i32, i32* %14, align 4
  switch i32 %46, label %49 [
    i32 0, label %47
    i32 1, label %48
  ]

47:                                               ; preds = %45
  br label %25, !llvm.loop !18

48:                                               ; preds = %45, %19
  ret void

49:                                               ; preds = %45
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxltIP6LsItemSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %0, %"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %1) #1 comdat {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %1, %"class.__gnu_cxx::__normal_iterator"** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) %struct.LsItem** @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %5) #13
  %7 = load %struct.LsItem*, %struct.LsItem** %6, align 8
  %8 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %4, align 8
  %9 = call noundef nonnull align 8 dereferenceable(8) %struct.LsItem** @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %8) #13
  %10 = load %struct.LsItem*, %struct.LsItem** %9, align 8
  %11 = icmp ult %struct.LsItem* %7, %10
  ret i1 %11
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define internal noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE3$_0EclINS_17__normal_iteratorIP6LsItemS2_ISF_SaISF_EEEESJ_EEbT_T0_"(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 1 dereferenceable(1) %0, %struct.LsItem* %1, %struct.LsItem* %2) #1 align 2 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  store %struct.LsItem* %1, %struct.LsItem** %7, align 8
  %8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  store %struct.LsItem* %2, %struct.LsItem** %8, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %0, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %6, align 8
  %9 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %6, align 8
  %10 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %9, i32 0, i32 0
  %11 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %4) #13
  %12 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %5) #13
  %13 = call noundef zeroext i1 @"_ZZ2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEENK3$_0clERK6LsItemSB_"(%class.anon* noundef nonnull align 1 dereferenceable(1) %10, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %11, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %12)
  ret i1 %13
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define internal void @"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_SK_SK_RT0_"(%struct.LsItem* %0, %struct.LsItem* %1, %struct.LsItem* %2, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 1 dereferenceable(1) %3) #1 {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  %9 = alloca %struct.LsItem, align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %11 = alloca %struct.LsItem, align 8
  %12 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  store %struct.LsItem* %0, %struct.LsItem** %13, align 8
  %14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %6, i32 0, i32 0
  store %struct.LsItem* %1, %struct.LsItem** %14, align 8
  %15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %7, i32 0, i32 0
  store %struct.LsItem* %2, %struct.LsItem** %15, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %3, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %8, align 8
  %16 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %7) #13
  call void @_ZN6LsItemC2EOS_(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %9, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %16) #13
  %17 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %5) #13
  %18 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %7) #13
  %19 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZN6LsItemaSEOS_(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %18, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %17) #13
  %20 = bitcast %"class.__gnu_cxx::__normal_iterator"* %10 to i8*
  %21 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 8, i1 false)
  %22 = call noundef i64 @_ZN9__gnu_cxxmiIP6LsItemSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %6, %"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %5) #13
  call void @_ZN6LsItemC2EOS_(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %11, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %9) #13
  %23 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %8, align 8
  %24 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %12 to i8*
  %25 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 %25, i64 1, i1 false)
  %26 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %10, i32 0, i32 0
  %27 = load %struct.LsItem*, %struct.LsItem** %26, align 8
  call void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_T0_SL_T1_T2_"(%struct.LsItem* %27, i64 noundef 0, i64 noundef %22, %struct.LsItem* noundef %11)
  call void @_ZN6LsItemD2Ev(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %11) #13
  call void @_ZN6LsItemD2Ev(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %9) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) #1 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.LsItem*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %4, align 8
  %8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %7, i32 0, i32 0
  %9 = load %struct.LsItem*, %struct.LsItem** %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %9, i64 %10
  store %struct.LsItem* %11, %struct.LsItem** %6, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEC2ERKS2_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %3, %struct.LsItem** noundef nonnull align 8 dereferenceable(8) %6) #13
  %12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  %13 = load %struct.LsItem*, %struct.LsItem** %12, align 8
  ret %struct.LsItem* %13
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define internal void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_T0_SL_T1_T2_"(%struct.LsItem* %0, i64 noundef %1, i64 noundef %2, %struct.LsItem* noundef %3) #1 {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %12 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %13 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %14 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %15 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %16 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %17 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 1
  %18 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %19 = alloca %struct.LsItem, align 8
  %20 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  store %struct.LsItem* %0, %struct.LsItem** %20, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  %21 = load i64, i64* %7, align 8
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %7, align 8
  store i64 %22, i64* %10, align 8
  br label %23

23:                                               ; preds = %48, %4
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %8, align 8
  %26 = sub nsw i64 %25, 1
  %27 = sdiv i64 %26, 2
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %23
  %30 = load i64, i64* %10, align 8
  %31 = add nsw i64 %30, 1
  %32 = mul nsw i64 2, %31
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %33) #13
  %35 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %11, i32 0, i32 0
  store %struct.LsItem* %34, %struct.LsItem** %35, align 8
  %36 = load i64, i64* %10, align 8
  %37 = sub nsw i64 %36, 1
  %38 = call %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %37) #13
  %39 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %12, i32 0, i32 0
  store %struct.LsItem* %38, %struct.LsItem** %39, align 8
  %40 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %11, i32 0, i32 0
  %41 = load %struct.LsItem*, %struct.LsItem** %40, align 8
  %42 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %12, i32 0, i32 0
  %43 = load %struct.LsItem*, %struct.LsItem** %42, align 8
  %44 = call noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE3$_0EclINS_17__normal_iteratorIP6LsItemS2_ISF_SaISF_EEEESJ_EEbT_T0_"(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 1 dereferenceable(1) %6, %struct.LsItem* %41, %struct.LsItem* %43)
  br i1 %44, label %45, label %48

45:                                               ; preds = %29
  %46 = load i64, i64* %10, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %10, align 8
  br label %48

48:                                               ; preds = %45, %29
  %49 = load i64, i64* %10, align 8
  %50 = call %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %49) #13
  %51 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %13, i32 0, i32 0
  store %struct.LsItem* %50, %struct.LsItem** %51, align 8
  %52 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %13) #13
  %53 = load i64, i64* %7, align 8
  %54 = call %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %53) #13
  %55 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %14, i32 0, i32 0
  store %struct.LsItem* %54, %struct.LsItem** %55, align 8
  %56 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %14) #13
  %57 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZN6LsItemaSEOS_(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %56, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %52) #13
  %58 = load i64, i64* %10, align 8
  store i64 %58, i64* %7, align 8
  br label %23, !llvm.loop !19

59:                                               ; preds = %23
  %60 = load i64, i64* %8, align 8
  %61 = and i64 %60, 1
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %59
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %8, align 8
  %66 = sub nsw i64 %65, 2
  %67 = sdiv i64 %66, 2
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %63
  %70 = load i64, i64* %10, align 8
  %71 = add nsw i64 %70, 1
  %72 = mul nsw i64 2, %71
  store i64 %72, i64* %10, align 8
  %73 = load i64, i64* %10, align 8
  %74 = sub nsw i64 %73, 1
  %75 = call %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %74) #13
  %76 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %15, i32 0, i32 0
  store %struct.LsItem* %75, %struct.LsItem** %76, align 8
  %77 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %15) #13
  %78 = load i64, i64* %7, align 8
  %79 = call %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %78) #13
  %80 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %16, i32 0, i32 0
  store %struct.LsItem* %79, %struct.LsItem** %80, align 8
  %81 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %16) #13
  %82 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZN6LsItemaSEOS_(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %81, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %77) #13
  %83 = load i64, i64* %10, align 8
  %84 = sub nsw i64 %83, 1
  store i64 %84, i64* %7, align 8
  br label %85

85:                                               ; preds = %69, %63, %59
  call void @"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZ2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE3$_0EC2EONS0_15_Iter_comp_iterISB_EE"(%"struct.__gnu_cxx::__ops::_Iter_comp_val"* noundef nonnull align 1 dereferenceable(1) %17, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 1 dereferenceable(1) %6)
  %86 = bitcast %"class.__gnu_cxx::__normal_iterator"* %18 to i8*
  %87 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 8, i1 false)
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* %9, align 8
  call void @_ZN6LsItemC2EOS_(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %19, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %3) #13
  %90 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %18, i32 0, i32 0
  %91 = load %struct.LsItem*, %struct.LsItem** %90, align 8
  call void @"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops14_Iter_comp_valIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_T0_SL_T1_RT2_"(%struct.LsItem* %91, i64 noundef %88, i64 noundef %89, %struct.LsItem* noundef %19, %"struct.__gnu_cxx::__ops::_Iter_comp_val"* noundef nonnull align 1 dereferenceable(1) %17)
  call void @_ZN6LsItemD2Ev(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %19) #13
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZN6LsItemaSEOS_(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %0, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %1) #0 comdat align 2 {
  %3 = alloca %struct.LsItem*, align 8
  %4 = alloca %struct.LsItem*, align 8
  store %struct.LsItem* %0, %struct.LsItem** %3, align 8
  store %struct.LsItem* %1, %struct.LsItem** %4, align 8
  %5 = load %struct.LsItem*, %struct.LsItem** %3, align 8
  %6 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %5, i32 0, i32 0
  %7 = load %struct.LsItem*, %struct.LsItem** %4, align 8
  %8 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %7, i32 0, i32 0
  %9 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8) #13
  %10 = load %struct.LsItem*, %struct.LsItem** %4, align 8
  %11 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %10, i32 0, i32 1
  %12 = load i8, i8* %11, align 8
  %13 = trunc i8 %12 to i1
  %14 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %5, i32 0, i32 1
  %15 = zext i1 %13 to i8
  store i8 %15, i8* %14, align 8
  ret %struct.LsItem* %5
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZ2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE3$_0EC2EONS0_15_Iter_comp_iterISB_EE"(%"struct.__gnu_cxx::__ops::_Iter_comp_val"* noundef nonnull align 1 dereferenceable(1) %0, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #0 align 2 {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val"*, align 8
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_val"* %0, %"struct.__gnu_cxx::__ops::_Iter_comp_val"** %3, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %1, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %4, align 8
  %5 = load %"struct.__gnu_cxx::__ops::_Iter_comp_val"*, %"struct.__gnu_cxx::__ops::_Iter_comp_val"** %3, align 8
  %6 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_val", %"struct.__gnu_cxx::__ops::_Iter_comp_val"* %5, i32 0, i32 0
  %7 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %4, align 8
  %8 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %7, i32 0, i32 0
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define internal void @"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops14_Iter_comp_valIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_T0_SL_T1_RT2_"(%struct.LsItem* %0, i64 noundef %1, i64 noundef %2, %struct.LsItem* noundef %3, %"struct.__gnu_cxx::__ops::_Iter_comp_val"* noundef nonnull align 1 dereferenceable(1) %4) #1 {
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val"*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %12 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %13 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %14 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %6, i32 0, i32 0
  store %struct.LsItem* %0, %struct.LsItem** %15, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_val"* %4, %"struct.__gnu_cxx::__ops::_Iter_comp_val"** %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = sub nsw i64 %16, 1
  %18 = sdiv i64 %17, 2
  store i64 %18, i64* %10, align 8
  br label %19

19:                                               ; preds = %33, %5
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load %"struct.__gnu_cxx::__ops::_Iter_comp_val"*, %"struct.__gnu_cxx::__ops::_Iter_comp_val"** %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %25) #13
  %27 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %11, i32 0, i32 0
  store %struct.LsItem* %26, %struct.LsItem** %27, align 8
  %28 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %11, i32 0, i32 0
  %29 = load %struct.LsItem*, %struct.LsItem** %28, align 8
  %30 = call noundef zeroext i1 @"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZ2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE3$_0EclINS_17__normal_iteratorIP6LsItemS2_ISF_SaISF_EEEESF_EEbT_RT0_"(%"struct.__gnu_cxx::__ops::_Iter_comp_val"* noundef nonnull align 1 dereferenceable(1) %24, %struct.LsItem* %29, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %3)
  br label %31

31:                                               ; preds = %23, %19
  %32 = phi i1 [ false, %19 ], [ %30, %23 ]
  br i1 %32, label %33, label %47

33:                                               ; preds = %31
  %34 = load i64, i64* %10, align 8
  %35 = call %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %34) #13
  %36 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %12, i32 0, i32 0
  store %struct.LsItem* %35, %struct.LsItem** %36, align 8
  %37 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %12) #13
  %38 = load i64, i64* %7, align 8
  %39 = call %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %38) #13
  %40 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %13, i32 0, i32 0
  store %struct.LsItem* %39, %struct.LsItem** %40, align 8
  %41 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %13) #13
  %42 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZN6LsItemaSEOS_(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %41, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %37) #13
  %43 = load i64, i64* %10, align 8
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = sub nsw i64 %44, 1
  %46 = sdiv i64 %45, 2
  store i64 %46, i64* %10, align 8
  br label %19, !llvm.loop !20

47:                                               ; preds = %31
  %48 = load i64, i64* %7, align 8
  %49 = call %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %48) #13
  %50 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %14, i32 0, i32 0
  store %struct.LsItem* %49, %struct.LsItem** %50, align 8
  %51 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %14) #13
  %52 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZN6LsItemaSEOS_(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %51, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %3) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define internal noundef zeroext i1 @"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZ2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE3$_0EclINS_17__normal_iteratorIP6LsItemS2_ISF_SaISF_EEEESF_EEbT_RT0_"(%"struct.__gnu_cxx::__ops::_Iter_comp_val"* noundef nonnull align 1 dereferenceable(1) %0, %struct.LsItem* %1, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %2) #1 align 2 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val"*, align 8
  %6 = alloca %struct.LsItem*, align 8
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  store %struct.LsItem* %1, %struct.LsItem** %7, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_val"* %0, %"struct.__gnu_cxx::__ops::_Iter_comp_val"** %5, align 8
  store %struct.LsItem* %2, %struct.LsItem** %6, align 8
  %8 = load %"struct.__gnu_cxx::__ops::_Iter_comp_val"*, %"struct.__gnu_cxx::__ops::_Iter_comp_val"** %5, align 8
  %9 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_val", %"struct.__gnu_cxx::__ops::_Iter_comp_val"* %8, i32 0, i32 0
  %10 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %4) #13
  %11 = load %struct.LsItem*, %struct.LsItem** %6, align 8
  %12 = call noundef zeroext i1 @"_ZZ2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEENK3$_0clERK6LsItemSB_"(%class.anon* noundef nonnull align 1 dereferenceable(1) %9, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %10, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %11)
  ret i1 %12
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define internal noundef zeroext i1 @"_ZZ2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEENK3$_0clERK6LsItemSB_"(%class.anon* noundef nonnull align 1 dereferenceable(1) %0, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %1, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %2) #1 align 2 {
  %4 = alloca i1, align 1
  %5 = alloca %class.anon*, align 8
  %6 = alloca %struct.LsItem*, align 8
  %7 = alloca %struct.LsItem*, align 8
  store %class.anon* %0, %class.anon** %5, align 8
  store %struct.LsItem* %1, %struct.LsItem** %6, align 8
  store %struct.LsItem* %2, %struct.LsItem** %7, align 8
  %8 = load %class.anon*, %class.anon** %5, align 8
  %9 = load %struct.LsItem*, %struct.LsItem** %6, align 8
  %10 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %9, i32 0, i32 1
  %11 = load i8, i8* %10, align 8
  %12 = trunc i8 %11 to i1
  %13 = zext i1 %12 to i32
  %14 = load %struct.LsItem*, %struct.LsItem** %7, align 8
  %15 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %14, i32 0, i32 1
  %16 = load i8, i8* %15, align 8
  %17 = trunc i8 %16 to i1
  %18 = zext i1 %17 to i32
  %19 = icmp ne i32 %13, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.LsItem*, %struct.LsItem** %6, align 8
  %22 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %21, i32 0, i32 1
  %23 = load i8, i8* %22, align 8
  %24 = trunc i8 %23 to i1
  store i1 %24, i1* %4, align 1
  br label %31

25:                                               ; preds = %3
  %26 = load %struct.LsItem*, %struct.LsItem** %6, align 8
  %27 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %26, i32 0, i32 0
  %28 = load %struct.LsItem*, %struct.LsItem** %7, align 8
  %29 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %28, i32 0, i32 0
  %30 = call noundef zeroext i1 @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %27, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %29) #13
  store i1 %30, i1* %4, align 1
  br label %31

31:                                               ; preds = %25, %20
  %32 = load i1, i1* %4, align 1
  ret i1 %32
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1) #1 comdat {
  %3 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::__cxx11::basic_string"* %0, %"class.std::__cxx11::basic_string"** %3, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %4, align 8
  %5 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %3, align 8
  %6 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 8
  %7 = call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %5, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %6)
  %8 = icmp slt i32 %7, 0
  ret i1 %8
}

declare noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) #4

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEmmEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  %5 = load %struct.LsItem*, %struct.LsItem** %4, align 8
  %6 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %5, i32 -1
  store %struct.LsItem* %6, %struct.LsItem** %4, align 8
  ret %"class.__gnu_cxx::__normal_iterator"* %3
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define internal void @"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_SK_SK_SK_T0_"(%struct.LsItem* %0, %struct.LsItem* %1, %struct.LsItem* %2, %struct.LsItem* %3) #1 {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %10 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %12 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %13 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %14 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %15 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %16 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %17 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %18 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %19 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %20 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %21 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %22 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %23 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %24 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %25 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %26 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %27 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %28 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %29 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %30 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %31 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %32 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  store %struct.LsItem* %0, %struct.LsItem** %32, align 8
  %33 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %6, i32 0, i32 0
  store %struct.LsItem* %1, %struct.LsItem** %33, align 8
  %34 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %7, i32 0, i32 0
  store %struct.LsItem* %2, %struct.LsItem** %34, align 8
  %35 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %8, i32 0, i32 0
  store %struct.LsItem* %3, %struct.LsItem** %35, align 8
  %36 = bitcast %"class.__gnu_cxx::__normal_iterator"* %10 to i8*
  %37 = bitcast %"class.__gnu_cxx::__normal_iterator"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 8, i1 false)
  %38 = bitcast %"class.__gnu_cxx::__normal_iterator"* %11 to i8*
  %39 = bitcast %"class.__gnu_cxx::__normal_iterator"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 8, i1 false)
  %40 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %10, i32 0, i32 0
  %41 = load %struct.LsItem*, %struct.LsItem** %40, align 8
  %42 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %11, i32 0, i32 0
  %43 = load %struct.LsItem*, %struct.LsItem** %42, align 8
  %44 = call noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE3$_0EclINS_17__normal_iteratorIP6LsItemS2_ISF_SaISF_EEEESJ_EEbT_T0_"(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 1 dereferenceable(1) %9, %struct.LsItem* %41, %struct.LsItem* %43)
  br i1 %44, label %45, label %94

45:                                               ; preds = %4
  %46 = bitcast %"class.__gnu_cxx::__normal_iterator"* %12 to i8*
  %47 = bitcast %"class.__gnu_cxx::__normal_iterator"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 8, i1 false)
  %48 = bitcast %"class.__gnu_cxx::__normal_iterator"* %13 to i8*
  %49 = bitcast %"class.__gnu_cxx::__normal_iterator"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 8, i1 false)
  %50 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %12, i32 0, i32 0
  %51 = load %struct.LsItem*, %struct.LsItem** %50, align 8
  %52 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %13, i32 0, i32 0
  %53 = load %struct.LsItem*, %struct.LsItem** %52, align 8
  %54 = call noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE3$_0EclINS_17__normal_iteratorIP6LsItemS2_ISF_SaISF_EEEESJ_EEbT_T0_"(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 1 dereferenceable(1) %9, %struct.LsItem* %51, %struct.LsItem* %53)
  br i1 %54, label %55, label %64

55:                                               ; preds = %45
  %56 = bitcast %"class.__gnu_cxx::__normal_iterator"* %14 to i8*
  %57 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 8, i1 false)
  %58 = bitcast %"class.__gnu_cxx::__normal_iterator"* %15 to i8*
  %59 = bitcast %"class.__gnu_cxx::__normal_iterator"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 8, i1 false)
  %60 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %14, i32 0, i32 0
  %61 = load %struct.LsItem*, %struct.LsItem** %60, align 8
  %62 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %15, i32 0, i32 0
  %63 = load %struct.LsItem*, %struct.LsItem** %62, align 8
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEES7_EvT_T0_(%struct.LsItem* %61, %struct.LsItem* %63)
  br label %93

64:                                               ; preds = %45
  %65 = bitcast %"class.__gnu_cxx::__normal_iterator"* %16 to i8*
  %66 = bitcast %"class.__gnu_cxx::__normal_iterator"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 8, i1 false)
  %67 = bitcast %"class.__gnu_cxx::__normal_iterator"* %17 to i8*
  %68 = bitcast %"class.__gnu_cxx::__normal_iterator"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 8, i1 false)
  %69 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %16, i32 0, i32 0
  %70 = load %struct.LsItem*, %struct.LsItem** %69, align 8
  %71 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %17, i32 0, i32 0
  %72 = load %struct.LsItem*, %struct.LsItem** %71, align 8
  %73 = call noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE3$_0EclINS_17__normal_iteratorIP6LsItemS2_ISF_SaISF_EEEESJ_EEbT_T0_"(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 1 dereferenceable(1) %9, %struct.LsItem* %70, %struct.LsItem* %72)
  br i1 %73, label %74, label %83

74:                                               ; preds = %64
  %75 = bitcast %"class.__gnu_cxx::__normal_iterator"* %18 to i8*
  %76 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %75, i8* align 8 %76, i64 8, i1 false)
  %77 = bitcast %"class.__gnu_cxx::__normal_iterator"* %19 to i8*
  %78 = bitcast %"class.__gnu_cxx::__normal_iterator"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %78, i64 8, i1 false)
  %79 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %18, i32 0, i32 0
  %80 = load %struct.LsItem*, %struct.LsItem** %79, align 8
  %81 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %19, i32 0, i32 0
  %82 = load %struct.LsItem*, %struct.LsItem** %81, align 8
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEES7_EvT_T0_(%struct.LsItem* %80, %struct.LsItem* %82)
  br label %92

83:                                               ; preds = %64
  %84 = bitcast %"class.__gnu_cxx::__normal_iterator"* %20 to i8*
  %85 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 8, i1 false)
  %86 = bitcast %"class.__gnu_cxx::__normal_iterator"* %21 to i8*
  %87 = bitcast %"class.__gnu_cxx::__normal_iterator"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 8, i1 false)
  %88 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %20, i32 0, i32 0
  %89 = load %struct.LsItem*, %struct.LsItem** %88, align 8
  %90 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %21, i32 0, i32 0
  %91 = load %struct.LsItem*, %struct.LsItem** %90, align 8
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEES7_EvT_T0_(%struct.LsItem* %89, %struct.LsItem* %91)
  br label %92

92:                                               ; preds = %83, %74
  br label %93

93:                                               ; preds = %92, %55
  br label %143

94:                                               ; preds = %4
  %95 = bitcast %"class.__gnu_cxx::__normal_iterator"* %22 to i8*
  %96 = bitcast %"class.__gnu_cxx::__normal_iterator"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 8 %96, i64 8, i1 false)
  %97 = bitcast %"class.__gnu_cxx::__normal_iterator"* %23 to i8*
  %98 = bitcast %"class.__gnu_cxx::__normal_iterator"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %97, i8* align 8 %98, i64 8, i1 false)
  %99 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %22, i32 0, i32 0
  %100 = load %struct.LsItem*, %struct.LsItem** %99, align 8
  %101 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %23, i32 0, i32 0
  %102 = load %struct.LsItem*, %struct.LsItem** %101, align 8
  %103 = call noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE3$_0EclINS_17__normal_iteratorIP6LsItemS2_ISF_SaISF_EEEESJ_EEbT_T0_"(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 1 dereferenceable(1) %9, %struct.LsItem* %100, %struct.LsItem* %102)
  br i1 %103, label %104, label %113

104:                                              ; preds = %94
  %105 = bitcast %"class.__gnu_cxx::__normal_iterator"* %24 to i8*
  %106 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 %106, i64 8, i1 false)
  %107 = bitcast %"class.__gnu_cxx::__normal_iterator"* %25 to i8*
  %108 = bitcast %"class.__gnu_cxx::__normal_iterator"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %107, i8* align 8 %108, i64 8, i1 false)
  %109 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %24, i32 0, i32 0
  %110 = load %struct.LsItem*, %struct.LsItem** %109, align 8
  %111 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %25, i32 0, i32 0
  %112 = load %struct.LsItem*, %struct.LsItem** %111, align 8
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEES7_EvT_T0_(%struct.LsItem* %110, %struct.LsItem* %112)
  br label %142

113:                                              ; preds = %94
  %114 = bitcast %"class.__gnu_cxx::__normal_iterator"* %26 to i8*
  %115 = bitcast %"class.__gnu_cxx::__normal_iterator"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %114, i8* align 8 %115, i64 8, i1 false)
  %116 = bitcast %"class.__gnu_cxx::__normal_iterator"* %27 to i8*
  %117 = bitcast %"class.__gnu_cxx::__normal_iterator"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %116, i8* align 8 %117, i64 8, i1 false)
  %118 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %26, i32 0, i32 0
  %119 = load %struct.LsItem*, %struct.LsItem** %118, align 8
  %120 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %27, i32 0, i32 0
  %121 = load %struct.LsItem*, %struct.LsItem** %120, align 8
  %122 = call noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE3$_0EclINS_17__normal_iteratorIP6LsItemS2_ISF_SaISF_EEEESJ_EEbT_T0_"(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 1 dereferenceable(1) %9, %struct.LsItem* %119, %struct.LsItem* %121)
  br i1 %122, label %123, label %132

123:                                              ; preds = %113
  %124 = bitcast %"class.__gnu_cxx::__normal_iterator"* %28 to i8*
  %125 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %124, i8* align 8 %125, i64 8, i1 false)
  %126 = bitcast %"class.__gnu_cxx::__normal_iterator"* %29 to i8*
  %127 = bitcast %"class.__gnu_cxx::__normal_iterator"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %126, i8* align 8 %127, i64 8, i1 false)
  %128 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %28, i32 0, i32 0
  %129 = load %struct.LsItem*, %struct.LsItem** %128, align 8
  %130 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %29, i32 0, i32 0
  %131 = load %struct.LsItem*, %struct.LsItem** %130, align 8
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEES7_EvT_T0_(%struct.LsItem* %129, %struct.LsItem* %131)
  br label %141

132:                                              ; preds = %113
  %133 = bitcast %"class.__gnu_cxx::__normal_iterator"* %30 to i8*
  %134 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %133, i8* align 8 %134, i64 8, i1 false)
  %135 = bitcast %"class.__gnu_cxx::__normal_iterator"* %31 to i8*
  %136 = bitcast %"class.__gnu_cxx::__normal_iterator"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %135, i8* align 8 %136, i64 8, i1 false)
  %137 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %30, i32 0, i32 0
  %138 = load %struct.LsItem*, %struct.LsItem** %137, align 8
  %139 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %31, i32 0, i32 0
  %140 = load %struct.LsItem*, %struct.LsItem** %139, align 8
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEES7_EvT_T0_(%struct.LsItem* %138, %struct.LsItem* %140)
  br label %141

141:                                              ; preds = %132, %123
  br label %142

142:                                              ; preds = %141, %104
  br label %143

143:                                              ; preds = %142, %93
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define internal %struct.LsItem* @"_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEET_SK_SK_SK_T0_"(%struct.LsItem* %0, %struct.LsItem* %1, %struct.LsItem* %2) #1 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %12 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %13 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %14 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  store %struct.LsItem* %0, %struct.LsItem** %15, align 8
  %16 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %6, i32 0, i32 0
  store %struct.LsItem* %1, %struct.LsItem** %16, align 8
  %17 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %7, i32 0, i32 0
  store %struct.LsItem* %2, %struct.LsItem** %17, align 8
  br label %18

18:                                               ; preds = %3, %52
  br label %19

19:                                               ; preds = %29, %18
  %20 = bitcast %"class.__gnu_cxx::__normal_iterator"* %9 to i8*
  %21 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 8, i1 false)
  %22 = bitcast %"class.__gnu_cxx::__normal_iterator"* %10 to i8*
  %23 = bitcast %"class.__gnu_cxx::__normal_iterator"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 8, i1 false)
  %24 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %9, i32 0, i32 0
  %25 = load %struct.LsItem*, %struct.LsItem** %24, align 8
  %26 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %10, i32 0, i32 0
  %27 = load %struct.LsItem*, %struct.LsItem** %26, align 8
  %28 = call noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE3$_0EclINS_17__normal_iteratorIP6LsItemS2_ISF_SaISF_EEEESJ_EEbT_T0_"(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 1 dereferenceable(1) %8, %struct.LsItem* %25, %struct.LsItem* %27)
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = call noundef nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %5) #13
  br label %19, !llvm.loop !21

31:                                               ; preds = %19
  %32 = call noundef nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEmmEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %6) #13
  br label %33

33:                                               ; preds = %43, %31
  %34 = bitcast %"class.__gnu_cxx::__normal_iterator"* %11 to i8*
  %35 = bitcast %"class.__gnu_cxx::__normal_iterator"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 8, i1 false)
  %36 = bitcast %"class.__gnu_cxx::__normal_iterator"* %12 to i8*
  %37 = bitcast %"class.__gnu_cxx::__normal_iterator"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 8, i1 false)
  %38 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %11, i32 0, i32 0
  %39 = load %struct.LsItem*, %struct.LsItem** %38, align 8
  %40 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %12, i32 0, i32 0
  %41 = load %struct.LsItem*, %struct.LsItem** %40, align 8
  %42 = call noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE3$_0EclINS_17__normal_iteratorIP6LsItemS2_ISF_SaISF_EEEESJ_EEbT_T0_"(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 1 dereferenceable(1) %8, %struct.LsItem* %39, %struct.LsItem* %41)
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = call noundef nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEmmEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %6) #13
  br label %33, !llvm.loop !22

45:                                               ; preds = %33
  %46 = call noundef zeroext i1 @_ZN9__gnu_cxxltIP6LsItemSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %5, %"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %6) #13
  br i1 %46, label %52, label %47

47:                                               ; preds = %45
  %48 = bitcast %"class.__gnu_cxx::__normal_iterator"* %4 to i8*
  %49 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 8, i1 false)
  %50 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  %51 = load %struct.LsItem*, %struct.LsItem** %50, align 8
  ret %struct.LsItem* %51

52:                                               ; preds = %45
  %53 = bitcast %"class.__gnu_cxx::__normal_iterator"* %13 to i8*
  %54 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 8, i1 false)
  %55 = bitcast %"class.__gnu_cxx::__normal_iterator"* %14 to i8*
  %56 = bitcast %"class.__gnu_cxx::__normal_iterator"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 8, i1 false)
  %57 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %13, i32 0, i32 0
  %58 = load %struct.LsItem*, %struct.LsItem** %57, align 8
  %59 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %14, i32 0, i32 0
  %60 = load %struct.LsItem*, %struct.LsItem** %59, align 8
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEES7_EvT_T0_(%struct.LsItem* %58, %struct.LsItem* %60)
  %61 = call noundef nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %5) #13
  br label %18, !llvm.loop !23
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEES7_EvT_T0_(%struct.LsItem* %0, %struct.LsItem* %1) #1 comdat {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  store %struct.LsItem* %0, %struct.LsItem** %5, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  store %struct.LsItem* %1, %struct.LsItem** %6, align 8
  %7 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %3) #13
  %8 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %4) #13
  call void @_ZSt4swapI6LsItemENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %7, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %8) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZSt4swapI6LsItemENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %0, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %1) #1 comdat {
  %3 = alloca %struct.LsItem*, align 8
  %4 = alloca %struct.LsItem*, align 8
  %5 = alloca %struct.LsItem, align 8
  store %struct.LsItem* %0, %struct.LsItem** %3, align 8
  store %struct.LsItem* %1, %struct.LsItem** %4, align 8
  %6 = load %struct.LsItem*, %struct.LsItem** %3, align 8
  call void @_ZN6LsItemC2EOS_(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %5, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %6) #13
  %7 = load %struct.LsItem*, %struct.LsItem** %4, align 8
  %8 = load %struct.LsItem*, %struct.LsItem** %3, align 8
  %9 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZN6LsItemaSEOS_(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %8, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %7) #13
  %10 = load %struct.LsItem*, %struct.LsItem** %4, align 8
  %11 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZN6LsItemaSEOS_(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %10, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %5) #13
  call void @_ZN6LsItemD2Ev(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %5) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i32 @_ZSt11__bit_widthImEiT_(i64 noundef %0) #1 comdat {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 64, i32* %3, align 4
  %4 = load i64, i64* %2, align 8
  %5 = call noundef i32 @_ZSt13__countl_zeroImEiT_(i64 noundef %4) #13
  %6 = sub nsw i32 64, %5
  ret i32 %6
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i32 @_ZSt13__countl_zeroImEiT_(i64 noundef %0) #1 comdat {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 64, i32* %4, align 4
  %9 = load i64, i64* %3, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 64, i32* %2, align 4
  br label %17

12:                                               ; preds = %1
  store i32 64, i32* %5, align 4
  store i32 64, i32* %6, align 4
  store i32 32, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i64, i64* %3, align 8
  %14 = call i64 @llvm.ctlz.i64(i64 %13, i1 true)
  %15 = trunc i64 %14 to i32
  %16 = sub nsw i32 %15, 0
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %12, %11
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define internal void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_SK_T0_"(%struct.LsItem* %0, %struct.LsItem* %1) #1 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %9 = alloca %struct.LsItem, align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %12 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %13 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %14 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %15 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 1
  %16 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %17 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 1
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  store %struct.LsItem* %0, %struct.LsItem** %18, align 8
  %19 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  store %struct.LsItem* %1, %struct.LsItem** %19, align 8
  %20 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIP6LsItemSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %3, %"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %4) #13
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %65

22:                                               ; preds = %2
  %23 = call %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 1) #13
  %24 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %6, i32 0, i32 0
  store %struct.LsItem* %23, %struct.LsItem** %24, align 8
  br label %25

25:                                               ; preds = %63, %22
  %26 = call noundef zeroext i1 @_ZN9__gnu_cxxneIP6LsItemSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %6, %"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %4) #13
  br i1 %26, label %27, label %65

27:                                               ; preds = %25
  %28 = bitcast %"class.__gnu_cxx::__normal_iterator"* %7 to i8*
  %29 = bitcast %"class.__gnu_cxx::__normal_iterator"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 8, i1 false)
  %30 = bitcast %"class.__gnu_cxx::__normal_iterator"* %8 to i8*
  %31 = bitcast %"class.__gnu_cxx::__normal_iterator"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 8, i1 false)
  %32 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %7, i32 0, i32 0
  %33 = load %struct.LsItem*, %struct.LsItem** %32, align 8
  %34 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %8, i32 0, i32 0
  %35 = load %struct.LsItem*, %struct.LsItem** %34, align 8
  %36 = call noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE3$_0EclINS_17__normal_iteratorIP6LsItemS2_ISF_SaISF_EEEESJ_EEbT_T0_"(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 1 dereferenceable(1) %5, %struct.LsItem* %33, %struct.LsItem* %35)
  br i1 %36, label %37, label %55

37:                                               ; preds = %27
  %38 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %6) #13
  call void @_ZN6LsItemC2EOS_(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %9, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %38) #13
  %39 = bitcast %"class.__gnu_cxx::__normal_iterator"* %10 to i8*
  %40 = bitcast %"class.__gnu_cxx::__normal_iterator"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 8, i1 false)
  %41 = bitcast %"class.__gnu_cxx::__normal_iterator"* %11 to i8*
  %42 = bitcast %"class.__gnu_cxx::__normal_iterator"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 8, i1 false)
  %43 = call %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 1) #13
  %44 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %12, i32 0, i32 0
  store %struct.LsItem* %43, %struct.LsItem** %44, align 8
  %45 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %10, i32 0, i32 0
  %46 = load %struct.LsItem*, %struct.LsItem** %45, align 8
  %47 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %11, i32 0, i32 0
  %48 = load %struct.LsItem*, %struct.LsItem** %47, align 8
  %49 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %12, i32 0, i32 0
  %50 = load %struct.LsItem*, %struct.LsItem** %49, align 8
  %51 = call %struct.LsItem* @_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_(%struct.LsItem* %46, %struct.LsItem* %48, %struct.LsItem* %50)
  %52 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %13, i32 0, i32 0
  store %struct.LsItem* %51, %struct.LsItem** %52, align 8
  %53 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %3) #13
  %54 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZN6LsItemaSEOS_(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %53, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %9) #13
  call void @_ZN6LsItemD2Ev(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %9) #13
  br label %62

55:                                               ; preds = %27
  %56 = bitcast %"class.__gnu_cxx::__normal_iterator"* %14 to i8*
  %57 = bitcast %"class.__gnu_cxx::__normal_iterator"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 8, i1 false)
  %58 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %16 to i8*
  %59 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %58, i8* align 1 %59, i64 1, i1 false)
  call void @"_ZN9__gnu_cxx5__ops15__val_comp_iterIZ2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE3$_0EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterISD_EE"()
  %60 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %14, i32 0, i32 0
  %61 = load %struct.LsItem*, %struct.LsItem** %60, align 8
  call void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_T0_"(%struct.LsItem* %61)
  br label %62

62:                                               ; preds = %55, %37
  br label %63

63:                                               ; preds = %62
  %64 = call noundef nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %6) #13
  br label %25, !llvm.loop !24

65:                                               ; preds = %21, %25
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define internal void @"_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_SK_T0_"(%struct.LsItem* %0, %struct.LsItem* %1) #1 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %8 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 1
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  %10 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 1
  %11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  store %struct.LsItem* %0, %struct.LsItem** %11, align 8
  %12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  store %struct.LsItem* %1, %struct.LsItem** %12, align 8
  %13 = bitcast %"class.__gnu_cxx::__normal_iterator"* %6 to i8*
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  br label %15

15:                                               ; preds = %24, %2
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxxneIP6LsItemSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %6, %"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %4) #13
  br i1 %16, label %17, label %26

17:                                               ; preds = %15
  %18 = bitcast %"class.__gnu_cxx::__normal_iterator"* %7 to i8*
  %19 = bitcast %"class.__gnu_cxx::__normal_iterator"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 8, i1 false)
  %20 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %9 to i8*
  %21 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 %21, i64 1, i1 false)
  call void @"_ZN9__gnu_cxx5__ops15__val_comp_iterIZ2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE3$_0EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterISD_EE"()
  %22 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %7, i32 0, i32 0
  %23 = load %struct.LsItem*, %struct.LsItem** %22, align 8
  call void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_T0_"(%struct.LsItem* %23)
  br label %24

24:                                               ; preds = %17
  %25 = call noundef nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEppEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %6) #13
  br label %15, !llvm.loop !25

26:                                               ; preds = %15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxeqIP6LsItemSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %0, %"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %1) #1 comdat {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %0, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %1, %"class.__gnu_cxx::__normal_iterator"** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %3, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) %struct.LsItem** @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %5) #13
  %7 = load %struct.LsItem*, %struct.LsItem** %6, align 8
  %8 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %4, align 8
  %9 = call noundef nonnull align 8 dereferenceable(8) %struct.LsItem** @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %8) #13
  %10 = load %struct.LsItem*, %struct.LsItem** %9, align 8
  %11 = icmp eq %struct.LsItem* %7, %10
  ret i1 %11
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local %struct.LsItem* @_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_(%struct.LsItem* %0, %struct.LsItem* %1, %struct.LsItem* %2) #1 comdat {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %12 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  store %struct.LsItem* %0, %struct.LsItem** %13, align 8
  %14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %6, i32 0, i32 0
  store %struct.LsItem* %1, %struct.LsItem** %14, align 8
  %15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %7, i32 0, i32 0
  store %struct.LsItem* %2, %struct.LsItem** %15, align 8
  %16 = bitcast %"class.__gnu_cxx::__normal_iterator"* %9 to i8*
  %17 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false)
  %18 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %9, i32 0, i32 0
  %19 = load %struct.LsItem*, %struct.LsItem** %18, align 8
  %20 = call %struct.LsItem* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEEET_S8_(%struct.LsItem* %19)
  %21 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %8, i32 0, i32 0
  store %struct.LsItem* %20, %struct.LsItem** %21, align 8
  %22 = bitcast %"class.__gnu_cxx::__normal_iterator"* %11 to i8*
  %23 = bitcast %"class.__gnu_cxx::__normal_iterator"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 8, i1 false)
  %24 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %11, i32 0, i32 0
  %25 = load %struct.LsItem*, %struct.LsItem** %24, align 8
  %26 = call %struct.LsItem* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEEET_S8_(%struct.LsItem* %25)
  %27 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %10, i32 0, i32 0
  store %struct.LsItem* %26, %struct.LsItem** %27, align 8
  %28 = bitcast %"class.__gnu_cxx::__normal_iterator"* %12 to i8*
  %29 = bitcast %"class.__gnu_cxx::__normal_iterator"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 8, i1 false)
  %30 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %8, i32 0, i32 0
  %31 = load %struct.LsItem*, %struct.LsItem** %30, align 8
  %32 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %10, i32 0, i32 0
  %33 = load %struct.LsItem*, %struct.LsItem** %32, align 8
  %34 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %12, i32 0, i32 0
  %35 = load %struct.LsItem*, %struct.LsItem** %34, align 8
  %36 = call %struct.LsItem* @_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_(%struct.LsItem* %31, %struct.LsItem* %33, %struct.LsItem* %35)
  %37 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  store %struct.LsItem* %36, %struct.LsItem** %37, align 8
  %38 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  %39 = load %struct.LsItem*, %struct.LsItem** %38, align 8
  ret %struct.LsItem* %39
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define internal void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZ2lsRKS4_ISt17basic_string_viewIcSt11char_traitsIcEESaISD_EEE3$_0EEEvT_T0_"(%struct.LsItem* %0) #1 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 1
  %4 = alloca %struct.LsItem, align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  store %struct.LsItem* %0, %struct.LsItem** %7, align 8
  %8 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %2) #13
  call void @_ZN6LsItemC2EOS_(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %4, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %8) #13
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator"* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 8, i1 false)
  %11 = call noundef nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEmmEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %5) #13
  br label %12

12:                                               ; preds = %18, %1
  %13 = bitcast %"class.__gnu_cxx::__normal_iterator"* %6 to i8*
  %14 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %15 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %6, i32 0, i32 0
  %16 = load %struct.LsItem*, %struct.LsItem** %15, align 8
  %17 = call noundef zeroext i1 @"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZ2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE3$_0EclI6LsItemNS_17__normal_iteratorIPSE_S2_ISE_SaISE_EEEEEEbRT_T0_"(%"struct.__gnu_cxx::__ops::_Val_comp_iter"* noundef nonnull align 1 dereferenceable(1) %3, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %4, %struct.LsItem* %16)
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %5) #13
  %20 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %2) #13
  %21 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZN6LsItemaSEOS_(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %20, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %19) #13
  %22 = bitcast %"class.__gnu_cxx::__normal_iterator"* %2 to i8*
  %23 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 8, i1 false)
  %24 = call noundef nonnull align 8 dereferenceable(8) %"class.__gnu_cxx::__normal_iterator"* @_ZN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEmmEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %5) #13
  br label %12, !llvm.loop !26

25:                                               ; preds = %12
  %26 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %2) #13
  %27 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZN6LsItemaSEOS_(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %26, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %4) #13
  call void @_ZN6LsItemD2Ev(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %4) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define internal void @"_ZN9__gnu_cxx5__ops15__val_comp_iterIZ2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE3$_0EENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterISD_EE"() #1 {
  %1 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 1
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1
  call void @"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZ2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE3$_0EC2EONS0_15_Iter_comp_iterISB_EE"(%"struct.__gnu_cxx::__ops::_Val_comp_iter"* noundef nonnull align 1 dereferenceable(1) %1, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 1 dereferenceable(1) %2)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local %struct.LsItem* @_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEES7_ET1_T0_S9_S8_(%struct.LsItem* %0, %struct.LsItem* %1, %struct.LsItem* %2) #1 comdat {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %5, i32 0, i32 0
  store %struct.LsItem* %0, %struct.LsItem** %12, align 8
  %13 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %6, i32 0, i32 0
  store %struct.LsItem* %1, %struct.LsItem** %13, align 8
  %14 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %7, i32 0, i32 0
  store %struct.LsItem* %2, %struct.LsItem** %14, align 8
  %15 = bitcast %"class.__gnu_cxx::__normal_iterator"* %8 to i8*
  %16 = bitcast %"class.__gnu_cxx::__normal_iterator"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 8, i1 false)
  %17 = bitcast %"class.__gnu_cxx::__normal_iterator"* %9 to i8*
  %18 = bitcast %"class.__gnu_cxx::__normal_iterator"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 8, i1 false)
  %19 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %9, i32 0, i32 0
  %20 = load %struct.LsItem*, %struct.LsItem** %19, align 8
  %21 = call noundef %struct.LsItem* @_ZSt12__niter_baseIP6LsItemSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(%struct.LsItem* %20) #13
  %22 = bitcast %"class.__gnu_cxx::__normal_iterator"* %10 to i8*
  %23 = bitcast %"class.__gnu_cxx::__normal_iterator"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 8, i1 false)
  %24 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %10, i32 0, i32 0
  %25 = load %struct.LsItem*, %struct.LsItem** %24, align 8
  %26 = call noundef %struct.LsItem* @_ZSt12__niter_baseIP6LsItemSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(%struct.LsItem* %25) #13
  %27 = bitcast %"class.__gnu_cxx::__normal_iterator"* %11 to i8*
  %28 = bitcast %"class.__gnu_cxx::__normal_iterator"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 8, i1 false)
  %29 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %11, i32 0, i32 0
  %30 = load %struct.LsItem*, %struct.LsItem** %29, align 8
  %31 = call noundef %struct.LsItem* @_ZSt12__niter_baseIP6LsItemSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(%struct.LsItem* %30) #13
  %32 = call noundef %struct.LsItem* @_ZSt23__copy_move_backward_a1ILb1EP6LsItemS1_ET1_T0_S3_S2_(%struct.LsItem* noundef %21, %struct.LsItem* noundef %26, %struct.LsItem* noundef %31)
  %33 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %8, i32 0, i32 0
  %34 = load %struct.LsItem*, %struct.LsItem** %33, align 8
  %35 = call %struct.LsItem* @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_(%struct.LsItem* %34, %struct.LsItem* noundef %32)
  %36 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  store %struct.LsItem* %35, %struct.LsItem** %36, align 8
  %37 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  %38 = load %struct.LsItem*, %struct.LsItem** %37, align 8
  ret %struct.LsItem* %38
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local %struct.LsItem* @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEEET_S8_(%struct.LsItem* %0) #1 comdat {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  store %struct.LsItem* %0, %struct.LsItem** %4, align 8
  %5 = bitcast %"class.__gnu_cxx::__normal_iterator"* %2 to i8*
  %6 = bitcast %"class.__gnu_cxx::__normal_iterator"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 8, i1 false)
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  %8 = load %struct.LsItem*, %struct.LsItem** %7, align 8
  ret %struct.LsItem* %8
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local %struct.LsItem* @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS2_SaIS2_EEEES3_ET_S8_T0_(%struct.LsItem* %0, %struct.LsItem* noundef %1) #1 comdat {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %struct.LsItem*, align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  store %struct.LsItem* %0, %struct.LsItem** %7, align 8
  store %struct.LsItem* %1, %struct.LsItem** %5, align 8
  %8 = load %struct.LsItem*, %struct.LsItem** %5, align 8
  %9 = bitcast %"class.__gnu_cxx::__normal_iterator"* %6 to i8*
  %10 = bitcast %"class.__gnu_cxx::__normal_iterator"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 8, i1 false)
  %11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %6, i32 0, i32 0
  %12 = load %struct.LsItem*, %struct.LsItem** %11, align 8
  %13 = call noundef %struct.LsItem* @_ZSt12__niter_baseIP6LsItemSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(%struct.LsItem* %12) #13
  %14 = ptrtoint %struct.LsItem* %8 to i64
  %15 = ptrtoint %struct.LsItem* %13 to i64
  %16 = sub i64 %14, %15
  %17 = sdiv exact i64 %16, 40
  %18 = call %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEplEl(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %17) #13
  %19 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  store %struct.LsItem* %18, %struct.LsItem** %19, align 8
  %20 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %3, i32 0, i32 0
  %21 = load %struct.LsItem*, %struct.LsItem** %20, align 8
  ret %struct.LsItem* %21
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %struct.LsItem* @_ZSt23__copy_move_backward_a1ILb1EP6LsItemS1_ET1_T0_S3_S2_(%struct.LsItem* noundef %0, %struct.LsItem* noundef %1, %struct.LsItem* noundef %2) #1 comdat {
  %4 = alloca %struct.LsItem*, align 8
  %5 = alloca %struct.LsItem*, align 8
  %6 = alloca %struct.LsItem*, align 8
  store %struct.LsItem* %0, %struct.LsItem** %4, align 8
  store %struct.LsItem* %1, %struct.LsItem** %5, align 8
  store %struct.LsItem* %2, %struct.LsItem** %6, align 8
  %7 = load %struct.LsItem*, %struct.LsItem** %4, align 8
  %8 = load %struct.LsItem*, %struct.LsItem** %5, align 8
  %9 = load %struct.LsItem*, %struct.LsItem** %6, align 8
  %10 = call noundef %struct.LsItem* @_ZSt23__copy_move_backward_a2ILb1EP6LsItemS1_ET1_T0_S3_S2_(%struct.LsItem* noundef %7, %struct.LsItem* noundef %8, %struct.LsItem* noundef %9)
  ret %struct.LsItem* %10
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %struct.LsItem* @_ZSt12__niter_baseIP6LsItemSt6vectorIS0_SaIS0_EEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(%struct.LsItem* %0) #1 comdat {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %2, i32 0, i32 0
  store %struct.LsItem* %0, %struct.LsItem** %3, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) %struct.LsItem** @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %2) #13
  %5 = load %struct.LsItem*, %struct.LsItem** %4, align 8
  ret %struct.LsItem* %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %struct.LsItem* @_ZSt23__copy_move_backward_a2ILb1EP6LsItemS1_ET1_T0_S3_S2_(%struct.LsItem* noundef %0, %struct.LsItem* noundef %1, %struct.LsItem* noundef %2) #1 comdat {
  %4 = alloca %struct.LsItem*, align 8
  %5 = alloca %struct.LsItem*, align 8
  %6 = alloca %struct.LsItem*, align 8
  store %struct.LsItem* %0, %struct.LsItem** %4, align 8
  store %struct.LsItem* %1, %struct.LsItem** %5, align 8
  store %struct.LsItem* %2, %struct.LsItem** %6, align 8
  %7 = load %struct.LsItem*, %struct.LsItem** %4, align 8
  %8 = load %struct.LsItem*, %struct.LsItem** %5, align 8
  %9 = load %struct.LsItem*, %struct.LsItem** %6, align 8
  %10 = call noundef %struct.LsItem* @_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIP6LsItemS4_EET0_T_S6_S5_(%struct.LsItem* noundef %7, %struct.LsItem* noundef %8, %struct.LsItem* noundef %9)
  ret %struct.LsItem* %10
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %struct.LsItem* @_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIP6LsItemS4_EET0_T_S6_S5_(%struct.LsItem* noundef %0, %struct.LsItem* noundef %1, %struct.LsItem* noundef %2) #1 comdat align 2 {
  %4 = alloca %struct.LsItem*, align 8
  %5 = alloca %struct.LsItem*, align 8
  %6 = alloca %struct.LsItem*, align 8
  %7 = alloca i64, align 8
  store %struct.LsItem* %0, %struct.LsItem** %4, align 8
  store %struct.LsItem* %1, %struct.LsItem** %5, align 8
  store %struct.LsItem* %2, %struct.LsItem** %6, align 8
  %8 = load %struct.LsItem*, %struct.LsItem** %5, align 8
  %9 = load %struct.LsItem*, %struct.LsItem** %4, align 8
  %10 = ptrtoint %struct.LsItem* %8 to i64
  %11 = ptrtoint %struct.LsItem* %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 40
  store i64 %13, i64* %7, align 8
  br label %14

14:                                               ; preds = %23, %3
  %15 = load i64, i64* %7, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load %struct.LsItem*, %struct.LsItem** %5, align 8
  %19 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %18, i32 -1
  store %struct.LsItem* %19, %struct.LsItem** %5, align 8
  %20 = load %struct.LsItem*, %struct.LsItem** %6, align 8
  %21 = getelementptr inbounds %struct.LsItem, %struct.LsItem* %20, i32 -1
  store %struct.LsItem* %21, %struct.LsItem** %6, align 8
  %22 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZN6LsItemaSEOS_(%struct.LsItem* noundef nonnull align 8 dereferenceable(33) %21, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %19) #13
  br label %23

23:                                               ; preds = %17
  %24 = load i64, i64* %7, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %7, align 8
  br label %14, !llvm.loop !27

26:                                               ; preds = %14
  %27 = load %struct.LsItem*, %struct.LsItem** %6, align 8
  ret %struct.LsItem* %27
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define internal noundef zeroext i1 @"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZ2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE3$_0EclI6LsItemNS_17__normal_iteratorIPSE_S2_ISE_SaISE_EEEEEEbRT_T0_"(%"struct.__gnu_cxx::__ops::_Val_comp_iter"* noundef nonnull align 1 dereferenceable(1) %0, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %1, %struct.LsItem* %2) #1 align 2 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter"*, align 8
  %6 = alloca %struct.LsItem*, align 8
  %7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %4, i32 0, i32 0
  store %struct.LsItem* %2, %struct.LsItem** %7, align 8
  store %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %0, %"struct.__gnu_cxx::__ops::_Val_comp_iter"** %5, align 8
  store %struct.LsItem* %1, %struct.LsItem** %6, align 8
  %8 = load %"struct.__gnu_cxx::__ops::_Val_comp_iter"*, %"struct.__gnu_cxx::__ops::_Val_comp_iter"** %5, align 8
  %9 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %8, i32 0, i32 0
  %10 = load %struct.LsItem*, %struct.LsItem** %6, align 8
  %11 = call noundef nonnull align 8 dereferenceable(33) %struct.LsItem* @_ZNK9__gnu_cxx17__normal_iteratorIP6LsItemSt6vectorIS1_SaIS1_EEEdeEv(%"class.__gnu_cxx::__normal_iterator"* noundef nonnull align 8 dereferenceable(8) %4) #13
  %12 = call noundef zeroext i1 @"_ZZ2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EEENK3$_0clERK6LsItemSB_"(%class.anon* noundef nonnull align 1 dereferenceable(1) %9, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %10, %struct.LsItem* noundef nonnull align 8 dereferenceable(33) %11)
  ret i1 %12
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZ2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE3$_0EC2EONS0_15_Iter_comp_iterISB_EE"(%"struct.__gnu_cxx::__ops::_Val_comp_iter"* noundef nonnull align 1 dereferenceable(1) %0, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #0 align 2 {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter"*, align 8
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  store %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %0, %"struct.__gnu_cxx::__ops::_Val_comp_iter"** %3, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %1, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %4, align 8
  %5 = load %"struct.__gnu_cxx::__ops::_Val_comp_iter"*, %"struct.__gnu_cxx::__ops::_Val_comp_iter"** %3, align 8
  %6 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %5, i32 0, i32 0
  %7 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %4, align 8
  %8 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %7, i32 0, i32 0
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define internal void @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZ2lsRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEE3$_0EC2ESB_"(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 align 2 {
  %2 = alloca %class.anon, align 1
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, align 8
  store %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %0, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %3, align 8
  %4 = load %"struct.__gnu_cxx::__ops::_Iter_comp_iter"*, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"** %3, align 8
  %5 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %4, i32 0, i32 0
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %0, i8** noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 {
  %4 = alloca %"class.std::__new_allocator.1"*, align 8
  %5 = alloca %"class.std::allocator.0"*, align 8
  %6 = alloca %"class.std::allocator.0"*, align 8
  %7 = alloca %"class.std::filesystem::__cxx11::path"*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8, align 1
  %10 = alloca %"class.std::basic_string_view", align 8
  %11 = alloca %"class.std::basic_string_view", align 8
  %12 = alloca %"class.std::allocator.0", align 1
  store %"class.std::filesystem::__cxx11::path"* %0, %"class.std::filesystem::__cxx11::path"** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8 %2, i8* %9, align 1
  %13 = load %"class.std::filesystem::__cxx11::path"*, %"class.std::filesystem::__cxx11::path"** %7, align 8
  %14 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %13, i32 0, i32 0
  %15 = load i8**, i8*** %8, align 8
  %16 = call { i64, i8* } @_ZNSt10filesystem7__cxx118__detail17__effective_rangeIPKcEEDaRKT_(i8** noundef nonnull align 8 dereferenceable(8) %15)
  %17 = bitcast %"class.std::basic_string_view"* %11 to { i64, i8* }*
  %18 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %17, i32 0, i32 0
  %19 = extractvalue { i64, i8* } %16, 0
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %17, i32 0, i32 1
  %21 = extractvalue { i64, i8* } %16, 1
  store i8* %21, i8** %20, align 8
  %22 = bitcast %"class.std::basic_string_view"* %11 to { i64, i8* }*
  %23 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %22, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call { i64, i8* } @_ZNSt10filesystem7__cxx114path10_S_convertISt17basic_string_viewIcSt11char_traitsIcEEEEDaT_(i64 %24, i8* %26) #13
  %28 = bitcast %"class.std::basic_string_view"* %10 to { i64, i8* }*
  %29 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %28, i32 0, i32 0
  %30 = extractvalue { i64, i8* } %27, 0
  store i64 %30, i64* %29, align 8
  %31 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %28, i32 0, i32 1
  %32 = extractvalue { i64, i8* } %27, 1
  store i8* %32, i8** %31, align 8
  store %"class.std::allocator.0"* %12, %"class.std::allocator.0"** %6, align 8
  %33 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %6, align 8
  %34 = bitcast %"class.std::allocator.0"* %33 to %"class.std::__new_allocator.1"*
  store %"class.std::__new_allocator.1"* %34, %"class.std::__new_allocator.1"** %4, align 8
  %35 = load %"class.std::__new_allocator.1"*, %"class.std::__new_allocator.1"** %4, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %14, %"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %10, %"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1) %12)
  store %"class.std::allocator.0"* %12, %"class.std::allocator.0"** %5, align 8
  %36 = load %"class.std::allocator.0"*, %"class.std::allocator.0"** %5, align 8
  %37 = bitcast %"class.std::allocator.0"* %36 to %"class.std::__new_allocator.1"*
  call void @_ZNSt15__new_allocatorIcED2Ev(%"class.std::__new_allocator.1"* noundef nonnull align 1 dereferenceable(1) %37) #13
  %38 = getelementptr inbounds %"class.std::filesystem::__cxx11::path", %"class.std::filesystem::__cxx11::path"* %13, i32 0, i32 1
  call void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(%"struct.std::filesystem::__cxx11::path::_List"* noundef nonnull align 8 dereferenceable(8) %38)
  call void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(%"class.std::filesystem::__cxx11::path"* noundef nonnull align 8 dereferenceable(40) %13)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local { i64, i8* } @_ZNSt10filesystem7__cxx118__detail17__effective_rangeIPKcEEDaRKT_(i8** noundef nonnull align 8 dereferenceable(8) %0) #1 comdat {
  %2 = alloca %"class.std::basic_string_view", align 8
  %3 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  %4 = load i8**, i8*** %3, align 8
  %5 = load i8*, i8** %4, align 8
  call void @_ZNSt17basic_string_viewIcSt11char_traitsIcEEC2EPKc(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef %5) #13
  %6 = bitcast %"class.std::basic_string_view"* %2 to { i64, i8* }*
  %7 = load { i64, i8* }, { i64, i8* }* %6, align 8
  ret { i64, i8* } %7
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEED2Ev(%"class.std::__new_allocator.15"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"class.std::__new_allocator.15"*, align 8
  store %"class.std::__new_allocator.15"* %0, %"class.std::__new_allocator.15"** %2, align 8
  %3 = load %"class.std::__new_allocator.15"*, %"class.std::__new_allocator.15"** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EEC2ERKSM_RKSN_(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0, %"struct.std::less"* noundef nonnull align 1 dereferenceable(1) %1, %"class.std::allocator.14"* noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 {
  %4 = alloca %"class.std::__new_allocator.11"*, align 8
  %5 = alloca %"class.std::allocator.10"*, align 8
  %6 = alloca %"class.std::allocator.10"*, align 8
  %7 = alloca %"class.std::allocator.14"*, align 8
  %8 = alloca %"class.std::_Rb_tree"*, align 8
  %9 = alloca %"struct.std::less"*, align 8
  %10 = alloca %"class.std::allocator.14"*, align 8
  %11 = alloca %"class.std::allocator.10", align 1
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %8, align 8
  store %"struct.std::less"* %1, %"struct.std::less"** %9, align 8
  store %"class.std::allocator.14"* %2, %"class.std::allocator.14"** %10, align 8
  %12 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %8, align 8
  %13 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %12, i32 0, i32 0
  %14 = load %"struct.std::less"*, %"struct.std::less"** %9, align 8
  %15 = load %"class.std::allocator.14"*, %"class.std::allocator.14"** %10, align 8
  store %"class.std::allocator.10"* %11, %"class.std::allocator.10"** %6, align 8
  store %"class.std::allocator.14"* %15, %"class.std::allocator.14"** %7, align 8
  %16 = load %"class.std::allocator.10"*, %"class.std::allocator.10"** %6, align 8
  %17 = bitcast %"class.std::allocator.10"* %16 to %"class.std::__new_allocator.11"*
  store %"class.std::__new_allocator.11"* %17, %"class.std::__new_allocator.11"** %4, align 8
  %18 = load %"class.std::__new_allocator.11"*, %"class.std::__new_allocator.11"** %4, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE13_Rb_tree_implISM_Lb1EEC2ERKSM_OSaISt13_Rb_tree_nodeISI_EE(%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* noundef nonnull align 8 dereferenceable(48) %13, %"struct.std::less"* noundef nonnull align 1 dereferenceable(1) %14, %"class.std::allocator.10"* noundef nonnull align 1 dereferenceable(1) %11)
  store %"class.std::allocator.10"* %11, %"class.std::allocator.10"** %5, align 8
  %19 = load %"class.std::allocator.10"*, %"class.std::allocator.10"** %5, align 8
  %20 = bitcast %"class.std::allocator.10"* %19 to %"class.std::__new_allocator.11"*
  call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS5_ESaISC_EEEEEEED2Ev(%"class.std::__new_allocator.11"* noundef nonnull align 1 dereferenceable(1) %20) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE22_M_insert_range_uniqueIPKSI_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeEST_ST_(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0, %"struct.std::pair"* noundef %1, %"struct.std::pair"* noundef %2) #1 comdat align 2 {
  %4 = alloca %"class.std::_Rb_tree"*, align 8
  %5 = alloca %"struct.std::pair"*, align 8
  %6 = alloca %"struct.std::pair"*, align 8
  %7 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8
  %8 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %9 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %10 = alloca %"struct.std::_Rb_tree_iterator", align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %4, align 8
  store %"struct.std::pair"* %1, %"struct.std::pair"** %5, align 8
  store %"struct.std::pair"* %2, %"struct.std::pair"** %6, align 8
  %11 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %4, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE11_Alloc_nodeC2ERSO_(%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node"* noundef nonnull align 8 dereferenceable(8) %7, %"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %11)
  br label %12

12:                                               ; preds = %24, %3
  %13 = load %"struct.std::pair"*, %"struct.std::pair"** %5, align 8
  %14 = load %"struct.std::pair"*, %"struct.std::pair"** %6, align 8
  %15 = icmp ne %"struct.std::pair"* %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE3endEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %11) #13
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %9, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %17, %"struct.std::_Rb_tree_node_base"** %18, align 8
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEEC2ERKSt17_Rb_tree_iteratorISI_E(%"struct.std::_Rb_tree_const_iterator"* noundef nonnull align 8 dereferenceable(8) %8, %"struct.std::_Rb_tree_iterator"* noundef nonnull align 8 dereferenceable(8) %9) #13
  %19 = load %"struct.std::pair"*, %"struct.std::pair"** %5, align 8
  %20 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %8, i32 0, i32 0
  %21 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %20, align 8
  %22 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE17_M_insert_unique_IRKSI_NSO_11_Alloc_nodeEEESt17_Rb_tree_iteratorISI_ESt23_Rb_tree_const_iteratorISI_EOT_RT0_(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %11, %"struct.std::_Rb_tree_node_base"* %21, %"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %19, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node"* noundef nonnull align 8 dereferenceable(8) %7)
  %23 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %10, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %22, %"struct.std::_Rb_tree_node_base"** %23, align 8
  br label %24

24:                                               ; preds = %16
  %25 = load %"struct.std::pair"*, %"struct.std::pair"** %5, align 8
  %26 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %25, i32 1
  store %"struct.std::pair"* %26, %"struct.std::pair"** %5, align 8
  br label %12, !llvm.loop !28

27:                                               ; preds = %12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"struct.std::pair"* @_ZNKSt16initializer_listISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEE5beginEv(%"class.std::initializer_list.13"* noundef nonnull align 8 dereferenceable(16) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::initializer_list.13"*, align 8
  store %"class.std::initializer_list.13"* %0, %"class.std::initializer_list.13"** %2, align 8
  %3 = load %"class.std::initializer_list.13"*, %"class.std::initializer_list.13"** %2, align 8
  %4 = getelementptr inbounds %"class.std::initializer_list.13", %"class.std::initializer_list.13"* %3, i32 0, i32 0
  %5 = load %"struct.std::pair"*, %"struct.std::pair"** %4, align 8
  ret %"struct.std::pair"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"struct.std::pair"* @_ZNKSt16initializer_listISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEE3endEv(%"class.std::initializer_list.13"* noundef nonnull align 8 dereferenceable(16) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::initializer_list.13"*, align 8
  store %"class.std::initializer_list.13"* %0, %"class.std::initializer_list.13"** %2, align 8
  %3 = load %"class.std::initializer_list.13"*, %"class.std::initializer_list.13"** %2, align 8
  %4 = call noundef %"struct.std::pair"* @_ZNKSt16initializer_listISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEE5beginEv(%"class.std::initializer_list.13"* noundef nonnull align 8 dereferenceable(16) %3) #13
  %5 = call noundef i64 @_ZNKSt16initializer_listISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEE4sizeEv(%"class.std::initializer_list.13"* noundef nonnull align 8 dereferenceable(16) %3) #13
  %6 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %4, i64 %5
  ret %"struct.std::pair"* %6
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE13_Rb_tree_implISM_Lb1EEC2ERKSM_OSaISt13_Rb_tree_nodeISI_EE(%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* noundef nonnull align 8 dereferenceable(48) %0, %"struct.std::less"* noundef nonnull align 1 dereferenceable(1) %1, %"class.std::allocator.10"* noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 {
  %4 = alloca %"class.std::__new_allocator.11"*, align 8
  %5 = alloca %"class.std::__new_allocator.11"*, align 8
  %6 = alloca %"class.std::allocator.10"*, align 8
  %7 = alloca %"class.std::allocator.10"*, align 8
  %8 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"*, align 8
  %9 = alloca %"struct.std::less"*, align 8
  %10 = alloca %"class.std::allocator.10"*, align 8
  store %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* %0, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"** %8, align 8
  store %"struct.std::less"* %1, %"struct.std::less"** %9, align 8
  store %"class.std::allocator.10"* %2, %"class.std::allocator.10"** %10, align 8
  %11 = load %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"*, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"** %8, align 8
  %12 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* %11 to %"class.std::allocator.10"*
  %13 = load %"class.std::allocator.10"*, %"class.std::allocator.10"** %10, align 8
  store %"class.std::allocator.10"* %12, %"class.std::allocator.10"** %6, align 8
  store %"class.std::allocator.10"* %13, %"class.std::allocator.10"** %7, align 8
  %14 = load %"class.std::allocator.10"*, %"class.std::allocator.10"** %6, align 8
  %15 = bitcast %"class.std::allocator.10"* %14 to %"class.std::__new_allocator.11"*
  %16 = load %"class.std::allocator.10"*, %"class.std::allocator.10"** %7, align 8
  %17 = bitcast %"class.std::allocator.10"* %16 to %"class.std::__new_allocator.11"*
  store %"class.std::__new_allocator.11"* %15, %"class.std::__new_allocator.11"** %4, align 8
  store %"class.std::__new_allocator.11"* %17, %"class.std::__new_allocator.11"** %5, align 8
  %18 = load %"class.std::__new_allocator.11"*, %"class.std::__new_allocator.11"** %4, align 8
  %19 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* %11 to %"struct.std::_Rb_tree_key_compare"*
  %20 = load %"struct.std::less"*, %"struct.std::less"** %9, align 8
  call void @_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_(%"struct.std::_Rb_tree_key_compare"* noundef nonnull align 1 dereferenceable(1) %19, %"struct.std::less"* noundef nonnull align 1 dereferenceable(1) %20)
  %21 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* %11 to i8*
  %22 = getelementptr inbounds i8, i8* %21, i64 8
  %23 = bitcast i8* %22 to %"struct.std::_Rb_tree_header"*
  call void @_ZNSt15_Rb_tree_headerC2Ev(%"struct.std::_Rb_tree_header"* noundef nonnull align 8 dereferenceable(40) %23) #13
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_(%"struct.std::_Rb_tree_key_compare"* noundef nonnull align 1 dereferenceable(1) %0, %"struct.std::less"* noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_key_compare"*, align 8
  %4 = alloca %"struct.std::less"*, align 8
  store %"struct.std::_Rb_tree_key_compare"* %0, %"struct.std::_Rb_tree_key_compare"** %3, align 8
  store %"struct.std::less"* %1, %"struct.std::less"** %4, align 8
  %5 = load %"struct.std::_Rb_tree_key_compare"*, %"struct.std::_Rb_tree_key_compare"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %5, i32 0, i32 0
  %7 = load %"struct.std::less"*, %"struct.std::less"** %4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt15_Rb_tree_headerC2Ev(%"struct.std::_Rb_tree_header"* noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_header"*, align 8
  store %"struct.std::_Rb_tree_header"* %0, %"struct.std::_Rb_tree_header"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_header"*, %"struct.std::_Rb_tree_header"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %3, i32 0, i32 0
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %5, i32 0, i32 0
  store i32 0, i32* %6, align 8
  call void @_ZNSt15_Rb_tree_header8_M_resetEv(%"struct.std::_Rb_tree_header"* noundef nonnull align 8 dereferenceable(40) %3)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt15_Rb_tree_header8_M_resetEv(%"struct.std::_Rb_tree_header"* noundef nonnull align 8 dereferenceable(40) %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_header"*, align 8
  store %"struct.std::_Rb_tree_header"* %0, %"struct.std::_Rb_tree_header"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_header"*, %"struct.std::_Rb_tree_header"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %3, i32 0, i32 0
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %4, i32 0, i32 1
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %3, i32 0, i32 0
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %3, i32 0, i32 0
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %7, i32 0, i32 2
  store %"struct.std::_Rb_tree_node_base"* %6, %"struct.std::_Rb_tree_node_base"** %8, align 8
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %3, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %3, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %10, i32 0, i32 3
  store %"struct.std::_Rb_tree_node_base"* %9, %"struct.std::_Rb_tree_node_base"** %11, align 8
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %3, i32 0, i32 1
  store i64 0, i64* %12, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE11_Alloc_nodeC2ERSO_(%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node"*, align 8
  %4 = alloca %"class.std::_Rb_tree"*, align 8
  store %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node"* %0, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node"** %3, align 8
  store %"class.std::_Rb_tree"* %1, %"class.std::_Rb_tree"** %4, align 8
  %5 = load %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node"*, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node"* %5, i32 0, i32 0
  %7 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %4, align 8
  store %"class.std::_Rb_tree"* %7, %"class.std::_Rb_tree"** %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE17_M_insert_unique_IRKSI_NSO_11_Alloc_nodeEEESt17_Rb_tree_iteratorISI_ESt23_Rb_tree_const_iteratorISI_EOT_RT0_(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0, %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %2, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node"* noundef nonnull align 8 dereferenceable(8) %3) #1 comdat align 2 {
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %7 = alloca %"class.std::_Rb_tree"*, align 8
  %8 = alloca %"struct.std::pair"*, align 8
  %9 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node"*, align 8
  %10 = alloca %"struct.std::pair.21", align 8
  %11 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %12 = alloca %"struct.std::_Select1st", align 1
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %6, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %13, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %7, align 8
  store %"struct.std::pair"* %2, %"struct.std::pair"** %8, align 8
  store %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node"* %3, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node"** %9, align 8
  %14 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %7, align 8
  %15 = bitcast %"struct.std::_Rb_tree_const_iterator"* %11 to i8*
  %16 = bitcast %"struct.std::_Rb_tree_const_iterator"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 8, i1 false)
  %17 = load %"struct.std::pair"*, %"struct.std::pair"** %8, align 8
  %18 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEEclERKSI_(%"struct.std::_Select1st"* noundef nonnull align 1 dereferenceable(1) %12, %"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %17)
  %19 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %11, i32 0, i32 0
  %20 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %19, align 8
  %21 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISI_ERS7_(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %14, %"struct.std::_Rb_tree_node_base"* %20, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %18)
  %22 = bitcast %"struct.std::pair.21"* %10 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %23 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %22, i32 0, i32 0
  %24 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %21, 0
  store %"struct.std::_Rb_tree_node_base"* %24, %"struct.std::_Rb_tree_node_base"** %23, align 8
  %25 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %22, i32 0, i32 1
  %26 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %21, 1
  store %"struct.std::_Rb_tree_node_base"* %26, %"struct.std::_Rb_tree_node_base"** %25, align 8
  %27 = getelementptr inbounds %"struct.std::pair.21", %"struct.std::pair.21"* %10, i32 0, i32 1
  %28 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %27, align 8
  %29 = icmp ne %"struct.std::_Rb_tree_node_base"* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %4
  %31 = getelementptr inbounds %"struct.std::pair.21", %"struct.std::pair.21"* %10, i32 0, i32 0
  %32 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %31, align 8
  %33 = getelementptr inbounds %"struct.std::pair.21", %"struct.std::pair.21"* %10, i32 0, i32 1
  %34 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %33, align 8
  %35 = load %"struct.std::pair"*, %"struct.std::pair"** %8, align 8
  %36 = load %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node"*, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node"** %9, align 8
  %37 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE10_M_insert_IRKSI_NSO_11_Alloc_nodeEEESt17_Rb_tree_iteratorISI_EPSt18_Rb_tree_node_baseSW_OT_RT0_(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %14, %"struct.std::_Rb_tree_node_base"* noundef %32, %"struct.std::_Rb_tree_node_base"* noundef %34, %"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %35, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node"* noundef nonnull align 8 dereferenceable(8) %36)
  %38 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %5, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %37, %"struct.std::_Rb_tree_node_base"** %38, align 8
  br label %42

39:                                               ; preds = %4
  %40 = getelementptr inbounds %"struct.std::pair.21", %"struct.std::pair.21"* %10, i32 0, i32 0
  %41 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %40, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* noundef nonnull align 8 dereferenceable(8) %5, %"struct.std::_Rb_tree_node_base"* noundef %41) #13
  br label %42

42:                                               ; preds = %39, %30
  %43 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %5, i32 0, i32 0
  %44 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %43, align 8
  ret %"struct.std::_Rb_tree_node_base"* %44
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE3endEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %3, align 8
  %4 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %3, align 8
  %5 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %4, i32 0, i32 0
  %6 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* %5 to i8*
  %7 = getelementptr inbounds i8, i8* %6, i64 8
  %8 = bitcast i8* %7 to %"struct.std::_Rb_tree_header"*
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %8, i32 0, i32 0
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* noundef nonnull align 8 dereferenceable(8) %2, %"struct.std::_Rb_tree_node_base"* noundef %9) #13
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %2, i32 0, i32 0
  %11 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %10, align 8
  ret %"struct.std::_Rb_tree_node_base"* %11
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEEC2ERKSt17_Rb_tree_iteratorISI_E(%"struct.std::_Rb_tree_const_iterator"* noundef nonnull align 8 dereferenceable(8) %0, %"struct.std::_Rb_tree_iterator"* noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %0, %"struct.std::_Rb_tree_const_iterator"** %3, align 8
  store %"struct.std::_Rb_tree_iterator"* %1, %"struct.std::_Rb_tree_iterator"** %4, align 8
  %5 = load %"struct.std::_Rb_tree_const_iterator"*, %"struct.std::_Rb_tree_const_iterator"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %5, i32 0, i32 0
  %7 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %4, align 8
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %7, i32 0, i32 0
  %9 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %8, align 8
  store %"struct.std::_Rb_tree_node_base"* %9, %"struct.std::_Rb_tree_node_base"** %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISI_ERS7_(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0, %"struct.std::_Rb_tree_node_base"* %1, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %2) #1 comdat align 2 {
  %4 = alloca %"struct.std::pair.21", align 8
  %5 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %6 = alloca %"class.std::_Rb_tree"*, align 8
  %7 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %8 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %9 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %10 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %11 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %12 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %13 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %14 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %15 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %16 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %5, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %16, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %6, align 8
  store %"class.std::__cxx11::basic_string"* %2, %"class.std::__cxx11::basic_string"** %7, align 8
  %17 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %6, align 8
  %18 = call %"struct.std::_Rb_tree_node_base"* @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEE13_M_const_castEv(%"struct.std::_Rb_tree_const_iterator"* noundef nonnull align 8 dereferenceable(8) %5) #13
  %19 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %8, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %18, %"struct.std::_Rb_tree_node_base"** %19, align 8
  %20 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %8, i32 0, i32 0
  %21 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %20, align 8
  %22 = call noundef %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE6_M_endEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %17) #13
  %23 = icmp eq %"struct.std::_Rb_tree_node_base"* %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %3
  %25 = call noundef i64 @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE4sizeEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %17) #13
  %26 = icmp ugt i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %17, i32 0, i32 0
  %29 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* %28 to %"struct.std::_Rb_tree_key_compare"*
  %30 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %29, i32 0, i32 0
  %31 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE12_M_rightmostEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %17) #13
  %32 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %31, align 8
  %33 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* noundef %32)
  %34 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %7, align 8
  %35 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* noundef nonnull align 1 dereferenceable(1) %30, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %33, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %34)
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %37 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE12_M_rightmostEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %17) #13
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_Lb1EEERKS1_S5_(%"struct.std::pair.21"* noundef nonnull align 8 dereferenceable(16) %4, %"struct.std::_Rb_tree_node_base"** noundef nonnull align 8 dereferenceable(8) %9, %"struct.std::_Rb_tree_node_base"** noundef nonnull align 8 dereferenceable(8) %37)
  br label %143

38:                                               ; preds = %27, %24
  %39 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %7, align 8
  %40 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE24_M_get_insert_unique_posERS7_(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %17, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %39)
  %41 = bitcast %"struct.std::pair.21"* %4 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %42 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %41, i32 0, i32 0
  %43 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %40, 0
  store %"struct.std::_Rb_tree_node_base"* %43, %"struct.std::_Rb_tree_node_base"** %42, align 8
  %44 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %41, i32 0, i32 1
  %45 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %40, 1
  store %"struct.std::_Rb_tree_node_base"* %45, %"struct.std::_Rb_tree_node_base"** %44, align 8
  br label %143

46:                                               ; preds = %3
  %47 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %17, i32 0, i32 0
  %48 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* %47 to %"struct.std::_Rb_tree_key_compare"*
  %49 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %48, i32 0, i32 0
  %50 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %7, align 8
  %51 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %8, i32 0, i32 0
  %52 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %51, align 8
  %53 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* noundef %52)
  %54 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* noundef nonnull align 1 dereferenceable(1) %49, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %50, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %53)
  br i1 %54, label %55, label %94

55:                                               ; preds = %46
  %56 = bitcast %"struct.std::_Rb_tree_iterator"* %10 to i8*
  %57 = bitcast %"struct.std::_Rb_tree_iterator"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 8, i1 false)
  %58 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %8, i32 0, i32 0
  %59 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %58, align 8
  %60 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE11_M_leftmostEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %17) #13
  %61 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %60, align 8
  %62 = icmp eq %"struct.std::_Rb_tree_node_base"* %59, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE11_M_leftmostEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %17) #13
  %65 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE11_M_leftmostEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %17) #13
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_(%"struct.std::pair.21"* noundef nonnull align 8 dereferenceable(16) %4, %"struct.std::_Rb_tree_node_base"** noundef nonnull align 8 dereferenceable(8) %64, %"struct.std::_Rb_tree_node_base"** noundef nonnull align 8 dereferenceable(8) %65)
  br label %143

66:                                               ; preds = %55
  %67 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %17, i32 0, i32 0
  %68 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* %67 to %"struct.std::_Rb_tree_key_compare"*
  %69 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %68, i32 0, i32 0
  %70 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEEmmEv(%"struct.std::_Rb_tree_iterator"* noundef nonnull align 8 dereferenceable(8) %10) #13
  %71 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %70, i32 0, i32 0
  %72 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %71, align 8
  %73 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* noundef %72)
  %74 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %7, align 8
  %75 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* noundef nonnull align 1 dereferenceable(1) %69, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %73, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %74)
  br i1 %75, label %76, label %86

76:                                               ; preds = %66
  %77 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %10, i32 0, i32 0
  %78 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %77, align 8
  %79 = call noundef %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* noundef %78) #13
  %80 = icmp eq %"struct.std::_Rb_tree_node"* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %11, align 8
  %82 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %10, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_Lb1EEERKS1_S5_(%"struct.std::pair.21"* noundef nonnull align 8 dereferenceable(16) %4, %"struct.std::_Rb_tree_node_base"** noundef nonnull align 8 dereferenceable(8) %11, %"struct.std::_Rb_tree_node_base"** noundef nonnull align 8 dereferenceable(8) %82)
  br label %143

83:                                               ; preds = %76
  %84 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %8, i32 0, i32 0
  %85 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %8, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_(%"struct.std::pair.21"* noundef nonnull align 8 dereferenceable(16) %4, %"struct.std::_Rb_tree_node_base"** noundef nonnull align 8 dereferenceable(8) %84, %"struct.std::_Rb_tree_node_base"** noundef nonnull align 8 dereferenceable(8) %85)
  br label %143

86:                                               ; preds = %66
  %87 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %7, align 8
  %88 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE24_M_get_insert_unique_posERS7_(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %17, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %87)
  %89 = bitcast %"struct.std::pair.21"* %4 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %90 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %89, i32 0, i32 0
  %91 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %88, 0
  store %"struct.std::_Rb_tree_node_base"* %91, %"struct.std::_Rb_tree_node_base"** %90, align 8
  %92 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %89, i32 0, i32 1
  %93 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %88, 1
  store %"struct.std::_Rb_tree_node_base"* %93, %"struct.std::_Rb_tree_node_base"** %92, align 8
  br label %143

94:                                               ; preds = %46
  %95 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %17, i32 0, i32 0
  %96 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* %95 to %"struct.std::_Rb_tree_key_compare"*
  %97 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %96, i32 0, i32 0
  %98 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %8, i32 0, i32 0
  %99 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %98, align 8
  %100 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* noundef %99)
  %101 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %7, align 8
  %102 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* noundef nonnull align 1 dereferenceable(1) %97, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %100, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %101)
  br i1 %102, label %103, label %141

103:                                              ; preds = %94
  %104 = bitcast %"struct.std::_Rb_tree_iterator"* %12 to i8*
  %105 = bitcast %"struct.std::_Rb_tree_iterator"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %104, i8* align 8 %105, i64 8, i1 false)
  %106 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %8, i32 0, i32 0
  %107 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %106, align 8
  %108 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE12_M_rightmostEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %17) #13
  %109 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %108, align 8
  %110 = icmp eq %"struct.std::_Rb_tree_node_base"* %107, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %13, align 8
  %112 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE12_M_rightmostEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %17) #13
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_Lb1EEERKS1_S5_(%"struct.std::pair.21"* noundef nonnull align 8 dereferenceable(16) %4, %"struct.std::_Rb_tree_node_base"** noundef nonnull align 8 dereferenceable(8) %13, %"struct.std::_Rb_tree_node_base"** noundef nonnull align 8 dereferenceable(8) %112)
  br label %143

113:                                              ; preds = %103
  %114 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %17, i32 0, i32 0
  %115 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* %114 to %"struct.std::_Rb_tree_key_compare"*
  %116 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %115, i32 0, i32 0
  %117 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %7, align 8
  %118 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEEppEv(%"struct.std::_Rb_tree_iterator"* noundef nonnull align 8 dereferenceable(8) %12) #13
  %119 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %118, i32 0, i32 0
  %120 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %119, align 8
  %121 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* noundef %120)
  %122 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* noundef nonnull align 1 dereferenceable(1) %116, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %117, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %121)
  br i1 %122, label %123, label %133

123:                                              ; preds = %113
  %124 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %8, i32 0, i32 0
  %125 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %124, align 8
  %126 = call noundef %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* noundef %125) #13
  %127 = icmp eq %"struct.std::_Rb_tree_node"* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %14, align 8
  %129 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %8, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_Lb1EEERKS1_S5_(%"struct.std::pair.21"* noundef nonnull align 8 dereferenceable(16) %4, %"struct.std::_Rb_tree_node_base"** noundef nonnull align 8 dereferenceable(8) %14, %"struct.std::_Rb_tree_node_base"** noundef nonnull align 8 dereferenceable(8) %129)
  br label %143

130:                                              ; preds = %123
  %131 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %12, i32 0, i32 0
  %132 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %12, i32 0, i32 0
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_(%"struct.std::pair.21"* noundef nonnull align 8 dereferenceable(16) %4, %"struct.std::_Rb_tree_node_base"** noundef nonnull align 8 dereferenceable(8) %131, %"struct.std::_Rb_tree_node_base"** noundef nonnull align 8 dereferenceable(8) %132)
  br label %143

133:                                              ; preds = %113
  %134 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %7, align 8
  %135 = call { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE24_M_get_insert_unique_posERS7_(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %17, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %134)
  %136 = bitcast %"struct.std::pair.21"* %4 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %137 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %136, i32 0, i32 0
  %138 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %135, 0
  store %"struct.std::_Rb_tree_node_base"* %138, %"struct.std::_Rb_tree_node_base"** %137, align 8
  %139 = getelementptr inbounds { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %136, i32 0, i32 1
  %140 = extractvalue { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %135, 1
  store %"struct.std::_Rb_tree_node_base"* %140, %"struct.std::_Rb_tree_node_base"** %139, align 8
  br label %143

141:                                              ; preds = %94
  %142 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %8, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %15, align 8
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_Lb1EEERKS1_S5_(%"struct.std::pair.21"* noundef nonnull align 8 dereferenceable(16) %4, %"struct.std::_Rb_tree_node_base"** noundef nonnull align 8 dereferenceable(8) %142, %"struct.std::_Rb_tree_node_base"** noundef nonnull align 8 dereferenceable(8) %15)
  br label %143

143:                                              ; preds = %141, %133, %130, %128, %111, %86, %83, %81, %63, %38, %36
  %144 = bitcast %"struct.std::pair.21"* %4 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %145 = load { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %144, align 8
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %145
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEEclERKSI_(%"struct.std::_Select1st"* noundef nonnull align 1 dereferenceable(1) %0, %"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %1) #1 comdat align 2 {
  %3 = alloca %"struct.std::_Select1st"*, align 8
  %4 = alloca %"struct.std::pair"*, align 8
  store %"struct.std::_Select1st"* %0, %"struct.std::_Select1st"** %3, align 8
  store %"struct.std::pair"* %1, %"struct.std::pair"** %4, align 8
  %5 = load %"struct.std::_Select1st"*, %"struct.std::_Select1st"** %3, align 8
  %6 = load %"struct.std::pair"*, %"struct.std::pair"** %4, align 8
  %7 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %6, i32 0, i32 0
  ret %"class.std::__cxx11::basic_string"* %7
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE10_M_insert_IRKSI_NSO_11_Alloc_nodeEEESt17_Rb_tree_iteratorISI_EPSt18_Rb_tree_node_baseSW_OT_RT0_(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0, %"struct.std::_Rb_tree_node_base"* noundef %1, %"struct.std::_Rb_tree_node_base"* noundef %2, %"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %3, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node"* noundef nonnull align 8 dereferenceable(8) %4) #1 comdat align 2 {
  %6 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %7 = alloca %"class.std::_Rb_tree"*, align 8
  %8 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %9 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %10 = alloca %"struct.std::pair"*, align 8
  %11 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node"*, align 8
  %12 = alloca i8, align 1
  %13 = alloca %"struct.std::_Select1st", align 1
  %14 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %7, align 8
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %8, align 8
  store %"struct.std::_Rb_tree_node_base"* %2, %"struct.std::_Rb_tree_node_base"** %9, align 8
  store %"struct.std::pair"* %3, %"struct.std::pair"** %10, align 8
  store %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node"* %4, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node"** %11, align 8
  %15 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %7, align 8
  %16 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %8, align 8
  %17 = icmp ne %"struct.std::_Rb_tree_node_base"* %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %5
  %19 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %20 = call noundef %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE6_M_endEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %15) #13
  %21 = icmp eq %"struct.std::_Rb_tree_node_base"* %19, %20
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %15, i32 0, i32 0
  %24 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* %23 to %"struct.std::_Rb_tree_key_compare"*
  %25 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %24, i32 0, i32 0
  %26 = load %"struct.std::pair"*, %"struct.std::pair"** %10, align 8
  %27 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEEclERKSI_(%"struct.std::_Select1st"* noundef nonnull align 1 dereferenceable(1) %13, %"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %26)
  %28 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %29 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* noundef %28)
  %30 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* noundef nonnull align 1 dereferenceable(1) %25, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %27, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %29)
  br label %31

31:                                               ; preds = %22, %18, %5
  %32 = phi i1 [ true, %18 ], [ true, %5 ], [ %30, %22 ]
  %33 = zext i1 %32 to i8
  store i8 %33, i8* %12, align 1
  %34 = load %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node"*, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node"** %11, align 8
  %35 = load %"struct.std::pair"*, %"struct.std::pair"** %10, align 8
  %36 = call noundef %"struct.std::_Rb_tree_node"* @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE11_Alloc_nodeclIRKSI_EEPSt13_Rb_tree_nodeISI_EOT_(%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node"* noundef nonnull align 8 dereferenceable(8) %34, %"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %35)
  store %"struct.std::_Rb_tree_node"* %36, %"struct.std::_Rb_tree_node"** %14, align 8
  %37 = load i8, i8* %12, align 1
  %38 = trunc i8 %37 to i1
  %39 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %14, align 8
  %40 = bitcast %"struct.std::_Rb_tree_node"* %39 to %"struct.std::_Rb_tree_node_base"*
  %41 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %42 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %15, i32 0, i32 0
  %43 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* %42 to i8*
  %44 = getelementptr inbounds i8, i8* %43, i64 8
  %45 = bitcast i8* %44 to %"struct.std::_Rb_tree_header"*
  %46 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %45, i32 0, i32 0
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %38, %"struct.std::_Rb_tree_node_base"* noundef %40, %"struct.std::_Rb_tree_node_base"* noundef %41, %"struct.std::_Rb_tree_node_base"* noundef nonnull align 8 dereferenceable(32) %46) #13
  %47 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %15, i32 0, i32 0
  %48 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* %47 to i8*
  %49 = getelementptr inbounds i8, i8* %48, i64 8
  %50 = bitcast i8* %49 to %"struct.std::_Rb_tree_header"*
  %51 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %51, align 8
  %54 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %14, align 8
  %55 = bitcast %"struct.std::_Rb_tree_node"* %54 to %"struct.std::_Rb_tree_node_base"*
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* noundef nonnull align 8 dereferenceable(8) %6, %"struct.std::_Rb_tree_node_base"* noundef %55) #13
  %56 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %6, i32 0, i32 0
  %57 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %56, align 8
  ret %"struct.std::_Rb_tree_node_base"* %57
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* noundef nonnull align 8 dereferenceable(8) %0, %"struct.std::_Rb_tree_node_base"* noundef %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %0, %"struct.std::_Rb_tree_iterator"** %3, align 8
  store %"struct.std::_Rb_tree_node_base"* %1, %"struct.std::_Rb_tree_node_base"** %4, align 8
  %5 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %5, i32 0, i32 0
  %7 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %4, align 8
  store %"struct.std::_Rb_tree_node_base"* %7, %"struct.std::_Rb_tree_node_base"** %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEE13_M_const_castEv(%"struct.std::_Rb_tree_const_iterator"* noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = alloca %"struct.std::_Rb_tree_const_iterator"*, align 8
  store %"struct.std::_Rb_tree_const_iterator"* %0, %"struct.std::_Rb_tree_const_iterator"** %3, align 8
  %4 = load %"struct.std::_Rb_tree_const_iterator"*, %"struct.std::_Rb_tree_const_iterator"** %3, align 8
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_const_iterator", %"struct.std::_Rb_tree_const_iterator"* %4, i32 0, i32 0
  %6 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %5, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* noundef nonnull align 8 dereferenceable(8) %2, %"struct.std::_Rb_tree_node_base"* noundef %6) #13
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %2, i32 0, i32 0
  %8 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %7, align 8
  ret %"struct.std::_Rb_tree_node_base"* %8
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE6_M_endEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* %4 to i8*
  %6 = getelementptr inbounds i8, i8* %5, i64 8
  %7 = bitcast i8* %6 to %"struct.std::_Rb_tree_header"*
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %7, i32 0, i32 0
  ret %"struct.std::_Rb_tree_node_base"* %8
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE4sizeEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* %4 to i8*
  %6 = getelementptr inbounds i8, i8* %5, i64 8
  %7 = bitcast i8* %6 to %"struct.std::_Rb_tree_header"*
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  ret i64 %9
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* noundef nonnull align 1 dereferenceable(1) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %2) #1 comdat align 2 {
  %4 = alloca %"struct.std::less"*, align 8
  %5 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %6 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"struct.std::less"* %0, %"struct.std::less"** %4, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %5, align 8
  store %"class.std::__cxx11::basic_string"* %2, %"class.std::__cxx11::basic_string"** %6, align 8
  %7 = load %"struct.std::less"*, %"struct.std::less"** %4, align 8
  %8 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %9 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %6, align 8
  %10 = call noundef zeroext i1 @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %8, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9) #13
  ret i1 %10
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* noundef %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"struct.std::_Rb_tree_node_base"* %0, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %2, align 8
  %4 = bitcast %"struct.std::_Rb_tree_node_base"* %3 to %"struct.std::_Rb_tree_node"*
  %5 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE6_S_keyEPKSt13_Rb_tree_nodeISI_E(%"struct.std::_Rb_tree_node"* noundef %4)
  ret %"class.std::__cxx11::basic_string"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE12_M_rightmostEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* %4 to i8*
  %6 = getelementptr inbounds i8, i8* %5, i64 8
  %7 = bitcast i8* %6 to %"struct.std::_Rb_tree_header"*
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %8, i32 0, i32 3
  ret %"struct.std::_Rb_tree_node_base"** %9
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_Lb1EEERKS1_S5_(%"struct.std::pair.21"* noundef nonnull align 8 dereferenceable(16) %0, %"struct.std::_Rb_tree_node_base"** noundef nonnull align 8 dereferenceable(8) %1, %"struct.std::_Rb_tree_node_base"** noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 {
  %4 = alloca %"struct.std::pair.21"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  %6 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::pair.21"* %0, %"struct.std::pair.21"** %4, align 8
  store %"struct.std::_Rb_tree_node_base"** %1, %"struct.std::_Rb_tree_node_base"*** %5, align 8
  store %"struct.std::_Rb_tree_node_base"** %2, %"struct.std::_Rb_tree_node_base"*** %6, align 8
  %7 = load %"struct.std::pair.21"*, %"struct.std::pair.21"** %4, align 8
  %8 = bitcast %"struct.std::pair.21"* %7 to %"class.std::__pair_base.22"*
  %9 = getelementptr inbounds %"struct.std::pair.21", %"struct.std::pair.21"* %7, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %5, align 8
  %11 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %10, align 8
  store %"struct.std::_Rb_tree_node_base"* %11, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %12 = getelementptr inbounds %"struct.std::pair.21", %"struct.std::pair.21"* %7, i32 0, i32 1
  %13 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %6, align 8
  %14 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %13, align 8
  store %"struct.std::_Rb_tree_node_base"* %14, %"struct.std::_Rb_tree_node_base"** %12, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE24_M_get_insert_unique_posERS7_(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1) #1 comdat align 2 {
  %3 = alloca %"struct.std::pair.21", align 8
  %4 = alloca %"class.std::_Rb_tree"*, align 8
  %5 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %6 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %7 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %8 = alloca i8, align 1
  %9 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %10 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %11 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %4, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %5, align 8
  %12 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %4, align 8
  %13 = call noundef %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE8_M_beginEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %12) #13
  store %"struct.std::_Rb_tree_node"* %13, %"struct.std::_Rb_tree_node"** %6, align 8
  %14 = call noundef %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE6_M_endEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %12) #13
  store %"struct.std::_Rb_tree_node_base"* %14, %"struct.std::_Rb_tree_node_base"** %7, align 8
  store i8 1, i8* %8, align 1
  br label %15

15:                                               ; preds = %39, %2
  %16 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %17 = icmp ne %"struct.std::_Rb_tree_node"* %16, null
  br i1 %17, label %18, label %41

18:                                               ; preds = %15
  %19 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %20 = bitcast %"struct.std::_Rb_tree_node"* %19 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %20, %"struct.std::_Rb_tree_node_base"** %7, align 8
  %21 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %12, i32 0, i32 0
  %22 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* %21 to %"struct.std::_Rb_tree_key_compare"*
  %23 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %22, i32 0, i32 0
  %24 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %25 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %26 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE6_S_keyEPKSt13_Rb_tree_nodeISI_E(%"struct.std::_Rb_tree_node"* noundef %25)
  %27 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* noundef nonnull align 1 dereferenceable(1) %23, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %24, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %26)
  %28 = zext i1 %27 to i8
  store i8 %28, i8* %8, align 1
  %29 = load i8, i8* %8, align 1
  %30 = trunc i8 %29 to i1
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %33 = bitcast %"struct.std::_Rb_tree_node"* %32 to %"struct.std::_Rb_tree_node_base"*
  %34 = call noundef %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* noundef %33) #13
  br label %39

35:                                               ; preds = %18
  %36 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %6, align 8
  %37 = bitcast %"struct.std::_Rb_tree_node"* %36 to %"struct.std::_Rb_tree_node_base"*
  %38 = call noundef %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* noundef %37) #13
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi %"struct.std::_Rb_tree_node"* [ %34, %31 ], [ %38, %35 ]
  store %"struct.std::_Rb_tree_node"* %40, %"struct.std::_Rb_tree_node"** %6, align 8
  br label %15, !llvm.loop !29

41:                                               ; preds = %15
  %42 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %7, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* noundef nonnull align 8 dereferenceable(8) %9, %"struct.std::_Rb_tree_node_base"* noundef %42) #13
  %43 = load i8, i8* %8, align 1
  %44 = trunc i8 %43 to i1
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE5beginEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %12) #13
  %47 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %10, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %46, %"struct.std::_Rb_tree_node_base"** %47, align 8
  %48 = call noundef zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEESL_(%"struct.std::_Rb_tree_iterator"* noundef nonnull align 8 dereferenceable(8) %9, %"struct.std::_Rb_tree_iterator"* noundef nonnull align 8 dereferenceable(8) %10) #13
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS8_ESaISF_EEEEEERS1_Lb1EEEOT_OT0_(%"struct.std::pair.21"* noundef nonnull align 8 dereferenceable(16) %3, %"struct.std::_Rb_tree_node"** noundef nonnull align 8 dereferenceable(8) %6, %"struct.std::_Rb_tree_node_base"** noundef nonnull align 8 dereferenceable(8) %7)
  br label %65

50:                                               ; preds = %45
  %51 = call noundef nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEEmmEv(%"struct.std::_Rb_tree_iterator"* noundef nonnull align 8 dereferenceable(8) %9) #13
  br label %52

52:                                               ; preds = %50
  br label %53

53:                                               ; preds = %52, %41
  %54 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %12, i32 0, i32 0
  %55 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* %54 to %"struct.std::_Rb_tree_key_compare"*
  %56 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %55, i32 0, i32 0
  %57 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %9, i32 0, i32 0
  %58 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %57, align 8
  %59 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* noundef %58)
  %60 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %61 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* noundef nonnull align 1 dereferenceable(1) %56, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %59, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %60)
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS8_ESaISF_EEEEEERS1_Lb1EEEOT_OT0_(%"struct.std::pair.21"* noundef nonnull align 8 dereferenceable(16) %3, %"struct.std::_Rb_tree_node"** noundef nonnull align 8 dereferenceable(8) %6, %"struct.std::_Rb_tree_node_base"** noundef nonnull align 8 dereferenceable(8) %7)
  br label %65

63:                                               ; preds = %53
  %64 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %9, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* null, %"struct.std::_Rb_tree_node_base"** %11, align 8
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_Lb1EEERKS1_S5_(%"struct.std::pair.21"* noundef nonnull align 8 dereferenceable(16) %3, %"struct.std::_Rb_tree_node_base"** noundef nonnull align 8 dereferenceable(8) %64, %"struct.std::_Rb_tree_node_base"** noundef nonnull align 8 dereferenceable(8) %11)
  br label %65

65:                                               ; preds = %63, %62, %49
  %66 = bitcast %"struct.std::pair.21"* %3 to { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }*
  %67 = load { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }, { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* }* %66, align 8
  ret { %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"* } %67
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_node_base"** @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE11_M_leftmostEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %2, align 8
  %3 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* %4 to i8*
  %6 = getelementptr inbounds i8, i8* %5, i64 8
  %7 = bitcast i8* %6 to %"struct.std::_Rb_tree_header"*
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %7, i32 0, i32 0
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %8, i32 0, i32 2
  ret %"struct.std::_Rb_tree_node_base"** %9
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_(%"struct.std::pair.21"* noundef nonnull align 8 dereferenceable(16) %0, %"struct.std::_Rb_tree_node_base"** noundef nonnull align 8 dereferenceable(8) %1, %"struct.std::_Rb_tree_node_base"** noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 {
  %4 = alloca %"struct.std::pair.21"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  %6 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::pair.21"* %0, %"struct.std::pair.21"** %4, align 8
  store %"struct.std::_Rb_tree_node_base"** %1, %"struct.std::_Rb_tree_node_base"*** %5, align 8
  store %"struct.std::_Rb_tree_node_base"** %2, %"struct.std::_Rb_tree_node_base"*** %6, align 8
  %7 = load %"struct.std::pair.21"*, %"struct.std::pair.21"** %4, align 8
  %8 = bitcast %"struct.std::pair.21"* %7 to %"class.std::__pair_base.22"*
  %9 = getelementptr inbounds %"struct.std::pair.21", %"struct.std::pair.21"* %7, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %5, align 8
  %11 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %10, align 8
  store %"struct.std::_Rb_tree_node_base"* %11, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %12 = getelementptr inbounds %"struct.std::pair.21", %"struct.std::pair.21"* %7, i32 0, i32 1
  %13 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %6, align 8
  %14 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %13, align 8
  store %"struct.std::_Rb_tree_node_base"* %14, %"struct.std::_Rb_tree_node_base"** %12, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEEmmEv(%"struct.std::_Rb_tree_iterator"* noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %0, %"struct.std::_Rb_tree_iterator"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %4, align 8
  %6 = call noundef %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* noundef %5) #18
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %6, %"struct.std::_Rb_tree_node_base"** %7, align 8
  ret %"struct.std::_Rb_tree_iterator"* %3
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"struct.std::_Rb_tree_iterator"* @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEEppEv(%"struct.std::_Rb_tree_iterator"* noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %0, %"struct.std::_Rb_tree_iterator"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  %5 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %4, align 8
  %6 = call noundef %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* noundef %5) #18
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %6, %"struct.std::_Rb_tree_node_base"** %7, align 8
  ret %"struct.std::_Rb_tree_iterator"* %3
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE6_S_keyEPKSt13_Rb_tree_nodeISI_E(%"struct.std::_Rb_tree_node"* noundef %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %3 = alloca %"struct.std::_Select1st", align 1
  store %"struct.std::_Rb_tree_node"* %0, %"struct.std::_Rb_tree_node"** %2, align 8
  %4 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %2, align 8
  %5 = call noundef %"struct.std::pair"* @_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* noundef nonnull align 8 dereferenceable(96) %4)
  %6 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEEclERKSI_(%"struct.std::_Select1st"* noundef nonnull align 1 dereferenceable(1) %3, %"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %5)
  ret %"class.std::__cxx11::basic_string"* %6
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"struct.std::pair"* @_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* noundef nonnull align 8 dereferenceable(96) %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"struct.std::_Rb_tree_node"* %0, %"struct.std::_Rb_tree_node"** %2, align 8
  %3 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node", %"struct.std::_Rb_tree_node"* %3, i32 0, i32 1
  %5 = call noundef %"struct.std::pair"* @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS5_ESaISC_EEEEEE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* noundef nonnull align 8 dereferenceable(64) %4) #13
  ret %"struct.std::pair"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"struct.std::pair"* @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS5_ESaISC_EEEEEE6_M_ptrEv(%"struct.__gnu_cxx::__aligned_membuf"* noundef nonnull align 8 dereferenceable(64) %0) #1 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %0, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %4 = call noundef i8* @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS5_ESaISC_EEEEEE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* noundef nonnull align 8 dereferenceable(64) %3) #13
  %5 = bitcast i8* %4 to %"struct.std::pair"*
  ret %"struct.std::pair"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i8* @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS5_ESaISC_EEEEEE7_M_addrEv(%"struct.__gnu_cxx::__aligned_membuf"* noundef nonnull align 8 dereferenceable(64) %0) #1 comdat align 2 {
  %2 = alloca %"struct.__gnu_cxx::__aligned_membuf"*, align 8
  store %"struct.__gnu_cxx::__aligned_membuf"* %0, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %3 = load %"struct.__gnu_cxx::__aligned_membuf"*, %"struct.__gnu_cxx::__aligned_membuf"** %2, align 8
  %4 = getelementptr inbounds %"struct.__gnu_cxx::__aligned_membuf", %"struct.__gnu_cxx::__aligned_membuf"* %3, i32 0, i32 0
  %5 = bitcast [64 x i8]* %4 to i8*
  ret i8* %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEESL_(%"struct.std::_Rb_tree_iterator"* noundef nonnull align 8 dereferenceable(8) %0, %"struct.std::_Rb_tree_iterator"* noundef nonnull align 8 dereferenceable(8) %1) #1 comdat {
  %3 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator"*, align 8
  store %"struct.std::_Rb_tree_iterator"* %0, %"struct.std::_Rb_tree_iterator"** %3, align 8
  store %"struct.std::_Rb_tree_iterator"* %1, %"struct.std::_Rb_tree_iterator"** %4, align 8
  %5 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %5, i32 0, i32 0
  %7 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %6, align 8
  %8 = load %"struct.std::_Rb_tree_iterator"*, %"struct.std::_Rb_tree_iterator"** %4, align 8
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %8, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %11 = icmp eq %"struct.std::_Rb_tree_node_base"* %7, %10
  ret i1 %11
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE5beginEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0) #1 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %3, align 8
  %4 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %3, align 8
  %5 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %4, i32 0, i32 0
  %6 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* %5 to i8*
  %7 = getelementptr inbounds i8, i8* %6, i64 8
  %8 = bitcast i8* %7 to %"struct.std::_Rb_tree_header"*
  %9 = getelementptr inbounds %"struct.std::_Rb_tree_header", %"struct.std::_Rb_tree_header"* %8, i32 0, i32 0
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", %"struct.std::_Rb_tree_node_base"* %9, i32 0, i32 2
  %11 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %10, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* noundef nonnull align 8 dereferenceable(8) %2, %"struct.std::_Rb_tree_node_base"* noundef %11) #13
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %2, i32 0, i32 0
  %13 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %12, align 8
  ret %"struct.std::_Rb_tree_node_base"* %13
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS8_ESaISF_EEEEEERS1_Lb1EEEOT_OT0_(%"struct.std::pair.21"* noundef nonnull align 8 dereferenceable(16) %0, %"struct.std::_Rb_tree_node"** noundef nonnull align 8 dereferenceable(8) %1, %"struct.std::_Rb_tree_node_base"** noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 {
  %4 = alloca %"struct.std::pair.21"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node"**, align 8
  %6 = alloca %"struct.std::_Rb_tree_node_base"**, align 8
  store %"struct.std::pair.21"* %0, %"struct.std::pair.21"** %4, align 8
  store %"struct.std::_Rb_tree_node"** %1, %"struct.std::_Rb_tree_node"*** %5, align 8
  store %"struct.std::_Rb_tree_node_base"** %2, %"struct.std::_Rb_tree_node_base"*** %6, align 8
  %7 = load %"struct.std::pair.21"*, %"struct.std::pair.21"** %4, align 8
  %8 = bitcast %"struct.std::pair.21"* %7 to %"class.std::__pair_base.22"*
  %9 = getelementptr inbounds %"struct.std::pair.21", %"struct.std::pair.21"* %7, i32 0, i32 0
  %10 = load %"struct.std::_Rb_tree_node"**, %"struct.std::_Rb_tree_node"*** %5, align 8
  %11 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %10, align 8
  %12 = bitcast %"struct.std::_Rb_tree_node"* %11 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %12, %"struct.std::_Rb_tree_node_base"** %9, align 8
  %13 = getelementptr inbounds %"struct.std::pair.21", %"struct.std::pair.21"* %7, i32 0, i32 1
  %14 = load %"struct.std::_Rb_tree_node_base"**, %"struct.std::_Rb_tree_node_base"*** %6, align 8
  %15 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %14, align 8
  store %"struct.std::_Rb_tree_node_base"* %15, %"struct.std::_Rb_tree_node_base"** %13, align 8
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare noundef %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* noundef) #12

; Function Attrs: nounwind willreturn memory(read)
declare noundef %"struct.std::_Rb_tree_node_base"* @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* noundef) #12

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"struct.std::_Rb_tree_node"* @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE11_Alloc_nodeclIRKSI_EEPSt13_Rb_tree_nodeISI_EOT_(%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node"* noundef nonnull align 8 dereferenceable(8) %0, %"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %1) #1 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node"*, align 8
  %4 = alloca %"struct.std::pair"*, align 8
  store %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node"* %0, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node"** %3, align 8
  store %"struct.std::pair"* %1, %"struct.std::pair"** %4, align 8
  %5 = load %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node"*, %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node"** %3, align 8
  %6 = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node"* %5, i32 0, i32 0
  %7 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %6, align 8
  %8 = load %"struct.std::pair"*, %"struct.std::pair"** %4, align 8
  %9 = call noundef %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE14_M_create_nodeIJRKSI_EEEPSt13_Rb_tree_nodeISI_EDpOT_(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %7, %"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %8)
  ret %"struct.std::_Rb_tree_node"* %9
}

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, %"struct.std::_Rb_tree_node_base"* noundef, %"struct.std::_Rb_tree_node_base"* noundef, %"struct.std::_Rb_tree_node_base"* noundef nonnull align 8 dereferenceable(32)) #5

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE14_M_create_nodeIJRKSI_EEEPSt13_Rb_tree_nodeISI_EDpOT_(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0, %"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %1) #1 comdat align 2 {
  %3 = alloca %"class.std::_Rb_tree"*, align 8
  %4 = alloca %"struct.std::pair"*, align 8
  %5 = alloca %"struct.std::_Rb_tree_node"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %3, align 8
  store %"struct.std::pair"* %1, %"struct.std::pair"** %4, align 8
  %6 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %3, align 8
  %7 = call noundef %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE11_M_get_nodeEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %6)
  store %"struct.std::_Rb_tree_node"* %7, %"struct.std::_Rb_tree_node"** %5, align 8
  %8 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %5, align 8
  %9 = load %"struct.std::pair"*, %"struct.std::pair"** %4, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE17_M_construct_nodeIJRKSI_EEEvPSt13_Rb_tree_nodeISI_EDpOT_(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %6, %"struct.std::_Rb_tree_node"* noundef %8, %"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %9)
  %10 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %5, align 8
  ret %"struct.std::_Rb_tree_node"* %10
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE11_M_get_nodeEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::allocator.10"*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %"class.std::_Rb_tree"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %4, align 8
  %5 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %4, align 8
  %6 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.10"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %5) #13
  store %"class.std::allocator.10"* %6, %"class.std::allocator.10"** %2, align 8
  store i64 1, i64* %3, align 8
  %7 = load %"class.std::allocator.10"*, %"class.std::allocator.10"** %2, align 8
  %8 = bitcast %"class.std::allocator.10"* %7 to %"class.std::__new_allocator.11"*
  %9 = load i64, i64* %3, align 8
  %10 = call noundef %"struct.std::_Rb_tree_node"* @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS5_ESaISC_EEEEEEE8allocateEmPKv(%"class.std::__new_allocator.11"* noundef nonnull align 1 dereferenceable(1) %8, i64 noundef %9, i8* noundef null)
  ret %"struct.std::_Rb_tree_node"* %10
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE17_M_construct_nodeIJRKSI_EEEvPSt13_Rb_tree_nodeISI_EDpOT_(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0, %"struct.std::_Rb_tree_node"* noundef %1, %"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %2) #1 comdat align 2 {
  %4 = alloca %"class.std::__new_allocator.11"*, align 8
  %5 = alloca %"struct.std::pair"*, align 8
  %6 = alloca %"struct.std::pair"*, align 8
  %7 = alloca %"class.std::allocator.10"*, align 8
  %8 = alloca %"struct.std::pair"*, align 8
  %9 = alloca %"struct.std::pair"*, align 8
  %10 = alloca %"class.std::_Rb_tree"*, align 8
  %11 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %12 = alloca %"struct.std::pair"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %10, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %11, align 8
  store %"struct.std::pair"* %2, %"struct.std::pair"** %12, align 8
  %13 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %10, align 8
  %14 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %11, align 8
  %15 = bitcast %"struct.std::_Rb_tree_node"* %14 to i8*
  %16 = bitcast i8* %15 to %"struct.std::_Rb_tree_node"*
  %17 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator.10"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE21_M_get_Node_allocatorEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %13) #13
  %18 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %11, align 8
  %19 = call noundef %"struct.std::pair"* @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEE9_M_valptrEv(%"struct.std::_Rb_tree_node"* noundef nonnull align 8 dereferenceable(96) %18)
  %20 = load %"struct.std::pair"*, %"struct.std::pair"** %12, align 8
  store %"class.std::allocator.10"* %17, %"class.std::allocator.10"** %7, align 8
  store %"struct.std::pair"* %19, %"struct.std::pair"** %8, align 8
  store %"struct.std::pair"* %20, %"struct.std::pair"** %9, align 8
  %21 = load %"class.std::allocator.10"*, %"class.std::allocator.10"** %7, align 8
  %22 = bitcast %"class.std::allocator.10"* %21 to %"class.std::__new_allocator.11"*
  %23 = load %"struct.std::pair"*, %"struct.std::pair"** %8, align 8
  %24 = load %"struct.std::pair"*, %"struct.std::pair"** %9, align 8
  store %"class.std::__new_allocator.11"* %22, %"class.std::__new_allocator.11"** %4, align 8
  store %"struct.std::pair"* %23, %"struct.std::pair"** %5, align 8
  store %"struct.std::pair"* %24, %"struct.std::pair"** %6, align 8
  %25 = load %"class.std::__new_allocator.11"*, %"class.std::__new_allocator.11"** %4, align 8
  %26 = load %"struct.std::pair"*, %"struct.std::pair"** %5, align 8
  %27 = bitcast %"struct.std::pair"* %26 to i8*
  %28 = load %"struct.std::pair"*, %"struct.std::pair"** %6, align 8
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISA_EEEEEC2ERKSH_(%"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %26, %"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %28)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef %"struct.std::_Rb_tree_node"* @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS5_ESaISC_EEEEEEE8allocateEmPKv(%"class.std::__new_allocator.11"* noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, i8* noundef %2) #1 comdat align 2 {
  %4 = alloca %"class.std::__new_allocator.11"*, align 8
  %5 = alloca %"class.std::__new_allocator.11"*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %"class.std::__new_allocator.11"* %0, %"class.std::__new_allocator.11"** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %"class.std::__new_allocator.11"*, %"class.std::__new_allocator.11"** %5, align 8
  %9 = load i64, i64* %6, align 8
  store %"class.std::__new_allocator.11"* %8, %"class.std::__new_allocator.11"** %4, align 8
  %10 = load %"class.std::__new_allocator.11"*, %"class.std::__new_allocator.11"** %4, align 8
  %11 = icmp ugt i64 %9, 96076792050570581
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = icmp ugt i64 %13, 192153584101141162
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @_ZSt28__throw_bad_array_new_lengthv() #15
  unreachable

16:                                               ; preds = %12
  call void @_ZSt17__throw_bad_allocv() #15
  unreachable

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = mul i64 %18, 96
  %20 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %19) #17
  %21 = bitcast i8* %20 to %"struct.std::_Rb_tree_node"*
  ret %"struct.std::_Rb_tree_node"* %21
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISA_EEEEEC2ERKSH_(%"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %0, %"struct.std::pair"* noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca %"struct.std::pair"*, align 8
  %4 = alloca %"struct.std::pair"*, align 8
  store %"struct.std::pair"* %0, %"struct.std::pair"** %3, align 8
  store %"struct.std::pair"* %1, %"struct.std::pair"** %4, align 8
  %5 = load %"struct.std::pair"*, %"struct.std::pair"** %3, align 8
  %6 = bitcast %"struct.std::pair"* %5 to %"class.std::__pair_base"*
  %7 = load %"struct.std::pair"*, %"struct.std::pair"** %4, align 8
  %8 = bitcast %"struct.std::pair"* %7 to %"class.std::__pair_base"*
  %9 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %5, i32 0, i32 0
  %10 = load %"struct.std::pair"*, %"struct.std::pair"** %4, align 8
  %11 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %10, i32 0, i32 0
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %9, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11)
  %12 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %5, i32 0, i32 1
  %13 = load %"struct.std::pair"*, %"struct.std::pair"** %4, align 8
  %14 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %13, i32 0, i32 1
  call void @_ZNSt8functionIFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEEC2ERKSA_(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %12, %"class.std::function"* noundef nonnull align 8 dereferenceable(32) %14)
  ret void
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZNSt8functionIFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEEC2ERKSA_(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %0, %"class.std::function"* noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca %"class.std::function"*, align 8
  %4 = alloca %"class.std::function"*, align 8
  store %"class.std::function"* %0, %"class.std::function"** %3, align 8
  store %"class.std::function"* %1, %"class.std::function"** %4, align 8
  %5 = load %"class.std::function"*, %"class.std::function"** %3, align 8
  %6 = bitcast %"class.std::function"* %5 to %"struct.std::_Maybe_unary_or_binary_function"*
  %7 = bitcast %"class.std::function"* %5 to %"class.std::_Function_base"*
  %8 = bitcast %"class.std::_Function_base"* %7 to i8*
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  call void @_ZNSt14_Function_baseC2Ev(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %7) #13
  %10 = getelementptr inbounds %"class.std::function", %"class.std::function"* %5, i32 0, i32 1
  store i32 (%"union.std::_Any_data"*, %"class.std::vector"*)* null, i32 (%"union.std::_Any_data"*, %"class.std::vector"*)** %10, align 8
  %11 = load %"class.std::function"*, %"class.std::function"** %4, align 8
  %12 = call noundef zeroext i1 @_ZNKSt8functionIFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEEcvbEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %11) #13
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = load %"class.std::function"*, %"class.std::function"** %4, align 8
  %15 = bitcast %"class.std::function"* %14 to %"class.std::_Function_base"*
  %16 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %15, i32 0, i32 1
  %17 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %16, align 8
  %18 = bitcast %"class.std::function"* %5 to %"class.std::_Function_base"*
  %19 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %18, i32 0, i32 0
  %20 = load %"class.std::function"*, %"class.std::function"** %4, align 8
  %21 = bitcast %"class.std::function"* %20 to %"class.std::_Function_base"*
  %22 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %21, i32 0, i32 0
  %23 = call noundef zeroext i1 %17(%"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %19, %"union.std::_Any_data"* noundef nonnull align 8 dereferenceable(16) %22, i32 noundef 2)
  %24 = load %"class.std::function"*, %"class.std::function"** %4, align 8
  %25 = getelementptr inbounds %"class.std::function", %"class.std::function"* %24, i32 0, i32 1
  %26 = load i32 (%"union.std::_Any_data"*, %"class.std::vector"*)*, i32 (%"union.std::_Any_data"*, %"class.std::vector"*)** %25, align 8
  %27 = getelementptr inbounds %"class.std::function", %"class.std::function"* %5, i32 0, i32 1
  store i32 (%"union.std::_Any_data"*, %"class.std::vector"*)* %26, i32 (%"union.std::_Any_data"*, %"class.std::vector"*)** %27, align 8
  %28 = load %"class.std::function"*, %"class.std::function"** %4, align 8
  %29 = bitcast %"class.std::function"* %28 to %"class.std::_Function_base"*
  %30 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %29, i32 0, i32 1
  %31 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %30, align 8
  %32 = bitcast %"class.std::function"* %5 to %"class.std::_Function_base"*
  %33 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %32, i32 0, i32 1
  store i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %31, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %33, align 8
  br label %34

34:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt8functionIFiRKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEEcvbEv(%"class.std::function"* noundef nonnull align 8 dereferenceable(32) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::function"*, align 8
  store %"class.std::function"* %0, %"class.std::function"** %2, align 8
  %3 = load %"class.std::function"*, %"class.std::function"** %2, align 8
  %4 = bitcast %"class.std::function"* %3 to %"class.std::_Function_base"*
  %5 = call noundef zeroext i1 @_ZNKSt14_Function_base8_M_emptyEv(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %4)
  %6 = xor i1 %5, true
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt14_Function_base8_M_emptyEv(%"class.std::_Function_base"* noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::_Function_base"*, align 8
  store %"class.std::_Function_base"* %0, %"class.std::_Function_base"** %2, align 8
  %3 = load %"class.std::_Function_base"*, %"class.std::_Function_base"** %2, align 8
  %4 = getelementptr inbounds %"class.std::_Function_base", %"class.std::_Function_base"* %3, i32 0, i32 1
  %5 = load i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)*, i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)** %4, align 8
  %6 = icmp ne i1 (%"union.std::_Any_data"*, %"union.std::_Any_data"*, i32)* %5, null
  %7 = xor i1 %6, true
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt16initializer_listISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEE4sizeEv(%"class.std::initializer_list.13"* noundef nonnull align 8 dereferenceable(16) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::initializer_list.13"*, align 8
  store %"class.std::initializer_list.13"* %0, %"class.std::initializer_list.13"** %2, align 8
  %3 = load %"class.std::initializer_list.13"*, %"class.std::initializer_list.13"** %2, align 8
  %4 = getelementptr inbounds %"class.std::initializer_list.13", %"class.std::initializer_list.13"* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxeqIPKSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESF_(%"class.__gnu_cxx::__normal_iterator.24"* noundef nonnull align 8 dereferenceable(8) %0, %"class.__gnu_cxx::__normal_iterator.24"* noundef nonnull align 8 dereferenceable(8) %1) #1 comdat {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.24"*, align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.24"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.24"* %0, %"class.__gnu_cxx::__normal_iterator.24"** %3, align 8
  store %"class.__gnu_cxx::__normal_iterator.24"* %1, %"class.__gnu_cxx::__normal_iterator.24"** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator.24"*, %"class.__gnu_cxx::__normal_iterator.24"** %3, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string_view"** @_ZNK9__gnu_cxx17__normal_iteratorIPKSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.24"* noundef nonnull align 8 dereferenceable(8) %5) #13
  %7 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %6, align 8
  %8 = load %"class.__gnu_cxx::__normal_iterator.24"*, %"class.__gnu_cxx::__normal_iterator.24"** %4, align 8
  %9 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string_view"** @_ZNK9__gnu_cxx17__normal_iteratorIPKSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.24"* noundef nonnull align 8 dereferenceable(8) %8) #13
  %10 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %9, align 8
  %11 = icmp eq %"class.std::basic_string_view"* %7, %10
  ret i1 %11
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local %"class.std::basic_string_view"* @_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE5beginEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.24", align 8
  %3 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  %4 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %6 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %7, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEC2ERKS6_(%"class.__gnu_cxx::__normal_iterator.24"* noundef nonnull align 8 dereferenceable(8) %2, %"class.std::basic_string_view"** noundef nonnull align 8 dereferenceable(8) %8) #13
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.24", %"class.__gnu_cxx::__normal_iterator.24"* %2, i32 0, i32 0
  %10 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %9, align 8
  ret %"class.std::basic_string_view"* %10
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local %"class.std::basic_string_view"* @_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE3endEv(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.24", align 8
  %3 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %3, align 8
  %4 = load %"class.std::vector"*, %"class.std::vector"** %3, align 8
  %5 = bitcast %"class.std::vector"* %4 to %"struct.std::_Vector_base"*
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl"* %6 to %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data", %"struct.std::_Vector_base<std::basic_string_view<char>, std::allocator<std::basic_string_view<char>>>::_Vector_impl_data"* %7, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEC2ERKS6_(%"class.__gnu_cxx::__normal_iterator.24"* noundef nonnull align 8 dereferenceable(8) %2, %"class.std::basic_string_view"** noundef nonnull align 8 dereferenceable(8) %8) #13
  %9 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.24", %"class.__gnu_cxx::__normal_iterator.24"* %2, i32 0, i32 0
  %10 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %9, align 8
  ret %"class.std::basic_string_view"* %10
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"class.std::basic_string_view"** @_ZNK9__gnu_cxx17__normal_iteratorIPKSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEE4baseEv(%"class.__gnu_cxx::__normal_iterator.24"* noundef nonnull align 8 dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.24"*, align 8
  store %"class.__gnu_cxx::__normal_iterator.24"* %0, %"class.__gnu_cxx::__normal_iterator.24"** %2, align 8
  %3 = load %"class.__gnu_cxx::__normal_iterator.24"*, %"class.__gnu_cxx::__normal_iterator.24"** %2, align 8
  %4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.24", %"class.__gnu_cxx::__normal_iterator.24"* %3, i32 0, i32 0
  ret %"class.std::basic_string_view"** %4
}

; Function Attrs: noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS4_SaIS4_EEEC2ERKS6_(%"class.__gnu_cxx::__normal_iterator.24"* noundef nonnull align 8 dereferenceable(8) %0, %"class.std::basic_string_view"** noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.24"*, align 8
  %4 = alloca %"class.std::basic_string_view"**, align 8
  store %"class.__gnu_cxx::__normal_iterator.24"* %0, %"class.__gnu_cxx::__normal_iterator.24"** %3, align 8
  store %"class.std::basic_string_view"** %1, %"class.std::basic_string_view"*** %4, align 8
  %5 = load %"class.__gnu_cxx::__normal_iterator.24"*, %"class.__gnu_cxx::__normal_iterator.24"** %3, align 8
  %6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.24", %"class.__gnu_cxx::__normal_iterator.24"* %5, i32 0, i32 0
  %7 = load %"class.std::basic_string_view"**, %"class.std::basic_string_view"*** %4, align 8
  %8 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %7, align 8
  store %"class.std::basic_string_view"* %8, %"class.std::basic_string_view"** %6, align 8
  ret void
}

; Function Attrs: nounwind
declare { i64, i8* } @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17_S_to_string_viewESt17basic_string_viewIcS2_E(i64, i8*) #5

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperC1ESt17basic_string_viewIcS2_E(%"struct.std::__cxx11::basic_string<char>::__sv_wrapper"* noundef nonnull align 8 dereferenceable(16), i64, i8*) unnamed_addr #5

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ENS4_12__sv_wrapperERKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i64, i8*, %"class.std::allocator.0"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE4findERS7_(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %1) #1 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca %"class.std::_Rb_tree"*, align 8
  %5 = alloca %"class.std::__cxx11::basic_string"*, align 8
  %6 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %7 = alloca %"struct.std::_Rb_tree_iterator", align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %4, align 8
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %5, align 8
  %8 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %4, align 8
  %9 = call noundef %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE8_M_beginEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %8) #13
  %10 = call noundef %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE6_M_endEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %8) #13
  %11 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %12 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE14_M_lower_boundEPSt13_Rb_tree_nodeISI_EPSt18_Rb_tree_node_baseRS7_(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %8, %"struct.std::_Rb_tree_node"* noundef %9, %"struct.std::_Rb_tree_node_base"* noundef %10, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %11)
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %6, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %12, %"struct.std::_Rb_tree_node_base"** %13, align 8
  %14 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE3endEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %8) #13
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %7, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %14, %"struct.std::_Rb_tree_node_base"** %15, align 8
  %16 = call noundef zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEESL_(%"struct.std::_Rb_tree_iterator"* noundef nonnull align 8 dereferenceable(8) %6, %"struct.std::_Rb_tree_iterator"* noundef nonnull align 8 dereferenceable(8) %7) #13
  br i1 %16, label %26, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %8, i32 0, i32 0
  %19 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* %18 to %"struct.std::_Rb_tree_key_compare"*
  %20 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %19, i32 0, i32 0
  %21 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %5, align 8
  %22 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %6, i32 0, i32 0
  %23 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %22, align 8
  %24 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE6_S_keyEPKSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* noundef %23)
  %25 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* noundef nonnull align 1 dereferenceable(1) %20, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %21, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %24)
  br i1 %25, label %26, label %29

26:                                               ; preds = %17, %2
  %27 = call %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE3endEv(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %8) #13
  %28 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  store %"struct.std::_Rb_tree_node_base"* %27, %"struct.std::_Rb_tree_node_base"** %28, align 8
  br label %32

29:                                               ; preds = %17
  %30 = bitcast %"struct.std::_Rb_tree_iterator"* %3 to i8*
  %31 = bitcast %"struct.std::_Rb_tree_iterator"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 8, i1 false)
  br label %32

32:                                               ; preds = %29, %26
  %33 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %3, i32 0, i32 0
  %34 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %33, align 8
  ret %"struct.std::_Rb_tree_node_base"* %34
}

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local %"struct.std::_Rb_tree_node_base"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE14_M_lower_boundEPSt13_Rb_tree_nodeISI_EPSt18_Rb_tree_node_baseRS7_(%"class.std::_Rb_tree"* noundef nonnull align 8 dereferenceable(48) %0, %"struct.std::_Rb_tree_node"* noundef %1, %"struct.std::_Rb_tree_node_base"* noundef %2, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %3) #1 comdat align 2 {
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = alloca %"class.std::_Rb_tree"*, align 8
  %7 = alloca %"struct.std::_Rb_tree_node"*, align 8
  %8 = alloca %"struct.std::_Rb_tree_node_base"*, align 8
  %9 = alloca %"class.std::__cxx11::basic_string"*, align 8
  store %"class.std::_Rb_tree"* %0, %"class.std::_Rb_tree"** %6, align 8
  store %"struct.std::_Rb_tree_node"* %1, %"struct.std::_Rb_tree_node"** %7, align 8
  store %"struct.std::_Rb_tree_node_base"* %2, %"struct.std::_Rb_tree_node_base"** %8, align 8
  store %"class.std::__cxx11::basic_string"* %3, %"class.std::__cxx11::basic_string"** %9, align 8
  %10 = load %"class.std::_Rb_tree"*, %"class.std::_Rb_tree"** %6, align 8
  br label %11

11:                                               ; preds = %32, %4
  %12 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %13 = icmp ne %"struct.std::_Rb_tree_node"* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.std::_Rb_tree", %"class.std::_Rb_tree"* %10, i32 0, i32 0
  %16 = bitcast %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::function<int (const std::vector<std::basic_string_view<char>> &)>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl"* %15 to %"struct.std::_Rb_tree_key_compare"*
  %17 = getelementptr inbounds %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_key_compare"* %16, i32 0, i32 0
  %18 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %19 = call noundef nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE6_S_keyEPKSt13_Rb_tree_nodeISI_E(%"struct.std::_Rb_tree_node"* noundef %18)
  %20 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %9, align 8
  %21 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(%"struct.std::less"* noundef nonnull align 1 dereferenceable(1) %17, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %19, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %20)
  br i1 %21, label %28, label %22

22:                                               ; preds = %14
  %23 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %24 = bitcast %"struct.std::_Rb_tree_node"* %23 to %"struct.std::_Rb_tree_node_base"*
  store %"struct.std::_Rb_tree_node_base"* %24, %"struct.std::_Rb_tree_node_base"** %8, align 8
  %25 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %26 = bitcast %"struct.std::_Rb_tree_node"* %25 to %"struct.std::_Rb_tree_node_base"*
  %27 = call noundef %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE7_S_leftEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* noundef %26) #13
  store %"struct.std::_Rb_tree_node"* %27, %"struct.std::_Rb_tree_node"** %7, align 8
  br label %32

28:                                               ; preds = %14
  %29 = load %"struct.std::_Rb_tree_node"*, %"struct.std::_Rb_tree_node"** %7, align 8
  %30 = bitcast %"struct.std::_Rb_tree_node"* %29 to %"struct.std::_Rb_tree_node_base"*
  %31 = call noundef %"struct.std::_Rb_tree_node"* @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFiRKSt6vectorISt17basic_string_viewIcS3_ESaISB_EEEEESt10_Select1stISI_ESt4lessIS5_ESaISI_EE8_S_rightEPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_node_base"* noundef %30) #13
  store %"struct.std::_Rb_tree_node"* %31, %"struct.std::_Rb_tree_node"** %7, align 8
  br label %32

32:                                               ; preds = %28, %22
  br label %11, !llvm.loop !30

33:                                               ; preds = %11
  %34 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %8, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFiRKSt6vectorISt17basic_string_viewIcS4_ESaISB_EEEEEEC2EPSt18_Rb_tree_node_base(%"struct.std::_Rb_tree_iterator"* noundef nonnull align 8 dereferenceable(8) %5, %"struct.std::_Rb_tree_node_base"* noundef %34) #13
  %35 = getelementptr inbounds %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator"* %5, i32 0, i32 0
  %36 = load %"struct.std::_Rb_tree_node_base"*, %"struct.std::_Rb_tree_node_base"** %35, align 8
  ret %"struct.std::_Rb_tree_node_base"* %36
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() #8

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8* noundef, i64 noundef) #4

; Function Attrs: mustprogress noinline nounwind optnone sspstrong uwtable
define linkonce_odr dso_local noundef i8* @_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4dataEv(%"class.std::basic_string_view"* noundef nonnull align 8 dereferenceable(16) %0) #1 comdat align 2 {
  %2 = alloca %"class.std::basic_string_view"*, align 8
  store %"class.std::basic_string_view"* %0, %"class.std::basic_string_view"** %2, align 8
  %3 = load %"class.std::basic_string_view"*, %"class.std::basic_string_view"** %2, align 8
  %4 = getelementptr inbounds %"class.std::basic_string_view", %"class.std::basic_string_view"* %3, i32 0, i32 1
  %5 = load i8*, i8** %4, align 8
  ret i8* %5
}

attributes #0 = { noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline norecurse nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { builtin nounwind }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 16.0.6"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
