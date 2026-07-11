
test_machine：     文件格式 elf64-x86-64


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
    1020:	ff 35 92 2f 00 00    	push   QWORD PTR [rip+0x2f92]        # 3fb8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 94 2f 00 00    	jmp    QWORD PTR [rip+0x2f94]        # 3fc0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    1030:	f3 0f 1e fa          	endbr64
    1034:	68 00 00 00 00       	push   0x0
    1039:	e9 e2 ff ff ff       	jmp    1020 <_init+0x20>
    103e:	66 90                	xchg   ax,ax
    1040:	f3 0f 1e fa          	endbr64
    1044:	68 01 00 00 00       	push   0x1
    1049:	e9 d2 ff ff ff       	jmp    1020 <_init+0x20>
    104e:	66 90                	xchg   ax,ax

Disassembly of section .plt.got:

0000000000001050 <__cxa_finalize@plt>:
    1050:	f3 0f 1e fa          	endbr64
    1054:	ff 25 9e 2f 00 00    	jmp    QWORD PTR [rip+0x2f9e]        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    105a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

Disassembly of section .plt.sec:

0000000000001060 <__stack_chk_fail@plt>:
    1060:	f3 0f 1e fa          	endbr64
    1064:	ff 25 5e 2f 00 00    	jmp    QWORD PTR [rip+0x2f5e]        # 3fc8 <__stack_chk_fail@GLIBC_2.4>
    106a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001070 <__printf_chk@plt>:
    1070:	f3 0f 1e fa          	endbr64
    1074:	ff 25 56 2f 00 00    	jmp    QWORD PTR [rip+0x2f56]        # 3fd0 <__printf_chk@GLIBC_2.3.4>
    107a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000001080 <_start>:
    1080:	f3 0f 1e fa          	endbr64
    1084:	31 ed                	xor    ebp,ebp
    1086:	49 89 d1             	mov    r9,rdx
    1089:	5e                   	pop    rsi
    108a:	48 89 e2             	mov    rdx,rsp
    108d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1091:	50                   	push   rax
    1092:	54                   	push   rsp
    1093:	45 31 c0             	xor    r8d,r8d
    1096:	31 c9                	xor    ecx,ecx
    1098:	48 8d 3d 53 01 00 00 	lea    rdi,[rip+0x153]        # 11f2 <main>
    109f:	ff 15 33 2f 00 00    	call   QWORD PTR [rip+0x2f33]        # 3fd8 <__libc_start_main@GLIBC_2.34>
    10a5:	f4                   	hlt
    10a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    10ad:	00 00 00 

00000000000010b0 <deregister_tm_clones>:
    10b0:	48 8d 3d 59 2f 00 00 	lea    rdi,[rip+0x2f59]        # 4010 <__TMC_END__>
    10b7:	48 8d 05 52 2f 00 00 	lea    rax,[rip+0x2f52]        # 4010 <__TMC_END__>
    10be:	48 39 f8             	cmp    rax,rdi
    10c1:	74 15                	je     10d8 <deregister_tm_clones+0x28>
    10c3:	48 8b 05 16 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f16]        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    10ca:	48 85 c0             	test   rax,rax
    10cd:	74 09                	je     10d8 <deregister_tm_clones+0x28>
    10cf:	ff e0                	jmp    rax
    10d1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    10d8:	c3                   	ret
    10d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000010e0 <register_tm_clones>:
    10e0:	48 8d 3d 29 2f 00 00 	lea    rdi,[rip+0x2f29]        # 4010 <__TMC_END__>
    10e7:	48 8d 35 22 2f 00 00 	lea    rsi,[rip+0x2f22]        # 4010 <__TMC_END__>
    10ee:	48 29 fe             	sub    rsi,rdi
    10f1:	48 89 f0             	mov    rax,rsi
    10f4:	48 c1 ee 3f          	shr    rsi,0x3f
    10f8:	48 c1 f8 03          	sar    rax,0x3
    10fc:	48 01 c6             	add    rsi,rax
    10ff:	48 d1 fe             	sar    rsi,1
    1102:	74 14                	je     1118 <register_tm_clones+0x38>
    1104:	48 8b 05 e5 2e 00 00 	mov    rax,QWORD PTR [rip+0x2ee5]        # 3ff0 <_ITM_registerTMCloneTable@Base>
    110b:	48 85 c0             	test   rax,rax
    110e:	74 08                	je     1118 <register_tm_clones+0x38>
    1110:	ff e0                	jmp    rax
    1112:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1118:	c3                   	ret
    1119:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001120 <__do_global_dtors_aux>:
    1120:	f3 0f 1e fa          	endbr64
    1124:	80 3d e5 2e 00 00 00 	cmp    BYTE PTR [rip+0x2ee5],0x0        # 4010 <__TMC_END__>
    112b:	75 2b                	jne    1158 <__do_global_dtors_aux+0x38>
    112d:	55                   	push   rbp
    112e:	48 83 3d c2 2e 00 00 	cmp    QWORD PTR [rip+0x2ec2],0x0        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1135:	00 
    1136:	48 89 e5             	mov    rbp,rsp
    1139:	74 0c                	je     1147 <__do_global_dtors_aux+0x27>
    113b:	48 8b 3d c6 2e 00 00 	mov    rdi,QWORD PTR [rip+0x2ec6]        # 4008 <__dso_handle>
    1142:	e8 09 ff ff ff       	call   1050 <__cxa_finalize@plt>
    1147:	e8 64 ff ff ff       	call   10b0 <deregister_tm_clones>
    114c:	c6 05 bd 2e 00 00 01 	mov    BYTE PTR [rip+0x2ebd],0x1        # 4010 <__TMC_END__>
    1153:	5d                   	pop    rbp
    1154:	c3                   	ret
    1155:	0f 1f 00             	nop    DWORD PTR [rax]
    1158:	c3                   	ret
    1159:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001160 <frame_dummy>:
    1160:	f3 0f 1e fa          	endbr64
    1164:	e9 77 ff ff ff       	jmp    10e0 <register_tm_clones>

