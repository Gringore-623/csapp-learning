
test_bits：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd9]        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 9a 2f 00 00    	push   QWORD PTR [rip+0x2f9a]        # 3fc0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 9c 2f 00 00    	jmp    QWORD PTR [rip+0x2f9c]        # 3fc8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    1030:	f3 0f 1e fa          	endbr64
    1034:	68 00 00 00 00       	push   0x0
    1039:	e9 e2 ff ff ff       	jmp    1020 <_init+0x20>
    103e:	66 90                	xchg   ax,ax

Disassembly of section .plt.got:

0000000000001040 <__cxa_finalize@plt>:
    1040:	f3 0f 1e fa          	endbr64
    1044:	ff 25 ae 2f 00 00    	jmp    QWORD PTR [rip+0x2fae]        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    104a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

Disassembly of section .plt.sec:

0000000000001050 <__printf_chk@plt>:
    1050:	f3 0f 1e fa          	endbr64
    1054:	ff 25 76 2f 00 00    	jmp    QWORD PTR [rip+0x2f76]        # 3fd0 <__printf_chk@GLIBC_2.3.4>
    105a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000001060 <_start>:
    1060:	f3 0f 1e fa          	endbr64
    1064:	31 ed                	xor    ebp,ebp
    1066:	49 89 d1             	mov    r9,rdx
    1069:	5e                   	pop    rsi
    106a:	48 89 e2             	mov    rdx,rsp
    106d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1071:	50                   	push   rax
    1072:	54                   	push   rsp
    1073:	45 31 c0             	xor    r8d,r8d
    1076:	31 c9                	xor    ecx,ecx
    1078:	48 8d 3d 83 01 00 00 	lea    rdi,[rip+0x183]        # 1202 <main>
    107f:	ff 15 53 2f 00 00    	call   QWORD PTR [rip+0x2f53]        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1085:	f4                   	hlt
    1086:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    108d:	00 00 00 

0000000000001090 <deregister_tm_clones>:
    1090:	48 8d 3d 79 2f 00 00 	lea    rdi,[rip+0x2f79]        # 4010 <__TMC_END__>
    1097:	48 8d 05 72 2f 00 00 	lea    rax,[rip+0x2f72]        # 4010 <__TMC_END__>
    109e:	48 39 f8             	cmp    rax,rdi
    10a1:	74 15                	je     10b8 <deregister_tm_clones+0x28>
    10a3:	48 8b 05 36 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f36]        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    10aa:	48 85 c0             	test   rax,rax
    10ad:	74 09                	je     10b8 <deregister_tm_clones+0x28>
    10af:	ff e0                	jmp    rax
    10b1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    10b8:	c3                   	ret
    10b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000010c0 <register_tm_clones>:
    10c0:	48 8d 3d 49 2f 00 00 	lea    rdi,[rip+0x2f49]        # 4010 <__TMC_END__>
    10c7:	48 8d 35 42 2f 00 00 	lea    rsi,[rip+0x2f42]        # 4010 <__TMC_END__>
    10ce:	48 29 fe             	sub    rsi,rdi
    10d1:	48 89 f0             	mov    rax,rsi
    10d4:	48 c1 ee 3f          	shr    rsi,0x3f
    10d8:	48 c1 f8 03          	sar    rax,0x3
    10dc:	48 01 c6             	add    rsi,rax
    10df:	48 d1 fe             	sar    rsi,1
    10e2:	74 14                	je     10f8 <register_tm_clones+0x38>
    10e4:	48 8b 05 05 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f05]        # 3ff0 <_ITM_registerTMCloneTable@Base>
    10eb:	48 85 c0             	test   rax,rax
    10ee:	74 08                	je     10f8 <register_tm_clones+0x38>
    10f0:	ff e0                	jmp    rax
    10f2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    10f8:	c3                   	ret
    10f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001100 <__do_global_dtors_aux>:
    1100:	f3 0f 1e fa          	endbr64
    1104:	80 3d 05 2f 00 00 00 	cmp    BYTE PTR [rip+0x2f05],0x0        # 4010 <__TMC_END__>
    110b:	75 2b                	jne    1138 <__do_global_dtors_aux+0x38>
    110d:	55                   	push   rbp
    110e:	48 83 3d e2 2e 00 00 	cmp    QWORD PTR [rip+0x2ee2],0x0        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1115:	00 
    1116:	48 89 e5             	mov    rbp,rsp
    1119:	74 0c                	je     1127 <__do_global_dtors_aux+0x27>
    111b:	48 8b 3d e6 2e 00 00 	mov    rdi,QWORD PTR [rip+0x2ee6]        # 4008 <__dso_handle>
    1122:	e8 19 ff ff ff       	call   1040 <__cxa_finalize@plt>
    1127:	e8 64 ff ff ff       	call   1090 <deregister_tm_clones>
    112c:	c6 05 dd 2e 00 00 01 	mov    BYTE PTR [rip+0x2edd],0x1        # 4010 <__TMC_END__>
    1133:	5d                   	pop    rbp
    1134:	c3                   	ret
    1135:	0f 1f 00             	nop    DWORD PTR [rax]
    1138:	c3                   	ret
    1139:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001140 <frame_dummy>:
    1140:	f3 0f 1e fa          	endbr64
    1144:	e9 77 ff ff ff       	jmp    10c0 <register_tm_clones>

