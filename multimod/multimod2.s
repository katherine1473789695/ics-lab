
multimod-64:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    $0x8,%rsp
    1004:	48 8b 05 dd 2f 00 00 	mov    0x2fdd(%rip),%rax        # 3fe8 <__gmon_start__>
    100b:	48 85 c0             	test   %rax,%rax
    100e:	74 02                	je     1012 <_init+0x12>
    1010:	ff d0                	callq  *%rax
    1012:	48 83 c4 08          	add    $0x8,%rsp
    1016:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 e2 2f 00 00    	pushq  0x2fe2(%rip)        # 4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 2f 00 00    	jmpq   *0x2fe4(%rip)        # 4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <__isoc99_fscanf@plt>:
    1030:	ff 25 e2 2f 00 00    	jmpq   *0x2fe2(%rip)        # 4018 <__isoc99_fscanf@GLIBC_2.7>
    1036:	68 00 00 00 00       	pushq  $0x0
    103b:	e9 e0 ff ff ff       	jmpq   1020 <.plt>

0000000000001040 <clock@plt>:
    1040:	ff 25 da 2f 00 00    	jmpq   *0x2fda(%rip)        # 4020 <clock@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	pushq  $0x1
    104b:	e9 d0 ff ff ff       	jmpq   1020 <.plt>

0000000000001050 <getopt_long@plt>:
    1050:	ff 25 d2 2f 00 00    	jmpq   *0x2fd2(%rip)        # 4028 <getopt_long@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	pushq  $0x2
    105b:	e9 c0 ff ff ff       	jmpq   1020 <.plt>

0000000000001060 <printf@plt>:
    1060:	ff 25 ca 2f 00 00    	jmpq   *0x2fca(%rip)        # 4030 <printf@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	pushq  $0x3
    106b:	e9 b0 ff ff ff       	jmpq   1020 <.plt>

0000000000001070 <strtol@plt>:
    1070:	ff 25 c2 2f 00 00    	jmpq   *0x2fc2(%rip)        # 4038 <strtol@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	pushq  $0x4
    107b:	e9 a0 ff ff ff       	jmpq   1020 <.plt>

0000000000001080 <fopen@plt>:
    1080:	ff 25 ba 2f 00 00    	jmpq   *0x2fba(%rip)        # 4040 <fopen@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	pushq  $0x5
    108b:	e9 90 ff ff ff       	jmpq   1020 <.plt>

0000000000001090 <exit@plt>:
    1090:	ff 25 b2 2f 00 00    	jmpq   *0x2fb2(%rip)        # 4048 <exit@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	pushq  $0x6
    109b:	e9 80 ff ff ff       	jmpq   1020 <.plt>

00000000000010a0 <fwrite@plt>:
    10a0:	ff 25 aa 2f 00 00    	jmpq   *0x2faa(%rip)        # 4050 <fwrite@GLIBC_2.2.5>
    10a6:	68 07 00 00 00       	pushq  $0x7
    10ab:	e9 70 ff ff ff       	jmpq   1020 <.plt>

Disassembly of section .plt.got:

