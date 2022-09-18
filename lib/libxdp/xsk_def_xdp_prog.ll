; ModuleID = 'xsk_def_xdp_prog.c'
source_filename = "xsk_def_xdp_prog.c"
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
define dso_local i32 @xsk_def_prog(%struct.xdp_md* nocapture readonly %0) #0 section "xdp/xsk_def_prog" !dbg !70 {
  call void @llvm.dbg.value(metadata %struct.xdp_md* %0, metadata !83, metadata !DIExpression()), !dbg !84
  %2 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %0, i64 0, i32 4, !dbg !85
  %3 = load i32, i32* %2, align 4, !dbg !85, !tbaa !86
  %4 = tail call i64 inttoptr (i64 51 to i64 (i8*, i32, i64)*)(i8* bitcast (%struct.anon* @xsks_map to i8*), i32 %3, i64 2) #2, !dbg !91
  %5 = trunc i64 %4 to i32, !dbg !91
  ret i32 %5, !dbg !92
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!66, !67, !68}
!llvm.ident = !{!69}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xsks_map", scope: !2, file: !3, line: 16, type: !50, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !14, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "xsk_def_xdp_prog.c", directory: "/home/menma/GSoC2022-Freifunk-XDP-eBPF/lib/libxdp")
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
!14 = !{!15, !0, !21, !36, !38}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "_license", scope: !2, file: !3, line: 33, type: !17, isLocal: false, isDefinition: true)
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
!37 = distinct !DIGlobalVariable(name: "xsk_prog_version", scope: !2, file: !3, line: 34, type: !32, isLocal: false, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "bpf_redirect_map", scope: !2, file: !40, line: 1302, type: !41, isLocal: true, isDefinition: true)
!40 = !DIFile(filename: "../libbpf/src/root/usr/include/bpf/bpf_helper_defs.h", directory: "/home/menma/GSoC2022-Freifunk-XDP-eBPF/lib/libxdp")
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !45, !46, !48}
!44 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !47, line: 27, baseType: !7)
!47 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !47, line: 31, baseType: !49)
!49 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 11, size: 256, elements: !51)
!51 = !{!52, !57, !60, !61}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !50, file: !3, line: 12, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 544, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 17)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "key_size", scope: !50, file: !3, line: 13, baseType: !58, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 128, elements: !19)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "value_size", scope: !50, file: !3, line: 14, baseType: !58, size: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !50, file: !3, line: 15, baseType: !62, size: 64, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 2048, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 64)
!66 = !{i32 7, !"Dwarf Version", i32 4}
!67 = !{i32 2, !"Debug Info Version", i32 3}
!68 = !{i32 1, !"wchar_size", i32 4}
!69 = !{!"clang version 10.0.0-4ubuntu1 "}
!70 = distinct !DISubprogram(name: "xsk_def_prog", scope: !3, file: !3, line: 25, type: !71, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !82)
!71 = !DISubroutineType(types: !72)
!72 = !{!28, !73}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdp_md", file: !6, line: 5508, size: 192, elements: !75)
!75 = !{!76, !77, !78, !79, !80, !81}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !74, file: !6, line: 5509, baseType: !46, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "data_end", scope: !74, file: !6, line: 5510, baseType: !46, size: 32, offset: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "data_meta", scope: !74, file: !6, line: 5511, baseType: !46, size: 32, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "ingress_ifindex", scope: !74, file: !6, line: 5513, baseType: !46, size: 32, offset: 96)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "rx_queue_index", scope: !74, file: !6, line: 5514, baseType: !46, size: 32, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "egress_ifindex", scope: !74, file: !6, line: 5516, baseType: !46, size: 32, offset: 160)
!82 = !{!83}
!83 = !DILocalVariable(name: "ctx", arg: 1, scope: !70, file: !3, line: 25, type: !73)
!84 = !DILocation(line: 0, scope: !70)
!85 = !DILocation(line: 30, column: 42, scope: !70)
!86 = !{!87, !88, i64 16}
!87 = !{!"xdp_md", !88, i64 0, !88, i64 4, !88, i64 8, !88, i64 12, !88, i64 16, !88, i64 20}
!88 = !{!"int", !89, i64 0}
!89 = !{!"omnipotent char", !90, i64 0}
!90 = !{!"Simple C/C++ TBAA"}
!91 = !DILocation(line: 30, column: 9, scope: !70)
!92 = !DILocation(line: 30, column: 2, scope: !70)
