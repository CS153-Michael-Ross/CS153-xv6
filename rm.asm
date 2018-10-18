
_rm:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	57                   	push   %edi
   4:	56                   	push   %esi
   5:	be 01 00 00 00       	mov    $0x1,%esi
   a:	53                   	push   %ebx
   b:	83 e4 f0             	and    $0xfffffff0,%esp
   e:	83 ec 10             	sub    $0x10,%esp
  11:	8b 7d 08             	mov    0x8(%ebp),%edi
  14:	8b 45 0c             	mov    0xc(%ebp),%eax
  17:	83 ff 01             	cmp    $0x1,%edi
  1a:	8d 58 04             	lea    0x4(%eax),%ebx
  1d:	7e 41                	jle    60 <main+0x60>
  1f:	90                   	nop
  20:	8b 03                	mov    (%ebx),%eax
  22:	89 04 24             	mov    %eax,(%esp)
  25:	e8 c8 02 00 00       	call   2f2 <unlink>
  2a:	85 c0                	test   %eax,%eax
  2c:	78 16                	js     44 <main+0x44>
  2e:	83 c6 01             	add    $0x1,%esi
  31:	83 c3 04             	add    $0x4,%ebx
  34:	39 fe                	cmp    %edi,%esi
  36:	75 e8                	jne    20 <main+0x20>
  38:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  3f:	e8 5e 02 00 00       	call   2a2 <exit>
  44:	8b 03                	mov    (%ebx),%eax
  46:	c7 44 24 04 6a 07 00 	movl   $0x76a,0x4(%esp)
  4d:	00 
  4e:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  55:	89 44 24 08          	mov    %eax,0x8(%esp)
  59:	e8 92 03 00 00       	call   3f0 <printf>
  5e:	eb d8                	jmp    38 <main+0x38>
  60:	c7 44 24 04 56 07 00 	movl   $0x756,0x4(%esp)
  67:	00 
  68:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  6f:	e8 7c 03 00 00       	call   3f0 <printf>
  74:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  7b:	e8 22 02 00 00       	call   2a2 <exit>

00000080 <strcpy>:
  80:	55                   	push   %ebp
  81:	89 e5                	mov    %esp,%ebp
  83:	8b 45 08             	mov    0x8(%ebp),%eax
  86:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  89:	53                   	push   %ebx
  8a:	89 c2                	mov    %eax,%edx
  8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  90:	83 c1 01             	add    $0x1,%ecx
  93:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
  97:	83 c2 01             	add    $0x1,%edx
  9a:	84 db                	test   %bl,%bl
  9c:	88 5a ff             	mov    %bl,-0x1(%edx)
  9f:	75 ef                	jne    90 <strcpy+0x10>
  a1:	5b                   	pop    %ebx
  a2:	5d                   	pop    %ebp
  a3:	c3                   	ret    
  a4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  aa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000000b0 <strcmp>:
  b0:	55                   	push   %ebp
  b1:	89 e5                	mov    %esp,%ebp
  b3:	8b 55 08             	mov    0x8(%ebp),%edx
  b6:	53                   	push   %ebx
  b7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  ba:	0f b6 02             	movzbl (%edx),%eax
  bd:	84 c0                	test   %al,%al
  bf:	74 2d                	je     ee <strcmp+0x3e>
  c1:	0f b6 19             	movzbl (%ecx),%ebx
  c4:	38 d8                	cmp    %bl,%al
  c6:	74 0e                	je     d6 <strcmp+0x26>
  c8:	eb 2b                	jmp    f5 <strcmp+0x45>
  ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  d0:	38 c8                	cmp    %cl,%al
  d2:	75 15                	jne    e9 <strcmp+0x39>
  d4:	89 d9                	mov    %ebx,%ecx
  d6:	83 c2 01             	add    $0x1,%edx
  d9:	0f b6 02             	movzbl (%edx),%eax
  dc:	8d 59 01             	lea    0x1(%ecx),%ebx
  df:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
  e3:	84 c0                	test   %al,%al
  e5:	75 e9                	jne    d0 <strcmp+0x20>
  e7:	31 c0                	xor    %eax,%eax
  e9:	29 c8                	sub    %ecx,%eax
  eb:	5b                   	pop    %ebx
  ec:	5d                   	pop    %ebp
  ed:	c3                   	ret    
  ee:	0f b6 09             	movzbl (%ecx),%ecx
  f1:	31 c0                	xor    %eax,%eax
  f3:	eb f4                	jmp    e9 <strcmp+0x39>
  f5:	0f b6 cb             	movzbl %bl,%ecx
  f8:	eb ef                	jmp    e9 <strcmp+0x39>
  fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000100 <strlen>:
 100:	55                   	push   %ebp
 101:	89 e5                	mov    %esp,%ebp
 103:	8b 4d 08             	mov    0x8(%ebp),%ecx
 106:	80 39 00             	cmpb   $0x0,(%ecx)
 109:	74 12                	je     11d <strlen+0x1d>
 10b:	31 d2                	xor    %edx,%edx
 10d:	8d 76 00             	lea    0x0(%esi),%esi
 110:	83 c2 01             	add    $0x1,%edx
 113:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 117:	89 d0                	mov    %edx,%eax
 119:	75 f5                	jne    110 <strlen+0x10>
 11b:	5d                   	pop    %ebp
 11c:	c3                   	ret    
 11d:	31 c0                	xor    %eax,%eax
 11f:	5d                   	pop    %ebp
 120:	c3                   	ret    
 121:	eb 0d                	jmp    130 <memset>
 123:	90                   	nop
 124:	90                   	nop
 125:	90                   	nop
 126:	90                   	nop
 127:	90                   	nop
 128:	90                   	nop
 129:	90                   	nop
 12a:	90                   	nop
 12b:	90                   	nop
 12c:	90                   	nop
 12d:	90                   	nop
 12e:	90                   	nop
 12f:	90                   	nop

