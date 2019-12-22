
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

0000000000001070 <fopen@plt>:
    1070:	ff 25 c2 2f 00 00    	jmpq   *0x2fc2(%rip)        # 4038 <fopen@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	pushq  $0x4
    107b:	e9 a0 ff ff ff       	jmpq   1020 <.plt>

0000000000001080 <atoi@plt>:
    1080:	ff 25 ba 2f 00 00    	jmpq   *0x2fba(%rip)        # 4040 <atoi@GLIBC_2.2.5>
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
    10cf:	4c 8d 05 9a 04 00 00 	lea    0x49a(%rip),%r8        # 1570 <__libc_csu_fini>
    10d6:	48 8d 0d 33 04 00 00 	lea    0x433(%rip),%rcx        # 1510 <__libc_csu_init>
    10dd:	48 8d 3d 64 02 00 00 	lea    0x264(%rip),%rdi        # 1348 <main>
    10e4:	ff 15 f6 2e 00 00    	callq  *0x2ef6(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    10ea:	f4                   	hlt    
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000010f0 <deregister_tm_clones>:
    10f0:	48 8d 3d e1 2f 00 00 	lea    0x2fe1(%rip),%rdi        # 40d8 <__TMC_END__>
    10f7:	48 8d 05 da 2f 00 00 	lea    0x2fda(%rip),%rax        # 40d8 <__TMC_END__>
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
    1120:	48 8d 3d b1 2f 00 00 	lea    0x2fb1(%rip),%rdi        # 40d8 <__TMC_END__>
    1127:	48 8d 35 aa 2f 00 00 	lea    0x2faa(%rip),%rsi        # 40d8 <__TMC_END__>
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
    11a5:	55                   	push   %rbp
    11a6:	48 89 e5             	mov    %rsp,%rbp
    11a9:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    11ad:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    11b1:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    11b5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    11b9:	48 99                	cqto   
    11bb:	48 f7 7d c8          	idivq  -0x38(%rbp)
    11bf:	48 89 d0             	mov    %rdx,%rax
    11c2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    11c6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    11ca:	48 99                	cqto   
    11cc:	48 f7 7d c8          	idivq  -0x38(%rbp)
    11d0:	48 89 d0             	mov    %rdx,%rax
    11d3:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    11d7:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    11de:	00 
    11df:	eb 42                	jmp    1223 <multimod_p2+0x7e>
    11e1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    11e5:	83 e0 01             	and    $0x1,%eax
    11e8:	48 85 c0             	test   %rax,%rax
    11eb:	74 1b                	je     1208 <multimod_p2+0x63>
    11ed:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    11f1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    11f5:	48 01 d0             	add    %rdx,%rax
    11f8:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    11fc:	ba 00 00 00 00       	mov    $0x0,%edx
    1201:	48 f7 f1             	div    %rcx
    1204:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    1208:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    120c:	48 01 c0             	add    %rax,%rax
    120f:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    1213:	ba 00 00 00 00       	mov    $0x0,%edx
    1218:	48 f7 f1             	div    %rcx
    121b:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
    121f:	48 d1 6d f8          	shrq   -0x8(%rbp)
    1223:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1228:	75 b7                	jne    11e1 <multimod_p2+0x3c>
    122a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    122e:	5d                   	pop    %rbp
    122f:	c3                   	retq   

0000000000001230 <multimod_p1>:
    1230:	55                   	push   %rbp
    1231:	48 89 e5             	mov    %rsp,%rbp
    1234:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1238:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    123c:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    1240:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1244:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
    1248:	7e 0e                	jle    1258 <multimod_p1+0x28>
    124a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    124e:	48 99                	cqto   
    1250:	48 f7 7d d8          	idivq  -0x28(%rbp)
    1254:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    1258:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    125c:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
    1260:	7e 0e                	jle    1270 <multimod_p1+0x40>
    1262:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1266:	48 99                	cqto   
    1268:	48 f7 7d d8          	idivq  -0x28(%rbp)
    126c:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
    1270:	df 6d e8             	fildll -0x18(%rbp)
    1273:	df 6d e0             	fildll -0x20(%rbp)
    1276:	de c9                	fmulp  %st,%st(1)
    1278:	df 6d d8             	fildll -0x28(%rbp)
    127b:	de f9                	fdivrp %st,%st(1)
    127d:	d9 7d d6             	fnstcw -0x2a(%rbp)
    1280:	0f b7 45 d6          	movzwl -0x2a(%rbp),%eax
    1284:	80 cc 0c             	or     $0xc,%ah
    1287:	66 89 45 d4          	mov    %ax,-0x2c(%rbp)
    128b:	d9 6d d4             	fldcw  -0x2c(%rbp)
    128e:	df 7d f0             	fistpll -0x10(%rbp)
    1291:	d9 6d d6             	fldcw  -0x2a(%rbp)
    1294:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1298:	48 0f af 45 e0       	imul   -0x20(%rbp),%rax
    129d:	48 89 c2             	mov    %rax,%rdx
    12a0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    12a4:	48 0f af 45 d8       	imul   -0x28(%rbp),%rax
    12a9:	48 29 c2             	sub    %rax,%rdx
    12ac:	48 89 d0             	mov    %rdx,%rax
    12af:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    12b3:	eb 08                	jmp    12bd <multimod_p1+0x8d>
    12b5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    12b9:	48 01 45 f8          	add    %rax,-0x8(%rbp)
    12bd:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    12c2:	78 f1                	js     12b5 <multimod_p1+0x85>
    12c4:	eb 08                	jmp    12ce <multimod_p1+0x9e>
    12c6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    12ca:	48 29 45 f8          	sub    %rax,-0x8(%rbp)
    12ce:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    12d2:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
    12d6:	7d ee                	jge    12c6 <multimod_p1+0x96>
    12d8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    12dc:	5d                   	pop    %rbp
    12dd:	c3                   	retq   

00000000000012de <multimod_p3>:
    12de:	55                   	push   %rbp
    12df:	48 89 e5             	mov    %rsp,%rbp
    12e2:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    12e6:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    12ea:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    12ee:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    12f2:	48 0f af 45 e0       	imul   -0x20(%rbp),%rax
    12f7:	48 89 c2             	mov    %rax,%rdx
    12fa:	f2 48 0f 2a 4d e8    	cvtsi2sdq -0x18(%rbp),%xmm1
    1300:	f2 48 0f 2a 45 e0    	cvtsi2sdq -0x20(%rbp),%xmm0
    1306:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    130a:	f2 48 0f 2a 4d d8    	cvtsi2sdq -0x28(%rbp),%xmm1
    1310:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    1314:	f2 48 0f 2c c0       	cvttsd2si %xmm0,%rax
    1319:	48 0f af 45 d8       	imul   -0x28(%rbp),%rax
    131e:	48 29 c2             	sub    %rax,%rdx
    1321:	48 89 d0             	mov    %rdx,%rax
    1324:	48 99                	cqto   
    1326:	48 f7 7d d8          	idivq  -0x28(%rbp)
    132a:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
    132e:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1333:	79 0d                	jns    1342 <multimod_p3+0x64>
    1335:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    1339:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    133d:	48 01 d0             	add    %rdx,%rax
    1340:	eb 04                	jmp    1346 <multimod_p3+0x68>
    1342:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1346:	5d                   	pop    %rbp
    1347:	c3                   	retq   

0000000000001348 <main>:
    1348:	55                   	push   %rbp
    1349:	48 89 e5             	mov    %rsp,%rbp
    134c:	48 83 ec 70          	sub    $0x70,%rsp
    1350:	89 7d 9c             	mov    %edi,-0x64(%rbp)
    1353:	48 89 75 90          	mov    %rsi,-0x70(%rbp)
    1357:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    135e:	00 
    135f:	48 8d 55 ac          	lea    -0x54(%rbp),%rdx
    1363:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
    1367:	8b 45 9c             	mov    -0x64(%rbp),%eax
    136a:	49 89 d0             	mov    %rdx,%r8
    136d:	48 8d 0d 0c 2d 00 00 	lea    0x2d0c(%rip),%rcx        # 4080 <long_option>
    1374:	48 8d 15 8f 0c 00 00 	lea    0xc8f(%rip),%rdx        # 200a <_IO_stdin_used+0xa>
    137b:	89 c7                	mov    %eax,%edi
    137d:	e8 ce fc ff ff       	callq  1050 <getopt_long@plt>
    1382:	89 45 e8             	mov    %eax,-0x18(%rbp)
    1385:	83 7d e8 ff          	cmpl   $0xffffffff,-0x18(%rbp)
    1389:	75 09                	jne    1394 <main+0x4c>
    138b:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1390:	74 49                	je     13db <main+0x93>
    1392:	eb 71                	jmp    1405 <main+0xbd>
    1394:	83 7d e8 69          	cmpl   $0x69,-0x18(%rbp)
    1398:	75 c5                	jne    135f <main+0x17>
    139a:	48 8b 05 3f 2d 00 00 	mov    0x2d3f(%rip),%rax        # 40e0 <optarg@@GLIBC_2.2.5>
    13a1:	48 89 c7             	mov    %rax,%rdi
    13a4:	e8 d7 fc ff ff       	callq  1080 <atoi@plt>
    13a9:	89 45 d4             	mov    %eax,-0x2c(%rbp)
    13ac:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
    13b0:	7e ad                	jle    135f <main+0x17>
    13b2:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    13b5:	83 f8 03             	cmp    $0x3,%eax
    13b8:	77 a5                	ja     135f <main+0x17>
    13ba:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    13bd:	83 e8 01             	sub    $0x1,%eax
    13c0:	48 98                	cltq   
    13c2:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    13c9:	00 
    13ca:	48 8d 05 ef 2c 00 00 	lea    0x2cef(%rip),%rax        # 40c0 <multimod_tab>
    13d1:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    13d5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    13d9:	eb 84                	jmp    135f <main+0x17>
    13db:	48 8b 05 1e 2d 00 00 	mov    0x2d1e(%rip),%rax        # 4100 <stderr@@GLIBC_2.2.5>
    13e2:	48 89 c1             	mov    %rax,%rcx
    13e5:	ba 1b 00 00 00       	mov    $0x1b,%edx
    13ea:	be 01 00 00 00       	mov    $0x1,%esi
    13ef:	48 8d 3d 17 0c 00 00 	lea    0xc17(%rip),%rdi        # 200d <_IO_stdin_used+0xd>
    13f6:	e8 a5 fc ff ff       	callq  10a0 <fwrite@plt>
    13fb:	bf 01 00 00 00       	mov    $0x1,%edi
    1400:	e8 8b fc ff ff       	callq  1090 <exit@plt>
    1405:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    140c:	00 
    140d:	48 8d 35 15 0c 00 00 	lea    0xc15(%rip),%rsi        # 2029 <_IO_stdin_used+0x29>
    1414:	48 8d 3d 10 0c 00 00 	lea    0xc10(%rip),%rdi        # 202b <_IO_stdin_used+0x2b>
    141b:	e8 50 fc ff ff       	callq  1070 <fopen@plt>
    1420:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    1424:	e8 17 fc ff ff       	callq  1040 <clock@plt>
    1429:	48 89 05 f0 2c 00 00 	mov    %rax,0x2cf0(%rip)        # 4120 <start>
    1430:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    1437:	eb 5a                	jmp    1493 <main+0x14b>
    1439:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
    143d:	48 8d 75 b8          	lea    -0x48(%rbp),%rsi
    1441:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
    1445:	48 8d 55 c8          	lea    -0x38(%rbp),%rdx
    1449:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    144d:	49 89 f9             	mov    %rdi,%r9
    1450:	49 89 f0             	mov    %rsi,%r8
    1453:	48 8d 35 d6 0b 00 00 	lea    0xbd6(%rip),%rsi        # 2030 <_IO_stdin_used+0x30>
    145a:	48 89 c7             	mov    %rax,%rdi
    145d:	b8 00 00 00 00       	mov    $0x0,%eax
    1462:	e8 c9 fb ff ff       	callq  1030 <__isoc99_fscanf@plt>
    1467:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
    146b:	48 8b 75 c0          	mov    -0x40(%rbp),%rsi
    146f:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    1473:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1477:	48 89 cf             	mov    %rcx,%rdi
    147a:	ff d0                	callq  *%rax
    147c:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    1480:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    1484:	48 39 45 d8          	cmp    %rax,-0x28(%rbp)
    1488:	75 05                	jne    148f <main+0x147>
    148a:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
    148f:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    1493:	81 7d ec 3f 42 0f 00 	cmpl   $0xf423f,-0x14(%rbp)
    149a:	7e 9d                	jle    1439 <main+0xf1>
    149c:	e8 9f fb ff ff       	callq  1040 <clock@plt>
    14a1:	48 89 05 70 2c 00 00 	mov    %rax,0x2c70(%rip)        # 4118 <stop>
    14a8:	48 8b 15 69 2c 00 00 	mov    0x2c69(%rip),%rdx        # 4118 <stop>
    14af:	48 8b 05 6a 2c 00 00 	mov    0x2c6a(%rip),%rax        # 4120 <start>
    14b6:	48 29 c2             	sub    %rax,%rdx
    14b9:	48 89 d0             	mov    %rdx,%rax
    14bc:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    14c1:	f2 0f 10 0d a7 0b 00 	movsd  0xba7(%rip),%xmm1        # 2070 <_IO_stdin_used+0x70>
    14c8:	00 
    14c9:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    14cd:	f2 0f 11 05 3b 2c 00 	movsd  %xmm0,0x2c3b(%rip)        # 4110 <duration>
    14d4:	00 
    14d5:	f2 0f 10 05 33 2c 00 	movsd  0x2c33(%rip),%xmm0        # 4110 <duration>
    14dc:	00 
    14dd:	48 8d 3d 5c 0b 00 00 	lea    0xb5c(%rip),%rdi        # 2040 <_IO_stdin_used+0x40>
    14e4:	b8 01 00 00 00       	mov    $0x1,%eax
    14e9:	e8 72 fb ff ff       	callq  1060 <printf@plt>
    14ee:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    14f2:	48 89 c6             	mov    %rax,%rsi
    14f5:	48 8d 3d 59 0b 00 00 	lea    0xb59(%rip),%rdi        # 2055 <_IO_stdin_used+0x55>
    14fc:	b8 00 00 00 00       	mov    $0x0,%eax
    1501:	e8 5a fb ff ff       	callq  1060 <printf@plt>
    1506:	b8 00 00 00 00       	mov    $0x0,%eax
    150b:	c9                   	leaveq 
    150c:	c3                   	retq   
    150d:	0f 1f 00             	nopl   (%rax)

0000000000001510 <__libc_csu_init>:
    1510:	41 57                	push   %r15
    1512:	49 89 d7             	mov    %rdx,%r15
    1515:	41 56                	push   %r14
    1517:	49 89 f6             	mov    %rsi,%r14
    151a:	41 55                	push   %r13
    151c:	41 89 fd             	mov    %edi,%r13d
    151f:	41 54                	push   %r12
    1521:	4c 8d 25 c0 28 00 00 	lea    0x28c0(%rip),%r12        # 3de8 <__frame_dummy_init_array_entry>
    1528:	55                   	push   %rbp
    1529:	48 8d 2d c0 28 00 00 	lea    0x28c0(%rip),%rbp        # 3df0 <__init_array_end>
    1530:	53                   	push   %rbx
    1531:	4c 29 e5             	sub    %r12,%rbp
    1534:	48 83 ec 08          	sub    $0x8,%rsp
    1538:	e8 c3 fa ff ff       	callq  1000 <_init>
    153d:	48 c1 fd 03          	sar    $0x3,%rbp
    1541:	74 1b                	je     155e <__libc_csu_init+0x4e>
    1543:	31 db                	xor    %ebx,%ebx
    1545:	0f 1f 00             	nopl   (%rax)
    1548:	4c 89 fa             	mov    %r15,%rdx
    154b:	4c 89 f6             	mov    %r14,%rsi
    154e:	44 89 ef             	mov    %r13d,%edi
    1551:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    1555:	48 83 c3 01          	add    $0x1,%rbx
    1559:	48 39 dd             	cmp    %rbx,%rbp
    155c:	75 ea                	jne    1548 <__libc_csu_init+0x38>
    155e:	48 83 c4 08          	add    $0x8,%rsp
    1562:	5b                   	pop    %rbx
    1563:	5d                   	pop    %rbp
    1564:	41 5c                	pop    %r12
    1566:	41 5d                	pop    %r13
    1568:	41 5e                	pop    %r14
    156a:	41 5f                	pop    %r15
    156c:	c3                   	retq   
    156d:	0f 1f 00             	nopl   (%rax)

0000000000001570 <__libc_csu_fini>:
    1570:	c3                   	retq   

Disassembly of section .fini:

0000000000001574 <_fini>:
    1574:	48 83 ec 08          	sub    $0x8,%rsp
    1578:	48 83 c4 08          	add    $0x8,%rsp
    157c:	c3                   	retq   
