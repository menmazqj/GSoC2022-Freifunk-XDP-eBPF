; ModuleID = 'xdp_drop.c'
source_filename = "xdp_drop.c"
target datalayout = "e-m:e-p:64:64-i64:64-n32:64-S128"
target triple = "bpf"

%struct.xdp_md = type { i32, i32, i32, i32, i32, i32 }

@_license = dso_local global [4 x i8] c"GPL\00", section "license", align 1, !dbg !0
@llvm.used = appending global [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @_license, i32 0, i32 0), i8* bitcast (i32 (%struct.xdp_md*)* @xdp_drop to i8*)], section "llvm.metadata"

; Function Attrs: norecurse nounwind readnone
define dso_local i32 @xdp_drop(%struct.xdp_md* nocapture readnone %0) #0 section "xdp" !dbg !23 {
  call void @llvm.dbg.value(metadata %struct.xdp_md* undef, metadata !39, metadata !DIExpression()), !dbg !40
  ret i32 1, !dbg !41
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!19, !20, !21}
!llvm.ident = !{!22}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_license", scope: !2, file: !3, line: 10, type: !15, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !14, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "xdp_drop.c", directory: "/home/menma/GSoC2022-Freifunk-XDP-eBPF/lib/testing")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xdp_action", file: !6, line: 5497, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../headers/linux/bpf.h", directory: "/home/menma/GSoC2022-Freifunk-XDP-eBPF/lib/testing")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "XDP_ABORTED", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "XDP_DROP", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "XDP_PASS", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "XDP_TX", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "XDP_REDIRECT", value: 4, isUnsigned: true)
!14 = !{!0}
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 32, elements: !17)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !{!18}
!18 = !DISubrange(count: 4)
!19 = !{i32 7, !"Dwarf Version", i32 4}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{!"clang version 10.0.0-4ubuntu1 "}
!23 = distinct !DISubprogram(name: "xdp_drop", scope: !3, file: !3, line: 5, type: !24, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !38)
!24 = !DISubroutineType(types: !25)
!25 = !{!26, !27}
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdp_md", file: !6, line: 5508, size: 192, elements: !29)
!29 = !{!30, !33, !34, !35, !36, !37}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !28, file: !6, line: 5509, baseType: !31, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !32, line: 27, baseType: !7)
!32 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "")
!33 = !DIDerivedType(tag: DW_TAG_member, name: "data_end", scope: !28, file: !6, line: 5510, baseType: !31, size: 32, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "data_meta", scope: !28, file: !6, line: 5511, baseType: !31, size: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "ingress_ifindex", scope: !28, file: !6, line: 5513, baseType: !31, size: 32, offset: 96)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "rx_queue_index", scope: !28, file: !6, line: 5514, baseType: !31, size: 32, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "egress_ifindex", scope: !28, file: !6, line: 5516, baseType: !31, size: 32, offset: 160)
!38 = !{!39}
!39 = !DILocalVariable(name: "ctx", arg: 1, scope: !23, file: !3, line: 5, type: !27)
!40 = !DILocation(line: 0, scope: !23)
!41 = !DILocation(line: 7, column: 5, scope: !23)