00000000000010b0 <__cxa_finalize@plt>:
    10b0:	ff 25 42 2f 00 00    	jmpq   *0x2f42(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10b6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000010c0 <main>:
    10c0:	41 57                	push   %r15
    10c2:	41 56                	push   %r14
    10c4:	4c 8d 35 a5 2f 00 00 	lea    0x2fa5(%rip),%r14        # 4070 <multimod_tab>
    10cb:	41 55                	push   %r13
    10cd:	41 89 fd             	mov    %edi,%r13d
    10d0:	41 54                	push   %r12
    10d2:	45 31 e4             	xor    %r12d,%r12d
    10d5:	55                   	push   %rbp
    10d6:	53                   	push   %rbx
    10d7:	48 89 f3             	mov    %rsi,%rbx
    10da:	48 83 ec 38          	sub    $0x38,%rsp
    10de:	48 8d 6c 24 28       	lea    0x28(%rsp),%rbp
    10e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    10e8:	49 89 e8             	mov    %rbp,%r8
    10eb:	48 8d 0d ae 2f 00 00 	lea    0x2fae(%rip),%rcx        # 40a0 <long_option>
    10f2:	48 89 de             	mov    %rbx,%rsi
    10f5:	44 89 ef             	mov    %r13d,%edi
    10f8:	48 8d 15 05 0f 00 00 	lea    0xf05(%rip),%rdx        # 2004 <_IO_stdin_used+0x4>
    10ff:	e8 4c ff ff ff       	callq  1050 <getopt_long@plt>
    1104:	83 f8 ff             	cmp    $0xffffffff,%eax
    1107:	74 2f                	je     1138 <main+0x78>
    1109:	83 f8 69             	cmp    $0x69,%eax
    110c:	75 da                	jne    10e8 <main+0x28>
    110e:	48 8b 3d cb 2f 00 00 	mov    0x2fcb(%rip),%rdi        # 40e0 <optarg@@GLIBC_2.2.5>
    1115:	ba 0a 00 00 00       	mov    $0xa,%edx
    111a:	31 f6                	xor    %esi,%esi
    111c:	e8 4f ff ff ff       	callq  1070 <strtol@plt>
    1121:	83 e8 01             	sub    $0x1,%eax
    1124:	83 f8 02             	cmp    $0x2,%eax
    1127:	77 bf                	ja     10e8 <main+0x28>
    1129:	48 98                	cltq   
    112b:	4d 8b 24 c6          	mov    (%r14,%rax,8),%r12
    112f:	eb b7                	jmp    10e8 <main+0x28>
    1131:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1138:	4d 85 e4             	test   %r12,%r12
    113b:	0f 84 ea 00 00 00    	je     122b <main+0x16b>
    1141:	bb 40 42 0f 00       	mov    $0xf4240,%ebx
    1146:	4c 8d 74 24 20       	lea    0x20(%rsp),%r14
    114b:	4c 8d 6c 24 18       	lea    0x18(%rsp),%r13
    1150:	48 8d 35 cc 0e 00 00 	lea    0xecc(%rip),%rsi        # 2023 <_IO_stdin_used+0x23>
    1157:	48 8d 3d c7 0e 00 00 	lea    0xec7(%rip),%rdi        # 2025 <_IO_stdin_used+0x25>
    115e:	e8 1d ff ff ff       	callq  1080 <fopen@plt>
    1163:	49 89 c7             	mov    %rax,%r15
    1166:	e8 d5 fe ff ff       	callq  1040 <clock@plt>
    116b:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    1172:	00 00 
    1174:	48 89 05 a5 2f 00 00 	mov    %rax,0x2fa5(%rip)        # 4120 <start>
    117b:	48 8d 44 24 10       	lea    0x10(%rsp),%rax
    1180:	48 89 04 24          	mov    %rax,(%rsp)
    1184:	0f 1f 40 00          	nopl   0x0(%rax)
    1188:	48 8b 14 24          	mov    (%rsp),%rdx
    118c:	48 8d 35 97 0e 00 00 	lea    0xe97(%rip),%rsi        # 202a <_IO_stdin_used+0x2a>
    1193:	4c 89 ff             	mov    %r15,%rdi
    1196:	31 c0                	xor    %eax,%eax
    1198:	49 89 e9             	mov    %rbp,%r9
    119b:	4d 89 f0             	mov    %r14,%r8
    119e:	4c 89 e9             	mov    %r13,%rcx
    11a1:	e8 8a fe ff ff       	callq  1030 <__isoc99_fscanf@plt>
    11a6:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
    11ab:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
    11b0:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    11b5:	41 ff d4             	callq  *%r12
    11b8:	48 39 44 24 28       	cmp    %rax,0x28(%rsp)
    11bd:	75 06                	jne    11c5 <main+0x105>
    11bf:	48 83 44 24 08 01    	addq   $0x1,0x8(%rsp)
    11c5:	83 eb 01             	sub    $0x1,%ebx
    11c8:	75 be                	jne    1188 <main+0xc8>
    11ca:	e8 71 fe ff ff       	callq  1040 <clock@plt>
    11cf:	66 0f ef c0          	pxor   %xmm0,%xmm0
    11d3:	48 8d 3d 60 0e 00 00 	lea    0xe60(%rip),%rdi        # 203a <_IO_stdin_used+0x3a>
    11da:	48 89 05 37 2f 00 00 	mov    %rax,0x2f37(%rip)        # 4118 <stop>
    11e1:	48 2b 05 38 2f 00 00 	sub    0x2f38(%rip),%rax        # 4120 <start>
    11e8:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    11ed:	b8 01 00 00 00       	mov    $0x1,%eax
    11f2:	f2 0f 5e 05 76 0e 00 	divsd  0xe76(%rip),%xmm0        # 2070 <_IO_stdin_used+0x70>
    11f9:	00 
    11fa:	f2 0f 11 05 0e 2f 00 	movsd  %xmm0,0x2f0e(%rip)        # 4110 <duration>
    1201:	00 
    1202:	e8 59 fe ff ff       	callq  1060 <printf@plt>
    1207:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    120c:	48 8d 3d 3c 0e 00 00 	lea    0xe3c(%rip),%rdi        # 204f <_IO_stdin_used+0x4f>
    1213:	31 c0                	xor    %eax,%eax
    1215:	e8 46 fe ff ff       	callq  1060 <printf@plt>
    121a:	48 83 c4 38          	add    $0x38,%rsp
    121e:	31 c0                	xor    %eax,%eax
    1220:	5b                   	pop    %rbx
    1221:	5d                   	pop    %rbp
    1222:	41 5c                	pop    %r12
    1224:	41 5d                	pop    %r13
    1226:	41 5e                	pop    %r14
    1228:	41 5f                	pop    %r15
    122a:	c3                   	retq   
    122b:	48 8b 0d ce 2e 00 00 	mov    0x2ece(%rip),%rcx        # 4100 <stderr@@GLIBC_2.2.5>
    1232:	ba 1b 00 00 00       	mov    $0x1b,%edx
    1237:	be 01 00 00 00       	mov    $0x1,%esi
    123c:	48 8d 3d c4 0d 00 00 	lea    0xdc4(%rip),%rdi        # 2007 <_IO_stdin_used+0x7>
    1243:	e8 58 fe ff ff       	callq  10a0 <fwrite@plt>
    1248:	bf 01 00 00 00       	mov    $0x1,%edi
    124d:	e8 3e fe ff ff       	callq  1090 <exit@plt>
    1252:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1259:	00 00 00 
    125c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001260 <_start>:
    1260:	31 ed                	xor    %ebp,%ebp
    1262:	49 89 d1             	mov    %rdx,%r9
    1265:	5e                   	pop    %rsi
    1266:	48 89 e2             	mov    %rsp,%rdx
    1269:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    126d:	50                   	push   %rax
    126e:	54                   	push   %rsp
    126f:	4c 8d 05 8a 02 00 00 	lea    0x28a(%rip),%r8        # 1500 <__libc_csu_fini>
    1276:	48 8d 0d 23 02 00 00 	lea    0x223(%rip),%rcx        # 14a0 <__libc_csu_init>
    127d:	48 8d 3d 3c fe ff ff 	lea    -0x1c4(%rip),%rdi        # 10c0 <main>
    1284:	ff 15 56 2d 00 00    	callq  *0x2d56(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    128a:	f4                   	hlt    
    128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001290 <deregister_tm_clones>:
    1290:	48 8d 3d 49 2e 00 00 	lea    0x2e49(%rip),%rdi        # 40e0 <optarg@@GLIBC_2.2.5>
    1297:	48 8d 05 42 2e 00 00 	lea    0x2e42(%rip),%rax        # 40e0 <optarg@@GLIBC_2.2.5>
    129e:	48 39 f8             	cmp    %rdi,%rax
    12a1:	74 15                	je     12b8 <deregister_tm_clones+0x28>
    12a3:	48 8b 05 2e 2d 00 00 	mov    0x2d2e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    12aa:	48 85 c0             	test   %rax,%rax
    12ad:	74 09                	je     12b8 <deregister_tm_clones+0x28>
    12af:	ff e0                	jmpq   *%rax
    12b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    12b8:	c3                   	retq   
    12b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012c0 <register_tm_clones>:
    12c0:	48 8d 3d 19 2e 00 00 	lea    0x2e19(%rip),%rdi        # 40e0 <optarg@@GLIBC_2.2.5>
    12c7:	48 8d 35 12 2e 00 00 	lea    0x2e12(%rip),%rsi        # 40e0 <optarg@@GLIBC_2.2.5>
    12ce:	48 29 fe             	sub    %rdi,%rsi
    12d1:	48 c1 fe 03          	sar    $0x3,%rsi
    12d5:	48 89 f0             	mov    %rsi,%rax
    12d8:	48 c1 e8 3f          	shr    $0x3f,%rax
    12dc:	48 01 c6             	add    %rax,%rsi
    12df:	48 d1 fe             	sar    %rsi
    12e2:	74 14                	je     12f8 <register_tm_clones+0x38>
    12e4:	48 8b 05 05 2d 00 00 	mov    0x2d05(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    12eb:	48 85 c0             	test   %rax,%rax
    12ee:	74 08                	je     12f8 <register_tm_clones+0x38>
    12f0:	ff e0                	jmpq   *%rax
    12f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    12f8:	c3                   	retq   
    12f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001300 <__do_global_dtors_aux>:
    1300:	80 3d 01 2e 00 00 00 	cmpb   $0x0,0x2e01(%rip)        # 4108 <completed.7325>
    1307:	75 2f                	jne    1338 <__do_global_dtors_aux+0x38>
    1309:	55                   	push   %rbp
    130a:	48 83 3d e6 2c 00 00 	cmpq   $0x0,0x2ce6(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1311:	00 
    1312:	48 89 e5             	mov    %rsp,%rbp
    1315:	74 0c                	je     1323 <__do_global_dtors_aux+0x23>
    1317:	48 8b 3d 4a 2d 00 00 	mov    0x2d4a(%rip),%rdi        # 4068 <__dso_handle>
    131e:	e8 8d fd ff ff       	callq  10b0 <__cxa_finalize@plt>
    1323:	e8 68 ff ff ff       	callq  1290 <deregister_tm_clones>
    1328:	c6 05 d9 2d 00 00 01 	movb   $0x1,0x2dd9(%rip)        # 4108 <completed.7325>
    132f:	5d                   	pop    %rbp
    1330:	c3                   	retq   
    1331:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1338:	c3                   	retq   
    1339:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001340 <frame_dummy>:
    1340:	e9 7b ff ff ff       	jmpq   12c0 <register_tm_clones>
    1345:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    134c:	00 00 00 
    134f:	90                   	nop

0000000000001350 <multimod_p2>:
    1350:	48 89 f8             	mov    %rdi,%rax
    1353:	49 89 d0             	mov    %rdx,%r8
    1356:	48 99                	cqto   
    1358:	49 f7 f8             	idiv   %r8
    135b:	48 89 f0             	mov    %rsi,%rax
    135e:	48 89 d1             	mov    %rdx,%rcx
    1361:	48 99                	cqto   
    1363:	49 f7 f8             	idiv   %r8
    1366:	48 89 d6             	mov    %rdx,%rsi
    1369:	48 85 c9             	test   %rcx,%rcx
    136c:	74 32                	je     13a0 <multimod_p2+0x50>
    136e:	31 ff                	xor    %edi,%edi
    1370:	f6 c1 01             	test   $0x1,%cl
    1373:	74 0c                	je     1381 <multimod_p2+0x31>
    1375:	48 8d 04 3e          	lea    (%rsi,%rdi,1),%rax
    1379:	31 d2                	xor    %edx,%edx
    137b:	49 f7 f0             	div    %r8
    137e:	48 89 d7             	mov    %rdx,%rdi
    1381:	48 8d 04 36          	lea    (%rsi,%rsi,1),%rax
    1385:	31 d2                	xor    %edx,%edx
    1387:	49 f7 f0             	div    %r8
    138a:	48 d1 e9             	shr    %rcx
    138d:	48 89 d6             	mov    %rdx,%rsi
    1390:	75 de                	jne    1370 <multimod_p2+0x20>
    1392:	48 89 f8             	mov    %rdi,%rax
    1395:	c3                   	retq   
    1396:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    139d:	00 00 00 
    13a0:	31 c0                	xor    %eax,%eax
    13a2:	c3                   	retq   
    13a3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    13aa:	00 00 00 
    13ad:	0f 1f 00             	nopl   (%rax)

00000000000013b0 <multimod_p1>:
    13b0:	48 89 d1             	mov    %rdx,%rcx
    13b3:	48 39 d7             	cmp    %rdx,%rdi
    13b6:	7e 0b                	jle    13c3 <multimod_p1+0x13>
    13b8:	48 89 f8             	mov    %rdi,%rax
    13bb:	48 99                	cqto   
    13bd:	48 f7 f9             	idiv   %rcx
    13c0:	48 89 d7             	mov    %rdx,%rdi
    13c3:	48 39 f1             	cmp    %rsi,%rcx
    13c6:	7d 0b                	jge    13d3 <multimod_p1+0x23>
    13c8:	48 89 f0             	mov    %rsi,%rax
    13cb:	48 99                	cqto   
    13cd:	48 f7 f9             	idiv   %rcx
    13d0:	48 89 d6             	mov    %rdx,%rsi
    13d3:	d9 7c 24 f6          	fnstcw -0xa(%rsp)
    13d7:	48 89 7c 24 e0       	mov    %rdi,-0x20(%rsp)
    13dc:	df 6c 24 e0          	fildll -0x20(%rsp)
    13e0:	48 89 f8             	mov    %rdi,%rax
    13e3:	48 89 74 24 e0       	mov    %rsi,-0x20(%rsp)
    13e8:	48 0f af c6          	imul   %rsi,%rax
    13ec:	df 6c 24 e0          	fildll -0x20(%rsp)
    13f0:	0f b7 54 24 f6       	movzwl -0xa(%rsp),%edx
    13f5:	48 89 4c 24 e0       	mov    %rcx,-0x20(%rsp)
    13fa:	80 ce 0c             	or     $0xc,%dh
    13fd:	de c9                	fmulp  %st,%st(1)
    13ff:	66 89 54 24 f4       	mov    %dx,-0xc(%rsp)
    1404:	df 6c 24 e0          	fildll -0x20(%rsp)
    1408:	de f9                	fdivrp %st,%st(1)
    140a:	d9 6c 24 f4          	fldcw  -0xc(%rsp)
    140e:	df 7c 24 e8          	fistpll -0x18(%rsp)
    1412:	d9 6c 24 f6          	fldcw  -0xa(%rsp)
    1416:	48 8b 54 24 e8       	mov    -0x18(%rsp),%rdx
    141b:	48 0f af d1          	imul   %rcx,%rdx
    141f:	48 29 d0             	sub    %rdx,%rax
    1422:	79 17                	jns    143b <multimod_p1+0x8b>
    1424:	0f 1f 40 00          	nopl   0x0(%rax)
    1428:	48 01 c8             	add    %rcx,%rax
    142b:	78 fb                	js     1428 <multimod_p1+0x78>
    142d:	48 39 c1             	cmp    %rax,%rcx
    1430:	7f 0e                	jg     1440 <multimod_p1+0x90>
    1432:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1438:	48 29 c8             	sub    %rcx,%rax
    143b:	48 39 c1             	cmp    %rax,%rcx
    143e:	7e f8                	jle    1438 <multimod_p1+0x88>
    1440:	c3                   	retq   
    1441:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1448:	00 00 00 
    144b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001450 <multimod_p3>:
    1450:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1454:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1458:	48 89 f8             	mov    %rdi,%rax
    145b:	49 89 d0             	mov    %rdx,%r8
    145e:	f2 48 0f 2a ce       	cvtsi2sd %rsi,%xmm1
    1463:	f2 48 0f 2a c7       	cvtsi2sd %rdi,%xmm0
    1468:	48 0f af c6          	imul   %rsi,%rax
    146c:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    1470:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1474:	f2 48 0f 2a ca       	cvtsi2sd %rdx,%xmm1
    1479:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    147d:	f2 48 0f 2c c8       	cvttsd2si %xmm0,%rcx
    1482:	48 0f af ca          	imul   %rdx,%rcx
    1486:	48 29 c8             	sub    %rcx,%rax
    1489:	48 99                	cqto   
    148b:	49 f7 f8             	idiv   %r8
    148e:	49 01 d0             	add    %rdx,%r8
    1491:	48 89 d0             	mov    %rdx,%rax
    1494:	48 85 d2             	test   %rdx,%rdx
    1497:	49 0f 48 c0          	cmovs  %r8,%rax
    149b:	c3                   	retq   
    149c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000014a0 <__libc_csu_init>:
    14a0:	41 57                	push   %r15
    14a2:	49 89 d7             	mov    %rdx,%r15
    14a5:	41 56                	push   %r14
    14a7:	49 89 f6             	mov    %rsi,%r14
    14aa:	41 55                	push   %r13
    14ac:	41 89 fd             	mov    %edi,%r13d
    14af:	41 54                	push   %r12
    14b1:	4c 8d 25 30 29 00 00 	lea    0x2930(%rip),%r12        # 3de8 <__frame_dummy_init_array_entry>
    14b8:	55                   	push   %rbp
    14b9:	48 8d 2d 30 29 00 00 	lea    0x2930(%rip),%rbp        # 3df0 <__init_array_end>
    14c0:	53                   	push   %rbx
    14c1:	4c 29 e5             	sub    %r12,%rbp
    14c4:	48 83 ec 08          	sub    $0x8,%rsp
    14c8:	e8 33 fb ff ff       	callq  1000 <_init>
    14cd:	48 c1 fd 03          	sar    $0x3,%rbp
    14d1:	74 1b                	je     14ee <__libc_csu_init+0x4e>
    14d3:	31 db                	xor    %ebx,%ebx
    14d5:	0f 1f 00             	nopl   (%rax)
    14d8:	4c 89 fa             	mov    %r15,%rdx
    14db:	4c 89 f6             	mov    %r14,%rsi
    14de:	44 89 ef             	mov    %r13d,%edi
    14e1:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    14e5:	48 83 c3 01          	add    $0x1,%rbx
    14e9:	48 39 dd             	cmp    %rbx,%rbp
    14ec:	75 ea                	jne    14d8 <__libc_csu_init+0x38>
    14ee:	48 83 c4 08          	add    $0x8,%rsp
    14f2:	5b                   	pop    %rbx
    14f3:	5d                   	pop    %rbp
    14f4:	41 5c                	pop    %r12
    14f6:	41 5d                	pop    %r13
    14f8:	41 5e                	pop    %r14
    14fa:	41 5f                	pop    %r15
    14fc:	c3                   	retq   
    14fd:	0f 1f 00             	nopl   (%rax)

0000000000001500 <__libc_csu_fini>:
    1500:	c3                   	retq   

Disassembly of section .fini:

0000000000001504 <_fini>:
    1504:	48 83 ec 08          	sub    $0x8,%rsp
    1508:	48 83 c4 08          	add    $0x8,%rsp
    150c:	c3                   	retq   
