
_grep:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  }
}

int
main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	83 ec 18             	sub    $0x18,%esp
  14:	8b 01                	mov    (%ecx),%eax
  16:	8b 59 04             	mov    0x4(%ecx),%ebx
  19:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  int fd, i;
  char *pattern;

  if(argc <= 1){
  1c:	83 f8 01             	cmp    $0x1,%eax
  1f:	7e 6f                	jle    90 <main+0x90>
    printf(2, "usage: grep pattern [file ...]\n");
    exit();
  }
  pattern = argv[1];
  21:	8b 43 04             	mov    0x4(%ebx),%eax
  if(argc <= 2){
    grep(pattern, 0);
    exit();
  }

  for(i = 2; i < argc; i++){
  24:	be 02 00 00 00       	mov    $0x2,%esi
  29:	83 c3 08             	add    $0x8,%ebx
  pattern = argv[1];
  2c:	89 45 e0             	mov    %eax,-0x20(%ebp)
  if(argc <= 2){
  2f:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
  33:	74 6e                	je     a3 <main+0xa3>
  35:	8d 76 00             	lea    0x0(%esi),%esi
  38:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  3f:	00 
    if((fd = open(argv[i], 0)) < 0){
  40:	83 ec 08             	sub    $0x8,%esp
  43:	6a 00                	push   $0x0
  45:	ff 33                	push   (%ebx)
  47:	e8 07 06 00 00       	call   653 <open>
  4c:	83 c4 10             	add    $0x10,%esp
  4f:	89 c7                	mov    %eax,%edi
  51:	85 c0                	test   %eax,%eax
  53:	78 27                	js     7c <main+0x7c>
      printf(1, "grep: cannot open %s\n", argv[i]);
      exit();
    }
    grep(pattern, fd);
  55:	83 ec 08             	sub    $0x8,%esp
  for(i = 2; i < argc; i++){
  58:	83 c6 01             	add    $0x1,%esi
  5b:	83 c3 04             	add    $0x4,%ebx
    grep(pattern, fd);
  5e:	50                   	push   %eax
  5f:	ff 75 e0             	push   -0x20(%ebp)
  62:	e8 89 01 00 00       	call   1f0 <grep>
    close(fd);
  67:	89 3c 24             	mov    %edi,(%esp)
  6a:	e8 cc 05 00 00       	call   63b <close>
  for(i = 2; i < argc; i++){
  6f:	83 c4 10             	add    $0x10,%esp
  72:	39 75 e4             	cmp    %esi,-0x1c(%ebp)
  75:	7f c9                	jg     40 <main+0x40>
  }
  exit();
  77:	e8 97 05 00 00       	call   613 <exit>
      printf(1, "grep: cannot open %s\n", argv[i]);
  7c:	50                   	push   %eax
  7d:	ff 33                	push   (%ebx)
  7f:	68 08 0b 00 00       	push   $0xb08
  84:	6a 01                	push   $0x1
  86:	e8 f5 06 00 00       	call   780 <printf>
      exit();
  8b:	e8 83 05 00 00       	call   613 <exit>
    printf(2, "usage: grep pattern [file ...]\n");
  90:	51                   	push   %ecx
  91:	51                   	push   %ecx
  92:	68 e8 0a 00 00       	push   $0xae8
  97:	6a 02                	push   $0x2
  99:	e8 e2 06 00 00       	call   780 <printf>
    exit();
  9e:	e8 70 05 00 00       	call   613 <exit>
    grep(pattern, 0);
  a3:	52                   	push   %edx
  a4:	52                   	push   %edx
  a5:	6a 00                	push   $0x0
  a7:	50                   	push   %eax
  a8:	e8 43 01 00 00       	call   1f0 <grep>
    exit();
  ad:	e8 61 05 00 00       	call   613 <exit>
  b2:	66 90                	xchg   %ax,%ax
  b4:	66 90                	xchg   %ax,%ax
  b6:	66 90                	xchg   %ax,%ax
  b8:	66 90                	xchg   %ax,%ax
  ba:	66 90                	xchg   %ax,%ax
  bc:	66 90                	xchg   %ax,%ax
  be:	66 90                	xchg   %ax,%ax

000000c0 <matchhere>:
  return 0;
}

// matchhere: search for re at beginning of text
int matchhere(char *re, char *text)
{
  c0:	55                   	push   %ebp
  c1:	89 e5                	mov    %esp,%ebp
  c3:	57                   	push   %edi
  c4:	56                   	push   %esi
  c5:	53                   	push   %ebx
  c6:	83 ec 1c             	sub    $0x1c,%esp
  c9:	8b 75 08             	mov    0x8(%ebp),%esi
  cc:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  if(re[0] == '\0')
  cf:	0f b6 16             	movzbl (%esi),%edx
  d2:	84 d2                	test   %dl,%dl
  d4:	75 23                	jne    f9 <matchhere+0x39>
  d6:	eb 58                	jmp    130 <matchhere+0x70>
  d8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  df:	00 
    return 1;
  if(re[1] == '*')
    return matchstar(re[0], re+2, text);
  if(re[0] == '$' && re[1] == '\0')
    return *text == '\0';
  if(*text!='\0' && (re[0]=='.' || re[0]==*text))
  e0:	84 c9                	test   %cl,%cl
  e2:	74 3c                	je     120 <matchhere+0x60>
  e4:	80 fa 2e             	cmp    $0x2e,%dl
  e7:	74 04                	je     ed <matchhere+0x2d>
  e9:	38 d1                	cmp    %dl,%cl
  eb:	75 33                	jne    120 <matchhere+0x60>
  if(re[0] == '\0')
  ed:	84 c0                	test   %al,%al
  ef:	74 3f                	je     130 <matchhere+0x70>
    return matchhere(re+1, text+1);
  f1:	83 c3 01             	add    $0x1,%ebx
  f4:	83 c6 01             	add    $0x1,%esi
{
  f7:	89 c2                	mov    %eax,%edx
  if(re[1] == '*')
  f9:	0f b6 46 01          	movzbl 0x1(%esi),%eax
  fd:	3c 2a                	cmp    $0x2a,%al
  ff:	74 3f                	je     140 <matchhere+0x80>
    return *text == '\0';
 101:	0f b6 0b             	movzbl (%ebx),%ecx
  if(re[0] == '$' && re[1] == '\0')
 104:	80 fa 24             	cmp    $0x24,%dl
 107:	75 d7                	jne    e0 <matchhere+0x20>
 109:	84 c0                	test   %al,%al
 10b:	74 71                	je     17e <matchhere+0xbe>
  if(*text!='\0' && (re[0]=='.' || re[0]==*text))
 10d:	84 c9                	test   %cl,%cl
 10f:	74 0f                	je     120 <matchhere+0x60>
 111:	80 f9 24             	cmp    $0x24,%cl
 114:	74 db                	je     f1 <matchhere+0x31>
 116:	66 90                	xchg   %ax,%ax
 118:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 11f:	00 
{
  do{  // a * matches zero or more instances
    if(matchhere(re, text))
      return 1;
  }while(*text!='\0' && (*text++==c || c=='.'));
  return 0;
 120:	31 c0                	xor    %eax,%eax
}
 122:	8d 65 f4             	lea    -0xc(%ebp),%esp
 125:	5b                   	pop    %ebx
 126:	5e                   	pop    %esi
 127:	5f                   	pop    %edi
 128:	5d                   	pop    %ebp
 129:	c3                   	ret
 12a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 130:	8d 65 f4             	lea    -0xc(%ebp),%esp
    return 1;
 133:	b8 01 00 00 00       	mov    $0x1,%eax
}
 138:	5b                   	pop    %ebx
 139:	5e                   	pop    %esi
 13a:	5f                   	pop    %edi
 13b:	5d                   	pop    %ebp
 13c:	c3                   	ret
 13d:	8d 76 00             	lea    0x0(%esi),%esi
    return matchstar(re[0], re+2, text);
 140:	83 c6 02             	add    $0x2,%esi
  }while(*text!='\0' && (*text++==c || c=='.'));
 143:	80 fa 2e             	cmp    $0x2e,%dl
 146:	0f 94 c0             	sete   %al
 149:	89 c7                	mov    %eax,%edi
 14b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    if(matchhere(re, text))
 150:	83 ec 08             	sub    $0x8,%esp
 153:	88 55 e7             	mov    %dl,-0x19(%ebp)
 156:	53                   	push   %ebx
 157:	56                   	push   %esi
 158:	e8 63 ff ff ff       	call   c0 <matchhere>
 15d:	83 c4 10             	add    $0x10,%esp
 160:	85 c0                	test   %eax,%eax
 162:	75 be                	jne    122 <matchhere+0x62>
  }while(*text!='\0' && (*text++==c || c=='.'));
 164:	0f b6 0b             	movzbl (%ebx),%ecx
 167:	84 c9                	test   %cl,%cl
 169:	74 b7                	je     122 <matchhere+0x62>
 16b:	0f b6 55 e7          	movzbl -0x19(%ebp),%edx
 16f:	83 c3 01             	add    $0x1,%ebx
 172:	38 d1                	cmp    %dl,%cl
 174:	74 da                	je     150 <matchhere+0x90>
 176:	89 f9                	mov    %edi,%ecx
 178:	84 c9                	test   %cl,%cl
 17a:	75 d4                	jne    150 <matchhere+0x90>
 17c:	eb a4                	jmp    122 <matchhere+0x62>
    return *text == '\0';
 17e:	31 c0                	xor    %eax,%eax
 180:	84 c9                	test   %cl,%cl
 182:	0f 94 c0             	sete   %al
 185:	eb 9b                	jmp    122 <matchhere+0x62>
 187:	90                   	nop
 188:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 18f:	00 

00000190 <match>:
{
 190:	55                   	push   %ebp
 191:	89 e5                	mov    %esp,%ebp
 193:	56                   	push   %esi
 194:	53                   	push   %ebx
 195:	8b 75 08             	mov    0x8(%ebp),%esi
 198:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  if(re[0] == '^')
 19b:	80 3e 5e             	cmpb   $0x5e,(%esi)
 19e:	75 11                	jne    1b1 <match+0x21>
 1a0:	eb 2e                	jmp    1d0 <match+0x40>
 1a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  }while(*text++ != '\0');
 1a8:	83 c3 01             	add    $0x1,%ebx
 1ab:	80 7b ff 00          	cmpb   $0x0,-0x1(%ebx)
 1af:	74 11                	je     1c2 <match+0x32>
    if(matchhere(re, text))
 1b1:	83 ec 08             	sub    $0x8,%esp
 1b4:	53                   	push   %ebx
 1b5:	56                   	push   %esi
 1b6:	e8 05 ff ff ff       	call   c0 <matchhere>
 1bb:	83 c4 10             	add    $0x10,%esp
 1be:	85 c0                	test   %eax,%eax
 1c0:	74 e6                	je     1a8 <match+0x18>
}
 1c2:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1c5:	5b                   	pop    %ebx
 1c6:	5e                   	pop    %esi
 1c7:	5d                   	pop    %ebp
 1c8:	c3                   	ret
 1c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return matchhere(re+1, text);
 1d0:	83 c6 01             	add    $0x1,%esi
 1d3:	89 75 08             	mov    %esi,0x8(%ebp)
}
 1d6:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1d9:	5b                   	pop    %ebx
 1da:	5e                   	pop    %esi
 1db:	5d                   	pop    %ebp
    return matchhere(re+1, text);
 1dc:	e9 df fe ff ff       	jmp    c0 <matchhere>
 1e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1e8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1ef:	00 

