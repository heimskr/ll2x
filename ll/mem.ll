define void @copy(i8* %0, i8* %1) align 2 {
	call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 500, i1 false)
	ret void
}

define void @set(i8* %0, i8 %1) align 2 {
	call void @llvm.memset.p0i8.i64(i8* %0, i8 %1, i64 500, i1 0);
	ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg)
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg)