; ModuleID = 'xsk_def_xdp_prog_5.3.c'
source_filename = "xsk_def_xdp_prog_5.3.c"
target datalayout = "e-m:e-p:64:64-i64:64-n32:64-S128"
target triple = "bpf"

%struct.anon = type { [17 x i32]*, [4 x i32]*, [4 x i32]*, [64 x i32]* }
%struct.anon.0 = type { [20 x i32]*, [1 x i32]* }
%struct.xdp_md = type { i32, i32, i32, i32, i32, i32 }

@xsks_map = dso_local global %struct.anon zeroinitializer, section ".maps", align 8, !dbg !0
@_license = dso_local global [4 x i8] c"GPL\00", section "license", align 1, !dbg !15
@_xsk_def_prog = dso_local global %struct.anon.0 zeroinitializer, section ".xdp_run_config", align 8, !dbg !21
@xsk_prog_version = dso_local global [1 x i32]* null, section "xdp_metadata", align 8, !dbg !36
@llvm.used = appending global [5 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @_license, i32 0, i32 0), i8* bitcast (%struct.anon.0* @_xsk_def_prog to i8*), i8* bitcast (i32 (%struct.xdp_md*)* @xsk_def_prog to i8*), i8* bitcast ([1 x i32]** @xsk_prog_version to i8*), i8* bitcast (%struct.anon* @xsks_map to i8*)], section "llvm.metadata"

; Function Attrs: nounwind
define dso_local i32 @xsk_def_prog(%struct.xdp_md* nocapture readonly %0) #0 section "xdp/xsk_def_prog" !dbg !77 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.xdp_md* %0, metadata !90, metadata !DIExpression()), !dbg !92
  %3 = bitcast i32* %2 to i8*, !dbg !93
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #3, !dbg !93
  %4 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %0, i64 0, i32 4, !dbg !94
  %5 = load i32, i32* %4, align 4, !dbg !94, !tbaa !95
  call void @llvm.dbg.value(metadata i32 %5, metadata !91, metadata !DIExpression()), !dbg !92
  store i32 %5, i32* %2, align 4, !dbg !100, !tbaa !101
  call void @llvm.dbg.value(metadata i32* %2, metadata !91, metadata !DIExpression(DW_OP_deref)), !dbg !92
  %6 = call i8* inttoptr (i64 1 to i8* (i8*, i8*)*)(i8* bitcast (%struct.anon* @xsks_map to i8*), i8* nonnull %3) #3, !dbg !102
  %7 = icmp eq i8* %6, null, !dbg !102
  br i1 %7, label %12, label %8, !dbg !104

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4, !dbg !105, !tbaa !101
  call void @llvm.dbg.value(metadata i32 %9, metadata !91, metadata !DIExpression()), !dbg !92
  %10 = call i64 inttoptr (i64 51 to i64 (i8*, i32, i64)*)(i8* bitcast (%struct.anon* @xsks_map to i8*), i32 %9, i64 0) #3, !dbg !106
  %11 = trunc i64 %10 to i32, !dbg !106
  br label %12, !dbg !107

12:                                               ; preds = %1, %8
  %13 = phi i32 [ %11, %8 ], [ 2, %1 ], !dbg !92
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #3, !dbg !108
  ret i32 %13, !dbg !108
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
!llvm.module.flags = !{!73, !74, !75}
!llvm.ident = !{!76}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xsks_map", scope: !2, file: !3, line: 16, type: !57, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !14, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "xsk_def_xdp_prog_5.3.c", directory: "/home/menma/GSoC2022-Freifunk-XDP-eBPF/lib/libxdp")
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
!14 = !{!15, !0, !21, !36, !38, !47}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "_license", scope: !2, file: !3, line: 38, type: !17, isLocal: false, isDefinition: true)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32, elements: !19)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !{!20}
!20 = !DISubrange(count: 4)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "_xsk_def_prog", scope: !2, file: !3, line: 21, type: !23, isLocal: false, isDefinition: true)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 18, size: 128, elements: !24)
!24 = !{!25, !31}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !23, file: !3, line: 19, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 640, elements: !29)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !{!30}
!30 = !DISubrange(count: 20)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "XDP_PASS", scope: !23, file: !3, line: 20, baseType: !32, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 32, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 1)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "xsk_prog_version", scope: !2, file: !3, line: 39, type: !32, isLocal: false, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "bpf_map_lookup_elem", scope: !2, file: !40, line: 51, type: !41, isLocal: true, isDefinition: true)
!40 = !DIFile(filename: "../libbpf/src/root/usr/include/bpf/bpf_helper_defs.h", directory: "/home/menma/GSoC2022-Freifunk-XDP-eBPF/lib/libxdp")
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !44, !45}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "bpf_redirect_map", scope: !2, file: !40, line: 1302, type: !49, isLocal: true, isDefinition: true)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!52, !44, !53, !55}
!52 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !54, line: 27, baseType: !7)
!54 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !54, line: 31, baseType: !56)
!56 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 11, size: 256, elements: !58)
!58 = !{!59, !64, !67, !68}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !57, file: !3, line: 12, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 544, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 17)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "key_size", scope: !57, file: !3, line: 13, baseType: !65, size: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 128, elements: !19)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "value_size", scope: !57, file: !3, line: 14, baseType: !65, size: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !57, file: !3, line: 15, baseType: !69, size: 64, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 2048, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 64)
!73 = !{i32 7, !"Dwarf Version", i32 4}
!74 = !{i32 2, !"Debug Info Version", i32 3}
!75 = !{i32 1, !"wchar_size", i32 4}
!76 = !{!"clang version 10.0.0-4ubuntu1 "}
!77 = distinct !DISubprogram(name: "xsk_def_prog", scope: !3, file: !3, line: 25, type: !78, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !89)
!78 = !DISubroutineType(types: !79)
!79 = !{!28, !80}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdp_md", file: !6, line: 5508, size: 192, elements: !82)
!82 = !{!83, !84, !85, !86, !87, !88}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !81, file: !6, line: 5509, baseType: !53, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "data_end", scope: !81, file: !6, line: 5510, baseType: !53, size: 32, offset: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "data_meta", scope: !81, file: !6, line: 5511, baseType: !53, size: 32, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "ingress_ifindex", scope: !81, file: !6, line: 5513, baseType: !53, size: 32, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "rx_queue_index", scope: !81, file: !6, line: 5514, baseType: !53, size: 32, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "egress_ifindex", scope: !81, file: !6, line: 5516, baseType: !53, size: 32, offset: 160)
!89 = !{!90, !91}
!90 = !DILocalVariable(name: "ctx", arg: 1, scope: !77, file: !3, line: 25, type: !80)
!91 = !DILocalVariable(name: "index", scope: !77, file: !3, line: 27, type: !28)
!92 = !DILocation(line: 0, scope: !77)
!93 = !DILocation(line: 27, column: 2, scope: !77)
!94 = !DILocation(line: 27, column: 19, scope: !77)
!95 = !{!96, !97, i64 16}
!96 = !{!"xdp_md", !97, i64 0, !97, i64 4, !97, i64 8, !97, i64 12, !97, i64 16, !97, i64 20}
!97 = !{!"int", !98, i64 0}
!98 = !{!"omnipotent char", !99, i64 0}
!99 = !{!"Simple C/C++ TBAA"}
!100 = !DILocation(line: 27, column: 6, scope: !77)
!101 = !{!97, !97, i64 0}
!102 = !DILocation(line: 32, column: 6, scope: !103)
!103 = distinct !DILexicalBlock(scope: !77, file: !3, line: 32, column: 6)
!104 = !DILocation(line: 32, column: 6, scope: !77)
!105 = !DILocation(line: 33, column: 38, scope: !103)
!106 = !DILocation(line: 33, column: 10, scope: !103)
!107 = !DILocation(line: 33, column: 3, scope: !103)
!108 = !DILocation(line: 36, column: 1, scope: !77)
