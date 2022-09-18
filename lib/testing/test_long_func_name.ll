; ModuleID = 'test_long_func_name.c'
source_filename = "test_long_func_name.c"
target datalayout = "e-m:e-p:64:64-i64:64-n32:64-S128"
target triple = "bpf"

%struct.anon = type { [5 x i32]*, [1 x i32]* }
%struct.xdp_md = type { i32, i32, i32, i32, i32, i32 }

@__const.xdp_test_prog_with_a_long_name.__fmt = private unnamed_addr constant [18 x i8] c"PASS[1]: prog %u\0A\00", align 1
@__const.xdp_test_prog_with_a_long_name_too.__fmt = private unnamed_addr constant [18 x i8] c"PASS[2]: prog %u\0A\00", align 1
@_license = dso_local global [4 x i8] c"GPL\00", section "license", align 1, !dbg !0
@_xdp_test_prog_with_a_long_name = dso_local global %struct.anon zeroinitializer, section ".xdp_run_config", align 8, !dbg !15
@llvm.used = appending global [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @_license, i32 0, i32 0), i8* bitcast (%struct.anon* @_xdp_test_prog_with_a_long_name to i8*), i8* bitcast (i32 (%struct.xdp_md*)* @xdp_test_prog_with_a_long_name to i8*), i8* bitcast (i32 (%struct.xdp_md*)* @xdp_test_prog_with_a_long_name_too to i8*)], section "llvm.metadata"