0000000000001149 <bit_xor>:
    1149:	f3 0f 1e fa          	endbr64
    114d:	89 f8                	mov    eax,edi
    114f:	31 f0                	xor    eax,esi
    1151:	c3                   	ret

0000000000001152 <is_tmax>:
    1152:	f3 0f 1e fa          	endbr64
    1156:	8d 57 01             	lea    edx,[rdi+0x1]
    1159:	31 d7                	xor    edi,edx
    115b:	83 ff ff             	cmp    edi,0xffffffff
    115e:	0f 94 c0             	sete   al
    1161:	85 d2                	test   edx,edx
    1163:	0f 95 c2             	setne  dl
    1166:	21 d0                	and    eax,edx
    1168:	0f b6 c0             	movzx  eax,al
    116b:	c3                   	ret

000000000000116c <negate_int>:
    116c:	f3 0f 1e fa          	endbr64
    1170:	89 f8                	mov    eax,edi
    1172:	f7 d8                	neg    eax
    1174:	c3                   	ret

0000000000001175 <is_ascii_digit>:
    1175:	f3 0f 1e fa          	endbr64
    1179:	b8 39 00 00 00       	mov    eax,0x39
    117e:	29 f8                	sub    eax,edi
    1180:	83 ff 2f             	cmp    edi,0x2f
    1183:	0f 9f c2             	setg   dl
    1186:	f7 d0                	not    eax
    1188:	c1 e8 1f             	shr    eax,0x1f
    118b:	21 d0                	and    eax,edx
    118d:	c3                   	ret

000000000000118e <is_less_or_equal>:
    118e:	f3 0f 1e fa          	endbr64
    1192:	89 f2                	mov    edx,esi
    1194:	29 fa                	sub    edx,edi
    1196:	f7 d2                	not    edx
    1198:	c1 ea 1f             	shr    edx,0x1f
    119b:	89 f0                	mov    eax,esi
    119d:	f7 d0                	not    eax
    119f:	21 f8                	and    eax,edi
    11a1:	c1 e8 1f             	shr    eax,0x1f
    11a4:	31 f7                	xor    edi,esi
    11a6:	0f 99 c1             	setns  cl
    11a9:	21 ca                	and    edx,ecx
    11ab:	09 d0                	or     eax,edx
    11ad:	c3                   	ret

