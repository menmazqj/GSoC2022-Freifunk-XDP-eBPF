; ModuleID = 'xdpmon_xdp.c'
source_filename = "xdpmon_xdp.c"
target datalayout = "e-m:e-p:64:64-i64:64-n32:64-S128"
target triple = "bpf"

%struct.anon = type { [2 x i32]*, [2 x i32]*, i32*, i64* }
%struct.trace_configuration = type { i32, i32, i32 }
%struct.xdp_md = type { i32, i32, i32, i32, i32, i32 }

@xdpmon_array_map = dso_local global %struct.anon zeroinitializer, section ".maps", align 8, !dbg !0
@_license = dso_local global [4 x i8] c"GPL\00", section "license", align 1, !dbg !18
@trace_cfg = dso_local global %struct.trace_configuration zeroinitializer, section ".data", align 4, !dbg !24
@llvm.used = appending global [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @_license, i32 0, i32 0), i8* bitcast (%struct.trace_configuration* @trace_cfg to i8*), i8* bitcast (%struct.anon* @xdpmon_array_map to i8*), i8* bitcast (i32 (%struct.xdp_md*)* @xdpmon_prog to i8*)], section "llvm.metadata"

; Function Attrs: nounwind
define dso_local i32 @xdpmon_prog(%struct.xdp_md* nocapture readonly %0) #0 section "xdpmon_sec" !dbg !60 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.xdp_md* %0, metadata !73, metadata !DIExpression()), !dbg !84
  %3 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %0, i64 0, i32 1, !dbg !85
  %4 = load i32, i32* %3, align 4, !dbg !85, !tbaa !86
  %5 = zext i32 %4 to i64, !dbg !91
  %6 = inttoptr i64 %5 to i8*, !dbg !92
  call void @llvm.dbg.value(metadata i8* %6, metadata !74, metadata !DIExpression()), !dbg !84
  %7 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %0, i64 0, i32 0, !dbg !93
  %8 = load i32, i32* %7, align 4, !dbg !93, !tbaa !94
  %9 = zext i32 %8 to i64, !dbg !95
  %10 = inttoptr i64 %9 to i8*, !dbg !96
  call void @llvm.dbg.value(metadata i8* %10, metadata !75, metadata !DIExpression()), !dbg !84
  %11 = bitcast i32* %2 to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #3, !dbg !97
  call void @llvm.dbg.value(metadata i32 0, metadata !82, metadata !DIExpression()), !dbg !84
  store i32 0, i32* %2, align 4, !dbg !98, !tbaa !99
  %12 = icmp ult i8* %10, %6, !dbg !100
  br i1 %12, label %13, label %25, !dbg !102

13:                                               ; preds = %1
  call void @llvm.dbg.value(metadata i32* %2, metadata !82, metadata !DIExpression(DW_OP_deref)), !dbg !84
  %14 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon* @xdpmon_array_map to i8*), i8* nonnull %11) #3, !dbg !103
  call void @llvm.dbg.value(metadata i8* %14, metadata !76, metadata !DIExpression()), !dbg !84
  %15 = icmp eq i8* %14, null, !dbg !104
  br i1 %15, label %25, label %16, !dbg !106

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8* %14, metadata !76, metadata !DIExpression()), !dbg !84
  %17 = sub i32 %4, %8, !dbg !107
  call void @llvm.dbg.value(metadata i32 %17, metadata !83, metadata !DIExpression()), !dbg !84
  %18 = getelementptr inbounds i8, i8* %14, i64 4, !dbg !108
  %19 = bitcast i8* %18 to i32*, !dbg !108
  %20 = load i32, i32* %19, align 4, !dbg !109, !tbaa !110
  %21 = add i32 %17, %20, !dbg !109
  store i32 %21, i32* %19, align 4, !dbg !109, !tbaa !110
  %22 = bitcast i8* %14 to i32*, !dbg !112
  %23 = load i32, i32* %22, align 4, !dbg !113, !tbaa !114
  %24 = add i32 %23, 1, !dbg !113
  store i32 %24, i32* %22, align 4, !dbg !113, !tbaa !114
  br label %25