00000130 <memset>:
 130:	55                   	push   %ebp
 131:	89 e5                	mov    %esp,%ebp
 133:	8b 55 08             	mov    0x8(%ebp),%edx
 136:	57                   	push   %edi
 137:	8b 4d 10             	mov    0x10(%ebp),%ecx
 13a:	8b 45 0c             	mov    0xc(%ebp),%eax
 13d:	89 d7                	mov    %edx,%edi
 13f:	fc                   	cld    
 140:	f3 aa                	rep stos %al,%es:(%edi)
 142:	89 d0                	mov    %edx,%eax
 144:	5f                   	pop    %edi
 145:	5d                   	pop    %ebp
 146:	c3                   	ret    
 147:	89 f6                	mov    %esi,%esi
 149:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000150 <strchr>:
 150:	55                   	push   %ebp
 151:	89 e5                	mov    %esp,%ebp
 153:	8b 45 08             	mov    0x8(%ebp),%eax
 156:	53                   	push   %ebx
 157:	8b 55 0c             	mov    0xc(%ebp),%edx
 15a:	0f b6 18             	movzbl (%eax),%ebx
 15d:	84 db                	test   %bl,%bl
 15f:	74 1d                	je     17e <strchr+0x2e>
 161:	38 d3                	cmp    %dl,%bl
 163:	89 d1                	mov    %edx,%ecx
 165:	75 0d                	jne    174 <strchr+0x24>
 167:	eb 17                	jmp    180 <strchr+0x30>
 169:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 170:	38 ca                	cmp    %cl,%dl
 172:	74 0c                	je     180 <strchr+0x30>
 174:	83 c0 01             	add    $0x1,%eax
 177:	0f b6 10             	movzbl (%eax),%edx
 17a:	84 d2                	test   %dl,%dl
 17c:	75 f2                	jne    170 <strchr+0x20>
 17e:	31 c0                	xor    %eax,%eax
 180:	5b                   	pop    %ebx
 181:	5d                   	pop    %ebp
 182:	c3                   	ret    
 183:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 189:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000190 <gets>:
 190:	55                   	push   %ebp
 191:	89 e5                	mov    %esp,%ebp
 193:	57                   	push   %edi
 194:	56                   	push   %esi
 195:	31 f6                	xor    %esi,%esi
 197:	53                   	push   %ebx
 198:	83 ec 2c             	sub    $0x2c,%esp
 19b:	8d 7d e7             	lea    -0x19(%ebp),%edi
 19e:	eb 31                	jmp    1d1 <gets+0x41>
 1a0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 1a7:	00 
 1a8:	89 7c 24 04          	mov    %edi,0x4(%esp)
 1ac:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 1b3:	e8 02 01 00 00       	call   2ba <read>
 1b8:	85 c0                	test   %eax,%eax
 1ba:	7e 1d                	jle    1d9 <gets+0x49>
 1bc:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 1c0:	89 de                	mov    %ebx,%esi
 1c2:	8b 55 08             	mov    0x8(%ebp),%edx
 1c5:	3c 0d                	cmp    $0xd,%al
 1c7:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
 1cb:	74 0c                	je     1d9 <gets+0x49>
 1cd:	3c 0a                	cmp    $0xa,%al
 1cf:	74 08                	je     1d9 <gets+0x49>
 1d1:	8d 5e 01             	lea    0x1(%esi),%ebx
 1d4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 1d7:	7c c7                	jl     1a0 <gets+0x10>
 1d9:	8b 45 08             	mov    0x8(%ebp),%eax
 1dc:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
 1e0:	83 c4 2c             	add    $0x2c,%esp
 1e3:	5b                   	pop    %ebx
 1e4:	5e                   	pop    %esi
 1e5:	5f                   	pop    %edi
 1e6:	5d                   	pop    %ebp
 1e7:	c3                   	ret    
 1e8:	90                   	nop
 1e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000001f0 <stat>:
 1f0:	55                   	push   %ebp
 1f1:	89 e5                	mov    %esp,%ebp
 1f3:	56                   	push   %esi
 1f4:	53                   	push   %ebx
 1f5:	83 ec 10             	sub    $0x10,%esp
 1f8:	8b 45 08             	mov    0x8(%ebp),%eax
 1fb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 202:	00 
 203:	89 04 24             	mov    %eax,(%esp)
 206:	e8 d7 00 00 00       	call   2e2 <open>
 20b:	85 c0                	test   %eax,%eax
 20d:	89 c3                	mov    %eax,%ebx
 20f:	78 27                	js     238 <stat+0x48>
 211:	8b 45 0c             	mov    0xc(%ebp),%eax
 214:	89 1c 24             	mov    %ebx,(%esp)
 217:	89 44 24 04          	mov    %eax,0x4(%esp)
 21b:	e8 da 00 00 00       	call   2fa <fstat>
 220:	89 1c 24             	mov    %ebx,(%esp)
 223:	89 c6                	mov    %eax,%esi
 225:	e8 a0 00 00 00       	call   2ca <close>
 22a:	89 f0                	mov    %esi,%eax
 22c:	83 c4 10             	add    $0x10,%esp
 22f:	5b                   	pop    %ebx
 230:	5e                   	pop    %esi
 231:	5d                   	pop    %ebp
 232:	c3                   	ret    
 233:	90                   	nop
 234:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 238:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 23d:	eb ed                	jmp    22c <stat+0x3c>
 23f:	90                   	nop

