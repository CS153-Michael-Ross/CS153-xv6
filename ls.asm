
_ls:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	57                   	push   %edi
   4:	56                   	push   %esi
   5:	53                   	push   %ebx
   6:	bb 01 00 00 00       	mov    $0x1,%ebx
   b:	83 e4 f0             	and    $0xfffffff0,%esp
   e:	83 ec 10             	sub    $0x10,%esp
  11:	8b 75 08             	mov    0x8(%ebp),%esi
  14:	8b 7d 0c             	mov    0xc(%ebp),%edi
  17:	83 fe 01             	cmp    $0x1,%esi
  1a:	7e 22                	jle    3e <main+0x3e>
  1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  20:	8b 04 9f             	mov    (%edi,%ebx,4),%eax
  23:	83 c3 01             	add    $0x1,%ebx
  26:	89 04 24             	mov    %eax,(%esp)
  29:	e8 d2 00 00 00       	call   100 <ls>
  2e:	39 f3                	cmp    %esi,%ebx
  30:	75 ee                	jne    20 <main+0x20>
  32:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  39:	e8 74 05 00 00       	call   5b2 <exit>
  3e:	c7 04 24 ae 0a 00 00 	movl   $0xaae,(%esp)
  45:	e8 b6 00 00 00       	call   100 <ls>
  4a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  51:	e8 5c 05 00 00       	call   5b2 <exit>
  56:	66 90                	xchg   %ax,%ax
  58:	66 90                	xchg   %ax,%ax
  5a:	66 90                	xchg   %ax,%ax
  5c:	66 90                	xchg   %ax,%ax
  5e:	66 90                	xchg   %ax,%ax

