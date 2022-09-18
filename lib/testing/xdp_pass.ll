; ModuleID = 'xdp_pass.c'
source_filename = "xdp_pass.c"
target datalayout = "e-m:e-p:64:64-i64:64-n32:64-S128"
target triple = "bpf"

%struct.anon = type { [10 x i32]*, [1 x i32]* }
%struct.xdp_md = type { i32, i32, i32, i32, i32, i32 }

@_license = dso_local global [4 x i8] c"GPL\00", section "license", align 1, !dbg !0
@_xdp_pass = dso_local global %struct.anon zeroinitializer, section ".xdp_run_config", align 8, !dbg !15
@llvm.used = appending global [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @_license, i32 0, i32 0), i8* bitcast (%struct.anon* @_xdp_pass to i8*), i8* bitcast (i32 (%struct.xdp_md*)* @xdp_pass to i8*)], section "llvm.metadata"

; Function Attrs: norecurse nounwind readnone
define dso_local i32 @xdp_pass(%struct.xdp_md* nocapture readnone %0) #0 section "xdp" !dbg !38 {
  call void @llvm.dbg.value(metadata %struct.xdp_md* undef, metadata !53, metadata !DIExpression()), !dbg !54
  ret i32 2, !dbg !55
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!34, !35, !36}
!llvm.ident = !{!37}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_license", scope: !2, file: !3, line: 16, type: !30, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !14, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "xdp_pass.c", directory: "/home/menma/GSoC2022-Freifunk-XDP-eBPF/lib/testing")
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
!14 = !{!0, !15}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "_xdp_pass", scope: !2, file: !3, line: 8, type: !17, isLocal: false, isDefinition: true)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 5, size: 128, elements: !18)
!18 = !{!19, !25}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !17, file: !3, line: 6, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 320, elements: !23)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !{!24}
!24 = !DISubrange(count: 10)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "XDP_PASS", scope: !17, file: !3, line: 7, baseType: !26, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 1)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32, elements: !32)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !{!33}
!33 = !DISubrange(count: 4)
!34 = !{i32 7, !"Dwarf Version", i32 4}
!35 = !{i32 2, !"Debug Info Version", i32 3}
!36 = !{i32 1, !"wchar_size", i32 4}
!37 = !{!"clang version 10.0.0-4ubuntu1 "}
!38 = distinct !DISubprogram(name: "xdp_pass", scope: !3, file: !3, line: 11, type: !39, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !52)
!39 = !DISubroutineType(types: !40)
!40 = !{!22, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdp_md", file: !6, line: 5508, size: 192, elements: !43)
!43 = !{!44, !47, !48, !49, !50, !51}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !42, file: !6, line: 5509, baseType: !45, size: 32)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !46, line: 27, baseType: !7)
!46 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "")
!47 = !DIDerivedType(tag: DW_TAG_member, name: "data_end", scope: !42, file: !6, line: 5510, baseType: !45, size: 32, offset: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "data_meta", scope: !42, file: !6, line: 5511, baseType: !45, size: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "ingress_ifindex", scope: !42, file: !6, line: 5513, baseType: !45, size: 32, offset: 96)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "rx_queue_index", scope: !42, file: !6, line: 5514, baseType: !45, size: 32, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "egress_ifindex", scope: !42, file: !6, line: 5516, baseType: !45, size: 32, offset: 160)
!52 = !{!53}
!53 = !DILocalVariable(name: "ctx", arg: 1, scope: !38, file: !3, line: 11, type: !41)
!54 = !DILocation(line: 0, scope: !38)
!55 = !DILocation(line: 13, column: 5, scope: !38)