; Function Attrs: nounwind
define dso_local i32 @xdp_test_prog_with_a_long_name(%struct.xdp_md* nocapture readonly %0) #0 section "xdp" !dbg !49 {
  %2 = alloca [18 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.xdp_md* %0, metadata !62, metadata !DIExpression()), !dbg !68
  %3 = getelementptr inbounds [18 x i8], [18 x i8]* %2, i64 0, i64 0, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 18, i8* nonnull %3) #3, !dbg !69
  call void @llvm.dbg.declare(metadata [18 x i8]* %2, metadata !63, metadata !DIExpression()), !dbg !69
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(18) %3, i8* nonnull align 1 dereferenceable(18) getelementptr inbounds ([18 x i8], [18 x i8]* @__const.xdp_test_prog_with_a_long_name.__fmt, i64 0, i64 0), i64 18, i1 false), !dbg !69
  %4 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %0, i64 0, i32 3, !dbg !69
  %5 = load i32, i32* %4, align 4, !dbg !69, !tbaa !70
  %6 = call i64 (i8*, i32, ...) inttoptr (i64 6 to i64 (i8*, i32, ...)*)(i8* nonnull %3, i32 18, i32 %5) #3, !dbg !69
  call void @llvm.lifetime.end.p0i8(i64 18, i8* nonnull %3) #3, !dbg !75
  ret i32 2, !dbg !76
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
define dso_local i32 @xdp_test_prog_with_a_long_name_too(%struct.xdp_md* nocapture readonly %0) #0 section "xdp" !dbg !77 {
  %2 = alloca [18 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.xdp_md* %0, metadata !79, metadata !DIExpression()), !dbg !82
  %3 = getelementptr inbounds [18 x i8], [18 x i8]* %2, i64 0, i64 0, !dbg !83
  call void @llvm.lifetime.start.p0i8(i64 18, i8* nonnull %3) #3, !dbg !83
  call void @llvm.dbg.declare(metadata [18 x i8]* %2, metadata !80, metadata !DIExpression()), !dbg !83
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(18) %3, i8* nonnull align 1 dereferenceable(18) getelementptr inbounds ([18 x i8], [18 x i8]* @__const.xdp_test_prog_with_a_long_name_too.__fmt, i64 0, i64 0), i64 18, i1 false), !dbg !83
  %4 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %0, i64 0, i32 3, !dbg !83
  %5 = load i32, i32* %4, align 4, !dbg !83, !tbaa !70
  %6 = call i64 (i8*, i32, ...) inttoptr (i64 6 to i64 (i8*, i32, ...)*)(i8* nonnull %3, i32 18, i32 %5) #3, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 18, i8* nonnull %3) #3, !dbg !84
  ret i32 2, !dbg !85
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!45, !46, !47}
!llvm.ident = !{!48}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_license", scope: !2, file: !3, line: 31, type: !42, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !14, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "test_long_func_name.c", directory: "/home/menma/GSoC2022-Freifunk-XDP-eBPF/lib/testing")
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
!14 = !{!0, !15, !30}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "_xdp_test_prog_with_a_long_name", scope: !2, file: !3, line: 29, type: !17, isLocal: false, isDefinition: true)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 26, size: 128, elements: !18)
!18 = !{!19, !25}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !17, file: !3, line: 27, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 160, elements: !23)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !{!24}
!24 = !DISubrange(count: 5)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "XDP_PASS", scope: !17, file: !3, line: 28, baseType: !26, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 1)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "bpf_trace_printk", scope: !2, file: !32, line: 172, type: !33, isLocal: true, isDefinition: true)
!32 = !DIFile(filename: "../libbpf/src/root/usr/include/bpf/bpf_helper_defs.h", directory: "/home/menma/GSoC2022-Freifunk-XDP-eBPF/lib/testing")
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DISubroutineType(types: !35)
!35 = !{!36, !37, !40, null}
!36 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !41, line: 27, baseType: !7)
!41 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "")
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 32, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 4)
!45 = !{i32 7, !"Dwarf Version", i32 4}
!46 = !{i32 2, !"Debug Info Version", i32 3}
!47 = !{i32 1, !"wchar_size", i32 4}
!48 = !{!"clang version 10.0.0-4ubuntu1 "}
!49 = distinct !DISubprogram(name: "xdp_test_prog_with_a_long_name", scope: !3, file: !3, line: 13, type: !50, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !61)
!50 = !DISubroutineType(types: !51)
!51 = !{!22, !52}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdp_md", file: !6, line: 5508, size: 192, elements: !54)
!54 = !{!55, !56, !57, !58, !59, !60}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !53, file: !6, line: 5509, baseType: !40, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "data_end", scope: !53, file: !6, line: 5510, baseType: !40, size: 32, offset: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "data_meta", scope: !53, file: !6, line: 5511, baseType: !40, size: 32, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "ingress_ifindex", scope: !53, file: !6, line: 5513, baseType: !40, size: 32, offset: 96)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "rx_queue_index", scope: !53, file: !6, line: 5514, baseType: !40, size: 32, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "egress_ifindex", scope: !53, file: !6, line: 5516, baseType: !40, size: 32, offset: 160)
!61 = !{!62, !63}
!62 = !DILocalVariable(name: "ctx", arg: 1, scope: !49, file: !3, line: 13, type: !52)
!63 = !DILocalVariable(name: "__fmt", scope: !64, file: !3, line: 15, type: !65)
!64 = distinct !DILexicalBlock(scope: !49, file: !3, line: 15, column: 2)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 144, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 18)
!68 = !DILocation(line: 0, scope: !49)
!69 = !DILocation(line: 15, column: 2, scope: !64)
!70 = !{!71, !72, i64 12}
!71 = !{!"xdp_md", !72, i64 0, !72, i64 4, !72, i64 8, !72, i64 12, !72, i64 16, !72, i64 20}
!72 = !{!"int", !73, i64 0}
!73 = !{!"omnipotent char", !74, i64 0}
!74 = !{!"Simple C/C++ TBAA"}
!75 = !DILocation(line: 15, column: 2, scope: !49)
!76 = !DILocation(line: 16, column: 2, scope: !49)
!77 = distinct !DISubprogram(name: "xdp_test_prog_with_a_long_name_too", scope: !3, file: !3, line: 20, type: !50, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !78)
!78 = !{!79, !80}
!79 = !DILocalVariable(name: "ctx", arg: 1, scope: !77, file: !3, line: 20, type: !52)
!80 = !DILocalVariable(name: "__fmt", scope: !81, file: !3, line: 22, type: !65)
!81 = distinct !DILexicalBlock(scope: !77, file: !3, line: 22, column: 2)
!82 = !DILocation(line: 0, scope: !77)
!83 = !DILocation(line: 22, column: 2, scope: !81)
!84 = !DILocation(line: 22, column: 2, scope: !77)
!85 = !DILocation(line: 23, column: 2, scope: !77)