00000240 <atoi>:
 240:	55                   	push   %ebp
 241:	89 e5                	mov    %esp,%ebp
 243:	8b 4d 08             	mov    0x8(%ebp),%ecx
 246:	53                   	push   %ebx
 247:	0f be 11             	movsbl (%ecx),%edx
 24a:	8d 42 d0             	lea    -0x30(%edx),%eax
 24d:	3c 09                	cmp    $0x9,%al
 24f:	b8 00 00 00 00       	mov    $0x0,%eax
 254:	77 17                	ja     26d <atoi+0x2d>
 256:	66 90                	xchg   %ax,%ax
 258:	83 c1 01             	add    $0x1,%ecx
 25b:	8d 04 80             	lea    (%eax,%eax,4),%eax
 25e:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
 262:	0f be 11             	movsbl (%ecx),%edx
 265:	8d 5a d0             	lea    -0x30(%edx),%ebx
 268:	80 fb 09             	cmp    $0x9,%bl
 26b:	76 eb                	jbe    258 <atoi+0x18>
 26d:	5b                   	pop    %ebx
 26e:	5d                   	pop    %ebp
 26f:	c3                   	ret    

00000270 <memmove>:
 270:	55                   	push   %ebp
 271:	31 d2                	xor    %edx,%edx
 273:	89 e5                	mov    %esp,%ebp
 275:	56                   	push   %esi
 276:	8b 45 08             	mov    0x8(%ebp),%eax
 279:	53                   	push   %ebx
 27a:	8b 5d 10             	mov    0x10(%ebp),%ebx
 27d:	8b 75 0c             	mov    0xc(%ebp),%esi
 280:	85 db                	test   %ebx,%ebx
 282:	7e 12                	jle    296 <memmove+0x26>
 284:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 288:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 28c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 28f:	83 c2 01             	add    $0x1,%edx
 292:	39 da                	cmp    %ebx,%edx
 294:	75 f2                	jne    288 <memmove+0x18>
 296:	5b                   	pop    %ebx
 297:	5e                   	pop    %esi
 298:	5d                   	pop    %ebp
 299:	c3                   	ret    