25:                                               ; preds = %13, %1, %16
  %26 = phi i32 [ 2, %16 ], [ 2, %1 ], [ 0, %13 ], !dbg !84
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #3, !dbg !115
  ret i32 %26, !dbg !115
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!56, !57, !58}
!llvm.ident = !{!59}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xdpmon_array_map", scope: !2, file: !3, line: 34, type: !42, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !14, globals: !17, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "xdpmon_xdp.c", directory: "/home/menma/xdp-tools/xdp-mon")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xdp_action", file: !6, line: 5497, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../lib/../headers/linux/bpf.h", directory: "/home/menma/xdp-tools/xdp-mon")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "XDP_ABORTED", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "XDP_DROP", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "XDP_PASS", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "XDP_TX", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "XDP_REDIRECT", value: 4, isUnsigned: true)
!14 = !{!15, !16}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!17 = !{!18, !0, !24, !34}
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "_license", scope: !2, file: !3, line: 77, type: !20, isLocal: false, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 32, elements: !22)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !{!23}
!23 = !DISubrange(count: 4)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "trace_cfg", scope: !2, file: !3, line: 40, type: !26, isLocal: false, isDefinition: true)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_configuration", file: !27, line: 25, size: 96, elements: !28)
!27 = !DIFile(filename: "./xdpmon.h", directory: "/home/menma/xdp-tools/xdp-mon")
!28 = !{!29, !32, !33}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "capture_if_ifindex", scope: !26, file: !27, line: 26, baseType: !30, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !31, line: 27, baseType: !7)
!31 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "")
!32 = !DIDerivedType(tag: DW_TAG_member, name: "capture_snaplen", scope: !26, file: !27, line: 27, baseType: !30, size: 32, offset: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "capture_prog_index", scope: !26, file: !27, line: 28, baseType: !30, size: 32, offset: 64)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "bpf_map_lookup_elem", scope: !2, file: !36, line: 51, type: !37, isLocal: true, isDefinition: true)
!36 = !DIFile(filename: "../lib/libbpf/src/root/usr/include/bpf/bpf_helper_defs.h", directory: "/home/menma/xdp-tools/xdp-mon")
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DISubroutineType(types: !39)
!39 = !{!15, !15, !40}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 28, size: 256, elements: !43)
!43 = !{!44, !50, !51, !53}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !42, file: !3, line: 29, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 64, elements: !48)
!47 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!48 = !{!49}
!49 = !DISubrange(count: 2)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !42, file: !3, line: 30, baseType: !45, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !42, file: !3, line: 31, baseType: !52, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !42, file: !3, line: 32, baseType: !54, size: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!56 = !{i32 7, !"Dwarf Version", i32 4}
!57 = !{i32 2, !"Debug Info Version", i32 3}
!58 = !{i32 1, !"wchar_size", i32 4}
!59 = !{!"clang version 10.0.0-4ubuntu1 "}
!60 = distinct !DISubprogram(name: "xdpmon_prog", scope: !3, file: !3, line: 45, type: !61, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !72)
!61 = !DISubroutineType(types: !62)
!62 = !{!47, !63}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdp_md", file: !6, line: 5508, size: 192, elements: !65)
!65 = !{!66, !67, !68, !69, !70, !71}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !64, file: !6, line: 5509, baseType: !30, size: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "data_end", scope: !64, file: !6, line: 5510, baseType: !30, size: 32, offset: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "data_meta", scope: !64, file: !6, line: 5511, baseType: !30, size: 32, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "ingress_ifindex", scope: !64, file: !6, line: 5513, baseType: !30, size: 32, offset: 96)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "rx_queue_index", scope: !64, file: !6, line: 5514, baseType: !30, size: 32, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "egress_ifindex", scope: !64, file: !6, line: 5516, baseType: !30, size: 32, offset: 160)
!72 = !{!73, !74, !75, !76, !82, !83}
!73 = !DILocalVariable(name: "xdp", arg: 1, scope: !60, file: !3, line: 45, type: !63)
!74 = !DILocalVariable(name: "data_end", scope: !60, file: !3, line: 48, type: !15)
!75 = !DILocalVariable(name: "data", scope: !60, file: !3, line: 49, type: !15)
!76 = !DILocalVariable(name: "rec", scope: !60, file: !3, line: 50, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "datarec", file: !3, line: 23, size: 64, elements: !79)
!79 = !{!80, !81}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "rx_packtes", scope: !78, file: !3, line: 24, baseType: !30, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "rx_bytes", scope: !78, file: !3, line: 25, baseType: !30, size: 32, offset: 32)
!82 = !DILocalVariable(name: "key", scope: !60, file: !3, line: 52, type: !47)
!83 = !DILocalVariable(name: "bytes", scope: !60, file: !3, line: 66, type: !30)
!84 = !DILocation(line: 0, scope: !60)
!85 = !DILocation(line: 48, column: 38, scope: !60)
!86 = !{!87, !88, i64 4}
!87 = !{!"xdp_md", !88, i64 0, !88, i64 4, !88, i64 8, !88, i64 12, !88, i64 16, !88, i64 20}
!88 = !{!"int", !89, i64 0}
!89 = !{!"omnipotent char", !90, i64 0}
!90 = !{!"Simple C/C++ TBAA"}
!91 = !DILocation(line: 48, column: 27, scope: !60)
!92 = !DILocation(line: 48, column: 19, scope: !60)
!93 = !DILocation(line: 49, column: 34, scope: !60)
!94 = !{!87, !88, i64 0}
!95 = !DILocation(line: 49, column: 23, scope: !60)
!96 = !DILocation(line: 49, column: 15, scope: !60)
!97 = !DILocation(line: 52, column: 2, scope: !60)
!98 = !DILocation(line: 52, column: 6, scope: !60)
!99 = !{!88, !88, i64 0}
!100 = !DILocation(line: 54, column: 11, scope: !101)
!101 = distinct !DILexicalBlock(scope: !60, file: !3, line: 54, column: 6)
!102 = !DILocation(line: 54, column: 6, scope: !60)
!103 = !DILocation(line: 61, column: 8, scope: !60)
!104 = !DILocation(line: 63, column: 7, scope: !105)
!105 = distinct !DILexicalBlock(scope: !60, file: !3, line: 63, column: 6)
!106 = !DILocation(line: 63, column: 6, scope: !60)
!107 = !DILocation(line: 66, column: 25, scope: !60)
!108 = !DILocation(line: 67, column: 7, scope: !60)
!109 = !DILocation(line: 67, column: 16, scope: !60)
!110 = !{!111, !88, i64 4}
!111 = !{!"datarec", !88, i64 0, !88, i64 4}
!112 = !DILocation(line: 68, column: 7, scope: !60)
!113 = !DILocation(line: 68, column: 18, scope: !60)
!114 = !{!111, !88, i64 0}
!115 = !DILocation(line: 71, column: 1, scope: !60)