00000060 <fmtname>:
  60:	55                   	push   %ebp
  61:	89 e5                	mov    %esp,%ebp
  63:	56                   	push   %esi
  64:	53                   	push   %ebx
  65:	83 ec 10             	sub    $0x10,%esp
  68:	8b 5d 08             	mov    0x8(%ebp),%ebx
  6b:	89 1c 24             	mov    %ebx,(%esp)
  6e:	e8 9d 03 00 00       	call   410 <strlen>
  73:	01 d8                	add    %ebx,%eax
  75:	73 10                	jae    87 <fmtname+0x27>
  77:	eb 13                	jmp    8c <fmtname+0x2c>
  79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  80:	83 e8 01             	sub    $0x1,%eax
  83:	39 c3                	cmp    %eax,%ebx
  85:	77 05                	ja     8c <fmtname+0x2c>
  87:	80 38 2f             	cmpb   $0x2f,(%eax)
  8a:	75 f4                	jne    80 <fmtname+0x20>
  8c:	8d 58 01             	lea    0x1(%eax),%ebx
  8f:	89 1c 24             	mov    %ebx,(%esp)
  92:	e8 79 03 00 00       	call   410 <strlen>
  97:	83 f8 0d             	cmp    $0xd,%eax
  9a:	77 53                	ja     ef <fmtname+0x8f>
  9c:	89 1c 24             	mov    %ebx,(%esp)
  9f:	e8 6c 03 00 00       	call   410 <strlen>
  a4:	89 5c 24 04          	mov    %ebx,0x4(%esp)
  a8:	c7 04 24 98 0d 00 00 	movl   $0xd98,(%esp)
  af:	89 44 24 08          	mov    %eax,0x8(%esp)
  b3:	e8 c8 04 00 00       	call   580 <memmove>
  b8:	89 1c 24             	mov    %ebx,(%esp)
  bb:	e8 50 03 00 00       	call   410 <strlen>
  c0:	89 1c 24             	mov    %ebx,(%esp)
  c3:	bb 98 0d 00 00       	mov    $0xd98,%ebx
  c8:	89 c6                	mov    %eax,%esi
  ca:	e8 41 03 00 00       	call   410 <strlen>
  cf:	ba 0e 00 00 00       	mov    $0xe,%edx
  d4:	29 f2                	sub    %esi,%edx
  d6:	89 54 24 08          	mov    %edx,0x8(%esp)
  da:	c7 44 24 04 20 00 00 	movl   $0x20,0x4(%esp)
  e1:	00 
  e2:	05 98 0d 00 00       	add    $0xd98,%eax
  e7:	89 04 24             	mov    %eax,(%esp)
  ea:	e8 51 03 00 00       	call   440 <memset>
  ef:	83 c4 10             	add    $0x10,%esp
  f2:	89 d8                	mov    %ebx,%eax
  f4:	5b                   	pop    %ebx
  f5:	5e                   	pop    %esi
  f6:	5d                   	pop    %ebp
  f7:	c3                   	ret    
  f8:	90                   	nop
  f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000100 <ls>:
 100:	55                   	push   %ebp
 101:	89 e5                	mov    %esp,%ebp
 103:	57                   	push   %edi
 104:	56                   	push   %esi
 105:	53                   	push   %ebx
 106:	81 ec 6c 02 00 00    	sub    $0x26c,%esp
 10c:	8b 7d 08             	mov    0x8(%ebp),%edi
 10f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 116:	00 
 117:	89 3c 24             	mov    %edi,(%esp)
 11a:	e8 d3 04 00 00       	call   5f2 <open>
 11f:	85 c0                	test   %eax,%eax
 121:	89 c3                	mov    %eax,%ebx
 123:	0f 88 c7 01 00 00    	js     2f0 <ls+0x1f0>
 129:	8d b5 d4 fd ff ff    	lea    -0x22c(%ebp),%esi
 12f:	89 74 24 04          	mov    %esi,0x4(%esp)
 133:	89 04 24             	mov    %eax,(%esp)
 136:	e8 cf 04 00 00       	call   60a <fstat>
 13b:	85 c0                	test   %eax,%eax
 13d:	0f 88 f5 01 00 00    	js     338 <ls+0x238>
 143:	0f b7 85 d4 fd ff ff 	movzwl -0x22c(%ebp),%eax
 14a:	66 83 f8 01          	cmp    $0x1,%ax
 14e:	74 68                	je     1b8 <ls+0xb8>
 150:	66 83 f8 02          	cmp    $0x2,%ax
 154:	75 48                	jne    19e <ls+0x9e>
 156:	8b 95 e4 fd ff ff    	mov    -0x21c(%ebp),%edx
 15c:	89 3c 24             	mov    %edi,(%esp)
 15f:	8b b5 dc fd ff ff    	mov    -0x224(%ebp),%esi
 165:	89 95 b4 fd ff ff    	mov    %edx,-0x24c(%ebp)
 16b:	e8 f0 fe ff ff       	call   60 <fmtname>
 170:	8b 95 b4 fd ff ff    	mov    -0x24c(%ebp),%edx
 176:	89 74 24 10          	mov    %esi,0x10(%esp)
 17a:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
 181:	00 
 182:	c7 44 24 04 8e 0a 00 	movl   $0xa8e,0x4(%esp)
 189:	00 
 18a:	89 54 24 14          	mov    %edx,0x14(%esp)
 18e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 195:	89 44 24 08          	mov    %eax,0x8(%esp)
 199:	e8 62 05 00 00       	call   700 <printf>
 19e:	89 1c 24             	mov    %ebx,(%esp)
 1a1:	e8 34 04 00 00       	call   5da <close>
 1a6:	81 c4 6c 02 00 00    	add    $0x26c,%esp
 1ac:	5b                   	pop    %ebx
 1ad:	5e                   	pop    %esi
 1ae:	5f                   	pop    %edi
 1af:	5d                   	pop    %ebp
 1b0:	c3                   	ret    
 1b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1b8:	89 3c 24             	mov    %edi,(%esp)
 1bb:	e8 50 02 00 00       	call   410 <strlen>
 1c0:	83 c0 10             	add    $0x10,%eax
 1c3:	3d 00 02 00 00       	cmp    $0x200,%eax
 1c8:	0f 87 4a 01 00 00    	ja     318 <ls+0x218>
 1ce:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 1d4:	89 7c 24 04          	mov    %edi,0x4(%esp)
 1d8:	8d bd c4 fd ff ff    	lea    -0x23c(%ebp),%edi
 1de:	89 04 24             	mov    %eax,(%esp)
 1e1:	e8 aa 01 00 00       	call   390 <strcpy>
 1e6:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 1ec:	89 04 24             	mov    %eax,(%esp)
 1ef:	e8 1c 02 00 00       	call   410 <strlen>
 1f4:	8d 8d e8 fd ff ff    	lea    -0x218(%ebp),%ecx
 1fa:	01 c8                	add    %ecx,%eax
 1fc:	8d 48 01             	lea    0x1(%eax),%ecx
 1ff:	89 85 a8 fd ff ff    	mov    %eax,-0x258(%ebp)
 205:	89 8d a4 fd ff ff    	mov    %ecx,-0x25c(%ebp)
 20b:	c6 00 2f             	movb   $0x2f,(%eax)
 20e:	66 90                	xchg   %ax,%ax
 210:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 217:	00 
 218:	89 7c 24 04          	mov    %edi,0x4(%esp)
 21c:	89 1c 24             	mov    %ebx,(%esp)
 21f:	e8 a6 03 00 00       	call   5ca <read>
 224:	83 f8 10             	cmp    $0x10,%eax
 227:	0f 85 71 ff ff ff    	jne    19e <ls+0x9e>
 22d:	66 83 bd c4 fd ff ff 	cmpw   $0x0,-0x23c(%ebp)
 234:	00 
 235:	74 d9                	je     210 <ls+0x110>
 237:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
 23d:	89 44 24 04          	mov    %eax,0x4(%esp)
 241:	8b 85 a4 fd ff ff    	mov    -0x25c(%ebp),%eax
 247:	c7 44 24 08 0e 00 00 	movl   $0xe,0x8(%esp)
 24e:	00 
 24f:	89 04 24             	mov    %eax,(%esp)
 252:	e8 29 03 00 00       	call   580 <memmove>
 257:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
 25d:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
 261:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 267:	89 74 24 04          	mov    %esi,0x4(%esp)
 26b:	89 04 24             	mov    %eax,(%esp)
 26e:	e8 8d 02 00 00       	call   500 <stat>
 273:	85 c0                	test   %eax,%eax
 275:	0f 88 e5 00 00 00    	js     360 <ls+0x260>
 27b:	0f bf 95 d4 fd ff ff 	movswl -0x22c(%ebp),%edx
 282:	8b 8d e4 fd ff ff    	mov    -0x21c(%ebp),%ecx
 288:	8b 85 dc fd ff ff    	mov    -0x224(%ebp),%eax
 28e:	89 95 b0 fd ff ff    	mov    %edx,-0x250(%ebp)
 294:	8d 95 e8 fd ff ff    	lea    -0x218(%ebp),%edx
 29a:	89 14 24             	mov    %edx,(%esp)
 29d:	89 8d ac fd ff ff    	mov    %ecx,-0x254(%ebp)
 2a3:	89 85 b4 fd ff ff    	mov    %eax,-0x24c(%ebp)
 2a9:	e8 b2 fd ff ff       	call   60 <fmtname>
 2ae:	8b 8d ac fd ff ff    	mov    -0x254(%ebp),%ecx
 2b4:	8b 95 b0 fd ff ff    	mov    -0x250(%ebp),%edx
 2ba:	c7 44 24 04 8e 0a 00 	movl   $0xa8e,0x4(%esp)
 2c1:	00 
 2c2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 2c9:	89 4c 24 14          	mov    %ecx,0x14(%esp)
 2cd:	8b 8d b4 fd ff ff    	mov    -0x24c(%ebp),%ecx
 2d3:	89 54 24 0c          	mov    %edx,0xc(%esp)
 2d7:	89 44 24 08          	mov    %eax,0x8(%esp)
 2db:	89 4c 24 10          	mov    %ecx,0x10(%esp)
 2df:	e8 1c 04 00 00       	call   700 <printf>
 2e4:	e9 27 ff ff ff       	jmp    210 <ls+0x110>
 2e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2f0:	89 7c 24 08          	mov    %edi,0x8(%esp)
 2f4:	c7 44 24 04 66 0a 00 	movl   $0xa66,0x4(%esp)
 2fb:	00 
 2fc:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 303:	e8 f8 03 00 00       	call   700 <printf>
 308:	81 c4 6c 02 00 00    	add    $0x26c,%esp
 30e:	5b                   	pop    %ebx
 30f:	5e                   	pop    %esi
 310:	5f                   	pop    %edi
 311:	5d                   	pop    %ebp
 312:	c3                   	ret    
 313:	90                   	nop
 314:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 318:	c7 44 24 04 9b 0a 00 	movl   $0xa9b,0x4(%esp)
 31f:	00 
 320:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 327:	e8 d4 03 00 00       	call   700 <printf>
 32c:	e9 6d fe ff ff       	jmp    19e <ls+0x9e>
 331:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 338:	89 7c 24 08          	mov    %edi,0x8(%esp)
 33c:	c7 44 24 04 7a 0a 00 	movl   $0xa7a,0x4(%esp)
 343:	00 
 344:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 34b:	e8 b0 03 00 00       	call   700 <printf>
 350:	89 1c 24             	mov    %ebx,(%esp)
 353:	e8 82 02 00 00       	call   5da <close>
 358:	e9 49 fe ff ff       	jmp    1a6 <ls+0xa6>
 35d:	8d 76 00             	lea    0x0(%esi),%esi
 360:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 366:	89 44 24 08          	mov    %eax,0x8(%esp)
 36a:	c7 44 24 04 7a 0a 00 	movl   $0xa7a,0x4(%esp)
 371:	00 
 372:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 379:	e8 82 03 00 00       	call   700 <printf>
 37e:	e9 8d fe ff ff       	jmp    210 <ls+0x110>
 383:	66 90                	xchg   %ax,%ax
 385:	66 90                	xchg   %ax,%ax
 387:	66 90                	xchg   %ax,%ax
 389:	66 90                	xchg   %ax,%ax
 38b:	66 90                	xchg   %ax,%ax
 38d:	66 90                	xchg   %ax,%ax
 38f:	90                   	nop

