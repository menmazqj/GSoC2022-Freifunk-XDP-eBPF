; ModuleID = 'xdpmon_test_kern.c'
source_filename = "xdpmon_test_kern.c"
target datalayout = "e-m:e-p:64:64-i64:64-n32:64-S128"
target triple = "bpf"

%struct.anon = type { [2 x i32]*, [8 x i32]*, i32*, i64* }
%struct.anon.0 = type { [2 x i32]*, [8 x i32]*, i32*, i64* }
%struct.xdp_md = type { i32, i32, i32, i32, i32, i32 }

@_license = dso_local global [4 x i8] c"GPL\00", section "license", align 1, !dbg !0
@xdpmon_proto_map = dso_local global %struct.anon zeroinitializer, section ".maps", align 8, !dbg !15
@xdpmon_ip_addr_map = dso_local global %struct.anon.0 zeroinitializer, section ".maps", align 8, !dbg !37
@llvm.used = appending global [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @_license, i32 0, i32 0), i8* bitcast (%struct.anon.0* @xdpmon_ip_addr_map to i8*), i8* bitcast (i32 (%struct.xdp_md*)* @xdpmon_prog to i8*), i8* bitcast (%struct.anon* @xdpmon_proto_map to i8*)], section "llvm.metadata"

; Function Attrs: norecurse nounwind readnone
define dso_local i32 @xdpmon_prog(%struct.xdp_md* nocapture readnone %0) #0 section "xdpmon_sec" !dbg !53 {
  call void @llvm.dbg.value(metadata %struct.xdp_md* undef, metadata !66, metadata !DIExpression()), !dbg !67
  ret i32 2, !dbg !68
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { norecurse nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!49, !50, !51}
!llvm.ident = !{!52}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_license", scope: !2, file: !3, line: 57, type: !45, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !14, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "xdpmon_test_kern.c", directory: "/home/menma/GSoC2022-Freifunk-XDP-eBPF/xdpmon")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xdp_action", file: !6, line: 5497, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../lib/../headers/linux/bpf.h", directory: "/home/menma/GSoC2022-Freifunk-XDP-eBPF/xdpmon")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "XDP_ABORTED", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "XDP_DROP", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "XDP_PASS", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "XDP_TX", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "XDP_REDIRECT", value: 4, isUnsigned: true)
!14 = !{!0, !15, !37}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "xdpmon_proto_map", scope: !2, file: !3, line: 35, type: !17, isLocal: false, isDefinition: true)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 29, size: 256, elements: !18)
!18 = !{!19, !25, !30, !34}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !17, file: !3, line: 30, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !23)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !{!24}
!24 = !DISubrange(count: 2)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !17, file: !3, line: 31, baseType: !26, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 256, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 8)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !17, file: !3, line: 32, baseType: !31, size: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !33, line: 27, baseType: !7)
!33 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "")
!34 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !17, file: !3, line: 33, baseType: !35, size: 64, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "xdpmon_ip_addr_map", scope: !2, file: !3, line: 43, type: !39, isLocal: false, isDefinition: true)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 37, size: 256, elements: !40)
!40 = !{!41, !42, !43, !44}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !39, file: !3, line: 38, baseType: !20, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "max_entries", scope: !39, file: !3, line: 39, baseType: !26, size: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !39, file: !3, line: 40, baseType: !31, size: 64, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !39, file: !3, line: 41, baseType: !35, size: 64, offset: 192)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 32, elements: !47)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!47 = !{!48}
!48 = !DISubrange(count: 4)
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = !{!"clang version 10.0.0-4ubuntu1 "}
!53 = distinct !DISubprogram(name: "xdpmon_prog", scope: !3, file: !3, line: 48, type: !54, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !65)
!54 = !DISubroutineType(types: !55)
!55 = !{!22, !56}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdp_md", file: !6, line: 5508, size: 192, elements: !58)
!58 = !{!59, !60, !61, !62, !63, !64}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !57, file: !6, line: 5509, baseType: !32, size: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "data_end", scope: !57, file: !6, line: 5510, baseType: !32, size: 32, offset: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "data_meta", scope: !57, file: !6, line: 5511, baseType: !32, size: 32, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "ingress_ifindex", scope: !57, file: !6, line: 5513, baseType: !32, size: 32, offset: 96)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "rx_queue_index", scope: !57, file: !6, line: 5514, baseType: !32, size: 32, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "egress_ifindex", scope: !57, file: !6, line: 5516, baseType: !32, size: 32, offset: 160)
!65 = !{!66}
!66 = !DILocalVariable(name: "xdp", arg: 1, scope: !53, file: !3, line: 48, type: !56)
!67 = !DILocation(line: 0, scope: !53)
!68 = !DILocation(line: 50, column: 2, scope: !53)