00000000000011ae <check>:
    11ae:	48 83 ec 08          	sub    rsp,0x8
    11b2:	83 05 5f 2e 00 00 01 	add    DWORD PTR [rip+0x2e5f],0x1        # 4018 <tests_run>
    11b9:	39 d6                	cmp    esi,edx
    11bb:	74 2a                	je     11e7 <check+0x39>
    11bd:	41 89 d0             	mov    r8d,edx
    11c0:	83 05 4d 2e 00 00 01 	add    DWORD PTR [rip+0x2e4d],0x1        # 4014 <tests_failed>
    11c7:	89 f1                	mov    ecx,esi
    11c9:	48 89 fa             	mov    rdx,rdi
    11cc:	48 8d 35 35 0e 00 00 	lea    rsi,[rip+0xe35]        # 2008 <_IO_stdin_used+0x8>
    11d3:	bf 02 00 00 00       	mov    edi,0x2
    11d8:	b8 00 00 00 00       	mov    eax,0x0
    11dd:	e8 6e fe ff ff       	call   1050 <__printf_chk@plt>
    11e2:	48 83 c4 08          	add    rsp,0x8
    11e6:	c3                   	ret
    11e7:	48 89 fa             	mov    rdx,rdi
    11ea:	48 8d 35 8a 0e 00 00 	lea    rsi,[rip+0xe8a]        # 207b <_IO_stdin_used+0x7b>
    11f1:	bf 02 00 00 00       	mov    edi,0x2
    11f6:	b8 00 00 00 00       	mov    eax,0x0
    11fb:	e8 50 fe ff ff       	call   1050 <__printf_chk@plt>
    1200:	eb e0                	jmp    11e2 <check+0x34>