00000390 <strcpy>:
 390:	55                   	push   %ebp
 391:	89 e5                	mov    %esp,%ebp
 393:	8b 45 08             	mov    0x8(%ebp),%eax
 396:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 399:	53                   	push   %ebx
 39a:	89 c2                	mov    %eax,%edx
 39c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3a0:	83 c1 01             	add    $0x1,%ecx
 3a3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 3a7:	83 c2 01             	add    $0x1,%edx
 3aa:	84 db                	test   %bl,%bl
 3ac:	88 5a ff             	mov    %bl,-0x1(%edx)
 3af:	75 ef                	jne    3a0 <strcpy+0x10>
 3b1:	5b                   	pop    %ebx
 3b2:	5d                   	pop    %ebp
 3b3:	c3                   	ret    
 3b4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 3ba:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000003c0 <strcmp>:
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	8b 55 08             	mov    0x8(%ebp),%edx
 3c6:	53                   	push   %ebx
 3c7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 3ca:	0f b6 02             	movzbl (%edx),%eax
 3cd:	84 c0                	test   %al,%al
 3cf:	74 2d                	je     3fe <strcmp+0x3e>
 3d1:	0f b6 19             	movzbl (%ecx),%ebx
 3d4:	38 d8                	cmp    %bl,%al
 3d6:	74 0e                	je     3e6 <strcmp+0x26>
 3d8:	eb 2b                	jmp    405 <strcmp+0x45>
 3da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 3e0:	38 c8                	cmp    %cl,%al
 3e2:	75 15                	jne    3f9 <strcmp+0x39>
 3e4:	89 d9                	mov    %ebx,%ecx
 3e6:	83 c2 01             	add    $0x1,%edx
 3e9:	0f b6 02             	movzbl (%edx),%eax
 3ec:	8d 59 01             	lea    0x1(%ecx),%ebx
 3ef:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
 3f3:	84 c0                	test   %al,%al
 3f5:	75 e9                	jne    3e0 <strcmp+0x20>
 3f7:	31 c0                	xor    %eax,%eax
 3f9:	29 c8                	sub    %ecx,%eax
 3fb:	5b                   	pop    %ebx
 3fc:	5d                   	pop    %ebp
 3fd:	c3                   	ret    
 3fe:	0f b6 09             	movzbl (%ecx),%ecx
 401:	31 c0                	xor    %eax,%eax
 403:	eb f4                	jmp    3f9 <strcmp+0x39>
 405:	0f b6 cb             	movzbl %bl,%ecx
 408:	eb ef                	jmp    3f9 <strcmp+0x39>
 40a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000410 <strlen>:
 410:	55                   	push   %ebp
 411:	89 e5                	mov    %esp,%ebp
 413:	8b 4d 08             	mov    0x8(%ebp),%ecx
 416:	80 39 00             	cmpb   $0x0,(%ecx)
 419:	74 12                	je     42d <strlen+0x1d>
 41b:	31 d2                	xor    %edx,%edx
 41d:	8d 76 00             	lea    0x0(%esi),%esi
 420:	83 c2 01             	add    $0x1,%edx
 423:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 427:	89 d0                	mov    %edx,%eax
 429:	75 f5                	jne    420 <strlen+0x10>
 42b:	5d                   	pop    %ebp
 42c:	c3                   	ret    
 42d:	31 c0                	xor    %eax,%eax
 42f:	5d                   	pop    %ebp
 430:	c3                   	ret    
 431:	eb 0d                	jmp    440 <memset>
 433:	90                   	nop
 434:	90                   	nop
 435:	90                   	nop
 436:	90                   	nop
 437:	90                   	nop
 438:	90                   	nop
 439:	90                   	nop
 43a:	90                   	nop
 43b:	90                   	nop
 43c:	90                   	nop
 43d:	90                   	nop
 43e:	90                   	nop
 43f:	90                   	nop