000001f0 <grep>:
{
 1f0:	55                   	push   %ebp
 1f1:	89 e5                	mov    %esp,%ebp
 1f3:	57                   	push   %edi
 1f4:	56                   	push   %esi
 1f5:	53                   	push   %ebx
 1f6:	83 ec 1c             	sub    $0x1c,%esp
 1f9:	8b 5d 08             	mov    0x8(%ebp),%ebx
 1fc:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    return matchhere(re+1, text);
 203:	8d 43 01             	lea    0x1(%ebx),%eax
 206:	89 45 dc             	mov    %eax,-0x24(%ebp)
 209:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  while((n = read(fd, buf+m, sizeof(buf)-m-1)) > 0){
 210:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 213:	b8 ff 03 00 00       	mov    $0x3ff,%eax
 218:	83 ec 04             	sub    $0x4,%esp
 21b:	29 c8                	sub    %ecx,%eax
 21d:	50                   	push   %eax
 21e:	8d 81 20 0f 00 00    	lea    0xf20(%ecx),%eax
 224:	50                   	push   %eax
 225:	ff 75 0c             	push   0xc(%ebp)
 228:	e8 fe 03 00 00       	call   62b <read>
 22d:	83 c4 10             	add    $0x10,%esp
 230:	85 c0                	test   %eax,%eax
 232:	0f 8e fd 00 00 00    	jle    335 <grep+0x145>
    m += n;
 238:	01 45 e0             	add    %eax,-0x20(%ebp)
 23b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
    buf[m] = '\0';
 23e:	bf 20 0f 00 00       	mov    $0xf20,%edi
 243:	89 de                	mov    %ebx,%esi
 245:	c6 81 20 0f 00 00 00 	movb   $0x0,0xf20(%ecx)
    while((q = strchr(p, '\n')) != 0){
 24c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 250:	83 ec 08             	sub    $0x8,%esp
 253:	6a 0a                	push   $0xa
 255:	57                   	push   %edi
 256:	e8 35 02 00 00       	call   490 <strchr>
 25b:	83 c4 10             	add    $0x10,%esp
 25e:	89 c2                	mov    %eax,%edx
 260:	85 c0                	test   %eax,%eax
 262:	0f 84 88 00 00 00    	je     2f0 <grep+0x100>
      *q = 0;
 268:	c6 02 00             	movb   $0x0,(%edx)
  if(re[0] == '^')
 26b:	80 3e 5e             	cmpb   $0x5e,(%esi)
 26e:	74 58                	je     2c8 <grep+0xd8>
 270:	89 7d e4             	mov    %edi,-0x1c(%ebp)
 273:	89 d3                	mov    %edx,%ebx
 275:	eb 12                	jmp    289 <grep+0x99>
 277:	90                   	nop
 278:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 27f:	00 
  }while(*text++ != '\0');
 280:	83 c7 01             	add    $0x1,%edi
 283:	80 7f ff 00          	cmpb   $0x0,-0x1(%edi)
 287:	74 37                	je     2c0 <grep+0xd0>
    if(matchhere(re, text))
 289:	83 ec 08             	sub    $0x8,%esp
 28c:	57                   	push   %edi
 28d:	56                   	push   %esi
 28e:	e8 2d fe ff ff       	call   c0 <matchhere>
 293:	83 c4 10             	add    $0x10,%esp
 296:	85 c0                	test   %eax,%eax
 298:	74 e6                	je     280 <grep+0x90>
        write(1, p, q+1 - p);
 29a:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 29d:	89 da                	mov    %ebx,%edx
 29f:	8d 5b 01             	lea    0x1(%ebx),%ebx
 2a2:	89 d8                	mov    %ebx,%eax
 2a4:	83 ec 04             	sub    $0x4,%esp
        *q = '\n';
 2a7:	c6 02 0a             	movb   $0xa,(%edx)
        write(1, p, q+1 - p);
 2aa:	29 f8                	sub    %edi,%eax
 2ac:	50                   	push   %eax
 2ad:	57                   	push   %edi
 2ae:	89 df                	mov    %ebx,%edi
 2b0:	6a 01                	push   $0x1
 2b2:	e8 7c 03 00 00       	call   633 <write>
 2b7:	83 c4 10             	add    $0x10,%esp
 2ba:	eb 94                	jmp    250 <grep+0x60>
 2bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2c0:	8d 7b 01             	lea    0x1(%ebx),%edi
      p = q+1;
 2c3:	eb 8b                	jmp    250 <grep+0x60>
 2c5:	8d 76 00             	lea    0x0(%esi),%esi
    return matchhere(re+1, text);
 2c8:	83 ec 08             	sub    $0x8,%esp
 2cb:	89 55 e4             	mov    %edx,-0x1c(%ebp)
 2ce:	57                   	push   %edi
 2cf:	ff 75 dc             	push   -0x24(%ebp)
 2d2:	e8 e9 fd ff ff       	call   c0 <matchhere>
        write(1, p, q+1 - p);
 2d7:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    return matchhere(re+1, text);
 2da:	83 c4 10             	add    $0x10,%esp
        write(1, p, q+1 - p);
 2dd:	8d 5a 01             	lea    0x1(%edx),%ebx
      if(match(pattern, p)){
 2e0:	85 c0                	test   %eax,%eax
 2e2:	75 be                	jne    2a2 <grep+0xb2>
        write(1, p, q+1 - p);
 2e4:	89 df                	mov    %ebx,%edi
 2e6:	e9 65 ff ff ff       	jmp    250 <grep+0x60>
 2eb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    if(p == buf)
 2f0:	89 f3                	mov    %esi,%ebx
 2f2:	81 ff 20 0f 00 00    	cmp    $0xf20,%edi
 2f8:	74 2f                	je     329 <grep+0x139>
    if(m > 0){
 2fa:	8b 45 e0             	mov    -0x20(%ebp),%eax
 2fd:	85 c0                	test   %eax,%eax
 2ff:	0f 8e 0b ff ff ff    	jle    210 <grep+0x20>
      m -= p - buf;
 305:	89 f8                	mov    %edi,%eax
      memmove(buf, p, m);
 307:	83 ec 04             	sub    $0x4,%esp
      m -= p - buf;
 30a:	2d 20 0f 00 00       	sub    $0xf20,%eax
 30f:	29 45 e0             	sub    %eax,-0x20(%ebp)
 312:	8b 4d e0             	mov    -0x20(%ebp),%ecx
      memmove(buf, p, m);
 315:	51                   	push   %ecx
 316:	57                   	push   %edi
 317:	68 20 0f 00 00       	push   $0xf20
 31c:	e8 bf 02 00 00       	call   5e0 <memmove>
 321:	83 c4 10             	add    $0x10,%esp
 324:	e9 e7 fe ff ff       	jmp    210 <grep+0x20>
      m = 0;
 329:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 330:	e9 db fe ff ff       	jmp    210 <grep+0x20>
}
 335:	8d 65 f4             	lea    -0xc(%ebp),%esp
 338:	5b                   	pop    %ebx
 339:	5e                   	pop    %esi
 33a:	5f                   	pop    %edi
 33b:	5d                   	pop    %ebp
 33c:	c3                   	ret
 33d:	8d 76 00             	lea    0x0(%esi),%esi

00000340 <matchstar>:
{
 340:	55                   	push   %ebp
 341:	89 e5                	mov    %esp,%ebp
 343:	57                   	push   %edi
 344:	56                   	push   %esi
 345:	53                   	push   %ebx
 346:	83 ec 1c             	sub    $0x1c,%esp
 349:	8b 5d 08             	mov    0x8(%ebp),%ebx
 34c:	8b 75 0c             	mov    0xc(%ebp),%esi
 34f:	8b 7d 10             	mov    0x10(%ebp),%edi
  }while(*text!='\0' && (*text++==c || c=='.'));
 352:	83 fb 2e             	cmp    $0x2e,%ebx
 355:	0f 94 45 e7          	sete   -0x19(%ebp)
 359:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(matchhere(re, text))
 360:	83 ec 08             	sub    $0x8,%esp
 363:	57                   	push   %edi
 364:	56                   	push   %esi
 365:	e8 56 fd ff ff       	call   c0 <matchhere>
 36a:	83 c4 10             	add    $0x10,%esp
 36d:	89 c1                	mov    %eax,%ecx
 36f:	85 c0                	test   %eax,%eax
 371:	75 14                	jne    387 <matchstar+0x47>
  }while(*text!='\0' && (*text++==c || c=='.'));
 373:	0f be 07             	movsbl (%edi),%eax
 376:	84 c0                	test   %al,%al
 378:	74 0d                	je     387 <matchstar+0x47>
 37a:	83 c7 01             	add    $0x1,%edi
 37d:	39 d8                	cmp    %ebx,%eax
 37f:	74 df                	je     360 <matchstar+0x20>
 381:	80 7d e7 00          	cmpb   $0x0,-0x19(%ebp)
 385:	75 d9                	jne    360 <matchstar+0x20>
}
 387:	8d 65 f4             	lea    -0xc(%ebp),%esp
 38a:	89 c8                	mov    %ecx,%eax
 38c:	5b                   	pop    %ebx
 38d:	5e                   	pop    %esi
 38e:	5f                   	pop    %edi
 38f:	5d                   	pop    %ebp
 390:	c3                   	ret
 391:	66 90                	xchg   %ax,%ax
 393:	66 90                	xchg   %ax,%ax
 395:	66 90                	xchg   %ax,%ax
 397:	66 90                	xchg   %ax,%ax
 399:	66 90                	xchg   %ax,%ax
 39b:	66 90                	xchg   %ax,%ax
 39d:	66 90                	xchg   %ax,%ax
 39f:	90                   	nop

000003a0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 3a0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 3a1:	31 c0                	xor    %eax,%eax
{
 3a3:	89 e5                	mov    %esp,%ebp
 3a5:	53                   	push   %ebx
 3a6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 3a9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 3ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 3b0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 3b4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 3b7:	83 c0 01             	add    $0x1,%eax
 3ba:	84 d2                	test   %dl,%dl
 3bc:	75 f2                	jne    3b0 <strcpy+0x10>
    ;
  return os;
}
 3be:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3c1:	89 c8                	mov    %ecx,%eax
 3c3:	c9                   	leave
 3c4:	c3                   	ret
 3c5:	8d 76 00             	lea    0x0(%esi),%esi
 3c8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3cf:	00 

000003d0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	53                   	push   %ebx
 3d4:	8b 55 08             	mov    0x8(%ebp),%edx
 3d7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 3da:	0f b6 02             	movzbl (%edx),%eax
 3dd:	84 c0                	test   %al,%al
 3df:	75 2d                	jne    40e <strcmp+0x3e>
 3e1:	eb 4a                	jmp    42d <strcmp+0x5d>
 3e3:	eb 1b                	jmp    400 <strcmp+0x30>
 3e5:	8d 76 00             	lea    0x0(%esi),%esi
 3e8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3ef:	00 
 3f0:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3f7:	00 
 3f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3ff:	00 
 400:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 404:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 407:	84 c0                	test   %al,%al
 409:	74 15                	je     420 <strcmp+0x50>
 40b:	83 c1 01             	add    $0x1,%ecx
 40e:	0f b6 19             	movzbl (%ecx),%ebx
 411:	38 c3                	cmp    %al,%bl
 413:	74 eb                	je     400 <strcmp+0x30>
  return (uchar)*p - (uchar)*q;
 415:	29 d8                	sub    %ebx,%eax
}
 417:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 41a:	c9                   	leave
 41b:	c3                   	ret
 41c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  return (uchar)*p - (uchar)*q;
 420:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 424:	31 c0                	xor    %eax,%eax
 426:	29 d8                	sub    %ebx,%eax
}
 428:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 42b:	c9                   	leave
 42c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
 42d:	0f b6 19             	movzbl (%ecx),%ebx
 430:	31 c0                	xor    %eax,%eax
 432:	eb e1                	jmp    415 <strcmp+0x45>
 434:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 438:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 43f:	00 

