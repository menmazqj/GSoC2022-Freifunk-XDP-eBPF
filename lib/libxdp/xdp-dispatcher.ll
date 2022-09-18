; ModuleID = 'xdp-dispatcher.c'
source_filename = "xdp-dispatcher.c"
target datalayout = "e-m:e-p:64:64-i64:64-n32:64-S128"
target triple = "bpf"

%struct.xdp_dispatcher_config = type { i8, [10 x i32], [10 x i32] }
%struct.xdp_md = type { i32, i32, i32, i32, i32, i32 }

@conf = internal constant %struct.xdp_dispatcher_config zeroinitializer, align 4, !dbg !0
@_license = dso_local global [4 x i8] c"GPL\00", section "license", align 1, !dbg !15
@dispatcher_version = dso_local global [1 x i32]* null, section "xdp_metadata", align 8, !dbg !21
@llvm.used = appending global [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @_license, i32 0, i32 0), i8* bitcast ([1 x i32]** @dispatcher_version to i8*), i8* bitcast (i32 (%struct.xdp_md*)* @xdp_dispatcher to i8*), i8* bitcast (i32 (%struct.xdp_md*)* @xdp_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind
define dso_local i32 @prog0(%struct.xdp_md* readnone %0) local_unnamed_addr #0 !dbg !47 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.xdp_md* %0, metadata !60, metadata !DIExpression()), !dbg !63
  %3 = bitcast i32* %2 to i8*, !dbg !64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !64
  call void @llvm.dbg.declare(metadata i32* %2, metadata !61, metadata !DIExpression()), !dbg !65
  store volatile i32 31, i32* %2, align 4, !dbg !65, !tbaa !66
  %4 = icmp eq %struct.xdp_md* %0, null, !dbg !70
  br i1 %4, label %7, label %5, !dbg !72

5:                                                ; preds = %1
  %6 = load volatile i32, i32* %2, align 4, !dbg !73, !tbaa !66
  br label %7, !dbg !74

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ], !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !75
  ret i32 %8, !dbg !75
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: noinline nounwind
define dso_local i32 @prog1(%struct.xdp_md* readnone %0) local_unnamed_addr #0 !dbg !76 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.xdp_md* %0, metadata !78, metadata !DIExpression()), !dbg !80
  %3 = bitcast i32* %2 to i8*, !dbg !81
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !81
  call void @llvm.dbg.declare(metadata i32* %2, metadata !79, metadata !DIExpression()), !dbg !82
  store volatile i32 31, i32* %2, align 4, !dbg !82, !tbaa !66
  %4 = icmp eq %struct.xdp_md* %0, null, !dbg !83
  br i1 %4, label %7, label %5, !dbg !85

5:                                                ; preds = %1
  %6 = load volatile i32, i32* %2, align 4, !dbg !86, !tbaa !66
  br label %7, !dbg !87

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ], !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !88
  ret i32 %8, !dbg !88
}

; Function Attrs: noinline nounwind
define dso_local i32 @prog2(%struct.xdp_md* readnone %0) local_unnamed_addr #0 !dbg !89 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.xdp_md* %0, metadata !91, metadata !DIExpression()), !dbg !93
  %3 = bitcast i32* %2 to i8*, !dbg !94
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !94
  call void @llvm.dbg.declare(metadata i32* %2, metadata !92, metadata !DIExpression()), !dbg !95
  store volatile i32 31, i32* %2, align 4, !dbg !95, !tbaa !66
  %4 = icmp eq %struct.xdp_md* %0, null, !dbg !96
  br i1 %4, label %7, label %5, !dbg !98

5:                                                ; preds = %1
  %6 = load volatile i32, i32* %2, align 4, !dbg !99, !tbaa !66
  br label %7, !dbg !100

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ], !dbg !93
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !101
  ret i32 %8, !dbg !101
}

; Function Attrs: noinline nounwind
define dso_local i32 @prog3(%struct.xdp_md* readnone %0) local_unnamed_addr #0 !dbg !102 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.xdp_md* %0, metadata !104, metadata !DIExpression()), !dbg !106
  %3 = bitcast i32* %2 to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !107
  call void @llvm.dbg.declare(metadata i32* %2, metadata !105, metadata !DIExpression()), !dbg !108
  store volatile i32 31, i32* %2, align 4, !dbg !108, !tbaa !66
  %4 = icmp eq %struct.xdp_md* %0, null, !dbg !109
  br i1 %4, label %7, label %5, !dbg !111

5:                                                ; preds = %1
  %6 = load volatile i32, i32* %2, align 4, !dbg !112, !tbaa !66
  br label %7, !dbg !113

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ], !dbg !106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !114
  ret i32 %8, !dbg !114
}

; Function Attrs: noinline nounwind
define dso_local i32 @prog4(%struct.xdp_md* readnone %0) local_unnamed_addr #0 !dbg !115 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.xdp_md* %0, metadata !117, metadata !DIExpression()), !dbg !119
  %3 = bitcast i32* %2 to i8*, !dbg !120
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !120
  call void @llvm.dbg.declare(metadata i32* %2, metadata !118, metadata !DIExpression()), !dbg !121
  store volatile i32 31, i32* %2, align 4, !dbg !121, !tbaa !66
  %4 = icmp eq %struct.xdp_md* %0, null, !dbg !122
  br i1 %4, label %7, label %5, !dbg !124

5:                                                ; preds = %1
  %6 = load volatile i32, i32* %2, align 4, !dbg !125, !tbaa !66
  br label %7, !dbg !126

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ], !dbg !119
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !127
  ret i32 %8, !dbg !127
}