00000440 <memset>:
 440:	55                   	push   %ebp
 441:	89 e5                	mov    %esp,%ebp
 443:	8b 55 08             	mov    0x8(%ebp),%edx
 446:	57                   	push   %edi
 447:	8b 4d 10             	mov    0x10(%ebp),%ecx
 44a:	8b 45 0c             	mov    0xc(%ebp),%eax
 44d:	89 d7                	mov    %edx,%edi
 44f:	fc                   	cld    
 450:	f3 aa                	rep stos %al,%es:(%edi)
 452:	89 d0                	mov    %edx,%eax
 454:	5f                   	pop    %edi
 455:	5d                   	pop    %ebp
 456:	c3                   	ret    
 457:	89 f6                	mov    %esi,%esi
 459:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000460 <strchr>:
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	8b 45 08             	mov    0x8(%ebp),%eax
 466:	53                   	push   %ebx
 467:	8b 55 0c             	mov    0xc(%ebp),%edx
 46a:	0f b6 18             	movzbl (%eax),%ebx
 46d:	84 db                	test   %bl,%bl
 46f:	74 1d                	je     48e <strchr+0x2e>
 471:	38 d3                	cmp    %dl,%bl
 473:	89 d1                	mov    %edx,%ecx
 475:	75 0d                	jne    484 <strchr+0x24>
 477:	eb 17                	jmp    490 <strchr+0x30>
 479:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 480:	38 ca                	cmp    %cl,%dl
 482:	74 0c                	je     490 <strchr+0x30>
 484:	83 c0 01             	add    $0x1,%eax
 487:	0f b6 10             	movzbl (%eax),%edx
 48a:	84 d2                	test   %dl,%dl
 48c:	75 f2                	jne    480 <strchr+0x20>
 48e:	31 c0                	xor    %eax,%eax
 490:	5b                   	pop    %ebx
 491:	5d                   	pop    %ebp
 492:	c3                   	ret    
 493:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 499:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000004a0 <gets>:
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	57                   	push   %edi
 4a4:	56                   	push   %esi
 4a5:	31 f6                	xor    %esi,%esi
 4a7:	53                   	push   %ebx
 4a8:	83 ec 2c             	sub    $0x2c,%esp
 4ab:	8d 7d e7             	lea    -0x19(%ebp),%edi
 4ae:	eb 31                	jmp    4e1 <gets+0x41>
 4b0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 4b7:	00 
 4b8:	89 7c 24 04          	mov    %edi,0x4(%esp)
 4bc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 4c3:	e8 02 01 00 00       	call   5ca <read>
 4c8:	85 c0                	test   %eax,%eax
 4ca:	7e 1d                	jle    4e9 <gets+0x49>
 4cc:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 4d0:	89 de                	mov    %ebx,%esi
 4d2:	8b 55 08             	mov    0x8(%ebp),%edx
 4d5:	3c 0d                	cmp    $0xd,%al
 4d7:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
 4db:	74 0c                	je     4e9 <gets+0x49>
 4dd:	3c 0a                	cmp    $0xa,%al
 4df:	74 08                	je     4e9 <gets+0x49>
 4e1:	8d 5e 01             	lea    0x1(%esi),%ebx
 4e4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 4e7:	7c c7                	jl     4b0 <gets+0x10>
 4e9:	8b 45 08             	mov    0x8(%ebp),%eax
 4ec:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
 4f0:	83 c4 2c             	add    $0x2c,%esp
 4f3:	5b                   	pop    %ebx
 4f4:	5e                   	pop    %esi
 4f5:	5f                   	pop    %edi
 4f6:	5d                   	pop    %ebp
 4f7:	c3                   	ret    
 4f8:	90                   	nop
 4f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000500 <stat>:
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	56                   	push   %esi
 504:	53                   	push   %ebx
 505:	83 ec 10             	sub    $0x10,%esp
 508:	8b 45 08             	mov    0x8(%ebp),%eax
 50b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 512:	00 
 513:	89 04 24             	mov    %eax,(%esp)
 516:	e8 d7 00 00 00       	call   5f2 <open>
 51b:	85 c0                	test   %eax,%eax
 51d:	89 c3                	mov    %eax,%ebx
 51f:	78 27                	js     548 <stat+0x48>
 521:	8b 45 0c             	mov    0xc(%ebp),%eax
 524:	89 1c 24             	mov    %ebx,(%esp)
 527:	89 44 24 04          	mov    %eax,0x4(%esp)
 52b:	e8 da 00 00 00       	call   60a <fstat>
 530:	89 1c 24             	mov    %ebx,(%esp)
 533:	89 c6                	mov    %eax,%esi
 535:	e8 a0 00 00 00       	call   5da <close>
 53a:	89 f0                	mov    %esi,%eax
 53c:	83 c4 10             	add    $0x10,%esp
 53f:	5b                   	pop    %ebx
 540:	5e                   	pop    %esi
 541:	5d                   	pop    %ebp
 542:	c3                   	ret    
 543:	90                   	nop
 544:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 548:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 54d:	eb ed                	jmp    53c <stat+0x3c>
 54f:	90                   	nop

00000550 <atoi>:
 550:	55                   	push   %ebp
 551:	89 e5                	mov    %esp,%ebp
 553:	8b 4d 08             	mov    0x8(%ebp),%ecx
 556:	53                   	push   %ebx
 557:	0f be 11             	movsbl (%ecx),%edx
 55a:	8d 42 d0             	lea    -0x30(%edx),%eax
 55d:	3c 09                	cmp    $0x9,%al
 55f:	b8 00 00 00 00       	mov    $0x0,%eax
 564:	77 17                	ja     57d <atoi+0x2d>
 566:	66 90                	xchg   %ax,%ax
 568:	83 c1 01             	add    $0x1,%ecx
 56b:	8d 04 80             	lea    (%eax,%eax,4),%eax
 56e:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
 572:	0f be 11             	movsbl (%ecx),%edx
 575:	8d 5a d0             	lea    -0x30(%edx),%ebx
 578:	80 fb 09             	cmp    $0x9,%bl
 57b:	76 eb                	jbe    568 <atoi+0x18>
 57d:	5b                   	pop    %ebx
 57e:	5d                   	pop    %ebp
 57f:	c3                   	ret    

