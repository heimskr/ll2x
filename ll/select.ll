define i64 @select(i1 %0, i64 %1) align 2 {
	%3 = select i1 %0, i64 42, i64 %1
	ret i64 %3
}