0000029a <fork>:
 29a:	b8 01 00 00 00       	mov    $0x1,%eax
 29f:	cd 40                	int    $0x40
 2a1:	c3                   	ret    

000002a2 <exit>:
 2a2:	b8 02 00 00 00       	mov    $0x2,%eax
 2a7:	cd 40                	int    $0x40
 2a9:	c3                   	ret    

000002aa <wait>:
 2aa:	b8 03 00 00 00       	mov    $0x3,%eax
 2af:	cd 40                	int    $0x40
 2b1:	c3                   	ret    

000002b2 <pipe>:
 2b2:	b8 04 00 00 00       	mov    $0x4,%eax
 2b7:	cd 40                	int    $0x40
 2b9:	c3                   	ret    

000002ba <read>:
 2ba:	b8 05 00 00 00       	mov    $0x5,%eax
 2bf:	cd 40                	int    $0x40
 2c1:	c3                   	ret    

000002c2 <write>:
 2c2:	b8 10 00 00 00       	mov    $0x10,%eax
 2c7:	cd 40                	int    $0x40
 2c9:	c3                   	ret    

000002ca <close>:
 2ca:	b8 15 00 00 00       	mov    $0x15,%eax
 2cf:	cd 40                	int    $0x40
 2d1:	c3                   	ret    

000002d2 <kill>:
 2d2:	b8 06 00 00 00       	mov    $0x6,%eax
 2d7:	cd 40                	int    $0x40
 2d9:	c3                   	ret    

000002da <exec>:
 2da:	b8 07 00 00 00       	mov    $0x7,%eax
 2df:	cd 40                	int    $0x40
 2e1:	c3                   	ret    

000002e2 <open>:
 2e2:	b8 0f 00 00 00       	mov    $0xf,%eax
 2e7:	cd 40                	int    $0x40
 2e9:	c3                   	ret    

000002ea <mknod>:
 2ea:	b8 11 00 00 00       	mov    $0x11,%eax
 2ef:	cd 40                	int    $0x40
 2f1:	c3                   	ret    

000002f2 <unlink>:
 2f2:	b8 12 00 00 00       	mov    $0x12,%eax
 2f7:	cd 40                	int    $0x40
 2f9:	c3                   	ret    

000002fa <fstat>:
 2fa:	b8 08 00 00 00       	mov    $0x8,%eax
 2ff:	cd 40                	int    $0x40
 301:	c3                   	ret    

00000302 <link>:
 302:	b8 13 00 00 00       	mov    $0x13,%eax
 307:	cd 40                	int    $0x40
 309:	c3                   	ret    

0000030a <mkdir>:
 30a:	b8 14 00 00 00       	mov    $0x14,%eax
 30f:	cd 40                	int    $0x40
 311:	c3                   	ret    

00000312 <chdir>:
 312:	b8 09 00 00 00       	mov    $0x9,%eax
 317:	cd 40                	int    $0x40
 319:	c3                   	ret    

0000031a <dup>:
 31a:	b8 0a 00 00 00       	mov    $0xa,%eax
 31f:	cd 40                	int    $0x40
 321:	c3                   	ret    

00000322 <getpid>:
 322:	b8 0b 00 00 00       	mov    $0xb,%eax
 327:	cd 40                	int    $0x40
 329:	c3                   	ret    

0000032a <sbrk>:
 32a:	b8 0c 00 00 00       	mov    $0xc,%eax
 32f:	cd 40                	int    $0x40
 331:	c3                   	ret    

00000332 <sleep>:
 332:	b8 0d 00 00 00       	mov    $0xd,%eax
 337:	cd 40                	int    $0x40
 339:	c3                   	ret    

0000033a <uptime>:
 33a:	b8 0e 00 00 00       	mov    $0xe,%eax
 33f:	cd 40                	int    $0x40
 341:	c3                   	ret    

00000342 <waitpid>:
 342:	b8 16 00 00 00       	mov    $0x16,%eax
 347:	cd 40                	int    $0x40
 349:	c3                   	ret    
 34a:	66 90                	xchg   %ax,%ax
 34c:	66 90                	xchg   %ax,%ax
 34e:	66 90                	xchg   %ax,%ax