00000580 <memmove>:
 580:	55                   	push   %ebp
 581:	31 d2                	xor    %edx,%edx
 583:	89 e5                	mov    %esp,%ebp
 585:	56                   	push   %esi
 586:	8b 45 08             	mov    0x8(%ebp),%eax
 589:	53                   	push   %ebx
 58a:	8b 5d 10             	mov    0x10(%ebp),%ebx
 58d:	8b 75 0c             	mov    0xc(%ebp),%esi
 590:	85 db                	test   %ebx,%ebx
 592:	7e 12                	jle    5a6 <memmove+0x26>
 594:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 598:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 59c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 59f:	83 c2 01             	add    $0x1,%edx
 5a2:	39 da                	cmp    %ebx,%edx
 5a4:	75 f2                	jne    598 <memmove+0x18>
 5a6:	5b                   	pop    %ebx
 5a7:	5e                   	pop    %esi
 5a8:	5d                   	pop    %ebp
 5a9:	c3                   	ret    

000005aa <fork>:
 5aa:	b8 01 00 00 00       	mov    $0x1,%eax
 5af:	cd 40                	int    $0x40
 5b1:	c3                   	ret    

000005b2 <exit>:
 5b2:	b8 02 00 00 00       	mov    $0x2,%eax
 5b7:	cd 40                	int    $0x40
 5b9:	c3                   	ret    

000005ba <wait>:
 5ba:	b8 03 00 00 00       	mov    $0x3,%eax
 5bf:	cd 40                	int    $0x40
 5c1:	c3                   	ret    

000005c2 <pipe>:
 5c2:	b8 04 00 00 00       	mov    $0x4,%eax
 5c7:	cd 40                	int    $0x40
 5c9:	c3                   	ret    

000005ca <read>:
 5ca:	b8 05 00 00 00       	mov    $0x5,%eax
 5cf:	cd 40                	int    $0x40
 5d1:	c3                   	ret    

000005d2 <write>:
 5d2:	b8 10 00 00 00       	mov    $0x10,%eax
 5d7:	cd 40                	int    $0x40
 5d9:	c3                   	ret    

000005da <close>:
 5da:	b8 15 00 00 00       	mov    $0x15,%eax
 5df:	cd 40                	int    $0x40
 5e1:	c3                   	ret    

000005e2 <kill>:
 5e2:	b8 06 00 00 00       	mov    $0x6,%eax
 5e7:	cd 40                	int    $0x40
 5e9:	c3                   	ret    

000005ea <exec>:
 5ea:	b8 07 00 00 00       	mov    $0x7,%eax
 5ef:	cd 40                	int    $0x40
 5f1:	c3                   	ret    

000005f2 <open>:
 5f2:	b8 0f 00 00 00       	mov    $0xf,%eax
 5f7:	cd 40                	int    $0x40
 5f9:	c3                   	ret    

000005fa <mknod>:
 5fa:	b8 11 00 00 00       	mov    $0x11,%eax
 5ff:	cd 40                	int    $0x40
 601:	c3                   	ret    

00000602 <unlink>:
 602:	b8 12 00 00 00       	mov    $0x12,%eax
 607:	cd 40                	int    $0x40
 609:	c3                   	ret    

0000060a <fstat>:
 60a:	b8 08 00 00 00       	mov    $0x8,%eax
 60f:	cd 40                	int    $0x40
 611:	c3                   	ret    

00000612 <link>:
 612:	b8 13 00 00 00       	mov    $0x13,%eax
 617:	cd 40                	int    $0x40
 619:	c3                   	ret    

0000061a <mkdir>:
 61a:	b8 14 00 00 00       	mov    $0x14,%eax
 61f:	cd 40                	int    $0x40
 621:	c3                   	ret    

00000622 <chdir>:
 622:	b8 09 00 00 00       	mov    $0x9,%eax
 627:	cd 40                	int    $0x40
 629:	c3                   	ret    

0000062a <dup>:
 62a:	b8 0a 00 00 00       	mov    $0xa,%eax
 62f:	cd 40                	int    $0x40
 631:	c3                   	ret    

00000632 <getpid>:
 632:	b8 0b 00 00 00       	mov    $0xb,%eax
 637:	cd 40                	int    $0x40
 639:	c3                   	ret    

0000063a <sbrk>:
 63a:	b8 0c 00 00 00       	mov    $0xc,%eax
 63f:	cd 40                	int    $0x40
 641:	c3                   	ret    

00000642 <sleep>:
 642:	b8 0d 00 00 00       	mov    $0xd,%eax
 647:	cd 40                	int    $0x40
 649:	c3                   	ret    

0000064a <uptime>:
 64a:	b8 0e 00 00 00       	mov    $0xe,%eax
 64f:	cd 40                	int    $0x40
 651:	c3                   	ret    

00000652 <waitpid>:
 652:	b8 16 00 00 00       	mov    $0x16,%eax
 657:	cd 40                	int    $0x40
 659:	c3                   	ret    
 65a:	66 90                	xchg   %ax,%ax
 65c:	66 90                	xchg   %ax,%ax
 65e:	66 90                	xchg   %ax,%ax

