; ModuleID = 'fibo.c'
source_filename = "fibo.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind readnone ssp uwtable
define i32 @fibonacci(i32 %0) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 2
  br i1 %2, label %3, label %22

3:                                                ; preds = %1
  %4 = add i32 %0, -2
  %5 = add i32 %0, -3
  %6 = and i32 %4, 7
  %7 = icmp ult i32 %5, 7
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = and i32 %4, -8
  br label %24

10:                                               ; preds = %24, %3
  %11 = phi i32 [ undef, %3 ], [ %34, %24 ]
  %12 = phi i32 [ 0, %3 ], [ %35, %24 ]
  %13 = phi i32 [ 1, %3 ], [ %34, %24 ]
  %14 = icmp eq i32 %6, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %10, %15
  %16 = phi i32 [ %19, %15 ], [ %12, %10 ]
  %17 = phi i32 [ %16, %15 ], [ %13, %10 ]
  %18 = phi i32 [ %20, %15 ], [ %6, %10 ]
  %19 = add nsw i32 %16, %17
  %20 = add i32 %18, -1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %15, !llvm.loop !6

22:                                               ; preds = %10, %15, %1
  %23 = phi i32 [ 1, %1 ], [ %11, %10 ], [ %16, %15 ]
  ret i32 %23

24:                                               ; preds = %24, %8
  %25 = phi i32 [ 0, %8 ], [ %35, %24 ]
  %26 = phi i32 [ 1, %8 ], [ %34, %24 ]
  %27 = phi i32 [ %9, %8 ], [ %36, %24 ]
  %28 = add nsw i32 %25, %26
  %29 = add nsw i32 %28, %25
  %30 = add nsw i32 %29, %28
  %31 = add nsw i32 %30, %29
  %32 = add nsw i32 %31, %30
  %33 = add nsw i32 %32, %31
  %34 = add nsw i32 %33, %32
  %35 = add nsw i32 %34, %33
  %36 = add i32 %27, -8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %10, label %24, !llvm.loop !8
}

; Function Attrs: nofree nounwind ssp uwtable
define i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #1 {
  %3 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 1)
  %4 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0)
  %5 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 1)
  %6 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 1)
  %7 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 2)
  %8 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %9 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 5)
  %10 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 8)
  %11 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 13)
  ret i32 42
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

attributes #0 = { nofree norecurse nosync nounwind readnone ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 12, i32 3]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Homebrew clang version 13.0.0"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