00000350 <printint>:
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	57                   	push   %edi
 354:	56                   	push   %esi
 355:	89 c6                	mov    %eax,%esi
 357:	53                   	push   %ebx
 358:	83 ec 4c             	sub    $0x4c,%esp
 35b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 35e:	85 db                	test   %ebx,%ebx
 360:	74 09                	je     36b <printint+0x1b>
 362:	89 d0                	mov    %edx,%eax
 364:	c1 e8 1f             	shr    $0x1f,%eax
 367:	84 c0                	test   %al,%al
 369:	75 75                	jne    3e0 <printint+0x90>
 36b:	89 d0                	mov    %edx,%eax
 36d:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 374:	89 75 c0             	mov    %esi,-0x40(%ebp)
 377:	31 ff                	xor    %edi,%edi
 379:	89 ce                	mov    %ecx,%esi
 37b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 37e:	eb 02                	jmp    382 <printint+0x32>
 380:	89 cf                	mov    %ecx,%edi
 382:	31 d2                	xor    %edx,%edx
 384:	f7 f6                	div    %esi
 386:	8d 4f 01             	lea    0x1(%edi),%ecx
 389:	0f b6 92 8a 07 00 00 	movzbl 0x78a(%edx),%edx
 390:	85 c0                	test   %eax,%eax
 392:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
 395:	75 e9                	jne    380 <printint+0x30>
 397:	8b 55 c4             	mov    -0x3c(%ebp),%edx
 39a:	89 c8                	mov    %ecx,%eax
 39c:	8b 75 c0             	mov    -0x40(%ebp),%esi
 39f:	85 d2                	test   %edx,%edx
 3a1:	74 08                	je     3ab <printint+0x5b>
 3a3:	8d 4f 02             	lea    0x2(%edi),%ecx
 3a6:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)
 3ab:	8d 79 ff             	lea    -0x1(%ecx),%edi
 3ae:	66 90                	xchg   %ax,%ax
 3b0:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
 3b5:	83 ef 01             	sub    $0x1,%edi
 3b8:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 3bf:	00 
 3c0:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 3c4:	89 34 24             	mov    %esi,(%esp)
 3c7:	88 45 d7             	mov    %al,-0x29(%ebp)
 3ca:	e8 f3 fe ff ff       	call   2c2 <write>
 3cf:	83 ff ff             	cmp    $0xffffffff,%edi
 3d2:	75 dc                	jne    3b0 <printint+0x60>
 3d4:	83 c4 4c             	add    $0x4c,%esp
 3d7:	5b                   	pop    %ebx
 3d8:	5e                   	pop    %esi
 3d9:	5f                   	pop    %edi
 3da:	5d                   	pop    %ebp
 3db:	c3                   	ret    
 3dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3e0:	89 d0                	mov    %edx,%eax
 3e2:	f7 d8                	neg    %eax
 3e4:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
 3eb:	eb 87                	jmp    374 <printint+0x24>
 3ed:	8d 76 00             	lea    0x0(%esi),%esi