00000660 <printint>:
 660:	55                   	push   %ebp
 661:	89 e5                	mov    %esp,%ebp
 663:	57                   	push   %edi
 664:	56                   	push   %esi
 665:	89 c6                	mov    %eax,%esi
 667:	53                   	push   %ebx
 668:	83 ec 4c             	sub    $0x4c,%esp
 66b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 66e:	85 db                	test   %ebx,%ebx
 670:	74 09                	je     67b <printint+0x1b>
 672:	89 d0                	mov    %edx,%eax
 674:	c1 e8 1f             	shr    $0x1f,%eax
 677:	84 c0                	test   %al,%al
 679:	75 75                	jne    6f0 <printint+0x90>
 67b:	89 d0                	mov    %edx,%eax
 67d:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 684:	89 75 c0             	mov    %esi,-0x40(%ebp)
 687:	31 ff                	xor    %edi,%edi
 689:	89 ce                	mov    %ecx,%esi
 68b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 68e:	eb 02                	jmp    692 <printint+0x32>
 690:	89 cf                	mov    %ecx,%edi
 692:	31 d2                	xor    %edx,%edx
 694:	f7 f6                	div    %esi
 696:	8d 4f 01             	lea    0x1(%edi),%ecx
 699:	0f b6 92 b7 0a 00 00 	movzbl 0xab7(%edx),%edx
 6a0:	85 c0                	test   %eax,%eax
 6a2:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
 6a5:	75 e9                	jne    690 <printint+0x30>
 6a7:	8b 55 c4             	mov    -0x3c(%ebp),%edx
 6aa:	89 c8                	mov    %ecx,%eax
 6ac:	8b 75 c0             	mov    -0x40(%ebp),%esi
 6af:	85 d2                	test   %edx,%edx
 6b1:	74 08                	je     6bb <printint+0x5b>
 6b3:	8d 4f 02             	lea    0x2(%edi),%ecx
 6b6:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)
 6bb:	8d 79 ff             	lea    -0x1(%ecx),%edi
 6be:	66 90                	xchg   %ax,%ax
 6c0:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
 6c5:	83 ef 01             	sub    $0x1,%edi
 6c8:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 6cf:	00 
 6d0:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 6d4:	89 34 24             	mov    %esi,(%esp)
 6d7:	88 45 d7             	mov    %al,-0x29(%ebp)
 6da:	e8 f3 fe ff ff       	call   5d2 <write>
 6df:	83 ff ff             	cmp    $0xffffffff,%edi
 6e2:	75 dc                	jne    6c0 <printint+0x60>
 6e4:	83 c4 4c             	add    $0x4c,%esp
 6e7:	5b                   	pop    %ebx
 6e8:	5e                   	pop    %esi
 6e9:	5f                   	pop    %edi
 6ea:	5d                   	pop    %ebp
 6eb:	c3                   	ret    
 6ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 6f0:	89 d0                	mov    %edx,%eax
 6f2:	f7 d8                	neg    %eax
 6f4:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
 6fb:	eb 87                	jmp    684 <printint+0x24>
 6fd:	8d 76 00             	lea    0x0(%esi),%esi

