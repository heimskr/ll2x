define void @atomique(i64 %0, i64* %1) align 2 {
  %3 = alloca i64, align 8
  %4 = atomicrmw volatile sub i64* %1, i64 %0 acq_rel, align 8
  store i64 %4, i64* %1, align 8
  ret void
}