00000440 <strlen>:

uint
strlen(const char *s)
{
 440:	55                   	push   %ebp
 441:	89 e5                	mov    %esp,%ebp
 443:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 446:	80 3a 00             	cmpb   $0x0,(%edx)
 449:	74 15                	je     460 <strlen+0x20>
 44b:	31 c0                	xor    %eax,%eax
 44d:	8d 76 00             	lea    0x0(%esi),%esi
 450:	83 c0 01             	add    $0x1,%eax
 453:	89 c1                	mov    %eax,%ecx
 455:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 459:	75 f5                	jne    450 <strlen+0x10>
    ;
  return n;
}
 45b:	89 c8                	mov    %ecx,%eax
 45d:	5d                   	pop    %ebp
 45e:	c3                   	ret
 45f:	90                   	nop
  for(n = 0; s[n]; n++)
 460:	31 c9                	xor    %ecx,%ecx
}
 462:	5d                   	pop    %ebp
 463:	89 c8                	mov    %ecx,%eax
 465:	c3                   	ret
 466:	66 90                	xchg   %ax,%ax
 468:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 46f:	00 

00000470 <memset>:

void*
memset(void *dst, int c, uint n)
{
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 474:	8b 4d 10             	mov    0x10(%ebp),%ecx
 477:	8b 45 0c             	mov    0xc(%ebp),%eax
 47a:	8b 7d 08             	mov    0x8(%ebp),%edi
 47d:	fc                   	cld
 47e:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 480:	8b 45 08             	mov    0x8(%ebp),%eax
 483:	8b 7d fc             	mov    -0x4(%ebp),%edi
 486:	c9                   	leave
 487:	c3                   	ret
 488:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 48f:	00 

00000490 <strchr>:

char*
strchr(const char *s, char c)
{
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	8b 45 08             	mov    0x8(%ebp),%eax
 496:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 49a:	0f b6 10             	movzbl (%eax),%edx
 49d:	84 d2                	test   %dl,%dl
 49f:	75 1a                	jne    4bb <strchr+0x2b>
 4a1:	eb 25                	jmp    4c8 <strchr+0x38>
 4a3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 4a8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 4af:	00 
 4b0:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 4b4:	83 c0 01             	add    $0x1,%eax
 4b7:	84 d2                	test   %dl,%dl
 4b9:	74 0d                	je     4c8 <strchr+0x38>
    if(*s == c)
 4bb:	38 d1                	cmp    %dl,%cl
 4bd:	75 f1                	jne    4b0 <strchr+0x20>
      return (char*)s;
  return 0;
}
 4bf:	5d                   	pop    %ebp
 4c0:	c3                   	ret
 4c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 4c8:	31 c0                	xor    %eax,%eax
}
 4ca:	5d                   	pop    %ebp
 4cb:	c3                   	ret
 4cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004d0 <gets>:

char*
gets(char *buf, int max)
{
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
 4d3:	57                   	push   %edi
 4d4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 4d5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 4d8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 4d9:	31 db                	xor    %ebx,%ebx
{
 4db:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 4de:	eb 27                	jmp    507 <gets+0x37>
    cc = read(0, &c, 1);
 4e0:	83 ec 04             	sub    $0x4,%esp
 4e3:	6a 01                	push   $0x1
 4e5:	57                   	push   %edi
 4e6:	6a 00                	push   $0x0
 4e8:	e8 3e 01 00 00       	call   62b <read>
    if(cc < 1)
 4ed:	83 c4 10             	add    $0x10,%esp
 4f0:	85 c0                	test   %eax,%eax
 4f2:	7e 1d                	jle    511 <gets+0x41>
      break;
    buf[i++] = c;
 4f4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 4f8:	8b 55 08             	mov    0x8(%ebp),%edx
 4fb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 4ff:	3c 0a                	cmp    $0xa,%al
 501:	74 1d                	je     520 <gets+0x50>
 503:	3c 0d                	cmp    $0xd,%al
 505:	74 19                	je     520 <gets+0x50>
  for(i=0; i+1 < max; ){
 507:	89 de                	mov    %ebx,%esi
 509:	83 c3 01             	add    $0x1,%ebx
 50c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 50f:	7c cf                	jl     4e0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 511:	8b 45 08             	mov    0x8(%ebp),%eax
 514:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 518:	8d 65 f4             	lea    -0xc(%ebp),%esp
 51b:	5b                   	pop    %ebx
 51c:	5e                   	pop    %esi
 51d:	5f                   	pop    %edi
 51e:	5d                   	pop    %ebp
 51f:	c3                   	ret
  buf[i] = '\0';
 520:	8b 45 08             	mov    0x8(%ebp),%eax
    buf[i++] = c;
 523:	89 de                	mov    %ebx,%esi
  buf[i] = '\0';
 525:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 529:	8d 65 f4             	lea    -0xc(%ebp),%esp
 52c:	5b                   	pop    %ebx
 52d:	5e                   	pop    %esi
 52e:	5f                   	pop    %edi
 52f:	5d                   	pop    %ebp
 530:	c3                   	ret
 531:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 538:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 53f:	00 

00000540 <stat>:

int
stat(const char *n, struct stat *st)
{
 540:	55                   	push   %ebp
 541:	89 e5                	mov    %esp,%ebp
 543:	56                   	push   %esi
 544:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 545:	83 ec 08             	sub    $0x8,%esp
 548:	6a 00                	push   $0x0
 54a:	ff 75 08             	push   0x8(%ebp)
 54d:	e8 01 01 00 00       	call   653 <open>
  if(fd < 0)
 552:	83 c4 10             	add    $0x10,%esp
 555:	85 c0                	test   %eax,%eax
 557:	78 27                	js     580 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 559:	83 ec 08             	sub    $0x8,%esp
 55c:	ff 75 0c             	push   0xc(%ebp)
 55f:	89 c3                	mov    %eax,%ebx
 561:	50                   	push   %eax
 562:	e8 04 01 00 00       	call   66b <fstat>
  close(fd);
 567:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 56a:	89 c6                	mov    %eax,%esi
  close(fd);
 56c:	e8 ca 00 00 00       	call   63b <close>
  return r;
 571:	83 c4 10             	add    $0x10,%esp
}
 574:	8d 65 f8             	lea    -0x8(%ebp),%esp
 577:	89 f0                	mov    %esi,%eax
 579:	5b                   	pop    %ebx
 57a:	5e                   	pop    %esi
 57b:	5d                   	pop    %ebp
 57c:	c3                   	ret
 57d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 580:	be ff ff ff ff       	mov    $0xffffffff,%esi
 585:	eb ed                	jmp    574 <stat+0x34>
 587:	90                   	nop
 588:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 58f:	00 

00000590 <atoi>:

int
atoi(const char *s)
{
 590:	55                   	push   %ebp
 591:	89 e5                	mov    %esp,%ebp
 593:	53                   	push   %ebx
 594:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 597:	0f be 02             	movsbl (%edx),%eax
 59a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 59d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 5a0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 5a5:	77 2e                	ja     5d5 <atoi+0x45>
 5a7:	eb 17                	jmp    5c0 <atoi+0x30>
 5a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5b0:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 5b7:	00 
 5b8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 5bf:	00 
    n = n*10 + *s++ - '0';
 5c0:	83 c2 01             	add    $0x1,%edx
 5c3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 5c6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 5ca:	0f be 02             	movsbl (%edx),%eax
 5cd:	8d 58 d0             	lea    -0x30(%eax),%ebx
 5d0:	80 fb 09             	cmp    $0x9,%bl
 5d3:	76 eb                	jbe    5c0 <atoi+0x30>
  return n;
}
 5d5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5d8:	89 c8                	mov    %ecx,%eax
 5da:	c9                   	leave
 5db:	c3                   	ret
 5dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000005e0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 5e0:	55                   	push   %ebp
 5e1:	89 e5                	mov    %esp,%ebp
 5e3:	57                   	push   %edi
 5e4:	8b 45 10             	mov    0x10(%ebp),%eax
 5e7:	8b 55 08             	mov    0x8(%ebp),%edx
 5ea:	56                   	push   %esi
 5eb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 5ee:	85 c0                	test   %eax,%eax
 5f0:	7e 13                	jle    605 <memmove+0x25>
 5f2:	01 d0                	add    %edx,%eax
  dst = vdst;
 5f4:	89 d7                	mov    %edx,%edi
 5f6:	66 90                	xchg   %ax,%ax
 5f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 5ff:	00 
    *dst++ = *src++;
 600:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 601:	39 f8                	cmp    %edi,%eax
 603:	75 fb                	jne    600 <memmove+0x20>
  return vdst;
}
 605:	5e                   	pop    %esi
 606:	89 d0                	mov    %edx,%eax
 608:	5f                   	pop    %edi
 609:	5d                   	pop    %ebp
 60a:	c3                   	ret

0000060b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 60b:	b8 01 00 00 00       	mov    $0x1,%eax
 610:	cd 40                	int    $0x40
 612:	c3                   	ret

00000613 <exit>:
SYSCALL(exit)
 613:	b8 02 00 00 00       	mov    $0x2,%eax
 618:	cd 40                	int    $0x40
 61a:	c3                   	ret

0000061b <wait>:
SYSCALL(wait)
 61b:	b8 03 00 00 00       	mov    $0x3,%eax
 620:	cd 40                	int    $0x40
 622:	c3                   	ret

00000623 <pipe>:
SYSCALL(pipe)
 623:	b8 04 00 00 00       	mov    $0x4,%eax
 628:	cd 40                	int    $0x40
 62a:	c3                   	ret

0000062b <read>:
SYSCALL(read)
 62b:	b8 05 00 00 00       	mov    $0x5,%eax
 630:	cd 40                	int    $0x40
 632:	c3                   	ret

00000633 <write>:
SYSCALL(write)
 633:	b8 10 00 00 00       	mov    $0x10,%eax
 638:	cd 40                	int    $0x40
 63a:	c3                   	ret

0000063b <close>:
SYSCALL(close)
 63b:	b8 15 00 00 00       	mov    $0x15,%eax
 640:	cd 40                	int    $0x40
 642:	c3                   	ret

00000643 <kill>:
SYSCALL(kill)
 643:	b8 06 00 00 00       	mov    $0x6,%eax
 648:	cd 40                	int    $0x40
 64a:	c3                   	ret

0000064b <exec>:
SYSCALL(exec)
 64b:	b8 07 00 00 00       	mov    $0x7,%eax
 650:	cd 40                	int    $0x40
 652:	c3                   	ret

00000653 <open>:
SYSCALL(open)
 653:	b8 0f 00 00 00       	mov    $0xf,%eax
 658:	cd 40                	int    $0x40
 65a:	c3                   	ret

0000065b <mknod>:
SYSCALL(mknod)
 65b:	b8 11 00 00 00       	mov    $0x11,%eax
 660:	cd 40                	int    $0x40
 662:	c3                   	ret

00000663 <unlink>:
SYSCALL(unlink)
 663:	b8 12 00 00 00       	mov    $0x12,%eax
 668:	cd 40                	int    $0x40
 66a:	c3                   	ret

0000066b <fstat>:
SYSCALL(fstat)
 66b:	b8 08 00 00 00       	mov    $0x8,%eax
 670:	cd 40                	int    $0x40
 672:	c3                   	ret

00000673 <link>:
SYSCALL(link)
 673:	b8 13 00 00 00       	mov    $0x13,%eax
 678:	cd 40                	int    $0x40
 67a:	c3                   	ret

0000067b <mkdir>:
SYSCALL(mkdir)
 67b:	b8 14 00 00 00       	mov    $0x14,%eax
 680:	cd 40                	int    $0x40
 682:	c3                   	ret

00000683 <chdir>:
SYSCALL(chdir)
 683:	b8 09 00 00 00       	mov    $0x9,%eax
 688:	cd 40                	int    $0x40
 68a:	c3                   	ret

0000068b <dup>:
SYSCALL(dup)
 68b:	b8 0a 00 00 00       	mov    $0xa,%eax
 690:	cd 40                	int    $0x40
 692:	c3                   	ret

00000693 <getpid>:
SYSCALL(getpid)
 693:	b8 0b 00 00 00       	mov    $0xb,%eax
 698:	cd 40                	int    $0x40
 69a:	c3                   	ret

0000069b <getreadcount>:
SYSCALL(getreadcount)
 69b:	b8 16 00 00 00       	mov    $0x16,%eax
 6a0:	cd 40                	int    $0x40
 6a2:	c3                   	ret

000006a3 <sbrk>:
SYSCALL(sbrk)
 6a3:	b8 0c 00 00 00       	mov    $0xc,%eax
 6a8:	cd 40                	int    $0x40
 6aa:	c3                   	ret

000006ab <sleep>:
SYSCALL(sleep)
 6ab:	b8 0d 00 00 00       	mov    $0xd,%eax
 6b0:	cd 40                	int    $0x40
 6b2:	c3                   	ret

000006b3 <uptime>:
SYSCALL(uptime)
 6b3:	b8 0e 00 00 00       	mov    $0xe,%eax
 6b8:	cd 40                	int    $0x40
 6ba:	c3                   	ret
 6bb:	66 90                	xchg   %ax,%ax
 6bd:	66 90                	xchg   %ax,%ax
 6bf:	90                   	nop

000006c0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 6c0:	55                   	push   %ebp
 6c1:	89 e5                	mov    %esp,%ebp
 6c3:	57                   	push   %edi
 6c4:	56                   	push   %esi
 6c5:	53                   	push   %ebx
 6c6:	89 cb                	mov    %ecx,%ebx
 6c8:	83 ec 3c             	sub    $0x3c,%esp
 6cb:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 6ce:	85 d2                	test   %edx,%edx
 6d0:	0f 89 9a 00 00 00    	jns    770 <printint+0xb0>
 6d6:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 6da:	0f 84 90 00 00 00    	je     770 <printint+0xb0>
    neg = 1;
    x = -xx;
 6e0:	f7 da                	neg    %edx
    neg = 1;
 6e2:	b8 01 00 00 00       	mov    $0x1,%eax
 6e7:	89 45 c0             	mov    %eax,-0x40(%ebp)
 6ea:	89 d1                	mov    %edx,%ecx
  } else {
    x = xx;
  }

  i = 0;
 6ec:	31 f6                	xor    %esi,%esi
 6ee:	66 90                	xchg   %ax,%ax
 6f0:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 6f7:	00 
 6f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 6ff:	00 
  do{
    buf[i++] = digits[x % base];
 700:	89 c8                	mov    %ecx,%eax
 702:	31 d2                	xor    %edx,%edx
 704:	89 f7                	mov    %esi,%edi
 706:	f7 f3                	div    %ebx
 708:	8d 76 01             	lea    0x1(%esi),%esi
  }while((x /= base) != 0);
 70b:	39 d9                	cmp    %ebx,%ecx
    buf[i++] = digits[x % base];
 70d:	0f b6 92 80 0b 00 00 	movzbl 0xb80(%edx),%edx
  }while((x /= base) != 0);
 714:	89 c1                	mov    %eax,%ecx
    buf[i++] = digits[x % base];
 716:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
 71a:	73 e4                	jae    700 <printint+0x40>
  if(neg)
 71c:	8b 45 c0             	mov    -0x40(%ebp),%eax
 71f:	85 c0                	test   %eax,%eax
 721:	74 07                	je     72a <printint+0x6a>
    buf[i++] = '-';
 723:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
 728:	89 f7                	mov    %esi,%edi

  while(--i >= 0)
 72a:	8d 74 3d d8          	lea    -0x28(%ebp,%edi,1),%esi
 72e:	8b 7d c4             	mov    -0x3c(%ebp),%edi
 731:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 734:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 738:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 73f:	00 
    putc(fd, buf[i]);
 740:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 743:	83 ec 04             	sub    $0x4,%esp
  while(--i >= 0)
 746:	83 ee 01             	sub    $0x1,%esi
 749:	88 45 d7             	mov    %al,-0x29(%ebp)
  write(fd, &c, 1);
 74c:	8d 45 d7             	lea    -0x29(%ebp),%eax
 74f:	6a 01                	push   $0x1
 751:	50                   	push   %eax
 752:	57                   	push   %edi
 753:	e8 db fe ff ff       	call   633 <write>
  while(--i >= 0)
 758:	83 c4 10             	add    $0x10,%esp
 75b:	39 f3                	cmp    %esi,%ebx
 75d:	75 e1                	jne    740 <printint+0x80>
}
 75f:	8d 65 f4             	lea    -0xc(%ebp),%esp
 762:	5b                   	pop    %ebx
 763:	5e                   	pop    %esi
 764:	5f                   	pop    %edi
 765:	5d                   	pop    %ebp
 766:	c3                   	ret
 767:	90                   	nop
 768:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 76f:	00 
  neg = 0;
 770:	31 c0                	xor    %eax,%eax
 772:	e9 70 ff ff ff       	jmp    6e7 <printint+0x27>
 777:	90                   	nop
 778:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 77f:	00 