00000700 <printf>:
 700:	55                   	push   %ebp
 701:	89 e5                	mov    %esp,%ebp
 703:	57                   	push   %edi
 704:	31 ff                	xor    %edi,%edi
 706:	56                   	push   %esi
 707:	53                   	push   %ebx
 708:	83 ec 3c             	sub    $0x3c,%esp
 70b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 70e:	8d 45 10             	lea    0x10(%ebp),%eax
 711:	8b 75 08             	mov    0x8(%ebp),%esi
 714:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 717:	0f b6 13             	movzbl (%ebx),%edx
 71a:	83 c3 01             	add    $0x1,%ebx
 71d:	84 d2                	test   %dl,%dl
 71f:	75 39                	jne    75a <printf+0x5a>
 721:	e9 c2 00 00 00       	jmp    7e8 <printf+0xe8>
 726:	66 90                	xchg   %ax,%ax
 728:	83 fa 25             	cmp    $0x25,%edx
 72b:	0f 84 bf 00 00 00    	je     7f0 <printf+0xf0>
 731:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 734:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 73b:	00 
 73c:	89 44 24 04          	mov    %eax,0x4(%esp)
 740:	89 34 24             	mov    %esi,(%esp)
 743:	88 55 e2             	mov    %dl,-0x1e(%ebp)
 746:	e8 87 fe ff ff       	call   5d2 <write>
 74b:	83 c3 01             	add    $0x1,%ebx
 74e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 752:	84 d2                	test   %dl,%dl
 754:	0f 84 8e 00 00 00    	je     7e8 <printf+0xe8>
 75a:	85 ff                	test   %edi,%edi
 75c:	0f be c2             	movsbl %dl,%eax
 75f:	74 c7                	je     728 <printf+0x28>
 761:	83 ff 25             	cmp    $0x25,%edi
 764:	75 e5                	jne    74b <printf+0x4b>
 766:	83 fa 64             	cmp    $0x64,%edx
 769:	0f 84 31 01 00 00    	je     8a0 <printf+0x1a0>
 76f:	25 f7 00 00 00       	and    $0xf7,%eax
 774:	83 f8 70             	cmp    $0x70,%eax
 777:	0f 84 83 00 00 00    	je     800 <printf+0x100>
 77d:	83 fa 73             	cmp    $0x73,%edx
 780:	0f 84 a2 00 00 00    	je     828 <printf+0x128>
 786:	83 fa 63             	cmp    $0x63,%edx
 789:	0f 84 35 01 00 00    	je     8c4 <printf+0x1c4>
 78f:	83 fa 25             	cmp    $0x25,%edx
 792:	0f 84 e0 00 00 00    	je     878 <printf+0x178>
 798:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 79b:	83 c3 01             	add    $0x1,%ebx
 79e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 7a5:	00 
 7a6:	31 ff                	xor    %edi,%edi
 7a8:	89 44 24 04          	mov    %eax,0x4(%esp)
 7ac:	89 34 24             	mov    %esi,(%esp)
 7af:	89 55 d0             	mov    %edx,-0x30(%ebp)
 7b2:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
 7b6:	e8 17 fe ff ff       	call   5d2 <write>
 7bb:	8b 55 d0             	mov    -0x30(%ebp),%edx
 7be:	8d 45 e7             	lea    -0x19(%ebp),%eax
 7c1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 7c8:	00 
 7c9:	89 44 24 04          	mov    %eax,0x4(%esp)
 7cd:	89 34 24             	mov    %esi,(%esp)
 7d0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7d3:	e8 fa fd ff ff       	call   5d2 <write>
 7d8:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 7dc:	84 d2                	test   %dl,%dl
 7de:	0f 85 76 ff ff ff    	jne    75a <printf+0x5a>
 7e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 7e8:	83 c4 3c             	add    $0x3c,%esp
 7eb:	5b                   	pop    %ebx
 7ec:	5e                   	pop    %esi
 7ed:	5f                   	pop    %edi
 7ee:	5d                   	pop    %ebp
 7ef:	c3                   	ret    
 7f0:	bf 25 00 00 00       	mov    $0x25,%edi
 7f5:	e9 51 ff ff ff       	jmp    74b <printf+0x4b>
 7fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 800:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 803:	b9 10 00 00 00       	mov    $0x10,%ecx
 808:	31 ff                	xor    %edi,%edi
 80a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 811:	8b 10                	mov    (%eax),%edx
 813:	89 f0                	mov    %esi,%eax
 815:	e8 46 fe ff ff       	call   660 <printint>
 81a:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 81e:	e9 28 ff ff ff       	jmp    74b <printf+0x4b>
 823:	90                   	nop
 824:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 828:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 82b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 82f:	8b 38                	mov    (%eax),%edi
 831:	b8 b0 0a 00 00       	mov    $0xab0,%eax
 836:	85 ff                	test   %edi,%edi
 838:	0f 44 f8             	cmove  %eax,%edi
 83b:	0f b6 07             	movzbl (%edi),%eax
 83e:	84 c0                	test   %al,%al
 840:	74 2a                	je     86c <printf+0x16c>
 842:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 848:	88 45 e3             	mov    %al,-0x1d(%ebp)
 84b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
 84e:	83 c7 01             	add    $0x1,%edi
 851:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 858:	00 
 859:	89 44 24 04          	mov    %eax,0x4(%esp)
 85d:	89 34 24             	mov    %esi,(%esp)
 860:	e8 6d fd ff ff       	call   5d2 <write>
 865:	0f b6 07             	movzbl (%edi),%eax
 868:	84 c0                	test   %al,%al
 86a:	75 dc                	jne    848 <printf+0x148>
 86c:	31 ff                	xor    %edi,%edi
 86e:	e9 d8 fe ff ff       	jmp    74b <printf+0x4b>
 873:	90                   	nop
 874:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 878:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 87b:	31 ff                	xor    %edi,%edi
 87d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 884:	00 
 885:	89 44 24 04          	mov    %eax,0x4(%esp)
 889:	89 34 24             	mov    %esi,(%esp)
 88c:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
 890:	e8 3d fd ff ff       	call   5d2 <write>
 895:	e9 b1 fe ff ff       	jmp    74b <printf+0x4b>
 89a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8a0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8a3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 8a8:	66 31 ff             	xor    %di,%di
 8ab:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8b2:	8b 10                	mov    (%eax),%edx
 8b4:	89 f0                	mov    %esi,%eax
 8b6:	e8 a5 fd ff ff       	call   660 <printint>
 8bb:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 8bf:	e9 87 fe ff ff       	jmp    74b <printf+0x4b>
 8c4:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8c7:	31 ff                	xor    %edi,%edi
 8c9:	8b 00                	mov    (%eax),%eax
 8cb:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 8d2:	00 
 8d3:	89 34 24             	mov    %esi,(%esp)
 8d6:	88 45 e4             	mov    %al,-0x1c(%ebp)
 8d9:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 8dc:	89 44 24 04          	mov    %eax,0x4(%esp)
 8e0:	e8 ed fc ff ff       	call   5d2 <write>
 8e5:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 8e9:	e9 5d fe ff ff       	jmp    74b <printf+0x4b>
 8ee:	66 90                	xchg   %ax,%ax