000003f0 <printf>:
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
 3f3:	57                   	push   %edi
 3f4:	31 ff                	xor    %edi,%edi
 3f6:	56                   	push   %esi
 3f7:	53                   	push   %ebx
 3f8:	83 ec 3c             	sub    $0x3c,%esp
 3fb:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 3fe:	8d 45 10             	lea    0x10(%ebp),%eax
 401:	8b 75 08             	mov    0x8(%ebp),%esi
 404:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 407:	0f b6 13             	movzbl (%ebx),%edx
 40a:	83 c3 01             	add    $0x1,%ebx
 40d:	84 d2                	test   %dl,%dl
 40f:	75 39                	jne    44a <printf+0x5a>
 411:	e9 c2 00 00 00       	jmp    4d8 <printf+0xe8>
 416:	66 90                	xchg   %ax,%ax
 418:	83 fa 25             	cmp    $0x25,%edx
 41b:	0f 84 bf 00 00 00    	je     4e0 <printf+0xf0>
 421:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 424:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 42b:	00 
 42c:	89 44 24 04          	mov    %eax,0x4(%esp)
 430:	89 34 24             	mov    %esi,(%esp)
 433:	88 55 e2             	mov    %dl,-0x1e(%ebp)
 436:	e8 87 fe ff ff       	call   2c2 <write>
 43b:	83 c3 01             	add    $0x1,%ebx
 43e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 442:	84 d2                	test   %dl,%dl
 444:	0f 84 8e 00 00 00    	je     4d8 <printf+0xe8>
 44a:	85 ff                	test   %edi,%edi
 44c:	0f be c2             	movsbl %dl,%eax
 44f:	74 c7                	je     418 <printf+0x28>
 451:	83 ff 25             	cmp    $0x25,%edi
 454:	75 e5                	jne    43b <printf+0x4b>
 456:	83 fa 64             	cmp    $0x64,%edx
 459:	0f 84 31 01 00 00    	je     590 <printf+0x1a0>
 45f:	25 f7 00 00 00       	and    $0xf7,%eax
 464:	83 f8 70             	cmp    $0x70,%eax
 467:	0f 84 83 00 00 00    	je     4f0 <printf+0x100>
 46d:	83 fa 73             	cmp    $0x73,%edx
 470:	0f 84 a2 00 00 00    	je     518 <printf+0x128>
 476:	83 fa 63             	cmp    $0x63,%edx
 479:	0f 84 35 01 00 00    	je     5b4 <printf+0x1c4>
 47f:	83 fa 25             	cmp    $0x25,%edx
 482:	0f 84 e0 00 00 00    	je     568 <printf+0x178>
 488:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 48b:	83 c3 01             	add    $0x1,%ebx
 48e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 495:	00 
 496:	31 ff                	xor    %edi,%edi
 498:	89 44 24 04          	mov    %eax,0x4(%esp)
 49c:	89 34 24             	mov    %esi,(%esp)
 49f:	89 55 d0             	mov    %edx,-0x30(%ebp)
 4a2:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
 4a6:	e8 17 fe ff ff       	call   2c2 <write>
 4ab:	8b 55 d0             	mov    -0x30(%ebp),%edx
 4ae:	8d 45 e7             	lea    -0x19(%ebp),%eax
 4b1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 4b8:	00 
 4b9:	89 44 24 04          	mov    %eax,0x4(%esp)
 4bd:	89 34 24             	mov    %esi,(%esp)
 4c0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 4c3:	e8 fa fd ff ff       	call   2c2 <write>
 4c8:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 4cc:	84 d2                	test   %dl,%dl
 4ce:	0f 85 76 ff ff ff    	jne    44a <printf+0x5a>
 4d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4d8:	83 c4 3c             	add    $0x3c,%esp
 4db:	5b                   	pop    %ebx
 4dc:	5e                   	pop    %esi
 4dd:	5f                   	pop    %edi
 4de:	5d                   	pop    %ebp
 4df:	c3                   	ret    
 4e0:	bf 25 00 00 00       	mov    $0x25,%edi
 4e5:	e9 51 ff ff ff       	jmp    43b <printf+0x4b>
 4ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 4f0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 4f3:	b9 10 00 00 00       	mov    $0x10,%ecx
 4f8:	31 ff                	xor    %edi,%edi
 4fa:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 501:	8b 10                	mov    (%eax),%edx
 503:	89 f0                	mov    %esi,%eax
 505:	e8 46 fe ff ff       	call   350 <printint>
 50a:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 50e:	e9 28 ff ff ff       	jmp    43b <printf+0x4b>
 513:	90                   	nop
 514:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 518:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 51b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 51f:	8b 38                	mov    (%eax),%edi
 521:	b8 83 07 00 00       	mov    $0x783,%eax
 526:	85 ff                	test   %edi,%edi
 528:	0f 44 f8             	cmove  %eax,%edi
 52b:	0f b6 07             	movzbl (%edi),%eax
 52e:	84 c0                	test   %al,%al
 530:	74 2a                	je     55c <printf+0x16c>
 532:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 538:	88 45 e3             	mov    %al,-0x1d(%ebp)
 53b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
 53e:	83 c7 01             	add    $0x1,%edi
 541:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 548:	00 
 549:	89 44 24 04          	mov    %eax,0x4(%esp)
 54d:	89 34 24             	mov    %esi,(%esp)
 550:	e8 6d fd ff ff       	call   2c2 <write>
 555:	0f b6 07             	movzbl (%edi),%eax
 558:	84 c0                	test   %al,%al
 55a:	75 dc                	jne    538 <printf+0x148>
 55c:	31 ff                	xor    %edi,%edi
 55e:	e9 d8 fe ff ff       	jmp    43b <printf+0x4b>
 563:	90                   	nop
 564:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 568:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 56b:	31 ff                	xor    %edi,%edi
 56d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 574:	00 
 575:	89 44 24 04          	mov    %eax,0x4(%esp)
 579:	89 34 24             	mov    %esi,(%esp)
 57c:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
 580:	e8 3d fd ff ff       	call   2c2 <write>
 585:	e9 b1 fe ff ff       	jmp    43b <printf+0x4b>
 58a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 590:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 593:	b9 0a 00 00 00       	mov    $0xa,%ecx
 598:	66 31 ff             	xor    %di,%di
 59b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 5a2:	8b 10                	mov    (%eax),%edx
 5a4:	89 f0                	mov    %esi,%eax
 5a6:	e8 a5 fd ff ff       	call   350 <printint>
 5ab:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 5af:	e9 87 fe ff ff       	jmp    43b <printf+0x4b>
 5b4:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 5b7:	31 ff                	xor    %edi,%edi
 5b9:	8b 00                	mov    (%eax),%eax
 5bb:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 5c2:	00 
 5c3:	89 34 24             	mov    %esi,(%esp)
 5c6:	88 45 e4             	mov    %al,-0x1c(%ebp)
 5c9:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 5cc:	89 44 24 04          	mov    %eax,0x4(%esp)
 5d0:	e8 ed fc ff ff       	call   2c2 <write>
 5d5:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
 5d9:	e9 5d fe ff ff       	jmp    43b <printf+0x4b>
 5de:	66 90                	xchg   %ax,%ax