0000000000001169 <add_numbers>:
    1169:	f3 0f 1e fa          	endbr64
    116d:	48 8d 04 37          	lea    rax,[rdi+rsi*1]
    1171:	c3                   	ret

0000000000001172 <get_element>:
    1172:	f3 0f 1e fa          	endbr64
    1176:	48 8b 04 f7          	mov    rax,QWORD PTR [rdi+rsi*8]
    117a:	c3                   	ret

000000000000117b <sum_array>:
    117b:	f3 0f 1e fa          	endbr64
    117f:	b8 00 00 00 00       	mov    eax,0x0
    1184:	ba 00 00 00 00       	mov    edx,0x0
    1189:	eb 08                	jmp    1193 <sum_array+0x18>
    118b:	48 03 14 c7          	add    rdx,QWORD PTR [rdi+rax*8]
    118f:	48 83 c0 01          	add    rax,0x1
    1193:	48 39 f0             	cmp    rax,rsi
    1196:	7c f3                	jl     118b <sum_array+0x10>
    1198:	48 89 d0             	mov    rax,rdx
    119b:	c3                   	ret

000000000000119c <check>:
    119c:	48 83 ec 08          	sub    rsp,0x8
    11a0:	83 05 71 2e 00 00 01 	add    DWORD PTR [rip+0x2e71],0x1        # 4018 <tests_run>
    11a7:	48 39 d6             	cmp    rsi,rdx
    11aa:	74 2b                	je     11d7 <check+0x3b>
    11ac:	49 89 d0             	mov    r8,rdx
    11af:	83 05 5e 2e 00 00 01 	add    DWORD PTR [rip+0x2e5e],0x1        # 4014 <tests_failed>
    11b6:	48 89 f1             	mov    rcx,rsi
    11b9:	48 89 fa             	mov    rdx,rdi
    11bc:	48 8d 35 45 0e 00 00 	lea    rsi,[rip+0xe45]        # 2008 <_IO_stdin_used+0x8>
    11c3:	bf 02 00 00 00       	mov    edi,0x2
    11c8:	b8 00 00 00 00       	mov    eax,0x0
    11cd:	e8 9e fe ff ff       	call   1070 <__printf_chk@plt>
    11d2:	48 83 c4 08          	add    rsp,0x8
    11d6:	c3                   	ret
    11d7:	48 89 fa             	mov    rdx,rdi
    11da:	48 8d 35 4d 0e 00 00 	lea    rsi,[rip+0xe4d]        # 202e <_IO_stdin_used+0x2e>
    11e1:	bf 02 00 00 00       	mov    edi,0x2
    11e6:	b8 00 00 00 00       	mov    eax,0x0
    11eb:	e8 80 fe ff ff       	call   1070 <__printf_chk@plt>
    11f0:	eb e0                	jmp    11d2 <check+0x36>