; Function Attrs: noinline nounwind
define dso_local i32 @prog5(%struct.xdp_md* readnone %0) local_unnamed_addr #0 !dbg !128 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.xdp_md* %0, metadata !130, metadata !DIExpression()), !dbg !132
  %3 = bitcast i32* %2 to i8*, !dbg !133
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !133
  call void @llvm.dbg.declare(metadata i32* %2, metadata !131, metadata !DIExpression()), !dbg !134
  store volatile i32 31, i32* %2, align 4, !dbg !134, !tbaa !66
  %4 = icmp eq %struct.xdp_md* %0, null, !dbg !135
  br i1 %4, label %7, label %5, !dbg !137

5:                                                ; preds = %1
  %6 = load volatile i32, i32* %2, align 4, !dbg !138, !tbaa !66
  br label %7, !dbg !139

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ], !dbg !132
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !140
  ret i32 %8, !dbg !140
}

; Function Attrs: noinline nounwind
define dso_local i32 @prog6(%struct.xdp_md* readnone %0) local_unnamed_addr #0 !dbg !141 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.xdp_md* %0, metadata !143, metadata !DIExpression()), !dbg !145
  %3 = bitcast i32* %2 to i8*, !dbg !146
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !146
  call void @llvm.dbg.declare(metadata i32* %2, metadata !144, metadata !DIExpression()), !dbg !147
  store volatile i32 31, i32* %2, align 4, !dbg !147, !tbaa !66
  %4 = icmp eq %struct.xdp_md* %0, null, !dbg !148
  br i1 %4, label %7, label %5, !dbg !150

5:                                                ; preds = %1
  %6 = load volatile i32, i32* %2, align 4, !dbg !151, !tbaa !66
  br label %7, !dbg !152

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ], !dbg !145
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !153
  ret i32 %8, !dbg !153
}

; Function Attrs: noinline nounwind
define dso_local i32 @prog7(%struct.xdp_md* readnone %0) local_unnamed_addr #0 !dbg !154 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.xdp_md* %0, metadata !156, metadata !DIExpression()), !dbg !158
  %3 = bitcast i32* %2 to i8*, !dbg !159
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !159
  call void @llvm.dbg.declare(metadata i32* %2, metadata !157, metadata !DIExpression()), !dbg !160
  store volatile i32 31, i32* %2, align 4, !dbg !160, !tbaa !66
  %4 = icmp eq %struct.xdp_md* %0, null, !dbg !161
  br i1 %4, label %7, label %5, !dbg !163

5:                                                ; preds = %1
  %6 = load volatile i32, i32* %2, align 4, !dbg !164, !tbaa !66
  br label %7, !dbg !165

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ], !dbg !158
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !166
  ret i32 %8, !dbg !166
}

; Function Attrs: noinline nounwind
define dso_local i32 @prog8(%struct.xdp_md* readnone %0) local_unnamed_addr #0 !dbg !167 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.xdp_md* %0, metadata !169, metadata !DIExpression()), !dbg !171
  %3 = bitcast i32* %2 to i8*, !dbg !172
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !172
  call void @llvm.dbg.declare(metadata i32* %2, metadata !170, metadata !DIExpression()), !dbg !173
  store volatile i32 31, i32* %2, align 4, !dbg !173, !tbaa !66
  %4 = icmp eq %struct.xdp_md* %0, null, !dbg !174
  br i1 %4, label %7, label %5, !dbg !176

5:                                                ; preds = %1
  %6 = load volatile i32, i32* %2, align 4, !dbg !177, !tbaa !66
  br label %7, !dbg !178

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ], !dbg !171
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !179
  ret i32 %8, !dbg !179
}

; Function Attrs: noinline nounwind
define dso_local i32 @prog9(%struct.xdp_md* readnone %0) local_unnamed_addr #0 !dbg !180 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.xdp_md* %0, metadata !182, metadata !DIExpression()), !dbg !184
  %3 = bitcast i32* %2 to i8*, !dbg !185
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !185
  call void @llvm.dbg.declare(metadata i32* %2, metadata !183, metadata !DIExpression()), !dbg !186
  store volatile i32 31, i32* %2, align 4, !dbg !186, !tbaa !66
  %4 = icmp eq %struct.xdp_md* %0, null, !dbg !187
  br i1 %4, label %7, label %5, !dbg !189

5:                                                ; preds = %1
  %6 = load volatile i32, i32* %2, align 4, !dbg !190, !tbaa !66
  br label %7, !dbg !191

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ], !dbg !184
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !192
  ret i32 %8, !dbg !192
}

; Function Attrs: noinline nounwind
define dso_local i32 @compat_test(%struct.xdp_md* readnone %0) local_unnamed_addr #0 !dbg !193 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.xdp_md* %0, metadata !195, metadata !DIExpression()), !dbg !197
  %3 = bitcast i32* %2 to i8*, !dbg !198
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !198
  call void @llvm.dbg.declare(metadata i32* %2, metadata !196, metadata !DIExpression()), !dbg !199
  store volatile i32 31, i32* %2, align 4, !dbg !199, !tbaa !66
  %4 = icmp eq %struct.xdp_md* %0, null, !dbg !200
  br i1 %4, label %7, label %5, !dbg !202

5:                                                ; preds = %1
  %6 = load volatile i32, i32* %2, align 4, !dbg !203, !tbaa !66
  br label %7, !dbg !204

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ], !dbg !197
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !205
  ret i32 %8, !dbg !205
}

