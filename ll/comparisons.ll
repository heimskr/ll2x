; ModuleID = 'cpp/comparisons.cpp'
source_filename = "cpp/comparisons.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"big < small: \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"big > small: \00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"big >= small: \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"big <= small: \00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"big == small: \00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"big != small: \00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"ubig < usmall: \00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"ubig > usmall: \00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"ubig >= usmall: \00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"ubig <= usmall: \00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"ubig == usmall: \00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"ubig != usmall: \00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"big < big: \00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"big > big: \00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"big >= big: \00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"big <= big: \00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"big == big: \00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"big != big: \00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"ubig < ubig: \00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"ubig > ubig: \00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"ubig >= ubig: \00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"ubig <= ubig: \00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"ubig == ubig: \00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"ubig != ubig: \00", align 1

; Function Attrs: mustprogress noinline norecurse nounwind optnone sspstrong uwtable
define dso_local noundef i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 1000000000, ptr %1, align 4
  store i32 -1000, ptr %2, align 4
  store i32 -1294967296, ptr %3, align 4
  store i32 1, ptr %4, align 4
  br label %5

5:                                                ; preds = %0
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %7 = load i32, ptr %1, align 4
  %8 = load i32, ptr %2, align 4
  %9 = icmp slt i32 %7, %8
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, ptr @.str.1, ptr @.str.2
  %12 = call i32 @puts(ptr noundef %11)
  br label %13

13:                                               ; preds = %5
  br label %14

14:                                               ; preds = %13
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %16 = load i32, ptr %1, align 4
  %17 = load i32, ptr %2, align 4
  %18 = icmp sgt i32 %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, ptr @.str.1, ptr @.str.2
  %21 = call i32 @puts(ptr noundef %20)
  br label %22

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %25 = load i32, ptr %1, align 4
  %26 = load i32, ptr %2, align 4
  %27 = icmp sge i32 %25, %26
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, ptr @.str.1, ptr @.str.2
  %30 = call i32 @puts(ptr noundef %29)
  br label %31

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31
  %33 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %34 = load i32, ptr %1, align 4
  %35 = load i32, ptr %2, align 4
  %36 = icmp sle i32 %34, %35
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, ptr @.str.1, ptr @.str.2
  %39 = call i32 @puts(ptr noundef %38)
  br label %40

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  %43 = load i32, ptr %1, align 4
  %44 = load i32, ptr %2, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, ptr @.str.1, ptr @.str.2
  %48 = call i32 @puts(ptr noundef %47)
  br label %49

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49
  %51 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %52 = load i32, ptr %1, align 4
  %53 = load i32, ptr %2, align 4
  %54 = icmp ne i32 %52, %53
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, ptr @.str.1, ptr @.str.2
  %57 = call i32 @puts(ptr noundef %56)
  br label %58

58:                                               ; preds = %50
  %59 = call i32 @puts(ptr noundef @.str.8)
  br label %60

60:                                               ; preds = %58
  %61 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %62 = load i32, ptr %3, align 4
  %63 = load i32, ptr %4, align 4
  %64 = icmp ult i32 %62, %63
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, ptr @.str.1, ptr @.str.2
  %67 = call i32 @puts(ptr noundef %66)
  br label %68

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68
  %70 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  %71 = load i32, ptr %3, align 4
  %72 = load i32, ptr %4, align 4
  %73 = icmp ugt i32 %71, %72
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, ptr @.str.1, ptr @.str.2
  %76 = call i32 @puts(ptr noundef %75)
  br label %77

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77
  %79 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  %80 = load i32, ptr %3, align 4
  %81 = load i32, ptr %4, align 4
  %82 = icmp uge i32 %80, %81
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, ptr @.str.1, ptr @.str.2
  %85 = call i32 @puts(ptr noundef %84)
  br label %86

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86
  %88 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  %89 = load i32, ptr %3, align 4
  %90 = load i32, ptr %4, align 4
  %91 = icmp ule i32 %89, %90
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, ptr @.str.1, ptr @.str.2
  %94 = call i32 @puts(ptr noundef %93)
  br label %95

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95
  %97 = call i32 (ptr, ...) @printf(ptr noundef @.str.13)
  %98 = load i32, ptr %3, align 4
  %99 = load i32, ptr %4, align 4
  %100 = icmp eq i32 %98, %99
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, ptr @.str.1, ptr @.str.2
  %103 = call i32 @puts(ptr noundef %102)
  br label %104

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %104
  %106 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  %107 = load i32, ptr %3, align 4
  %108 = load i32, ptr %4, align 4
  %109 = icmp ne i32 %107, %108
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, ptr @.str.1, ptr @.str.2
  %112 = call i32 @puts(ptr noundef %111)
  br label %113

113:                                              ; preds = %105
  %114 = call i32 @puts(ptr noundef @.str.8)
  br label %115

115:                                              ; preds = %113
  %116 = call i32 (ptr, ...) @printf(ptr noundef @.str.15)
  %117 = load i32, ptr %1, align 4
  %118 = load i32, ptr %1, align 4
  %119 = icmp slt i32 %117, %118
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, ptr @.str.1, ptr @.str.2
  %122 = call i32 @puts(ptr noundef %121)
  br label %123