0000000000001202 <main>:
    1202:	f3 0f 1e fa          	endbr64
    1206:	48 83 ec 08          	sub    rsp,0x8
    120a:	be 05 00 00 00       	mov    esi,0x5
    120f:	bf 04 00 00 00       	mov    edi,0x4
    1214:	e8 30 ff ff ff       	call   1149 <bit_xor>
    1219:	89 c6                	mov    esi,eax
    121b:	ba 01 00 00 00       	mov    edx,0x1
    1220:	48 8d 3d 5f 0e 00 00 	lea    rdi,[rip+0xe5f]        # 2086 <_IO_stdin_used+0x86>
    1227:	e8 82 ff ff ff       	call   11ae <check>
    122c:	be 00 00 00 00       	mov    esi,0x0
    1231:	bf ff ff ff ff       	mov    edi,0xffffffff
    1236:	e8 0e ff ff ff       	call   1149 <bit_xor>
    123b:	89 c6                	mov    esi,eax
    123d:	ba ff ff ff ff       	mov    edx,0xffffffff
    1242:	48 8d 3d 4b 0e 00 00 	lea    rdi,[rip+0xe4b]        # 2094 <_IO_stdin_used+0x94>
    1249:	e8 60 ff ff ff       	call   11ae <check>
    124e:	bf ff ff ff 7f       	mov    edi,0x7fffffff
    1253:	e8 fa fe ff ff       	call   1152 <is_tmax>
    1258:	89 c6                	mov    esi,eax
    125a:	ba 01 00 00 00       	mov    edx,0x1
    125f:	48 8d 3d 3d 0e 00 00 	lea    rdi,[rip+0xe3d]        # 20a3 <_IO_stdin_used+0xa3>
    1266:	e8 43 ff ff ff       	call   11ae <check>
    126b:	bf ff ff ff ff       	mov    edi,0xffffffff
    1270:	e8 dd fe ff ff       	call   1152 <is_tmax>
    1275:	89 c6                	mov    esi,eax
    1277:	ba 00 00 00 00       	mov    edx,0x0
    127c:	48 8d 3d 31 0e 00 00 	lea    rdi,[rip+0xe31]        # 20b4 <_IO_stdin_used+0xb4>
    1283:	e8 26 ff ff ff       	call   11ae <check>
    1288:	bf 00 00 00 00       	mov    edi,0x0
    128d:	e8 c0 fe ff ff       	call   1152 <is_tmax>
    1292:	89 c6                	mov    esi,eax
    1294:	ba 00 00 00 00       	mov    edx,0x0
    1299:	48 8d 3d 20 0e 00 00 	lea    rdi,[rip+0xe20]        # 20c0 <_IO_stdin_used+0xc0>
    12a0:	e8 09 ff ff ff       	call   11ae <check>
    12a5:	bf 01 00 00 00       	mov    edi,0x1
    12aa:	e8 bd fe ff ff       	call   116c <negate_int>
    12af:	89 c6                	mov    esi,eax
    12b1:	ba ff ff ff ff       	mov    edx,0xffffffff
    12b6:	48 8d 3d 0e 0e 00 00 	lea    rdi,[rip+0xe0e]        # 20cb <_IO_stdin_used+0xcb>
    12bd:	e8 ec fe ff ff       	call   11ae <check>
    12c2:	bf d6 ff ff ff       	mov    edi,0xffffffd6
    12c7:	e8 a0 fe ff ff       	call   116c <negate_int>
    12cc:	89 c6                	mov    esi,eax
    12ce:	ba 2a 00 00 00       	mov    edx,0x2a
    12d3:	48 8d 3d ff 0d 00 00 	lea    rdi,[rip+0xdff]        # 20d9 <_IO_stdin_used+0xd9>
    12da:	e8 cf fe ff ff       	call   11ae <check>
    12df:	bf 00 00 00 00       	mov    edi,0x0
    12e4:	e8 83 fe ff ff       	call   116c <negate_int>
    12e9:	89 c6                	mov    esi,eax
    12eb:	ba 00 00 00 00       	mov    edx,0x0
    12f0:	48 8d 3d f2 0d 00 00 	lea    rdi,[rip+0xdf2]        # 20e9 <_IO_stdin_used+0xe9>
    12f7:	e8 b2 fe ff ff       	call   11ae <check>
    12fc:	bf 30 00 00 00       	mov    edi,0x30
    1301:	e8 6f fe ff ff       	call   1175 <is_ascii_digit>
    1306:	89 c6                	mov    esi,eax
    1308:	ba 01 00 00 00       	mov    edx,0x1
    130d:	48 8d 3d e3 0d 00 00 	lea    rdi,[rip+0xde3]        # 20f7 <_IO_stdin_used+0xf7>
    1314:	e8 95 fe ff ff       	call   11ae <check>
    1319:	bf 39 00 00 00       	mov    edi,0x39
    131e:	e8 52 fe ff ff       	call   1175 <is_ascii_digit>
    1323:	89 c6                	mov    esi,eax
    1325:	ba 01 00 00 00       	mov    edx,0x1
    132a:	48 8d 3d da 0d 00 00 	lea    rdi,[rip+0xdda]        # 210b <_IO_stdin_used+0x10b>
    1331:	e8 78 fe ff ff       	call   11ae <check>
    1336:	bf 2f 00 00 00       	mov    edi,0x2f
    133b:	e8 35 fe ff ff       	call   1175 <is_ascii_digit>
    1340:	89 c6                	mov    esi,eax
    1342:	ba 00 00 00 00       	mov    edx,0x0
    1347:	48 8d 3d d1 0d 00 00 	lea    rdi,[rip+0xdd1]        # 211f <_IO_stdin_used+0x11f>
    134e:	e8 5b fe ff ff       	call   11ae <check>
    1353:	bf 3a 00 00 00       	mov    edi,0x3a
    1358:	e8 18 fe ff ff       	call   1175 <is_ascii_digit>
    135d:	89 c6                	mov    esi,eax
    135f:	ba 00 00 00 00       	mov    edx,0x0
    1364:	48 8d 3d c8 0d 00 00 	lea    rdi,[rip+0xdc8]        # 2133 <_IO_stdin_used+0x133>
    136b:	e8 3e fe ff ff       	call   11ae <check>
    1370:	be 04 00 00 00       	mov    esi,0x4
    1375:	bf 03 00 00 00       	mov    edi,0x3
    137a:	e8 0f fe ff ff       	call   118e <is_less_or_equal>
    137f:	89 c6                	mov    esi,eax
    1381:	ba 01 00 00 00       	mov    edx,0x1
    1386:	48 8d 3d ba 0d 00 00 	lea    rdi,[rip+0xdba]        # 2147 <_IO_stdin_used+0x147>
    138d:	e8 1c fe ff ff       	call   11ae <check>
    1392:	be 03 00 00 00       	mov    esi,0x3
    1397:	bf 04 00 00 00       	mov    edi,0x4
    139c:	e8 ed fd ff ff       	call   118e <is_less_or_equal>
    13a1:	89 c6                	mov    esi,eax
    13a3:	ba 00 00 00 00       	mov    edx,0x0
    13a8:	48 8d 3d af 0d 00 00 	lea    rdi,[rip+0xdaf]        # 215e <_IO_stdin_used+0x15e>
    13af:	e8 fa fd ff ff       	call   11ae <check>
    13b4:	be 02 00 00 00       	mov    esi,0x2
    13b9:	bf fd ff ff ff       	mov    edi,0xfffffffd
    13be:	e8 cb fd ff ff       	call   118e <is_less_or_equal>
    13c3:	89 c6                	mov    esi,eax
    13c5:	ba 01 00 00 00       	mov    edx,0x1
    13ca:	48 8d 3d a4 0d 00 00 	lea    rdi,[rip+0xda4]        # 2175 <_IO_stdin_used+0x175>
    13d1:	e8 d8 fd ff ff       	call   11ae <check>
    13d6:	be fd ff ff ff       	mov    esi,0xfffffffd
    13db:	bf 02 00 00 00       	mov    edi,0x2
    13e0:	e8 a9 fd ff ff       	call   118e <is_less_or_equal>
    13e5:	89 c6                	mov    esi,eax
    13e7:	ba 00 00 00 00       	mov    edx,0x0
    13ec:	48 8d 3d 9a 0d 00 00 	lea    rdi,[rip+0xd9a]        # 218d <_IO_stdin_used+0x18d>
    13f3:	e8 b6 fd ff ff       	call   11ae <check>
    13f8:	be ff ff ff 7f       	mov    esi,0x7fffffff
    13fd:	bf 00 00 00 80       	mov    edi,0x80000000
    1402:	e8 87 fd ff ff       	call   118e <is_less_or_equal>
    1407:	89 c6                	mov    esi,eax
    1409:	ba 01 00 00 00       	mov    edx,0x1
    140e:	48 8d 3d 1b 0c 00 00 	lea    rdi,[rip+0xc1b]        # 2030 <_IO_stdin_used+0x30>
    1415:	e8 94 fd ff ff       	call   11ae <check>
    141a:	be 00 00 00 80       	mov    esi,0x80000000
    141f:	bf ff ff ff 7f       	mov    edi,0x7fffffff
    1424:	e8 65 fd ff ff       	call   118e <is_less_or_equal>
    1429:	89 c6                	mov    esi,eax
    142b:	ba 00 00 00 00       	mov    edx,0x0
    1430:	48 8d 3d 21 0c 00 00 	lea    rdi,[rip+0xc21]        # 2058 <_IO_stdin_used+0x58>
    1437:	e8 72 fd ff ff       	call   11ae <check>
    143c:	8b 15 d6 2b 00 00    	mov    edx,DWORD PTR [rip+0x2bd6]        # 4018 <tests_run>
    1442:	48 8d 35 5c 0d 00 00 	lea    rsi,[rip+0xd5c]        # 21a5 <_IO_stdin_used+0x1a5>
    1449:	bf 02 00 00 00       	mov    edi,0x2
    144e:	b8 00 00 00 00       	mov    eax,0x0
    1453:	e8 f8 fb ff ff       	call   1050 <__printf_chk@plt>
    1458:	8b 15 b6 2b 00 00    	mov    edx,DWORD PTR [rip+0x2bb6]        # 4014 <tests_failed>
    145e:	48 8d 35 50 0d 00 00 	lea    rsi,[rip+0xd50]        # 21b5 <_IO_stdin_used+0x1b5>
    1465:	bf 02 00 00 00       	mov    edi,0x2
    146a:	b8 00 00 00 00       	mov    eax,0x0
    146f:	e8 dc fb ff ff       	call   1050 <__printf_chk@plt>
    1474:	83 3d 99 2b 00 00 00 	cmp    DWORD PTR [rip+0x2b99],0x0        # 4014 <tests_failed>
    147b:	0f 95 c0             	setne  al
    147e:	0f b6 c0             	movzx  eax,al
    1481:	48 83 c4 08          	add    rsp,0x8
    1485:	c3                   	ret

Disassembly of section .fini:

0000000000001488 <_fini>:
    1488:	f3 0f 1e fa          	endbr64
    148c:	48 83 ec 08          	sub    rsp,0x8
    1490:	48 83 c4 08          	add    rsp,0x8
    1494:	c3                   	ret
