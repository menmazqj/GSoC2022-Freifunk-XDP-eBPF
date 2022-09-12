; ModuleID = 'xdpmon_xdp.c'
source_filename = "xdpmon_xdp.c"
target datalayout = "e-m:e-p:64:64-i64:64-n32:64-S128"
target triple = "bpf"

%struct.anon = type { [2 x i32]*, [8 x i32]*, i32*, i64* }
%struct.anon.0 = type { [2 x i32]*, [8 x i32]*, i32*, i64* }
%struct.xdp_md = type { i32, i32, i32, i32, i32, i32 }

@xdpmon_proto_map = dso_local global %struct.anon zeroinitializer, section ".maps", align 8, !dbg !0
@_license = dso_local global [4 x i8] c"GPL\00", section "license", align 1, !dbg !18
@xdpmon_ip_addr_map = dso_local global %struct.anon.0 zeroinitializer, section ".maps", align 8, !dbg !24
@llvm.used = appending global [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @_license, i32 0, i32 0), i8* bitcast (%struct.anon.0* @xdpmon_ip_addr_map to i8*), i8* bitcast (i32 (%struct.xdp_md*)* @xdpmon_prog to i8*), i8* bitcast (%struct.anon* @xdpmon_proto_map to i8*)], section "llvm.metadata"

; Function Attrs: nounwind
define dso_local i32 @xdpmon_prog(%struct.xdp_md* nocapture readonly %0) #0 section "xdpmon_sec" !dbg !64 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.xdp_md* %0, metadata !77, metadata !DIExpression()), !dbg !88
  %3 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %0, i64 0, i32 1, !dbg !89
  %4 = load i32, i32* %3, align 4, !dbg !89, !tbaa !90
  %5 = zext i32 %4 to i64, !dbg !95
  %6 = inttoptr i64 %5 to i8*, !dbg !96
  call void @llvm.dbg.value(metadata i8* %6, metadata !78, metadata !DIExpression()), !dbg !88
  %7 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %0, i64 0, i32 0, !dbg !97
  %8 = load i32, i32* %7, align 4, !dbg !97, !tbaa !98
  %9 = zext i32 %8 to i64, !dbg !99
  %10 = inttoptr i64 %9 to i8*, !dbg !100
  call void @llvm.dbg.value(metadata i8* %10, metadata !79, metadata !DIExpression()), !dbg !88
  %11 = bitcast i32* %2 to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #3, !dbg !101
  call void @llvm.dbg.value(metadata i32 0, metadata !86, metadata !DIExpression()), !dbg !88
  store i32 0, i32* %2, align 4, !dbg !102, !tbaa !103
  %12 = icmp ult i8* %10, %6, !dbg !104
  br i1 %12, label %13, label %25, !dbg !106

13:                                               ; preds = %1
  call void @llvm.dbg.value(metadata i32* %2, metadata !86, metadata !DIExpression(DW_OP_deref)), !dbg !88
  %14 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon* @xdpmon_proto_map to i8*), i8* nonnull %11) #3, !dbg !107
  call void @llvm.dbg.value(metadata i8* %14, metadata !80, metadata !DIExpression()), !dbg !88
  %15 = icmp eq i8* %14, null, !dbg !108
  br i1 %15, label %25, label %16, !dbg !110

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8* %14, metadata !80, metadata !DIExpression()), !dbg !88
  %17 = sub i32 %4, %8, !dbg !111
  call void @llvm.dbg.value(metadata i32 %17, metadata !87, metadata !DIExpression()), !dbg !88
  %18 = getelementptr inbounds i8, i8* %14, i64 4, !dbg !112
  %19 = bitcast i8* %18 to i32*, !dbg !112
  %20 = load i32, i32* %19, align 4, !dbg !113, !tbaa !114
  %21 = add i32 %17, %20, !dbg !113
  store i32 %21, i32* %19, align 4, !dbg !113, !tbaa !114
  %22 = bitcast i8* %14 to i32*, !dbg !116
  %23 = load i32, i32* %22, align 4, !dbg !117, !tbaa !118
  %24 = add i32 %23, 1, !dbg !117
  store i32 %24, i32* %22, align 4, !dbg !117, !tbaa !118
  br label %25

