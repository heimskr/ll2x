; ModuleID = 'fibo.c'
source_filename = "fibo.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx12.0.0"

@.str = private unnamed_addr constant [10 x i8] c"%d -> %d\0A\00", align 1

; @main is the same as fibo0, but @fibonacci was compiled with -O3.

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @fibonacci(i32 %0) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 1
  br i1 %2, label %3, label %35

3:                                                ; preds = %1
  %4 = add i32 %0, -1
  %5 = and i32 %0, 7
  %6 = icmp ult i32 %4, 7
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = and i32 %0, -8
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ 1, %7 ], [ %19, %9 ]
  %11 = phi i32 [ 1, %7 ], [ %20, %9 ]
  %12 = phi i32 [ %8, %7 ], [ %21, %9 ]
  %13 = add nsw i32 %10, %11
  %14 = add nsw i32 %11, %13
  %15 = add nsw i32 %13, %14
  %16 = add nsw i32 %14, %15
  %17 = add nsw i32 %15, %16
  %18 = add nsw i32 %16, %17
  %19 = add nsw i32 %17, %18
  %20 = add nsw i32 %18, %19
  %21 = add i32 %12, -8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %9, !llvm.loop !6

23:                                               ; preds = %9, %3
  %24 = phi i32 [ undef, %3 ], [ %19, %9 ]
  %25 = phi i32 [ 1, %3 ], [ %19, %9 ]
  %26 = phi i32 [ 1, %3 ], [ %20, %9 ]
  %27 = icmp eq i32 %5, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %23, %28
  %29 = phi i32 [ %30, %28 ], [ %25, %23 ]
  %30 = phi i32 [ %32, %28 ], [ %26, %23 ]
  %31 = phi i32 [ %33, %28 ], [ %5, %23 ]
  %32 = add nsw i32 %29, %30
  %33 = add i32 %31, -1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %28, !llvm.loop !8

35:                                               ; preds = %23, %28, %1
  %36 = phi i32 [ 1, %1 ], [ %24, %23 ], [ %30, %28 ]
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %15, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp sle i32 %8, 10
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @fibonacci(i32 %12)
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %13)
  br label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  br label %7, !llvm.loop !8

18:                                               ; preds = %7
  ret i32 42
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 12, i32 3]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Homebrew clang version 13.0.0"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