; Function Attrs: nounwind
define dso_local i32 @xdp_dispatcher(%struct.xdp_md* %0) #3 section "xdp" !dbg !206 {
  call void @llvm.dbg.value(metadata %struct.xdp_md* %0, metadata !208, metadata !DIExpression()), !dbg !212
  %2 = load volatile i8, i8* getelementptr inbounds (%struct.xdp_dispatcher_config, %struct.xdp_dispatcher_config* @conf, i64 0, i32 0), align 4, !dbg !213, !tbaa !214
  call void @llvm.dbg.value(metadata i8 %2, metadata !209, metadata !DIExpression()), !dbg !212
  %3 = icmp eq i8 %2, 0, !dbg !216
  br i1 %3, label %86, label %4, !dbg !218

4:                                                ; preds = %1
  %5 = tail call i32 @prog0(%struct.xdp_md* %0), !dbg !219
  call void @llvm.dbg.value(metadata i32 %5, metadata !210, metadata !DIExpression()), !dbg !212
  %6 = shl nuw i32 1, %5, !dbg !220
  %7 = load volatile i32, i32* getelementptr inbounds (%struct.xdp_dispatcher_config, %struct.xdp_dispatcher_config* @conf, i64 0, i32 1, i64 0), align 4, !dbg !222, !tbaa !66
  %8 = and i32 %6, %7, !dbg !223
  %9 = icmp eq i32 %8, 0, !dbg !223
  br i1 %9, label %86, label %10, !dbg !224

10:                                               ; preds = %4
  %11 = icmp ult i8 %2, 2, !dbg !225
  br i1 %11, label %86, label %12, !dbg !227

12:                                               ; preds = %10
  %13 = tail call i32 @prog1(%struct.xdp_md* %0), !dbg !228
  call void @llvm.dbg.value(metadata i32 %13, metadata !210, metadata !DIExpression()), !dbg !212
  %14 = shl nuw i32 1, %13, !dbg !229
  %15 = load volatile i32, i32* getelementptr inbounds (%struct.xdp_dispatcher_config, %struct.xdp_dispatcher_config* @conf, i64 0, i32 1, i64 1), align 4, !dbg !231, !tbaa !66
  %16 = and i32 %14, %15, !dbg !232
  %17 = icmp eq i32 %16, 0, !dbg !232
  br i1 %17, label %86, label %18, !dbg !233

18:                                               ; preds = %12
  %19 = icmp ult i8 %2, 3, !dbg !234
  br i1 %19, label %86, label %20, !dbg !236

20:                                               ; preds = %18
  %21 = tail call i32 @prog2(%struct.xdp_md* %0), !dbg !237
  call void @llvm.dbg.value(metadata i32 %21, metadata !210, metadata !DIExpression()), !dbg !212
  %22 = shl nuw i32 1, %21, !dbg !238
  %23 = load volatile i32, i32* getelementptr inbounds (%struct.xdp_dispatcher_config, %struct.xdp_dispatcher_config* @conf, i64 0, i32 1, i64 2), align 4, !dbg !240, !tbaa !66
  %24 = and i32 %22, %23, !dbg !241
  %25 = icmp eq i32 %24, 0, !dbg !241
  br i1 %25, label %86, label %26, !dbg !242

26:                                               ; preds = %20
  %27 = icmp ult i8 %2, 4, !dbg !243
  br i1 %27, label %86, label %28, !dbg !245

28:                                               ; preds = %26
  %29 = tail call i32 @prog3(%struct.xdp_md* %0), !dbg !246
  call void @llvm.dbg.value(metadata i32 %29, metadata !210, metadata !DIExpression()), !dbg !212
  %30 = shl nuw i32 1, %29, !dbg !247
  %31 = load volatile i32, i32* getelementptr inbounds (%struct.xdp_dispatcher_config, %struct.xdp_dispatcher_config* @conf, i64 0, i32 1, i64 3), align 4, !dbg !249, !tbaa !66
  %32 = and i32 %30, %31, !dbg !250
  %33 = icmp eq i32 %32, 0, !dbg !250
  br i1 %33, label %86, label %34, !dbg !251

34:                                               ; preds = %28
  %35 = icmp ult i8 %2, 5, !dbg !252
  br i1 %35, label %86, label %36, !dbg !254

36:                                               ; preds = %34
  %37 = tail call i32 @prog4(%struct.xdp_md* %0), !dbg !255
  call void @llvm.dbg.value(metadata i32 %37, metadata !210, metadata !DIExpression()), !dbg !212
  %38 = shl nuw i32 1, %37, !dbg !256
  %39 = load volatile i32, i32* getelementptr inbounds (%struct.xdp_dispatcher_config, %struct.xdp_dispatcher_config* @conf, i64 0, i32 1, i64 4), align 4, !dbg !258, !tbaa !66
  %40 = and i32 %38, %39, !dbg !259
  %41 = icmp eq i32 %40, 0, !dbg !259
  br i1 %41, label %86, label %42, !dbg !260

42:                                               ; preds = %36
  %43 = icmp ult i8 %2, 6, !dbg !261
  br i1 %43, label %86, label %44, !dbg !263

44:                                               ; preds = %42
  %45 = tail call i32 @prog5(%struct.xdp_md* %0), !dbg !264
  call void @llvm.dbg.value(metadata i32 %45, metadata !210, metadata !DIExpression()), !dbg !212
  %46 = shl nuw i32 1, %45, !dbg !265
  %47 = load volatile i32, i32* getelementptr inbounds (%struct.xdp_dispatcher_config, %struct.xdp_dispatcher_config* @conf, i64 0, i32 1, i64 5), align 4, !dbg !267, !tbaa !66
  %48 = and i32 %46, %47, !dbg !268
  %49 = icmp eq i32 %48, 0, !dbg !268
  br i1 %49, label %86, label %50, !dbg !269