25:                                               ; preds = %13, %1, %16
  %26 = phi i32 [ 2, %16 ], [ 2, %1 ], [ 0, %13 ], !dbg !88
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #3, !dbg !119
  ret i32 %26, !dbg !119
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
!llvm.module.flags = !{!60, !61, !62}
!llvm.ident = !{!63}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xdpmon_proto_map", scope: !2, file: !3, line: 41, type: !54, isLocal: false, isDefinition: true)
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
!17 = !{!18, !0, !24, !46}
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "_license", scope: !2, file: !3, line: 88, type: !20, isLocal: false, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 32, elements: !22)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !{!23}
!23 = !DISubrange(count: 4)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "xdpmon_ip_addr_map", scope: !2, file: !3, line: 49, type: !26, isLocal: false, isDefinition: true)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 43, size: 256, elements: !27)
!27 = !{!28, !34, !39, !43}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !26, file: !3, line: 44, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 64, elements: !32)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !{!33}
!33 = !DISubrange(count: 2)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !26, file: !3, line: 45, baseType: !35, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 256, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 8)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !26, file: !3, line: 46, baseType: !40, size: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !42, line: 27, baseType: !7)
!42 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "")
!43 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !26, file: !3, line: 47, baseType: !44, size: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "bpf_map_lookup_elem", scope: !2, file: !48, line: 51, type: !49, isLocal: true, isDefinition: true)
!48 = !DIFile(filename: "../lib/libbpf/src/root/usr/include/bpf/bpf_helper_defs.h", directory: "/home/menma/xdp-tools/xdp-mon")
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!15, !15, !52}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 35, size: 256, elements: !55)
!55 = !{!56, !57, !58, !59}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !54, file: !3, line: 36, baseType: !29, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !54, file: !3, line: 37, baseType: !35, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !54, file: !3, line: 38, baseType: !40, size: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !54, file: !3, line: 39, baseType: !44, size: 64, offset: 192)
!60 = !{i32 7, !"Dwarf Version", i32 4}
!61 = !{i32 2, !"Debug Info Version", i32 3}
!62 = !{i32 1, !"wchar_size", i32 4}
!63 = !{!"clang version 10.0.0-4ubuntu1 "}
!64 = distinct !DISubprogram(name: "xdpmon_prog", scope: !3, file: !3, line: 57, type: !65, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !76)
!65 = !DISubroutineType(types: !66)
!66 = !{!31, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdp_md", file: !6, line: 5508, size: 192, elements: !69)
!69 = !{!70, !71, !72, !73, !74, !75}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !68, file: !6, line: 5509, baseType: !41, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "data_end", scope: !68, file: !6, line: 5510, baseType: !41, size: 32, offset: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "data_meta", scope: !68, file: !6, line: 5511, baseType: !41, size: 32, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "ingress_ifindex", scope: !68, file: !6, line: 5513, baseType: !41, size: 32, offset: 96)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "rx_queue_index", scope: !68, file: !6, line: 5514, baseType: !41, size: 32, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "egress_ifindex", scope: !68, file: !6, line: 5516, baseType: !41, size: 32, offset: 160)
!76 = !{!77, !78, !79, !80, !86, !87}
!77 = !DILocalVariable(name: "xdp", arg: 1, scope: !64, file: !3, line: 57, type: !67)
!78 = !DILocalVariable(name: "data_end", scope: !64, file: !3, line: 60, type: !15)
!79 = !DILocalVariable(name: "data", scope: !64, file: !3, line: 61, type: !15)
!80 = !DILocalVariable(name: "rec", scope: !64, file: !3, line: 62, type: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "datarec", file: !3, line: 30, size: 64, elements: !83)
!83 = !{!84, !85}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "rx_packtes", scope: !82, file: !3, line: 31, baseType: !41, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "rx_bytes", scope: !82, file: !3, line: 32, baseType: !41, size: 32, offset: 32)
!86 = !DILocalVariable(name: "key", scope: !64, file: !3, line: 64, type: !31)
!87 = !DILocalVariable(name: "bytes", scope: !64, file: !3, line: 77, type: !41)
!88 = !DILocation(line: 0, scope: !64)
!89 = !DILocation(line: 60, column: 38, scope: !64)
!90 = !{!91, !92, i64 4}
!91 = !{!"xdp_md", !92, i64 0, !92, i64 4, !92, i64 8, !92, i64 12, !92, i64 16, !92, i64 20}
!92 = !{!"int", !93, i64 0}
!93 = !{!"omnipotent char", !94, i64 0}
!94 = !{!"Simple C/C++ TBAA"}
!95 = !DILocation(line: 60, column: 27, scope: !64)
!96 = !DILocation(line: 60, column: 19, scope: !64)
!97 = !DILocation(line: 61, column: 34, scope: !64)
!98 = !{!91, !92, i64 0}
!99 = !DILocation(line: 61, column: 23, scope: !64)
!100 = !DILocation(line: 61, column: 15, scope: !64)
!101 = !DILocation(line: 64, column: 2, scope: !64)
!102 = !DILocation(line: 64, column: 6, scope: !64)
!103 = !{!92, !92, i64 0}
!104 = !DILocation(line: 66, column: 11, scope: !105)
!105 = distinct !DILexicalBlock(scope: !64, file: !3, line: 66, column: 6)
!106 = !DILocation(line: 66, column: 6, scope: !64)
!107 = !DILocation(line: 72, column: 8, scope: !64)
!108 = !DILocation(line: 74, column: 7, scope: !109)
!109 = distinct !DILexicalBlock(scope: !64, file: !3, line: 74, column: 6)
!110 = !DILocation(line: 74, column: 6, scope: !64)
!111 = !DILocation(line: 77, column: 25, scope: !64)
!112 = !DILocation(line: 78, column: 7, scope: !64)
!113 = !DILocation(line: 78, column: 16, scope: !64)
!114 = !{!115, !92, i64 4}
!115 = !{!"datarec", !92, i64 0, !92, i64 4}
!116 = !DILocation(line: 79, column: 7, scope: !64)
!117 = !DILocation(line: 79, column: 18, scope: !64)
!118 = !{!115, !92, i64 0}
!119 = !DILocation(line: 82, column: 1, scope: !64)