123:                                              ; preds = %115
  br label %124

124:                                              ; preds = %123
  %125 = call i32 (ptr, ...) @printf(ptr noundef @.str.16)
  %126 = load i32, ptr %1, align 4
  %127 = load i32, ptr %1, align 4
  %128 = icmp sgt i32 %126, %127
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, ptr @.str.1, ptr @.str.2
  %131 = call i32 @puts(ptr noundef %130)
  br label %132

132:                                              ; preds = %124
  br label %133

133:                                              ; preds = %132
  %134 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  %135 = load i32, ptr %1, align 4
  %136 = load i32, ptr %1, align 4
  %137 = icmp sge i32 %135, %136
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, ptr @.str.1, ptr @.str.2
  %140 = call i32 @puts(ptr noundef %139)
  br label %141

141:                                              ; preds = %133
  br label %142

142:                                              ; preds = %141
  %143 = call i32 (ptr, ...) @printf(ptr noundef @.str.18)
  %144 = load i32, ptr %1, align 4
  %145 = load i32, ptr %1, align 4
  %146 = icmp sle i32 %144, %145
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, ptr @.str.1, ptr @.str.2
  %149 = call i32 @puts(ptr noundef %148)
  br label %150

150:                                              ; preds = %142
  br label %151

151:                                              ; preds = %150
  %152 = call i32 (ptr, ...) @printf(ptr noundef @.str.19)
  %153 = load i32, ptr %1, align 4
  %154 = load i32, ptr %1, align 4
  %155 = icmp eq i32 %153, %154
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, ptr @.str.1, ptr @.str.2
  %158 = call i32 @puts(ptr noundef %157)
  br label %159

159:                                              ; preds = %151
  br label %160

160:                                              ; preds = %159
  %161 = call i32 (ptr, ...) @printf(ptr noundef @.str.20)
  %162 = load i32, ptr %1, align 4
  %163 = load i32, ptr %1, align 4
  %164 = icmp ne i32 %162, %163
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, ptr @.str.1, ptr @.str.2
  %167 = call i32 @puts(ptr noundef %166)
  br label %168

168:                                              ; preds = %160
  %169 = call i32 @puts(ptr noundef @.str.8)
  br label %170

170:                                              ; preds = %168
  %171 = call i32 (ptr, ...) @printf(ptr noundef @.str.21)
  %172 = load i32, ptr %3, align 4
  %173 = load i32, ptr %3, align 4
  %174 = icmp ult i32 %172, %173
  %175 = zext i1 %174 to i64
  %176 = select i1 %174, ptr @.str.1, ptr @.str.2
  %177 = call i32 @puts(ptr noundef %176)
  br label %178

178:                                              ; preds = %170
  br label %179

179:                                              ; preds = %178
  %180 = call i32 (ptr, ...) @printf(ptr noundef @.str.22)
  %181 = load i32, ptr %3, align 4
  %182 = load i32, ptr %3, align 4
  %183 = icmp ugt i32 %181, %182
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, ptr @.str.1, ptr @.str.2
  %186 = call i32 @puts(ptr noundef %185)
  br label %187

187:                                              ; preds = %179
  br label %188

188:                                              ; preds = %187
  %189 = call i32 (ptr, ...) @printf(ptr noundef @.str.23)
  %190 = load i32, ptr %3, align 4
  %191 = load i32, ptr %3, align 4
  %192 = icmp uge i32 %190, %191
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, ptr @.str.1, ptr @.str.2
  %195 = call i32 @puts(ptr noundef %194)
  br label %196

196:                                              ; preds = %188
  br label %197

197:                                              ; preds = %196
  %198 = call i32 (ptr, ...) @printf(ptr noundef @.str.24)
  %199 = load i32, ptr %3, align 4
  %200 = load i32, ptr %3, align 4
  %201 = icmp ule i32 %199, %200
  %202 = zext i1 %201 to i64
  %203 = select i1 %201, ptr @.str.1, ptr @.str.2
  %204 = call i32 @puts(ptr noundef %203)
  br label %205

205:                                              ; preds = %197
  br label %206

206:                                              ; preds = %205
  %207 = call i32 (ptr, ...) @printf(ptr noundef @.str.25)
  %208 = load i32, ptr %3, align 4
  %209 = load i32, ptr %3, align 4
  %210 = icmp eq i32 %208, %209
  %211 = zext i1 %210 to i64
  %212 = select i1 %210, ptr @.str.1, ptr @.str.2
  %213 = call i32 @puts(ptr noundef %212)
  br label %214

214:                                              ; preds = %206
  br label %215

215:                                              ; preds = %214
  %216 = call i32 (ptr, ...) @printf(ptr noundef @.str.26)
  %217 = load i32, ptr %3, align 4
  %218 = load i32, ptr %3, align 4
  %219 = icmp ne i32 %217, %218
  %220 = zext i1 %219 to i64
  %221 = select i1 %219, ptr @.str.1, ptr @.str.2
  %222 = call i32 @puts(ptr noundef %221)
  br label %223

223:                                              ; preds = %215
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @puts(ptr noundef) #1

attributes #0 = { mustprogress noinline norecurse nounwind optnone sspstrong uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 16.0.6"}