00000000000011f2 <main>:
    11f2:	f3 0f 1e fa          	endbr64
    11f6:	53                   	push   rbx
    11f7:	48 83 ec 30          	sub    rsp,0x30
    11fb:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1202:	00 00 
    1204:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
    1209:	31 c0                	xor    eax,eax
    120b:	48 c7 04 24 0a 00 00 	mov    QWORD PTR [rsp],0xa
    1212:	00 
    1213:	48 c7 44 24 08 14 00 	mov    QWORD PTR [rsp+0x8],0x14
    121a:	00 00 
    121c:	48 c7 44 24 10 1e 00 	mov    QWORD PTR [rsp+0x10],0x1e
    1223:	00 00 
    1225:	48 c7 44 24 18 28 00 	mov    QWORD PTR [rsp+0x18],0x28
    122c:	00 00 
    122e:	48 c7 44 24 20 32 00 	mov    QWORD PTR [rsp+0x20],0x32
    1235:	00 00 
    1237:	be 05 00 00 00       	mov    esi,0x5
    123c:	bf 07 00 00 00       	mov    edi,0x7
    1241:	e8 23 ff ff ff       	call   1169 <add_numbers>
    1246:	48 89 c6             	mov    rsi,rax
    1249:	ba 0c 00 00 00       	mov    edx,0xc
    124e:	48 8d 3d e4 0d 00 00 	lea    rdi,[rip+0xde4]        # 2039 <_IO_stdin_used+0x39>
    1255:	e8 42 ff ff ff       	call   119c <check>
    125a:	48 89 e3             	mov    rbx,rsp
    125d:	be 00 00 00 00       	mov    esi,0x0
    1262:	48 89 df             	mov    rdi,rbx
    1265:	e8 08 ff ff ff       	call   1172 <get_element>
    126a:	48 89 c6             	mov    rsi,rax
    126d:	ba 0a 00 00 00       	mov    edx,0xa
    1272:	48 8d 3d cc 0d 00 00 	lea    rdi,[rip+0xdcc]        # 2045 <_IO_stdin_used+0x45>
    1279:	e8 1e ff ff ff       	call   119c <check>
    127e:	be 03 00 00 00       	mov    esi,0x3
    1283:	48 89 df             	mov    rdi,rbx
    1286:	e8 e7 fe ff ff       	call   1172 <get_element>
    128b:	48 89 c6             	mov    rsi,rax
    128e:	ba 28 00 00 00       	mov    edx,0x28
    1293:	48 8d 3d bf 0d 00 00 	lea    rdi,[rip+0xdbf]        # 2059 <_IO_stdin_used+0x59>
    129a:	e8 fd fe ff ff       	call   119c <check>
    129f:	be 05 00 00 00       	mov    esi,0x5
    12a4:	48 89 df             	mov    rdi,rbx
    12a7:	e8 cf fe ff ff       	call   117b <sum_array>
    12ac:	48 89 c6             	mov    rsi,rax
    12af:	ba 96 00 00 00       	mov    edx,0x96
    12b4:	48 8d 3d b2 0d 00 00 	lea    rdi,[rip+0xdb2]        # 206d <_IO_stdin_used+0x6d>
    12bb:	e8 dc fe ff ff       	call   119c <check>
    12c0:	be 00 00 00 00       	mov    esi,0x0
    12c5:	48 89 df             	mov    rdi,rbx
    12c8:	e8 ae fe ff ff       	call   117b <sum_array>
    12cd:	48 89 c6             	mov    rsi,rax
    12d0:	ba 00 00 00 00       	mov    edx,0x0
    12d5:	48 8d 3d 9b 0d 00 00 	lea    rdi,[rip+0xd9b]        # 2077 <_IO_stdin_used+0x77>
    12dc:	e8 bb fe ff ff       	call   119c <check>
    12e1:	8b 15 31 2d 00 00    	mov    edx,DWORD PTR [rip+0x2d31]        # 4018 <tests_run>
    12e7:	48 8d 35 99 0d 00 00 	lea    rsi,[rip+0xd99]        # 2087 <_IO_stdin_used+0x87>
    12ee:	bf 02 00 00 00       	mov    edi,0x2
    12f3:	b8 00 00 00 00       	mov    eax,0x0
    12f8:	e8 73 fd ff ff       	call   1070 <__printf_chk@plt>
    12fd:	8b 15 11 2d 00 00    	mov    edx,DWORD PTR [rip+0x2d11]        # 4014 <tests_failed>
    1303:	48 8d 35 8d 0d 00 00 	lea    rsi,[rip+0xd8d]        # 2097 <_IO_stdin_used+0x97>
    130a:	bf 02 00 00 00       	mov    edi,0x2
    130f:	b8 00 00 00 00       	mov    eax,0x0
    1314:	e8 57 fd ff ff       	call   1070 <__printf_chk@plt>
    1319:	83 3d f4 2c 00 00 00 	cmp    DWORD PTR [rip+0x2cf4],0x0        # 4014 <tests_failed>
    1320:	0f 95 c0             	setne  al
    1323:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
    1328:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
    132f:	00 00 
    1331:	75 09                	jne    133c <main+0x14a>
    1333:	0f b6 c0             	movzx  eax,al
    1336:	48 83 c4 30          	add    rsp,0x30
    133a:	5b                   	pop    rbx
    133b:	c3                   	ret
    133c:	e8 1f fd ff ff       	call   1060 <__stack_chk_fail@plt>

Disassembly of section .fini:

0000000000001344 <_fini>:
    1344:	f3 0f 1e fa          	endbr64
    1348:	48 83 ec 08          	sub    rsp,0x8
    134c:	48 83 c4 08          	add    rsp,0x8
    1350:	c3                   	ret