50:                                               ; preds = %44
  %51 = icmp ult i8 %2, 7, !dbg !270
  br i1 %51, label %86, label %52, !dbg !272

52:                                               ; preds = %50
  %53 = tail call i32 @prog6(%struct.xdp_md* %0), !dbg !273
  call void @llvm.dbg.value(metadata i32 %53, metadata !210, metadata !DIExpression()), !dbg !212
  %54 = shl nuw i32 1, %53, !dbg !274
  %55 = load volatile i32, i32* getelementptr inbounds (%struct.xdp_dispatcher_config, %struct.xdp_dispatcher_config* @conf, i64 0, i32 1, i64 6), align 4, !dbg !276, !tbaa !66
  %56 = and i32 %54, %55, !dbg !277
  %57 = icmp eq i32 %56, 0, !dbg !277
  br i1 %57, label %86, label %58, !dbg !278

58:                                               ; preds = %52
  %59 = icmp ult i8 %2, 8, !dbg !279
  br i1 %59, label %86, label %60, !dbg !281

60:                                               ; preds = %58
  %61 = tail call i32 @prog7(%struct.xdp_md* %0), !dbg !282
  call void @llvm.dbg.value(metadata i32 %61, metadata !210, metadata !DIExpression()), !dbg !212
  %62 = shl nuw i32 1, %61, !dbg !283
  %63 = load volatile i32, i32* getelementptr inbounds (%struct.xdp_dispatcher_config, %struct.xdp_dispatcher_config* @conf, i64 0, i32 1, i64 7), align 4, !dbg !285, !tbaa !66
  %64 = and i32 %62, %63, !dbg !286
  %65 = icmp eq i32 %64, 0, !dbg !286
  br i1 %65, label %86, label %66, !dbg !287

66:                                               ; preds = %60
  %67 = icmp ult i8 %2, 9, !dbg !288
  br i1 %67, label %86, label %68, !dbg !290

68:                                               ; preds = %66
  %69 = tail call i32 @prog8(%struct.xdp_md* %0), !dbg !291
  call void @llvm.dbg.value(metadata i32 %69, metadata !210, metadata !DIExpression()), !dbg !212
  %70 = shl nuw i32 1, %69, !dbg !292
  %71 = load volatile i32, i32* getelementptr inbounds (%struct.xdp_dispatcher_config, %struct.xdp_dispatcher_config* @conf, i64 0, i32 1, i64 8), align 4, !dbg !294, !tbaa !66
  %72 = and i32 %70, %71, !dbg !295
  %73 = icmp eq i32 %72, 0, !dbg !295
  br i1 %73, label %86, label %74, !dbg !296

74:                                               ; preds = %68
  %75 = icmp ult i8 %2, 10, !dbg !297
  br i1 %75, label %86, label %76, !dbg !299

76:                                               ; preds = %74
  %77 = tail call i32 @prog9(%struct.xdp_md* %0), !dbg !300
  call void @llvm.dbg.value(metadata i32 %77, metadata !210, metadata !DIExpression()), !dbg !212
  %78 = shl nuw i32 1, %77, !dbg !301
  %79 = load volatile i32, i32* getelementptr inbounds (%struct.xdp_dispatcher_config, %struct.xdp_dispatcher_config* @conf, i64 0, i32 1, i64 9), align 4, !dbg !303, !tbaa !66
  %80 = and i32 %78, %79, !dbg !304
  %81 = icmp eq i32 %80, 0, !dbg !304
  br i1 %81, label %86, label %82, !dbg !305

82:                                               ; preds = %76
  %83 = icmp ult i8 %2, 11, !dbg !306
  br i1 %83, label %86, label %84, !dbg !308

84:                                               ; preds = %82
  %85 = tail call i32 @compat_test(%struct.xdp_md* %0), !dbg !309
  call void @llvm.dbg.value(metadata i32 %85, metadata !210, metadata !DIExpression()), !dbg !212
  br label %86, !dbg !310

86:                                               ; preds = %84, %1, %10, %18, %26, %34, %42, %50, %58, %66, %74, %82, %76, %68, %60, %52, %44, %36, %28, %20, %12, %4
  %87 = phi i32 [ %5, %4 ], [ %13, %12 ], [ %21, %20 ], [ %29, %28 ], [ %37, %36 ], [ %45, %44 ], [ %53, %52 ], [ %61, %60 ], [ %69, %68 ], [ %77, %76 ], [ 2, %82 ], [ 2, %74 ], [ 2, %66 ], [ 2, %58 ], [ 2, %50 ], [ 2, %42 ], [ 2, %34 ], [ 2, %26 ], [ 2, %18 ], [ 2, %10 ], [ 2, %1 ], [ 2, %84 ], !dbg !212
  ret i32 %87, !dbg !311
}

