
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

00000000000010c0 <_start>:
    10c0:	31 ed                	xor    %ebp,%ebp
    10c2:	49 89 d1             	mov    %rdx,%r9
    10c5:	5e                   	pop    %rsi
    10c6:	48 89 e2             	mov    %rsp,%rdx
    10c9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10cd:	50                   	push   %rax
    10ce:	54                   	push   %rsp
    10cf:	4c 8d 05 fa 03 00 00 	lea    0x3fa(%rip),%r8        # 14d0 <__libc_csu_fini>
    10d6:	48 8d 0d 93 03 00 00 	lea    0x393(%rip),%rcx        # 1470 <__libc_csu_init>
    10dd:	48 8d 3d eb 01 00 00 	lea    0x1eb(%rip),%rdi        # 12cf <main>
    10e4:	ff 15 f6 2e 00 00    	callq  *0x2ef6(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    10ea:	f4                   	hlt    
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010f0 <deregister_tm_clones>:
    10f0:	48 8d 3d e9 2f 00 00 	lea    0x2fe9(%rip),%rdi        # 40e0 <optarg@@GLIBC_2.2.5>
    10f7:	48 8d 05 e2 2f 00 00 	lea    0x2fe2(%rip),%rax        # 40e0 <optarg@@GLIBC_2.2.5>
    10fe:	48 39 f8             	cmp    %rdi,%rax
    1101:	74 15                	je     1118 <deregister_tm_clones+0x28>
    1103:	48 8b 05 ce 2e 00 00 	mov    0x2ece(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    110a:	48 85 c0             	test   %rax,%rax
    110d:	74 09                	je     1118 <deregister_tm_clones+0x28>
    110f:	ff e0                	jmpq   *%rax
    1111:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1118:	c3                   	retq   
    1119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001120 <register_tm_clones>:
    1120:	48 8d 3d b9 2f 00 00 	lea    0x2fb9(%rip),%rdi        # 40e0 <optarg@@GLIBC_2.2.5>
    1127:	48 8d 35 b2 2f 00 00 	lea    0x2fb2(%rip),%rsi        # 40e0 <optarg@@GLIBC_2.2.5>
    112e:	48 29 fe             	sub    %rdi,%rsi
    1131:	48 c1 fe 03          	sar    $0x3,%rsi
    1135:	48 89 f0             	mov    %rsi,%rax
    1138:	48 c1 e8 3f          	shr    $0x3f,%rax
    113c:	48 01 c6             	add    %rax,%rsi
    113f:	48 d1 fe             	sar    %rsi
    1142:	74 14                	je     1158 <register_tm_clones+0x38>
    1144:	48 8b 05 a5 2e 00 00 	mov    0x2ea5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    114b:	48 85 c0             	test   %rax,%rax
    114e:	74 08                	je     1158 <register_tm_clones+0x38>
    1150:	ff e0                	jmpq   *%rax
    1152:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1158:	c3                   	retq   
    1159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001160 <__do_global_dtors_aux>:
    1160:	80 3d a1 2f 00 00 00 	cmpb   $0x0,0x2fa1(%rip)        # 4108 <completed.7325>
    1167:	75 2f                	jne    1198 <__do_global_dtors_aux+0x38>
    1169:	55                   	push   %rbp
    116a:	48 83 3d 86 2e 00 00 	cmpq   $0x0,0x2e86(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1171:	00 
    1172:	48 89 e5             	mov    %rsp,%rbp
    1175:	74 0c                	je     1183 <__do_global_dtors_aux+0x23>
    1177:	48 8b 3d ea 2e 00 00 	mov    0x2eea(%rip),%rdi        # 4068 <__dso_handle>
    117e:	e8 2d ff ff ff       	callq  10b0 <__cxa_finalize@plt>
    1183:	e8 68 ff ff ff       	callq  10f0 <deregister_tm_clones>
    1188:	c6 05 79 2f 00 00 01 	movb   $0x1,0x2f79(%rip)        # 4108 <completed.7325>
    118f:	5d                   	pop    %rbp
    1190:	c3                   	retq   
    1191:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1198:	c3                   	retq   
    1199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011a0 <frame_dummy>:
    11a0:	e9 7b ff ff ff       	jmpq   1120 <register_tm_clones>

00000000000011a5 <multimod_p2>:
    11a5:	48 89 f8             	mov    %rdi,%rax
    11a8:	49 89 d0             	mov    %rdx,%r8
    11ab:	48 99                	cqto   
    11ad:	49 f7 f8             	idiv   %r8
    11b0:	49 89 d1             	mov    %rdx,%r9
    11b3:	48 89 d1             	mov    %rdx,%rcx
    11b6:	48 89 f0             	mov    %rsi,%rax
    11b9:	48 99                	cqto   
    11bb:	49 f7 f8             	idiv   %r8
    11be:	48 89 d6             	mov    %rdx,%rsi
    11c1:	4d 85 c9             	test   %r9,%r9
    11c4:	74 32                	je     11f8 <multimod_p2+0x53>
    11c6:	41 b9 00 00 00 00    	mov    $0x0,%r9d
    11cc:	eb 14                	jmp    11e2 <multimod_p2+0x3d>
    11ce:	48 8d 04 36          	lea    (%rsi,%rsi,1),%rax
    11d2:	ba 00 00 00 00       	mov    $0x0,%edx
    11d7:	49 f7 f0             	div    %r8
    11da:	48 89 d6             	mov    %rdx,%rsi
    11dd:	48 d1 e9             	shr    %rcx
    11e0:	74 16                	je     11f8 <multimod_p2+0x53>
    11e2:	f6 c1 01             	test   $0x1,%cl
    11e5:	74 e7                	je     11ce <multimod_p2+0x29>
    11e7:	4a 8d 04 0e          	lea    (%rsi,%r9,1),%rax
    11eb:	ba 00 00 00 00       	mov    $0x0,%edx
    11f0:	49 f7 f0             	div    %r8
    11f3:	49 89 d1             	mov    %rdx,%r9
    11f6:	eb d6                	jmp    11ce <multimod_p2+0x29>
    11f8:	4c 89 c8             	mov    %r9,%rax
    11fb:	c3                   	retq   

00000000000011fc <multimod_p1>:
    11fc:	48 89 d1             	mov    %rdx,%rcx
    11ff:	48 39 d7             	cmp    %rdx,%rdi
    1202:	7e 0b                	jle    120f <multimod_p1+0x13>
    1204:	48 89 f8             	mov    %rdi,%rax
    1207:	48 99                	cqto   
    1209:	48 f7 f9             	idiv   %rcx
    120c:	48 89 d7             	mov    %rdx,%rdi
    120f:	48 39 f1             	cmp    %rsi,%rcx
    1212:	7d 0b                	jge    121f <multimod_p1+0x23>
    1214:	48 89 f0             	mov    %rsi,%rax
    1217:	48 99                	cqto   
    1219:	48 f7 f9             	idiv   %rcx
    121c:	48 89 d6             	mov    %rdx,%rsi
    121f:	48 89 f8             	mov    %rdi,%rax
    1222:	48 0f af c6          	imul   %rsi,%rax
    1226:	48 89 7c 24 e0       	mov    %rdi,-0x20(%rsp)
    122b:	df 6c 24 e0          	fildll -0x20(%rsp)
    122f:	48 89 74 24 e0       	mov    %rsi,-0x20(%rsp)
    1234:	df 6c 24 e0          	fildll -0x20(%rsp)
    1238:	de c9                	fmulp  %st,%st(1)
    123a:	48 89 4c 24 e0       	mov    %rcx,-0x20(%rsp)
    123f:	df 6c 24 e0          	fildll -0x20(%rsp)
    1243:	de f9                	fdivrp %st,%st(1)
    1245:	d9 7c 24 f6          	fnstcw -0xa(%rsp)
    1249:	0f b7 54 24 f6       	movzwl -0xa(%rsp),%edx
    124e:	80 ce 0c             	or     $0xc,%dh
    1251:	66 89 54 24 f4       	mov    %dx,-0xc(%rsp)
    1256:	d9 6c 24 f4          	fldcw  -0xc(%rsp)
    125a:	df 7c 24 e8          	fistpll -0x18(%rsp)
    125e:	d9 6c 24 f6          	fldcw  -0xa(%rsp)
    1262:	48 8b 54 24 e8       	mov    -0x18(%rsp),%rdx
    1267:	48 0f af d1          	imul   %rcx,%rdx
    126b:	48 29 d0             	sub    %rdx,%rax
    126e:	79 05                	jns    1275 <multimod_p1+0x79>
    1270:	48 01 c8             	add    %rcx,%rax
    1273:	78 fb                	js     1270 <multimod_p1+0x74>
    1275:	48 39 c1             	cmp    %rax,%rcx
    1278:	7f 08                	jg     1282 <multimod_p1+0x86>
    127a:	48 29 c8             	sub    %rcx,%rax
    127d:	48 39 c1             	cmp    %rax,%rcx
    1280:	7e f8                	jle    127a <multimod_p1+0x7e>
    1282:	c3                   	retq   

0000000000001283 <multimod_p3>:
    1283:	49 89 d0             	mov    %rdx,%r8
    1286:	48 89 f8             	mov    %rdi,%rax
    1289:	48 0f af c6          	imul   %rsi,%rax
    128d:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1291:	f2 48 0f 2a c7       	cvtsi2sd %rdi,%xmm0
    1296:	66 0f ef c9          	pxor   %xmm1,%xmm1
    129a:	f2 48 0f 2a ce       	cvtsi2sd %rsi,%xmm1
    129f:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    12a3:	66 0f ef c9          	pxor   %xmm1,%xmm1
    12a7:	f2 48 0f 2a ca       	cvtsi2sd %rdx,%xmm1
    12ac:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    12b0:	f2 48 0f 2c c8       	cvttsd2si %xmm0,%rcx
    12b5:	48 0f af ca          	imul   %rdx,%rcx
    12b9:	48 29 c8             	sub    %rcx,%rax
    12bc:	48 99                	cqto   
    12be:	49 f7 f8             	idiv   %r8
    12c1:	49 01 d0             	add    %rdx,%r8
    12c4:	48 85 d2             	test   %rdx,%rdx
    12c7:	48 89 d0             	mov    %rdx,%rax
    12ca:	49 0f 48 c0          	cmovs  %r8,%rax
    12ce:	c3                   	retq   

00000000000012cf <main>:
    12cf:	41 57                	push   %r15
    12d1:	41 56                	push   %r14
    12d3:	41 55                	push   %r13
    12d5:	41 54                	push   %r12
    12d7:	55                   	push   %rbp
    12d8:	53                   	push   %rbx
    12d9:	48 83 ec 48          	sub    $0x48,%rsp
    12dd:	41 89 ff             	mov    %edi,%r15d
    12e0:	49 89 f6             	mov    %rsi,%r14
    12e3:	bd 00 00 00 00       	mov    $0x0,%ebp
    12e8:	4c 8d 6c 24 1c       	lea    0x1c(%rsp),%r13
    12ed:	4c 8d 25 ac 2d 00 00 	lea    0x2dac(%rip),%r12        # 40a0 <long_option>
    12f4:	48 8d 1d 09 0d 00 00 	lea    0xd09(%rip),%rbx        # 2004 <_IO_stdin_used+0x4>
    12fb:	4d 89 e8             	mov    %r13,%r8
    12fe:	4c 89 e1             	mov    %r12,%rcx
    1301:	48 89 da             	mov    %rbx,%rdx
    1304:	4c 89 f6             	mov    %r14,%rsi
    1307:	44 89 ff             	mov    %r15d,%edi
    130a:	e8 41 fd ff ff       	callq  1050 <getopt_long@plt>
    130f:	83 f8 ff             	cmp    $0xffffffff,%eax
    1312:	74 34                	je     1348 <main+0x79>
    1314:	83 f8 69             	cmp    $0x69,%eax
    1317:	75 e2                	jne    12fb <main+0x2c>
    1319:	ba 0a 00 00 00       	mov    $0xa,%edx
    131e:	be 00 00 00 00       	mov    $0x0,%esi
    1323:	48 8b 3d b6 2d 00 00 	mov    0x2db6(%rip),%rdi        # 40e0 <optarg@@GLIBC_2.2.5>
    132a:	e8 41 fd ff ff       	callq  1070 <strtol@plt>
    132f:	8d 50 ff             	lea    -0x1(%rax),%edx
    1332:	83 fa 02             	cmp    $0x2,%edx
    1335:	77 c4                	ja     12fb <main+0x2c>
    1337:	89 d0                	mov    %edx,%eax
    1339:	48 98                	cltq   
    133b:	48 8d 0d 2e 2d 00 00 	lea    0x2d2e(%rip),%rcx        # 4070 <multimod_tab>
    1342:	48 8b 2c c1          	mov    (%rcx,%rax,8),%rbp
    1346:	eb b3                	jmp    12fb <main+0x2c>
    1348:	48 85 ed             	test   %rbp,%rbp
    134b:	74 47                	je     1394 <main+0xc5>
    134d:	48 8d 35 cf 0c 00 00 	lea    0xccf(%rip),%rsi        # 2023 <_IO_stdin_used+0x23>
    1354:	48 8d 3d ca 0c 00 00 	lea    0xcca(%rip),%rdi        # 2025 <_IO_stdin_used+0x25>
    135b:	e8 20 fd ff ff       	callq  1080 <fopen@plt>
    1360:	48 89 04 24          	mov    %rax,(%rsp)
    1364:	e8 d7 fc ff ff       	callq  1040 <clock@plt>
    1369:	48 89 05 b0 2d 00 00 	mov    %rax,0x2db0(%rip)        # 4120 <start>
    1370:	bb 40 42 0f 00       	mov    $0xf4240,%ebx
    1375:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    137c:	00 00 
    137e:	4c 8d 7c 24 20       	lea    0x20(%rsp),%r15
    1383:	4c 8d 74 24 28       	lea    0x28(%rsp),%r14
    1388:	4c 8d 6c 24 30       	lea    0x30(%rsp),%r13
    138d:	4c 8d 64 24 38       	lea    0x38(%rsp),%r12
    1392:	eb 2c                	jmp    13c0 <main+0xf1>
    1394:	48 8b 0d 65 2d 00 00 	mov    0x2d65(%rip),%rcx        # 4100 <stderr@@GLIBC_2.2.5>
    139b:	ba 1b 00 00 00       	mov    $0x1b,%edx
    13a0:	be 01 00 00 00       	mov    $0x1,%esi
    13a5:	48 8d 3d 5b 0c 00 00 	lea    0xc5b(%rip),%rdi        # 2007 <_IO_stdin_used+0x7>
    13ac:	e8 ef fc ff ff       	callq  10a0 <fwrite@plt>
    13b1:	bf 01 00 00 00       	mov    $0x1,%edi
    13b6:	e8 d5 fc ff ff       	callq  1090 <exit@plt>
    13bb:	83 eb 01             	sub    $0x1,%ebx
    13be:	74 41                	je     1401 <main+0x132>
    13c0:	4d 89 f9             	mov    %r15,%r9
    13c3:	4d 89 f0             	mov    %r14,%r8
    13c6:	4c 89 e9             	mov    %r13,%rcx
    13c9:	4c 89 e2             	mov    %r12,%rdx
    13cc:	48 8d 35 57 0c 00 00 	lea    0xc57(%rip),%rsi        # 202a <_IO_stdin_used+0x2a>
    13d3:	48 8b 3c 24          	mov    (%rsp),%rdi
    13d7:	b8 00 00 00 00       	mov    $0x0,%eax
    13dc:	e8 4f fc ff ff       	callq  1030 <__isoc99_fscanf@plt>
    13e1:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
    13e6:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
    13eb:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
    13f0:	ff d5                	callq  *%rbp
    13f2:	48 39 44 24 20       	cmp    %rax,0x20(%rsp)
    13f7:	75 c2                	jne    13bb <main+0xec>
    13f9:	48 83 44 24 08 01    	addq   $0x1,0x8(%rsp)
    13ff:	eb ba                	jmp    13bb <main+0xec>
    1401:	e8 3a fc ff ff       	callq  1040 <clock@plt>
    1406:	48 89 05 0b 2d 00 00 	mov    %rax,0x2d0b(%rip)        # 4118 <stop>
    140d:	48 2b 05 0c 2d 00 00 	sub    0x2d0c(%rip),%rax        # 4120 <start>
    1414:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1418:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    141d:	f2 0f 5e 05 4b 0c 00 	divsd  0xc4b(%rip),%xmm0        # 2070 <_IO_stdin_used+0x70>
    1424:	00 
    1425:	f2 0f 11 05 e3 2c 00 	movsd  %xmm0,0x2ce3(%rip)        # 4110 <duration>
    142c:	00 
    142d:	48 8d 3d 06 0c 00 00 	lea    0xc06(%rip),%rdi        # 203a <_IO_stdin_used+0x3a>
    1434:	b8 01 00 00 00       	mov    $0x1,%eax
    1439:	e8 22 fc ff ff       	callq  1060 <printf@plt>
    143e:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    1443:	48 8d 3d 05 0c 00 00 	lea    0xc05(%rip),%rdi        # 204f <_IO_stdin_used+0x4f>
    144a:	b8 00 00 00 00       	mov    $0x0,%eax
    144f:	e8 0c fc ff ff       	callq  1060 <printf@plt>
    1454:	b8 00 00 00 00       	mov    $0x0,%eax
    1459:	48 83 c4 48          	add    $0x48,%rsp
    145d:	5b                   	pop    %rbx
    145e:	5d                   	pop    %rbp
    145f:	41 5c                	pop    %r12
    1461:	41 5d                	pop    %r13
    1463:	41 5e                	pop    %r14
    1465:	41 5f                	pop    %r15
    1467:	c3                   	retq   
    1468:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    146f:	00 

0000000000001470 <__libc_csu_init>:
    1470:	41 57                	push   %r15
    1472:	49 89 d7             	mov    %rdx,%r15
    1475:	41 56                	push   %r14
    1477:	49 89 f6             	mov    %rsi,%r14
    147a:	41 55                	push   %r13
    147c:	41 89 fd             	mov    %edi,%r13d
    147f:	41 54                	push   %r12
    1481:	4c 8d 25 60 29 00 00 	lea    0x2960(%rip),%r12        # 3de8 <__frame_dummy_init_array_entry>
    1488:	55                   	push   %rbp
    1489:	48 8d 2d 60 29 00 00 	lea    0x2960(%rip),%rbp        # 3df0 <__init_array_end>
    1490:	53                   	push   %rbx
    1491:	4c 29 e5             	sub    %r12,%rbp
    1494:	48 83 ec 08          	sub    $0x8,%rsp
    1498:	e8 63 fb ff ff       	callq  1000 <_init>
    149d:	48 c1 fd 03          	sar    $0x3,%rbp
    14a1:	74 1b                	je     14be <__libc_csu_init+0x4e>
    14a3:	31 db                	xor    %ebx,%ebx
    14a5:	0f 1f 00             	nopl   (%rax)
    14a8:	4c 89 fa             	mov    %r15,%rdx
    14ab:	4c 89 f6             	mov    %r14,%rsi
    14ae:	44 89 ef             	mov    %r13d,%edi
    14b1:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    14b5:	48 83 c3 01          	add    $0x1,%rbx
    14b9:	48 39 dd             	cmp    %rbx,%rbp
    14bc:	75 ea                	jne    14a8 <__libc_csu_init+0x38>
    14be:	48 83 c4 08          	add    $0x8,%rsp
    14c2:	5b                   	pop    %rbx
    14c3:	5d                   	pop    %rbp
    14c4:	41 5c                	pop    %r12
    14c6:	41 5d                	pop    %r13
    14c8:	41 5e                	pop    %r14
    14ca:	41 5f                	pop    %r15
    14cc:	c3                   	retq   
    14cd:	0f 1f 00             	nopl   (%rax)

00000000000014d0 <__libc_csu_fini>:
    14d0:	c3                   	retq   

Disassembly of section .fini:

00000000000014d4 <_fini>:
    14d4:	48 83 ec 08          	sub    $0x8,%rsp
    14d8:	48 83 c4 08          	add    $0x8,%rsp
    14dc:	c3                   	retq   