000005e0 <free>:
 5e0:	55                   	push   %ebp
 5e1:	a1 08 0a 00 00       	mov    0xa08,%eax
 5e6:	89 e5                	mov    %esp,%ebp
 5e8:	57                   	push   %edi
 5e9:	56                   	push   %esi
 5ea:	53                   	push   %ebx
 5eb:	8b 5d 08             	mov    0x8(%ebp),%ebx
 5ee:	8b 08                	mov    (%eax),%ecx
 5f0:	8d 53 f8             	lea    -0x8(%ebx),%edx
 5f3:	39 d0                	cmp    %edx,%eax
 5f5:	72 11                	jb     608 <free+0x28>
 5f7:	90                   	nop
 5f8:	39 c8                	cmp    %ecx,%eax
 5fa:	72 04                	jb     600 <free+0x20>
 5fc:	39 ca                	cmp    %ecx,%edx
 5fe:	72 10                	jb     610 <free+0x30>
 600:	89 c8                	mov    %ecx,%eax
 602:	39 d0                	cmp    %edx,%eax
 604:	8b 08                	mov    (%eax),%ecx
 606:	73 f0                	jae    5f8 <free+0x18>
 608:	39 ca                	cmp    %ecx,%edx
 60a:	72 04                	jb     610 <free+0x30>
 60c:	39 c8                	cmp    %ecx,%eax
 60e:	72 f0                	jb     600 <free+0x20>
 610:	8b 73 fc             	mov    -0x4(%ebx),%esi
 613:	8d 3c f2             	lea    (%edx,%esi,8),%edi
 616:	39 cf                	cmp    %ecx,%edi
 618:	74 1e                	je     638 <free+0x58>
 61a:	89 4b f8             	mov    %ecx,-0x8(%ebx)
 61d:	8b 48 04             	mov    0x4(%eax),%ecx
 620:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 623:	39 f2                	cmp    %esi,%edx
 625:	74 28                	je     64f <free+0x6f>
 627:	89 10                	mov    %edx,(%eax)
 629:	a3 08 0a 00 00       	mov    %eax,0xa08
 62e:	5b                   	pop    %ebx
 62f:	5e                   	pop    %esi
 630:	5f                   	pop    %edi
 631:	5d                   	pop    %ebp
 632:	c3                   	ret    
 633:	90                   	nop
 634:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 638:	03 71 04             	add    0x4(%ecx),%esi
 63b:	89 73 fc             	mov    %esi,-0x4(%ebx)
 63e:	8b 08                	mov    (%eax),%ecx
 640:	8b 09                	mov    (%ecx),%ecx
 642:	89 4b f8             	mov    %ecx,-0x8(%ebx)
 645:	8b 48 04             	mov    0x4(%eax),%ecx
 648:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
 64b:	39 f2                	cmp    %esi,%edx
 64d:	75 d8                	jne    627 <free+0x47>
 64f:	03 4b fc             	add    -0x4(%ebx),%ecx
 652:	a3 08 0a 00 00       	mov    %eax,0xa08
 657:	89 48 04             	mov    %ecx,0x4(%eax)
 65a:	8b 53 f8             	mov    -0x8(%ebx),%edx
 65d:	89 10                	mov    %edx,(%eax)
 65f:	5b                   	pop    %ebx
 660:	5e                   	pop    %esi
 661:	5f                   	pop    %edi
 662:	5d                   	pop    %ebp
 663:	c3                   	ret    
 664:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 66a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000670 <malloc>:
 670:	55                   	push   %ebp
 671:	89 e5                	mov    %esp,%ebp
 673:	57                   	push   %edi
 674:	56                   	push   %esi
 675:	53                   	push   %ebx
 676:	83 ec 1c             	sub    $0x1c,%esp
 679:	8b 45 08             	mov    0x8(%ebp),%eax
 67c:	8b 1d 08 0a 00 00    	mov    0xa08,%ebx
 682:	8d 48 07             	lea    0x7(%eax),%ecx
 685:	c1 e9 03             	shr    $0x3,%ecx
 688:	85 db                	test   %ebx,%ebx
 68a:	8d 71 01             	lea    0x1(%ecx),%esi
 68d:	0f 84 9b 00 00 00    	je     72e <malloc+0xbe>
 693:	8b 13                	mov    (%ebx),%edx
 695:	8b 7a 04             	mov    0x4(%edx),%edi
 698:	39 fe                	cmp    %edi,%esi
 69a:	76 64                	jbe    700 <malloc+0x90>
 69c:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
 6a3:	bb 00 80 00 00       	mov    $0x8000,%ebx
 6a8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 6ab:	eb 0e                	jmp    6bb <malloc+0x4b>
 6ad:	8d 76 00             	lea    0x0(%esi),%esi
 6b0:	8b 02                	mov    (%edx),%eax
 6b2:	8b 78 04             	mov    0x4(%eax),%edi
 6b5:	39 fe                	cmp    %edi,%esi
 6b7:	76 4f                	jbe    708 <malloc+0x98>
 6b9:	89 c2                	mov    %eax,%edx
 6bb:	3b 15 08 0a 00 00    	cmp    0xa08,%edx
 6c1:	75 ed                	jne    6b0 <malloc+0x40>
 6c3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 6c6:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
 6cc:	bf 00 10 00 00       	mov    $0x1000,%edi
 6d1:	0f 43 fe             	cmovae %esi,%edi
 6d4:	0f 42 c3             	cmovb  %ebx,%eax
 6d7:	89 04 24             	mov    %eax,(%esp)
 6da:	e8 4b fc ff ff       	call   32a <sbrk>
 6df:	83 f8 ff             	cmp    $0xffffffff,%eax
 6e2:	74 18                	je     6fc <malloc+0x8c>
 6e4:	89 78 04             	mov    %edi,0x4(%eax)
 6e7:	83 c0 08             	add    $0x8,%eax
 6ea:	89 04 24             	mov    %eax,(%esp)
 6ed:	e8 ee fe ff ff       	call   5e0 <free>
 6f2:	8b 15 08 0a 00 00    	mov    0xa08,%edx
 6f8:	85 d2                	test   %edx,%edx
 6fa:	75 b4                	jne    6b0 <malloc+0x40>
 6fc:	31 c0                	xor    %eax,%eax
 6fe:	eb 20                	jmp    720 <malloc+0xb0>
 700:	89 d0                	mov    %edx,%eax
 702:	89 da                	mov    %ebx,%edx
 704:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 708:	39 fe                	cmp    %edi,%esi
 70a:	74 1c                	je     728 <malloc+0xb8>
 70c:	29 f7                	sub    %esi,%edi
 70e:	89 78 04             	mov    %edi,0x4(%eax)
 711:	8d 04 f8             	lea    (%eax,%edi,8),%eax
 714:	89 70 04             	mov    %esi,0x4(%eax)
 717:	89 15 08 0a 00 00    	mov    %edx,0xa08
 71d:	83 c0 08             	add    $0x8,%eax
 720:	83 c4 1c             	add    $0x1c,%esp
 723:	5b                   	pop    %ebx
 724:	5e                   	pop    %esi
 725:	5f                   	pop    %edi
 726:	5d                   	pop    %ebp
 727:	c3                   	ret    
 728:	8b 08                	mov    (%eax),%ecx
 72a:	89 0a                	mov    %ecx,(%edx)
 72c:	eb e9                	jmp    717 <malloc+0xa7>
 72e:	c7 05 08 0a 00 00 0c 	movl   $0xa0c,0xa08
 735:	0a 00 00 
 738:	ba 0c 0a 00 00       	mov    $0xa0c,%edx
 73d:	c7 05 0c 0a 00 00 0c 	movl   $0xa0c,0xa0c
 744:	0a 00 00 
 747:	c7 05 10 0a 00 00 00 	movl   $0x0,0xa10
 74e:	00 00 00 
 751:	e9 46 ff ff ff       	jmp    69c <malloc+0x2c>