00000780 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 780:	55                   	push   %ebp
 781:	89 e5                	mov    %esp,%ebp
 783:	57                   	push   %edi
 784:	56                   	push   %esi
 785:	53                   	push   %ebx
 786:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 789:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 78c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 78f:	0f b6 13             	movzbl (%ebx),%edx
 792:	83 c3 01             	add    $0x1,%ebx
 795:	84 d2                	test   %dl,%dl
 797:	0f 84 a0 00 00 00    	je     83d <printf+0xbd>
 79d:	8d 45 10             	lea    0x10(%ebp),%eax
 7a0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c = fmt[i] & 0xff;
 7a3:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 7a6:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 7a9:	eb 28                	jmp    7d3 <printf+0x53>
 7ab:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
 7b0:	83 ec 04             	sub    $0x4,%esp
 7b3:	8d 45 e7             	lea    -0x19(%ebp),%eax
 7b6:	88 55 e7             	mov    %dl,-0x19(%ebp)
  for(i = 0; fmt[i]; i++){
 7b9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 7bc:	6a 01                	push   $0x1
 7be:	50                   	push   %eax
 7bf:	56                   	push   %esi
 7c0:	e8 6e fe ff ff       	call   633 <write>
  for(i = 0; fmt[i]; i++){
 7c5:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 7c9:	83 c4 10             	add    $0x10,%esp
 7cc:	84 d2                	test   %dl,%dl
 7ce:	74 6d                	je     83d <printf+0xbd>
    c = fmt[i] & 0xff;
 7d0:	0f b6 c2             	movzbl %dl,%eax
      if(c == '%'){
 7d3:	83 f8 25             	cmp    $0x25,%eax
 7d6:	75 d8                	jne    7b0 <printf+0x30>
  for(i = 0; fmt[i]; i++){
 7d8:	0f b6 13             	movzbl (%ebx),%edx
 7db:	84 d2                	test   %dl,%dl
 7dd:	74 5e                	je     83d <printf+0xbd>
    c = fmt[i] & 0xff;
 7df:	0f b6 c2             	movzbl %dl,%eax
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
 7e2:	80 fa 25             	cmp    $0x25,%dl
 7e5:	0f 84 25 01 00 00    	je     910 <printf+0x190>
 7eb:	83 e8 63             	sub    $0x63,%eax
 7ee:	83 f8 15             	cmp    $0x15,%eax
 7f1:	77 0d                	ja     800 <printf+0x80>
 7f3:	ff 24 85 28 0b 00 00 	jmp    *0xb28(,%eax,4)
 7fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 800:	83 ec 04             	sub    $0x4,%esp
 803:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 806:	88 55 d0             	mov    %dl,-0x30(%ebp)
        ap++;
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
 809:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
  write(fd, &c, 1);
 80d:	6a 01                	push   $0x1
 80f:	51                   	push   %ecx
 810:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
 813:	56                   	push   %esi
 814:	e8 1a fe ff ff       	call   633 <write>
        putc(fd, c);
 819:	0f b6 55 d0          	movzbl -0x30(%ebp),%edx
  write(fd, &c, 1);
 81d:	83 c4 0c             	add    $0xc,%esp
 820:	88 55 e7             	mov    %dl,-0x19(%ebp)
 823:	6a 01                	push   $0x1
 825:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
 828:	51                   	push   %ecx
  for(i = 0; fmt[i]; i++){
 829:	83 c3 02             	add    $0x2,%ebx
  write(fd, &c, 1);
 82c:	56                   	push   %esi
 82d:	e8 01 fe ff ff       	call   633 <write>
  for(i = 0; fmt[i]; i++){
 832:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 836:	83 c4 10             	add    $0x10,%esp
 839:	84 d2                	test   %dl,%dl
 83b:	75 93                	jne    7d0 <printf+0x50>
      }
      state = 0;
    }
  }
}
 83d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 840:	5b                   	pop    %ebx
 841:	5e                   	pop    %esi
 842:	5f                   	pop    %edi
 843:	5d                   	pop    %ebp
 844:	c3                   	ret
 845:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 848:	83 ec 0c             	sub    $0xc,%esp
 84b:	8b 17                	mov    (%edi),%edx
 84d:	b9 10 00 00 00       	mov    $0x10,%ecx
 852:	89 f0                	mov    %esi,%eax
 854:	6a 00                	push   $0x0
 856:	e8 65 fe ff ff       	call   6c0 <printint>
  for(i = 0; fmt[i]; i++){
 85b:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 85f:	83 c3 02             	add    $0x2,%ebx
 862:	83 c4 10             	add    $0x10,%esp
 865:	84 d2                	test   %dl,%dl
 867:	74 d4                	je     83d <printf+0xbd>
        ap++;
 869:	83 c7 04             	add    $0x4,%edi
 86c:	e9 5f ff ff ff       	jmp    7d0 <printf+0x50>
 871:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 878:	8b 07                	mov    (%edi),%eax
        ap++;
 87a:	83 c7 04             	add    $0x4,%edi
        if(s == 0)
 87d:	85 c0                	test   %eax,%eax
 87f:	0f 84 9b 00 00 00    	je     920 <printf+0x1a0>
        while(*s != 0){
 885:	0f b6 10             	movzbl (%eax),%edx
 888:	84 d2                	test   %dl,%dl
 88a:	0f 84 a2 00 00 00    	je     932 <printf+0x1b2>
 890:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 893:	89 c7                	mov    %eax,%edi
 895:	89 d0                	mov    %edx,%eax
 897:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 89a:	89 fb                	mov    %edi,%ebx
 89c:	8d 7d e7             	lea    -0x19(%ebp),%edi
 89f:	90                   	nop
  write(fd, &c, 1);
 8a0:	83 ec 04             	sub    $0x4,%esp
 8a3:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
 8a6:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 8a9:	6a 01                	push   $0x1
 8ab:	57                   	push   %edi
 8ac:	56                   	push   %esi
 8ad:	e8 81 fd ff ff       	call   633 <write>
        while(*s != 0){
 8b2:	0f b6 03             	movzbl (%ebx),%eax
 8b5:	83 c4 10             	add    $0x10,%esp
 8b8:	84 c0                	test   %al,%al
 8ba:	75 e4                	jne    8a0 <printf+0x120>
 8bc:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  for(i = 0; fmt[i]; i++){
 8bf:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 8c3:	83 c3 02             	add    $0x2,%ebx
 8c6:	84 d2                	test   %dl,%dl
 8c8:	0f 85 d5 fe ff ff    	jne    7a3 <printf+0x23>
 8ce:	e9 6a ff ff ff       	jmp    83d <printf+0xbd>
 8d3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
 8d8:	83 ec 0c             	sub    $0xc,%esp
 8db:	8b 17                	mov    (%edi),%edx
 8dd:	b9 0a 00 00 00       	mov    $0xa,%ecx
 8e2:	89 f0                	mov    %esi,%eax
 8e4:	6a 01                	push   $0x1
 8e6:	e8 d5 fd ff ff       	call   6c0 <printint>
  for(i = 0; fmt[i]; i++){
 8eb:	e9 6b ff ff ff       	jmp    85b <printf+0xdb>
        putc(fd, *ap);
 8f0:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 8f2:	83 ec 04             	sub    $0x4,%esp
 8f5:	8d 4d e7             	lea    -0x19(%ebp),%ecx
        putc(fd, *ap);
 8f8:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8fb:	6a 01                	push   $0x1
 8fd:	51                   	push   %ecx
 8fe:	56                   	push   %esi
 8ff:	e8 2f fd ff ff       	call   633 <write>
 904:	e9 52 ff ff ff       	jmp    85b <printf+0xdb>
 909:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 910:	83 ec 04             	sub    $0x4,%esp
 913:	88 55 e7             	mov    %dl,-0x19(%ebp)
 916:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 919:	6a 01                	push   $0x1
 91b:	e9 08 ff ff ff       	jmp    828 <printf+0xa8>
          s = "(null)";
 920:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 923:	b8 28 00 00 00       	mov    $0x28,%eax
 928:	bf 1e 0b 00 00       	mov    $0xb1e,%edi
 92d:	e9 65 ff ff ff       	jmp    897 <printf+0x117>
  for(i = 0; fmt[i]; i++){
 932:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 936:	83 c3 02             	add    $0x2,%ebx
 939:	84 d2                	test   %dl,%dl
 93b:	0f 85 8f fe ff ff    	jne    7d0 <printf+0x50>
 941:	e9 f7 fe ff ff       	jmp    83d <printf+0xbd>
 946:	66 90                	xchg   %ax,%ax
 948:	66 90                	xchg   %ax,%ax
 94a:	66 90                	xchg   %ax,%ax
 94c:	66 90                	xchg   %ax,%ax
 94e:	66 90                	xchg   %ax,%ax
 950:	66 90                	xchg   %ax,%ax
 952:	66 90                	xchg   %ax,%ax
 954:	66 90                	xchg   %ax,%ax
 956:	66 90                	xchg   %ax,%ax
 958:	66 90                	xchg   %ax,%ax
 95a:	66 90                	xchg   %ax,%ax
 95c:	66 90                	xchg   %ax,%ax
 95e:	66 90                	xchg   %ax,%ax

00000960 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 960:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 961:	a1 20 13 00 00       	mov    0x1320,%eax
{
 966:	89 e5                	mov    %esp,%ebp
 968:	57                   	push   %edi
 969:	56                   	push   %esi
 96a:	53                   	push   %ebx
 96b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 96e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 971:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 978:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 97f:	00 
 980:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 982:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 984:	39 ca                	cmp    %ecx,%edx
 986:	73 30                	jae    9b8 <free+0x58>
 988:	39 c1                	cmp    %eax,%ecx
 98a:	72 04                	jb     990 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 98c:	39 c2                	cmp    %eax,%edx
 98e:	72 f0                	jb     980 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 990:	8b 73 fc             	mov    -0x4(%ebx),%esi
 993:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 996:	39 f8                	cmp    %edi,%eax
 998:	74 36                	je     9d0 <free+0x70>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 99a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 99d:	8b 42 04             	mov    0x4(%edx),%eax
 9a0:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 9a3:	39 f1                	cmp    %esi,%ecx
 9a5:	74 40                	je     9e7 <free+0x87>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 9a7:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 9a9:	5b                   	pop    %ebx
  freep = p;
 9aa:	89 15 20 13 00 00    	mov    %edx,0x1320
}
 9b0:	5e                   	pop    %esi
 9b1:	5f                   	pop    %edi
 9b2:	5d                   	pop    %ebp
 9b3:	c3                   	ret
 9b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9b8:	39 c2                	cmp    %eax,%edx
 9ba:	72 c4                	jb     980 <free+0x20>
 9bc:	39 c1                	cmp    %eax,%ecx
 9be:	73 c0                	jae    980 <free+0x20>
  if(bp + bp->s.size == p->s.ptr){
 9c0:	8b 73 fc             	mov    -0x4(%ebx),%esi
 9c3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 9c6:	39 f8                	cmp    %edi,%eax
 9c8:	75 d0                	jne    99a <free+0x3a>
 9ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
 9d0:	03 70 04             	add    0x4(%eax),%esi
 9d3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 9d6:	8b 02                	mov    (%edx),%eax
 9d8:	8b 00                	mov    (%eax),%eax
 9da:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 9dd:	8b 42 04             	mov    0x4(%edx),%eax
 9e0:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 9e3:	39 f1                	cmp    %esi,%ecx
 9e5:	75 c0                	jne    9a7 <free+0x47>
    p->s.size += bp->s.size;
 9e7:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 9ea:	89 15 20 13 00 00    	mov    %edx,0x1320
    p->s.size += bp->s.size;
 9f0:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 9f3:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 9f6:	89 0a                	mov    %ecx,(%edx)
}
 9f8:	5b                   	pop    %ebx
 9f9:	5e                   	pop    %esi
 9fa:	5f                   	pop    %edi
 9fb:	5d                   	pop    %ebp
 9fc:	c3                   	ret
 9fd:	8d 76 00             	lea    0x0(%esi),%esi

00000a00 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 a00:	55                   	push   %ebp
 a01:	89 e5                	mov    %esp,%ebp
 a03:	57                   	push   %edi
 a04:	56                   	push   %esi
 a05:	53                   	push   %ebx
 a06:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a09:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 a0c:	8b 15 20 13 00 00    	mov    0x1320,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a12:	8d 78 07             	lea    0x7(%eax),%edi
 a15:	c1 ef 03             	shr    $0x3,%edi
 a18:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 a1b:	85 d2                	test   %edx,%edx
 a1d:	0f 84 8d 00 00 00    	je     ab0 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a23:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a25:	8b 48 04             	mov    0x4(%eax),%ecx
 a28:	39 f9                	cmp    %edi,%ecx
 a2a:	73 64                	jae    a90 <malloc+0x90>
  if(nu < 4096)
 a2c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 a31:	39 df                	cmp    %ebx,%edi
 a33:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 a36:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 a3d:	eb 0a                	jmp    a49 <malloc+0x49>
 a3f:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a40:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a42:	8b 48 04             	mov    0x4(%eax),%ecx
 a45:	39 f9                	cmp    %edi,%ecx
 a47:	73 47                	jae    a90 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a49:	89 c2                	mov    %eax,%edx
 a4b:	39 05 20 13 00 00    	cmp    %eax,0x1320
 a51:	75 ed                	jne    a40 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
 a53:	83 ec 0c             	sub    $0xc,%esp
 a56:	56                   	push   %esi
 a57:	e8 47 fc ff ff       	call   6a3 <sbrk>
  if(p == (char*)-1)
 a5c:	83 c4 10             	add    $0x10,%esp
 a5f:	83 f8 ff             	cmp    $0xffffffff,%eax
 a62:	74 1c                	je     a80 <malloc+0x80>
  hp->s.size = nu;
 a64:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 a67:	83 ec 0c             	sub    $0xc,%esp
 a6a:	83 c0 08             	add    $0x8,%eax
 a6d:	50                   	push   %eax
 a6e:	e8 ed fe ff ff       	call   960 <free>
  return freep;
 a73:	8b 15 20 13 00 00    	mov    0x1320,%edx
      if((p = morecore(nunits)) == 0)
 a79:	83 c4 10             	add    $0x10,%esp
 a7c:	85 d2                	test   %edx,%edx
 a7e:	75 c0                	jne    a40 <malloc+0x40>
        return 0;
  }
}
 a80:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 a83:	31 c0                	xor    %eax,%eax
}
 a85:	5b                   	pop    %ebx
 a86:	5e                   	pop    %esi
 a87:	5f                   	pop    %edi
 a88:	5d                   	pop    %ebp
 a89:	c3                   	ret
 a8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 a90:	39 cf                	cmp    %ecx,%edi
 a92:	74 4c                	je     ae0 <malloc+0xe0>
        p->s.size -= nunits;
 a94:	29 f9                	sub    %edi,%ecx
 a96:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a99:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a9c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 a9f:	89 15 20 13 00 00    	mov    %edx,0x1320
}
 aa5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 aa8:	83 c0 08             	add    $0x8,%eax
}
 aab:	5b                   	pop    %ebx
 aac:	5e                   	pop    %esi
 aad:	5f                   	pop    %edi
 aae:	5d                   	pop    %ebp
 aaf:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
 ab0:	c7 05 20 13 00 00 24 	movl   $0x1324,0x1320
 ab7:	13 00 00 
    base.s.size = 0;
 aba:	b8 24 13 00 00       	mov    $0x1324,%eax
    base.s.ptr = freep = prevp = &base;
 abf:	c7 05 24 13 00 00 24 	movl   $0x1324,0x1324
 ac6:	13 00 00 
    base.s.size = 0;
 ac9:	c7 05 28 13 00 00 00 	movl   $0x0,0x1328
 ad0:	00 00 00 
    if(p->s.size >= nunits){
 ad3:	e9 54 ff ff ff       	jmp    a2c <malloc+0x2c>
 ad8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 adf:	00 
        prevp->s.ptr = p->s.ptr;
 ae0:	8b 08                	mov    (%eax),%ecx
 ae2:	89 0a                	mov    %ecx,(%edx)
 ae4:	eb b9                	jmp    a9f <malloc+0x9f>