; Function Attrs: norecurse nounwind readnone
define dso_local i32 @xdp_pass(%struct.xdp_md* nocapture readnone %0) #4 section "xdp" !dbg !312 {
  call void @llvm.dbg.value(metadata %struct.xdp_md* undef, metadata !314, metadata !DIExpression()), !dbg !315
  ret i32 2, !dbg !316
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "conf", scope: !2, file: !3, line: 21, type: !28, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !14, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "xdp-dispatcher.c", directory: "/home/menma/GSoC2022-Freifunk-XDP-eBPF/lib/libxdp")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xdp_action", file: !6, line: 5497, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../headers/linux/bpf.h", directory: "/home/menma/GSoC2022-Freifunk-XDP-eBPF/lib/libxdp")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "XDP_ABORTED", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "XDP_DROP", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "XDP_PASS", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "XDP_TX", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "XDP_REDIRECT", value: 4, isUnsigned: true)
!14 = !{!15, !21, !0}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "_license", scope: !2, file: !3, line: 200, type: !17, isLocal: false, isDefinition: true)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32, elements: !19)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !{!20}
!20 = !DISubrange(count: 4)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "dispatcher_version", scope: !2, file: !3, line: 201, type: !23, isLocal: false, isDefinition: true)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 32, elements: !26)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !{!27}
!27 = !DISubrange(count: 1)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdp_dispatcher_config", file: !31, line: 21, size: 672, elements: !32)
!31 = !DIFile(filename: "../../headers/xdp/prog_dispatcher.h", directory: "/home/menma/GSoC2022-Freifunk-XDP-eBPF/lib/libxdp")
!32 = !{!33, !37, !42}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "num_progs_enabled", scope: !30, file: !31, line: 22, baseType: !34, size: 8)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !35, line: 21, baseType: !36)
!35 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "")
!36 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "chain_call_actions", scope: !30, file: !31, line: 23, baseType: !38, size: 320, offset: 32)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 320, elements: !40)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !35, line: 27, baseType: !7)
!40 = !{!41}
!41 = !DISubrange(count: 10)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "run_prios", scope: !30, file: !31, line: 24, baseType: !38, size: 320, offset: 352)
!43 = !{i32 7, !"Dwarf Version", i32 4}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"wchar_size", i32 4}
!46 = !{!"clang version 10.0.0-4ubuntu1 "}
!47 = distinct !DISubprogram(name: "prog0", scope: !3, file: !3, line: 27, type: !48, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !59)
!48 = !DISubroutineType(types: !49)
!49 = !{!25, !50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdp_md", file: !6, line: 5508, size: 192, elements: !52)
!52 = !{!53, !54, !55, !56, !57, !58}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !51, file: !6, line: 5509, baseType: !39, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "data_end", scope: !51, file: !6, line: 5510, baseType: !39, size: 32, offset: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "data_meta", scope: !51, file: !6, line: 5511, baseType: !39, size: 32, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "ingress_ifindex", scope: !51, file: !6, line: 5513, baseType: !39, size: 32, offset: 96)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "rx_queue_index", scope: !51, file: !6, line: 5514, baseType: !39, size: 32, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "egress_ifindex", scope: !51, file: !6, line: 5516, baseType: !39, size: 32, offset: 160)
!59 = !{!60, !61}
!60 = !DILocalVariable(name: "ctx", arg: 1, scope: !47, file: !3, line: 27, type: !50)
!61 = !DILocalVariable(name: "ret", scope: !47, file: !3, line: 28, type: !62)
!62 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!63 = !DILocation(line: 0, scope: !47)
!64 = !DILocation(line: 28, column: 9, scope: !47)
!65 = !DILocation(line: 28, column: 22, scope: !47)
!66 = !{!67, !67, i64 0}
!67 = !{!"int", !68, i64 0}
!68 = !{!"omnipotent char", !69, i64 0}
!69 = !{!"Simple C/C++ TBAA"}
!70 = !DILocation(line: 30, column: 14, scope: !71)
!71 = distinct !DILexicalBlock(scope: !47, file: !3, line: 30, column: 13)
!72 = !DILocation(line: 30, column: 13, scope: !47)
!73 = !DILocation(line: 32, column: 16, scope: !47)
!74 = !DILocation(line: 32, column: 9, scope: !47)
!75 = !DILocation(line: 33, column: 1, scope: !47)
!76 = distinct !DISubprogram(name: "prog1", scope: !3, file: !3, line: 35, type: !48, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !77)
!77 = !{!78, !79}
!78 = !DILocalVariable(name: "ctx", arg: 1, scope: !76, file: !3, line: 35, type: !50)
!79 = !DILocalVariable(name: "ret", scope: !76, file: !3, line: 36, type: !62)
!80 = !DILocation(line: 0, scope: !76)
!81 = !DILocation(line: 36, column: 9, scope: !76)
!82 = !DILocation(line: 36, column: 22, scope: !76)
!83 = !DILocation(line: 38, column: 14, scope: !84)
!84 = distinct !DILexicalBlock(scope: !76, file: !3, line: 38, column: 13)
!85 = !DILocation(line: 38, column: 13, scope: !76)
!86 = !DILocation(line: 40, column: 16, scope: !76)
!87 = !DILocation(line: 40, column: 9, scope: !76)
!88 = !DILocation(line: 41, column: 1, scope: !76)
!89 = distinct !DISubprogram(name: "prog2", scope: !3, file: !3, line: 43, type: !48, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !90)
!90 = !{!91, !92}
!91 = !DILocalVariable(name: "ctx", arg: 1, scope: !89, file: !3, line: 43, type: !50)
!92 = !DILocalVariable(name: "ret", scope: !89, file: !3, line: 44, type: !62)
!93 = !DILocation(line: 0, scope: !89)
!94 = !DILocation(line: 44, column: 9, scope: !89)
!95 = !DILocation(line: 44, column: 22, scope: !89)
!96 = !DILocation(line: 46, column: 14, scope: !97)
!97 = distinct !DILexicalBlock(scope: !89, file: !3, line: 46, column: 13)
!98 = !DILocation(line: 46, column: 13, scope: !89)
!99 = !DILocation(line: 48, column: 16, scope: !89)
!100 = !DILocation(line: 48, column: 9, scope: !89)
!101 = !DILocation(line: 49, column: 1, scope: !89)
!102 = distinct !DISubprogram(name: "prog3", scope: !3, file: !3, line: 51, type: !48, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !103)
!103 = !{!104, !105}
!104 = !DILocalVariable(name: "ctx", arg: 1, scope: !102, file: !3, line: 51, type: !50)
!105 = !DILocalVariable(name: "ret", scope: !102, file: !3, line: 52, type: !62)
!106 = !DILocation(line: 0, scope: !102)
!107 = !DILocation(line: 52, column: 9, scope: !102)
!108 = !DILocation(line: 52, column: 22, scope: !102)
!109 = !DILocation(line: 54, column: 14, scope: !110)
!110 = distinct !DILexicalBlock(scope: !102, file: !3, line: 54, column: 13)
!111 = !DILocation(line: 54, column: 13, scope: !102)
!112 = !DILocation(line: 56, column: 16, scope: !102)
!113 = !DILocation(line: 56, column: 9, scope: !102)
!114 = !DILocation(line: 57, column: 1, scope: !102)
!115 = distinct !DISubprogram(name: "prog4", scope: !3, file: !3, line: 59, type: !48, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !116)
!116 = !{!117, !118}
!117 = !DILocalVariable(name: "ctx", arg: 1, scope: !115, file: !3, line: 59, type: !50)
!118 = !DILocalVariable(name: "ret", scope: !115, file: !3, line: 60, type: !62)
!119 = !DILocation(line: 0, scope: !115)
!120 = !DILocation(line: 60, column: 9, scope: !115)
!121 = !DILocation(line: 60, column: 22, scope: !115)
!122 = !DILocation(line: 62, column: 14, scope: !123)
!123 = distinct !DILexicalBlock(scope: !115, file: !3, line: 62, column: 13)
!124 = !DILocation(line: 62, column: 13, scope: !115)
!125 = !DILocation(line: 64, column: 16, scope: !115)
!126 = !DILocation(line: 64, column: 9, scope: !115)
!127 = !DILocation(line: 65, column: 1, scope: !115)
!128 = distinct !DISubprogram(name: "prog5", scope: !3, file: !3, line: 67, type: !48, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !129)
!129 = !{!130, !131}
!130 = !DILocalVariable(name: "ctx", arg: 1, scope: !128, file: !3, line: 67, type: !50)
!131 = !DILocalVariable(name: "ret", scope: !128, file: !3, line: 68, type: !62)
!132 = !DILocation(line: 0, scope: !128)
!133 = !DILocation(line: 68, column: 9, scope: !128)
!134 = !DILocation(line: 68, column: 22, scope: !128)
!135 = !DILocation(line: 70, column: 14, scope: !136)
!136 = distinct !DILexicalBlock(scope: !128, file: !3, line: 70, column: 13)
!137 = !DILocation(line: 70, column: 13, scope: !128)
!138 = !DILocation(line: 72, column: 16, scope: !128)
!139 = !DILocation(line: 72, column: 9, scope: !128)
!140 = !DILocation(line: 73, column: 1, scope: !128)
!141 = distinct !DISubprogram(name: "prog6", scope: !3, file: !3, line: 75, type: !48, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !142)
!142 = !{!143, !144}
!143 = !DILocalVariable(name: "ctx", arg: 1, scope: !141, file: !3, line: 75, type: !50)
!144 = !DILocalVariable(name: "ret", scope: !141, file: !3, line: 76, type: !62)
!145 = !DILocation(line: 0, scope: !141)
!146 = !DILocation(line: 76, column: 9, scope: !141)
!147 = !DILocation(line: 76, column: 22, scope: !141)
!148 = !DILocation(line: 78, column: 14, scope: !149)
!149 = distinct !DILexicalBlock(scope: !141, file: !3, line: 78, column: 13)
!150 = !DILocation(line: 78, column: 13, scope: !141)
!151 = !DILocation(line: 80, column: 16, scope: !141)
!152 = !DILocation(line: 80, column: 9, scope: !141)
!153 = !DILocation(line: 81, column: 1, scope: !141)
!154 = distinct !DISubprogram(name: "prog7", scope: !3, file: !3, line: 83, type: !48, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !155)
!155 = !{!156, !157}
!156 = !DILocalVariable(name: "ctx", arg: 1, scope: !154, file: !3, line: 83, type: !50)
!157 = !DILocalVariable(name: "ret", scope: !154, file: !3, line: 84, type: !62)
!158 = !DILocation(line: 0, scope: !154)
!159 = !DILocation(line: 84, column: 9, scope: !154)
!160 = !DILocation(line: 84, column: 22, scope: !154)
!161 = !DILocation(line: 86, column: 14, scope: !162)
!162 = distinct !DILexicalBlock(scope: !154, file: !3, line: 86, column: 13)
!163 = !DILocation(line: 86, column: 13, scope: !154)
!164 = !DILocation(line: 88, column: 16, scope: !154)
!165 = !DILocation(line: 88, column: 9, scope: !154)
!166 = !DILocation(line: 89, column: 1, scope: !154)
!167 = distinct !DISubprogram(name: "prog8", scope: !3, file: !3, line: 91, type: !48, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !168)
!168 = !{!169, !170}
!169 = !DILocalVariable(name: "ctx", arg: 1, scope: !167, file: !3, line: 91, type: !50)
!170 = !DILocalVariable(name: "ret", scope: !167, file: !3, line: 92, type: !62)
!171 = !DILocation(line: 0, scope: !167)
!172 = !DILocation(line: 92, column: 9, scope: !167)
!173 = !DILocation(line: 92, column: 22, scope: !167)
!174 = !DILocation(line: 94, column: 14, scope: !175)
!175 = distinct !DILexicalBlock(scope: !167, file: !3, line: 94, column: 13)
!176 = !DILocation(line: 94, column: 13, scope: !167)
!177 = !DILocation(line: 96, column: 16, scope: !167)
!178 = !DILocation(line: 96, column: 9, scope: !167)
!179 = !DILocation(line: 97, column: 1, scope: !167)
!180 = distinct !DISubprogram(name: "prog9", scope: !3, file: !3, line: 99, type: !48, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !181)
!181 = !{!182, !183}
!182 = !DILocalVariable(name: "ctx", arg: 1, scope: !180, file: !3, line: 99, type: !50)
!183 = !DILocalVariable(name: "ret", scope: !180, file: !3, line: 100, type: !62)
!184 = !DILocation(line: 0, scope: !180)
!185 = !DILocation(line: 100, column: 9, scope: !180)
!186 = !DILocation(line: 100, column: 22, scope: !180)
!187 = !DILocation(line: 102, column: 14, scope: !188)
!188 = distinct !DILexicalBlock(scope: !180, file: !3, line: 102, column: 13)
!189 = !DILocation(line: 102, column: 13, scope: !180)
!190 = !DILocation(line: 104, column: 16, scope: !180)
!191 = !DILocation(line: 104, column: 9, scope: !180)
!192 = !DILocation(line: 105, column: 1, scope: !180)
!193 = distinct !DISubprogram(name: "compat_test", scope: !3, file: !3, line: 109, type: !48, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !194)
!194 = !{!195, !196}
!195 = !DILocalVariable(name: "ctx", arg: 1, scope: !193, file: !3, line: 109, type: !50)
!196 = !DILocalVariable(name: "ret", scope: !193, file: !3, line: 110, type: !62)
!197 = !DILocation(line: 0, scope: !193)
!198 = !DILocation(line: 110, column: 9, scope: !193)
!199 = !DILocation(line: 110, column: 22, scope: !193)
!200 = !DILocation(line: 112, column: 14, scope: !201)
!201 = distinct !DILexicalBlock(scope: !193, file: !3, line: 112, column: 13)
!202 = !DILocation(line: 112, column: 13, scope: !193)
!203 = !DILocation(line: 114, column: 16, scope: !193)
!204 = !DILocation(line: 114, column: 9, scope: !193)
!205 = !DILocation(line: 115, column: 1, scope: !193)
!206 = distinct !DISubprogram(name: "xdp_dispatcher", scope: !3, file: !3, line: 119, type: !48, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !207)
!207 = !{!208, !209, !210, !211}
!208 = !DILocalVariable(name: "ctx", arg: 1, scope: !206, file: !3, line: 119, type: !50)
!209 = !DILocalVariable(name: "num_progs_enabled", scope: !206, file: !3, line: 121, type: !34)
!210 = !DILocalVariable(name: "ret", scope: !206, file: !3, line: 122, type: !25)
!211 = !DILabel(scope: !206, name: "out", file: !3, line: 190)
!212 = !DILocation(line: 0, scope: !206)
!213 = !DILocation(line: 121, column: 39, scope: !206)
!214 = !{!215, !68, i64 0}
!215 = !{!"xdp_dispatcher_config", !68, i64 0, !68, i64 4, !68, i64 44}
!216 = !DILocation(line: 124, column: 31, scope: !217)
!217 = distinct !DILexicalBlock(scope: !206, file: !3, line: 124, column: 13)
!218 = !DILocation(line: 124, column: 13, scope: !206)
!219 = !DILocation(line: 126, column: 15, scope: !206)
!220 = !DILocation(line: 127, column: 19, scope: !221)
!221 = distinct !DILexicalBlock(scope: !206, file: !3, line: 127, column: 13)
!222 = !DILocation(line: 127, column: 29, scope: !221)
!223 = !DILocation(line: 127, column: 27, scope: !221)
!224 = !DILocation(line: 127, column: 13, scope: !206)
!225 = !DILocation(line: 130, column: 31, scope: !226)
!226 = distinct !DILexicalBlock(scope: !206, file: !3, line: 130, column: 13)
!227 = !DILocation(line: 130, column: 13, scope: !206)
!228 = !DILocation(line: 132, column: 15, scope: !206)
!229 = !DILocation(line: 133, column: 19, scope: !230)
!230 = distinct !DILexicalBlock(scope: !206, file: !3, line: 133, column: 13)
!231 = !DILocation(line: 133, column: 29, scope: !230)
!232 = !DILocation(line: 133, column: 27, scope: !230)
!233 = !DILocation(line: 133, column: 13, scope: !206)
!234 = !DILocation(line: 136, column: 31, scope: !235)
!235 = distinct !DILexicalBlock(scope: !206, file: !3, line: 136, column: 13)
!236 = !DILocation(line: 136, column: 13, scope: !206)
!237 = !DILocation(line: 138, column: 15, scope: !206)
!238 = !DILocation(line: 139, column: 19, scope: !239)
!239 = distinct !DILexicalBlock(scope: !206, file: !3, line: 139, column: 13)
!240 = !DILocation(line: 139, column: 29, scope: !239)
!241 = !DILocation(line: 139, column: 27, scope: !239)
!242 = !DILocation(line: 139, column: 13, scope: !206)
!243 = !DILocation(line: 142, column: 31, scope: !244)
!244 = distinct !DILexicalBlock(scope: !206, file: !3, line: 142, column: 13)
!245 = !DILocation(line: 142, column: 13, scope: !206)
!246 = !DILocation(line: 144, column: 15, scope: !206)
!247 = !DILocation(line: 145, column: 19, scope: !248)
!248 = distinct !DILexicalBlock(scope: !206, file: !3, line: 145, column: 13)
!249 = !DILocation(line: 145, column: 29, scope: !248)
!250 = !DILocation(line: 145, column: 27, scope: !248)
!251 = !DILocation(line: 145, column: 13, scope: !206)
!252 = !DILocation(line: 148, column: 31, scope: !253)
!253 = distinct !DILexicalBlock(scope: !206, file: !3, line: 148, column: 13)
!254 = !DILocation(line: 148, column: 13, scope: !206)
!255 = !DILocation(line: 150, column: 15, scope: !206)
!256 = !DILocation(line: 151, column: 19, scope: !257)
!257 = distinct !DILexicalBlock(scope: !206, file: !3, line: 151, column: 13)
!258 = !DILocation(line: 151, column: 29, scope: !257)
!259 = !DILocation(line: 151, column: 27, scope: !257)
!260 = !DILocation(line: 151, column: 13, scope: !206)
!261 = !DILocation(line: 154, column: 31, scope: !262)
!262 = distinct !DILexicalBlock(scope: !206, file: !3, line: 154, column: 13)
!263 = !DILocation(line: 154, column: 13, scope: !206)
!264 = !DILocation(line: 156, column: 15, scope: !206)
!265 = !DILocation(line: 157, column: 19, scope: !266)
!266 = distinct !DILexicalBlock(scope: !206, file: !3, line: 157, column: 13)
!267 = !DILocation(line: 157, column: 29, scope: !266)
!268 = !DILocation(line: 157, column: 27, scope: !266)
!269 = !DILocation(line: 157, column: 13, scope: !206)
!270 = !DILocation(line: 160, column: 31, scope: !271)
!271 = distinct !DILexicalBlock(scope: !206, file: !3, line: 160, column: 13)
!272 = !DILocation(line: 160, column: 13, scope: !206)
!273 = !DILocation(line: 162, column: 15, scope: !206)
!274 = !DILocation(line: 163, column: 19, scope: !275)
!275 = distinct !DILexicalBlock(scope: !206, file: !3, line: 163, column: 13)
!276 = !DILocation(line: 163, column: 29, scope: !275)
!277 = !DILocation(line: 163, column: 27, scope: !275)
!278 = !DILocation(line: 163, column: 13, scope: !206)
!279 = !DILocation(line: 166, column: 31, scope: !280)
!280 = distinct !DILexicalBlock(scope: !206, file: !3, line: 166, column: 13)
!281 = !DILocation(line: 166, column: 13, scope: !206)
!282 = !DILocation(line: 168, column: 15, scope: !206)
!283 = !DILocation(line: 169, column: 19, scope: !284)
!284 = distinct !DILexicalBlock(scope: !206, file: !3, line: 169, column: 13)
!285 = !DILocation(line: 169, column: 29, scope: !284)
!286 = !DILocation(line: 169, column: 27, scope: !284)
!287 = !DILocation(line: 169, column: 13, scope: !206)
!288 = !DILocation(line: 172, column: 31, scope: !289)
!289 = distinct !DILexicalBlock(scope: !206, file: !3, line: 172, column: 13)
!290 = !DILocation(line: 172, column: 13, scope: !206)
!291 = !DILocation(line: 174, column: 15, scope: !206)
!292 = !DILocation(line: 175, column: 19, scope: !293)
!293 = distinct !DILexicalBlock(scope: !206, file: !3, line: 175, column: 13)
!294 = !DILocation(line: 175, column: 29, scope: !293)
!295 = !DILocation(line: 175, column: 27, scope: !293)
!296 = !DILocation(line: 175, column: 13, scope: !206)
!297 = !DILocation(line: 178, column: 31, scope: !298)
!298 = distinct !DILexicalBlock(scope: !206, file: !3, line: 178, column: 13)
!299 = !DILocation(line: 178, column: 13, scope: !206)
!300 = !DILocation(line: 180, column: 15, scope: !206)
!301 = !DILocation(line: 181, column: 19, scope: !302)
!302 = distinct !DILexicalBlock(scope: !206, file: !3, line: 181, column: 13)
!303 = !DILocation(line: 181, column: 29, scope: !302)
!304 = !DILocation(line: 181, column: 27, scope: !302)
!305 = !DILocation(line: 181, column: 13, scope: !206)
!306 = !DILocation(line: 187, column: 31, scope: !307)
!307 = distinct !DILexicalBlock(scope: !206, file: !3, line: 187, column: 13)
!308 = !DILocation(line: 187, column: 13, scope: !206)
!309 = !DILocation(line: 189, column: 15, scope: !206)
!310 = !DILocation(line: 189, column: 9, scope: !206)
!311 = !DILocation(line: 192, column: 1, scope: !206)
!312 = distinct !DISubprogram(name: "xdp_pass", scope: !3, file: !3, line: 195, type: !48, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !313)
!313 = !{!314}
!314 = !DILocalVariable(name: "ctx", arg: 1, scope: !312, file: !3, line: 195, type: !50)
!315 = !DILocation(line: 0, scope: !312)
!316 = !DILocation(line: 197, column: 9, scope: !312)