000008f0 <free>:
 8f0:	55                   	push   %ebp
 8f1:	a1 a8 0d 00 00       	mov    0xda8,%eax
 8f6:	89 e5                	mov    %esp,%ebp
 8f8:	57                   	push   %edi
 8f9:	56                   	push   %esi
 8fa:	53                   	push   %ebx
 8fb:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8fe:	8b 08                	mov    (%eax),%ecx
 900:	8d 53 f8             	lea    -0x8(%ebx),%edx
 903:	39 d0                	cmp    %edx,%eax
 905:	72 11                	jb     918 <free+0x28>
 907:	90                   	nop
 908:	39 c8                	cmp    %ecx,%eax
 90a:	72 04                	jb     910 <free+0x20>
 90c:	39 ca                	cmp    %ecx,%edx
 90e:	72 10                	jb     920 <free+0x30>
 910:	89 c8                	mov    %ecx,%eax
 912:	39 d0                	cmp    %edx,%eax
 914:	8b 08                	mov    (%eax),%ecx
 916:	73 f0                	jae    908 <free+0x18>
 918:	39 ca                	cmp    %ecx,%edx
 91a:	72 04                	jb     920 <free+0x30>
 91c:	39 c8                	cmp    %ecx,%eax
 91e:	72 f0                	jb     910 <free+0x20>
 920:	8b 73 fc             	mov    -0x4(%ebx),%esi
 923:	8d 3c f2             	lea    (%edx,%esi,8),%edi
 926:	39 cf                	cmp    %ecx,%edi
 928:	74 1e                	je     948 <free+0x58>
 92a:	89 4b f8             	mov    %ecx,-0x8(%ebx)
 92d:	8b 48 04             	mov    0x4(%eax),%ecx
 930:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 933:	39 f2                	cmp    %esi,%edx
 935:	74 28                	je     95f <free+0x6f>
 937:	89 10                	mov    %edx,(%eax)
 939:	a3 a8 0d 00 00       	mov    %eax,0xda8
 93e:	5b                   	pop    %ebx
 93f:	5e                   	pop    %esi
 940:	5f                   	pop    %edi
 941:	5d                   	pop    %ebp
 942:	c3                   	ret    
 943:	90                   	nop
 944:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 948:	03 71 04             	add    0x4(%ecx),%esi
 94b:	89 73 fc             	mov    %esi,-0x4(%ebx)
 94e:	8b 08                	mov    (%eax),%ecx
 950:	8b 09                	mov    (%ecx),%ecx
 952:	89 4b f8             	mov    %ecx,-0x8(%ebx)
 955:	8b 48 04             	mov    0x4(%eax),%ecx
 958:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 95b:	39 f2                	cmp    %esi,%edx
 95d:	75 d8                	jne    937 <free+0x47>
 95f:	03 4b fc             	add    -0x4(%ebx),%ecx
 962:	a3 a8 0d 00 00       	mov    %eax,0xda8
 967:	89 48 04             	mov    %ecx,0x4(%eax)
 96a:	8b 53 f8             	mov    -0x8(%ebx),%edx
 96d:	89 10                	mov    %edx,(%eax)
 96f:	5b                   	pop    %ebx
 970:	5e                   	pop    %esi
 971:	5f                   	pop    %edi
 972:	5d                   	pop    %ebp
 973:	c3                   	ret    
 974:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 97a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000980 <malloc>:
 980:	55                   	push   %ebp
 981:	89 e5                	mov    %esp,%ebp
 983:	57                   	push   %edi
 984:	56                   	push   %esi
 985:	53                   	push   %ebx
 986:	83 ec 1c             	sub    $0x1c,%esp
 989:	8b 45 08             	mov    0x8(%ebp),%eax
 98c:	8b 1d a8 0d 00 00    	mov    0xda8,%ebx
 992:	8d 48 07             	lea    0x7(%eax),%ecx
 995:	c1 e9 03             	shr    $0x3,%ecx
 998:	85 db                	test   %ebx,%ebx
 99a:	8d 71 01             	lea    0x1(%ecx),%esi
 99d:	0f 84 9b 00 00 00    	je     a3e <malloc+0xbe>
 9a3:	8b 13                	mov    (%ebx),%edx
 9a5:	8b 7a 04             	mov    0x4(%edx),%edi
 9a8:	39 fe                	cmp    %edi,%esi
 9aa:	76 64                	jbe    a10 <malloc+0x90>
 9ac:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
 9b3:	bb 00 80 00 00       	mov    $0x8000,%ebx
 9b8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 9bb:	eb 0e                	jmp    9cb <malloc+0x4b>
 9bd:	8d 76 00             	lea    0x0(%esi),%esi
 9c0:	8b 02                	mov    (%edx),%eax
 9c2:	8b 78 04             	mov    0x4(%eax),%edi
 9c5:	39 fe                	cmp    %edi,%esi
 9c7:	76 4f                	jbe    a18 <malloc+0x98>
 9c9:	89 c2                	mov    %eax,%edx
 9cb:	3b 15 a8 0d 00 00    	cmp    0xda8,%edx
 9d1:	75 ed                	jne    9c0 <malloc+0x40>
 9d3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 9d6:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
 9dc:	bf 00 10 00 00       	mov    $0x1000,%edi
 9e1:	0f 43 fe             	cmovae %esi,%edi
 9e4:	0f 42 c3             	cmovb  %ebx,%eax
 9e7:	89 04 24             	mov    %eax,(%esp)
 9ea:	e8 4b fc ff ff       	call   63a <sbrk>
 9ef:	83 f8 ff             	cmp    $0xffffffff,%eax
 9f2:	74 18                	je     a0c <malloc+0x8c>
 9f4:	89 78 04             	mov    %edi,0x4(%eax)
 9f7:	83 c0 08             	add    $0x8,%eax
 9fa:	89 04 24             	mov    %eax,(%esp)
 9fd:	e8 ee fe ff ff       	call   8f0 <free>
 a02:	8b 15 a8 0d 00 00    	mov    0xda8,%edx
 a08:	85 d2                	test   %edx,%edx
 a0a:	75 b4                	jne    9c0 <malloc+0x40>
 a0c:	31 c0                	xor    %eax,%eax
 a0e:	eb 20                	jmp    a30 <malloc+0xb0>
 a10:	89 d0                	mov    %edx,%eax
 a12:	89 da                	mov    %ebx,%edx
 a14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 a18:	39 fe                	cmp    %edi,%esi
 a1a:	74 1c                	je     a38 <malloc+0xb8>
 a1c:	29 f7                	sub    %esi,%edi
 a1e:	89 78 04             	mov    %edi,0x4(%eax)
 a21:	8d 04 f8             	lea    (%eax,%edi,8),%eax
 a24:	89 70 04             	mov    %esi,0x4(%eax)
 a27:	89 15 a8 0d 00 00    	mov    %edx,0xda8
 a2d:	83 c0 08             	add    $0x8,%eax
 a30:	83 c4 1c             	add    $0x1c,%esp
 a33:	5b                   	pop    %ebx
 a34:	5e                   	pop    %esi
 a35:	5f                   	pop    %edi
 a36:	5d                   	pop    %ebp
 a37:	c3                   	ret    
 a38:	8b 08                	mov    (%eax),%ecx
 a3a:	89 0a                	mov    %ecx,(%edx)
 a3c:	eb e9                	jmp    a27 <malloc+0xa7>
 a3e:	c7 05 a8 0d 00 00 ac 	movl   $0xdac,0xda8
 a45:	0d 00 00 
 a48:	ba ac 0d 00 00       	mov    $0xdac,%edx
 a4d:	c7 05 ac 0d 00 00 ac 	movl   $0xdac,0xdac
 a54:	0d 00 00 
 a57:	c7 05 b0 0d 00 00 00 	movl   $0x0,0xdb0
 a5e:	00 00 00 
 a61:	e9 46 ff ff ff       	jmp    9ac <malloc+0x2c>
