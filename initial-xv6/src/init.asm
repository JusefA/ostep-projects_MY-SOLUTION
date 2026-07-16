
_init:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:

char *argv[] = { "sh", 0 };

int
main(void)
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	53                   	push   %ebx
   e:	51                   	push   %ecx
  int pid, wpid;

  if(open("console", O_RDWR) < 0){
   f:	83 ec 08             	sub    $0x8,%esp
  12:	6a 02                	push   $0x2
  14:	68 48 08 00 00       	push   $0x848
  19:	e8 95 03 00 00       	call   3b3 <open>
  1e:	83 c4 10             	add    $0x10,%esp
  21:	85 c0                	test   %eax,%eax
  23:	0f 88 9f 00 00 00    	js     c8 <main+0xc8>
    mknod("console", 1, 1);
    open("console", O_RDWR);
  }
  dup(0);  // stdout
  29:	83 ec 0c             	sub    $0xc,%esp
  2c:	6a 00                	push   $0x0
  2e:	e8 b8 03 00 00       	call   3eb <dup>
  dup(0);  // stderr
  33:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  3a:	e8 ac 03 00 00       	call   3eb <dup>
  3f:	83 c4 10             	add    $0x10,%esp
  42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  48:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  4f:	00 

  for(;;){
    printf(1, "init: starting sh\n");
  50:	83 ec 08             	sub    $0x8,%esp
  53:	68 50 08 00 00       	push   $0x850
  58:	6a 01                	push   $0x1
  5a:	e8 81 04 00 00       	call   4e0 <printf>
    pid = fork();
  5f:	e8 07 03 00 00       	call   36b <fork>
    if(pid < 0){
  64:	83 c4 10             	add    $0x10,%esp
    pid = fork();
  67:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
  69:	85 c0                	test   %eax,%eax
  6b:	78 24                	js     91 <main+0x91>
      printf(1, "init: fork failed\n");
      exit();
    }
    if(pid == 0){
  6d:	74 35                	je     a4 <main+0xa4>
  6f:	90                   	nop
      exec("sh", argv);
      printf(1, "init: exec sh failed\n");
      exit();
    }
    while((wpid=wait()) >= 0 && wpid != pid)
  70:	e8 06 03 00 00       	call   37b <wait>
  75:	85 c0                	test   %eax,%eax
  77:	78 d7                	js     50 <main+0x50>
  79:	39 c3                	cmp    %eax,%ebx
  7b:	74 d3                	je     50 <main+0x50>
      printf(1, "zombie!\n");
  7d:	83 ec 08             	sub    $0x8,%esp
  80:	68 8f 08 00 00       	push   $0x88f
  85:	6a 01                	push   $0x1
  87:	e8 54 04 00 00       	call   4e0 <printf>
  8c:	83 c4 10             	add    $0x10,%esp
  8f:	eb df                	jmp    70 <main+0x70>
      printf(1, "init: fork failed\n");
  91:	53                   	push   %ebx
  92:	53                   	push   %ebx
  93:	68 63 08 00 00       	push   $0x863
  98:	6a 01                	push   $0x1
  9a:	e8 41 04 00 00       	call   4e0 <printf>
      exit();
  9f:	e8 cf 02 00 00       	call   373 <exit>
      exec("sh", argv);
  a4:	50                   	push   %eax
  a5:	50                   	push   %eax
  a6:	68 a4 0b 00 00       	push   $0xba4
  ab:	68 76 08 00 00       	push   $0x876
  b0:	e8 f6 02 00 00       	call   3ab <exec>
      printf(1, "init: exec sh failed\n");
  b5:	5a                   	pop    %edx
  b6:	59                   	pop    %ecx
  b7:	68 79 08 00 00       	push   $0x879
  bc:	6a 01                	push   $0x1
  be:	e8 1d 04 00 00       	call   4e0 <printf>
      exit();
  c3:	e8 ab 02 00 00       	call   373 <exit>
    mknod("console", 1, 1);
  c8:	50                   	push   %eax
  c9:	6a 01                	push   $0x1
  cb:	6a 01                	push   $0x1
  cd:	68 48 08 00 00       	push   $0x848
  d2:	e8 e4 02 00 00       	call   3bb <mknod>
    open("console", O_RDWR);
  d7:	58                   	pop    %eax
  d8:	5a                   	pop    %edx
  d9:	6a 02                	push   $0x2
  db:	68 48 08 00 00       	push   $0x848
  e0:	e8 ce 02 00 00       	call   3b3 <open>
  e5:	83 c4 10             	add    $0x10,%esp
  e8:	e9 3c ff ff ff       	jmp    29 <main+0x29>
  ed:	66 90                	xchg   %ax,%ax
  ef:	66 90                	xchg   %ax,%ax
  f1:	66 90                	xchg   %ax,%ax
  f3:	66 90                	xchg   %ax,%ax
  f5:	66 90                	xchg   %ax,%ax
  f7:	66 90                	xchg   %ax,%ax
  f9:	66 90                	xchg   %ax,%ax
  fb:	66 90                	xchg   %ax,%ax
  fd:	66 90                	xchg   %ax,%ax
  ff:	90                   	nop

00000100 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 100:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 101:	31 c0                	xor    %eax,%eax
{
 103:	89 e5                	mov    %esp,%ebp
 105:	53                   	push   %ebx
 106:	8b 4d 08             	mov    0x8(%ebp),%ecx
 109:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 10c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 110:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 114:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 117:	83 c0 01             	add    $0x1,%eax
 11a:	84 d2                	test   %dl,%dl
 11c:	75 f2                	jne    110 <strcpy+0x10>
    ;
  return os;
}
 11e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 121:	89 c8                	mov    %ecx,%eax
 123:	c9                   	leave
 124:	c3                   	ret
 125:	8d 76 00             	lea    0x0(%esi),%esi
 128:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 12f:	00 

00000130 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 130:	55                   	push   %ebp
 131:	89 e5                	mov    %esp,%ebp
 133:	53                   	push   %ebx
 134:	8b 55 08             	mov    0x8(%ebp),%edx
 137:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 13a:	0f b6 02             	movzbl (%edx),%eax
 13d:	84 c0                	test   %al,%al
 13f:	75 2d                	jne    16e <strcmp+0x3e>
 141:	eb 4a                	jmp    18d <strcmp+0x5d>
 143:	eb 1b                	jmp    160 <strcmp+0x30>
 145:	8d 76 00             	lea    0x0(%esi),%esi
 148:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 14f:	00 
 150:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 157:	00 
 158:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 15f:	00 
 160:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 164:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 167:	84 c0                	test   %al,%al
 169:	74 15                	je     180 <strcmp+0x50>
 16b:	83 c1 01             	add    $0x1,%ecx
 16e:	0f b6 19             	movzbl (%ecx),%ebx
 171:	38 c3                	cmp    %al,%bl
 173:	74 eb                	je     160 <strcmp+0x30>
  return (uchar)*p - (uchar)*q;
 175:	29 d8                	sub    %ebx,%eax
}
 177:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 17a:	c9                   	leave
 17b:	c3                   	ret
 17c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  return (uchar)*p - (uchar)*q;
 180:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 184:	31 c0                	xor    %eax,%eax
 186:	29 d8                	sub    %ebx,%eax
}
 188:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 18b:	c9                   	leave
 18c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
 18d:	0f b6 19             	movzbl (%ecx),%ebx
 190:	31 c0                	xor    %eax,%eax
 192:	eb e1                	jmp    175 <strcmp+0x45>
 194:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 198:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 19f:	00 

000001a0 <strlen>:

uint
strlen(const char *s)
{
 1a0:	55                   	push   %ebp
 1a1:	89 e5                	mov    %esp,%ebp
 1a3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 1a6:	80 3a 00             	cmpb   $0x0,(%edx)
 1a9:	74 15                	je     1c0 <strlen+0x20>
 1ab:	31 c0                	xor    %eax,%eax
 1ad:	8d 76 00             	lea    0x0(%esi),%esi
 1b0:	83 c0 01             	add    $0x1,%eax
 1b3:	89 c1                	mov    %eax,%ecx
 1b5:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 1b9:	75 f5                	jne    1b0 <strlen+0x10>
    ;
  return n;
}
 1bb:	89 c8                	mov    %ecx,%eax
 1bd:	5d                   	pop    %ebp
 1be:	c3                   	ret
 1bf:	90                   	nop
  for(n = 0; s[n]; n++)
 1c0:	31 c9                	xor    %ecx,%ecx
}
 1c2:	5d                   	pop    %ebp
 1c3:	89 c8                	mov    %ecx,%eax
 1c5:	c3                   	ret
 1c6:	66 90                	xchg   %ax,%ax
 1c8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1cf:	00 

000001d0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 1d0:	55                   	push   %ebp
 1d1:	89 e5                	mov    %esp,%ebp
 1d3:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 1d4:	8b 4d 10             	mov    0x10(%ebp),%ecx
 1d7:	8b 45 0c             	mov    0xc(%ebp),%eax
 1da:	8b 7d 08             	mov    0x8(%ebp),%edi
 1dd:	fc                   	cld
 1de:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 1e0:	8b 45 08             	mov    0x8(%ebp),%eax
 1e3:	8b 7d fc             	mov    -0x4(%ebp),%edi
 1e6:	c9                   	leave
 1e7:	c3                   	ret
 1e8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1ef:	00 

000001f0 <strchr>:

char*
strchr(const char *s, char c)
{
 1f0:	55                   	push   %ebp
 1f1:	89 e5                	mov    %esp,%ebp
 1f3:	8b 45 08             	mov    0x8(%ebp),%eax
 1f6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 1fa:	0f b6 10             	movzbl (%eax),%edx
 1fd:	84 d2                	test   %dl,%dl
 1ff:	75 1a                	jne    21b <strchr+0x2b>
 201:	eb 25                	jmp    228 <strchr+0x38>
 203:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 208:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 20f:	00 
 210:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 214:	83 c0 01             	add    $0x1,%eax
 217:	84 d2                	test   %dl,%dl
 219:	74 0d                	je     228 <strchr+0x38>
    if(*s == c)
 21b:	38 d1                	cmp    %dl,%cl
 21d:	75 f1                	jne    210 <strchr+0x20>
      return (char*)s;
  return 0;
}
 21f:	5d                   	pop    %ebp
 220:	c3                   	ret
 221:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 228:	31 c0                	xor    %eax,%eax
}
 22a:	5d                   	pop    %ebp
 22b:	c3                   	ret
 22c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000230 <gets>:

char*
gets(char *buf, int max)
{
 230:	55                   	push   %ebp
 231:	89 e5                	mov    %esp,%ebp
 233:	57                   	push   %edi
 234:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 235:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 238:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 239:	31 db                	xor    %ebx,%ebx
{
 23b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 23e:	eb 27                	jmp    267 <gets+0x37>
    cc = read(0, &c, 1);
 240:	83 ec 04             	sub    $0x4,%esp
 243:	6a 01                	push   $0x1
 245:	57                   	push   %edi
 246:	6a 00                	push   $0x0
 248:	e8 3e 01 00 00       	call   38b <read>
    if(cc < 1)
 24d:	83 c4 10             	add    $0x10,%esp
 250:	85 c0                	test   %eax,%eax
 252:	7e 1d                	jle    271 <gets+0x41>
      break;
    buf[i++] = c;
 254:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 258:	8b 55 08             	mov    0x8(%ebp),%edx
 25b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 25f:	3c 0a                	cmp    $0xa,%al
 261:	74 1d                	je     280 <gets+0x50>
 263:	3c 0d                	cmp    $0xd,%al
 265:	74 19                	je     280 <gets+0x50>
  for(i=0; i+1 < max; ){
 267:	89 de                	mov    %ebx,%esi
 269:	83 c3 01             	add    $0x1,%ebx
 26c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 26f:	7c cf                	jl     240 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 271:	8b 45 08             	mov    0x8(%ebp),%eax
 274:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 278:	8d 65 f4             	lea    -0xc(%ebp),%esp
 27b:	5b                   	pop    %ebx
 27c:	5e                   	pop    %esi
 27d:	5f                   	pop    %edi
 27e:	5d                   	pop    %ebp
 27f:	c3                   	ret
  buf[i] = '\0';
 280:	8b 45 08             	mov    0x8(%ebp),%eax
    buf[i++] = c;
 283:	89 de                	mov    %ebx,%esi
  buf[i] = '\0';
 285:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 289:	8d 65 f4             	lea    -0xc(%ebp),%esp
 28c:	5b                   	pop    %ebx
 28d:	5e                   	pop    %esi
 28e:	5f                   	pop    %edi
 28f:	5d                   	pop    %ebp
 290:	c3                   	ret
 291:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 298:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 29f:	00 

000002a0 <stat>:

int
stat(const char *n, struct stat *st)
{
 2a0:	55                   	push   %ebp
 2a1:	89 e5                	mov    %esp,%ebp
 2a3:	56                   	push   %esi
 2a4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 2a5:	83 ec 08             	sub    $0x8,%esp
 2a8:	6a 00                	push   $0x0
 2aa:	ff 75 08             	push   0x8(%ebp)
 2ad:	e8 01 01 00 00       	call   3b3 <open>
  if(fd < 0)
 2b2:	83 c4 10             	add    $0x10,%esp
 2b5:	85 c0                	test   %eax,%eax
 2b7:	78 27                	js     2e0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 2b9:	83 ec 08             	sub    $0x8,%esp
 2bc:	ff 75 0c             	push   0xc(%ebp)
 2bf:	89 c3                	mov    %eax,%ebx
 2c1:	50                   	push   %eax
 2c2:	e8 04 01 00 00       	call   3cb <fstat>
  close(fd);
 2c7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 2ca:	89 c6                	mov    %eax,%esi
  close(fd);
 2cc:	e8 ca 00 00 00       	call   39b <close>
  return r;
 2d1:	83 c4 10             	add    $0x10,%esp
}
 2d4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 2d7:	89 f0                	mov    %esi,%eax
 2d9:	5b                   	pop    %ebx
 2da:	5e                   	pop    %esi
 2db:	5d                   	pop    %ebp
 2dc:	c3                   	ret
 2dd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 2e0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 2e5:	eb ed                	jmp    2d4 <stat+0x34>
 2e7:	90                   	nop
 2e8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 2ef:	00 

000002f0 <atoi>:

int
atoi(const char *s)
{
 2f0:	55                   	push   %ebp
 2f1:	89 e5                	mov    %esp,%ebp
 2f3:	53                   	push   %ebx
 2f4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 2f7:	0f be 02             	movsbl (%edx),%eax
 2fa:	8d 48 d0             	lea    -0x30(%eax),%ecx
 2fd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 300:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 305:	77 2e                	ja     335 <atoi+0x45>
 307:	eb 17                	jmp    320 <atoi+0x30>
 309:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 310:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 317:	00 
 318:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 31f:	00 
    n = n*10 + *s++ - '0';
 320:	83 c2 01             	add    $0x1,%edx
 323:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 326:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 32a:	0f be 02             	movsbl (%edx),%eax
 32d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 330:	80 fb 09             	cmp    $0x9,%bl
 333:	76 eb                	jbe    320 <atoi+0x30>
  return n;
}
 335:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 338:	89 c8                	mov    %ecx,%eax
 33a:	c9                   	leave
 33b:	c3                   	ret
 33c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000340 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 340:	55                   	push   %ebp
 341:	89 e5                	mov    %esp,%ebp
 343:	57                   	push   %edi
 344:	8b 45 10             	mov    0x10(%ebp),%eax
 347:	8b 55 08             	mov    0x8(%ebp),%edx
 34a:	56                   	push   %esi
 34b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 34e:	85 c0                	test   %eax,%eax
 350:	7e 13                	jle    365 <memmove+0x25>
 352:	01 d0                	add    %edx,%eax
  dst = vdst;
 354:	89 d7                	mov    %edx,%edi
 356:	66 90                	xchg   %ax,%ax
 358:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 35f:	00 
    *dst++ = *src++;
 360:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 361:	39 f8                	cmp    %edi,%eax
 363:	75 fb                	jne    360 <memmove+0x20>
  return vdst;
}
 365:	5e                   	pop    %esi
 366:	89 d0                	mov    %edx,%eax
 368:	5f                   	pop    %edi
 369:	5d                   	pop    %ebp
 36a:	c3                   	ret

0000036b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 36b:	b8 01 00 00 00       	mov    $0x1,%eax
 370:	cd 40                	int    $0x40
 372:	c3                   	ret

00000373 <exit>:
SYSCALL(exit)
 373:	b8 02 00 00 00       	mov    $0x2,%eax
 378:	cd 40                	int    $0x40
 37a:	c3                   	ret

0000037b <wait>:
SYSCALL(wait)
 37b:	b8 03 00 00 00       	mov    $0x3,%eax
 380:	cd 40                	int    $0x40
 382:	c3                   	ret

00000383 <pipe>:
SYSCALL(pipe)
 383:	b8 04 00 00 00       	mov    $0x4,%eax
 388:	cd 40                	int    $0x40
 38a:	c3                   	ret

0000038b <read>:
SYSCALL(read)
 38b:	b8 05 00 00 00       	mov    $0x5,%eax
 390:	cd 40                	int    $0x40
 392:	c3                   	ret

00000393 <write>:
SYSCALL(write)
 393:	b8 10 00 00 00       	mov    $0x10,%eax
 398:	cd 40                	int    $0x40
 39a:	c3                   	ret

0000039b <close>:
SYSCALL(close)
 39b:	b8 15 00 00 00       	mov    $0x15,%eax
 3a0:	cd 40                	int    $0x40
 3a2:	c3                   	ret

000003a3 <kill>:
SYSCALL(kill)
 3a3:	b8 06 00 00 00       	mov    $0x6,%eax
 3a8:	cd 40                	int    $0x40
 3aa:	c3                   	ret

000003ab <exec>:
SYSCALL(exec)
 3ab:	b8 07 00 00 00       	mov    $0x7,%eax
 3b0:	cd 40                	int    $0x40
 3b2:	c3                   	ret

000003b3 <open>:
SYSCALL(open)
 3b3:	b8 0f 00 00 00       	mov    $0xf,%eax
 3b8:	cd 40                	int    $0x40
 3ba:	c3                   	ret

000003bb <mknod>:
SYSCALL(mknod)
 3bb:	b8 11 00 00 00       	mov    $0x11,%eax
 3c0:	cd 40                	int    $0x40
 3c2:	c3                   	ret

000003c3 <unlink>:
SYSCALL(unlink)
 3c3:	b8 12 00 00 00       	mov    $0x12,%eax
 3c8:	cd 40                	int    $0x40
 3ca:	c3                   	ret

000003cb <fstat>:
SYSCALL(fstat)
 3cb:	b8 08 00 00 00       	mov    $0x8,%eax
 3d0:	cd 40                	int    $0x40
 3d2:	c3                   	ret

000003d3 <link>:
SYSCALL(link)
 3d3:	b8 13 00 00 00       	mov    $0x13,%eax
 3d8:	cd 40                	int    $0x40
 3da:	c3                   	ret

000003db <mkdir>:
SYSCALL(mkdir)
 3db:	b8 14 00 00 00       	mov    $0x14,%eax
 3e0:	cd 40                	int    $0x40
 3e2:	c3                   	ret

000003e3 <chdir>:
SYSCALL(chdir)
 3e3:	b8 09 00 00 00       	mov    $0x9,%eax
 3e8:	cd 40                	int    $0x40
 3ea:	c3                   	ret

000003eb <dup>:
SYSCALL(dup)
 3eb:	b8 0a 00 00 00       	mov    $0xa,%eax
 3f0:	cd 40                	int    $0x40
 3f2:	c3                   	ret

000003f3 <getpid>:
SYSCALL(getpid)
 3f3:	b8 0b 00 00 00       	mov    $0xb,%eax
 3f8:	cd 40                	int    $0x40
 3fa:	c3                   	ret

000003fb <getreadcount>:
SYSCALL(getreadcount)
 3fb:	b8 16 00 00 00       	mov    $0x16,%eax
 400:	cd 40                	int    $0x40
 402:	c3                   	ret

00000403 <sbrk>:
SYSCALL(sbrk)
 403:	b8 0c 00 00 00       	mov    $0xc,%eax
 408:	cd 40                	int    $0x40
 40a:	c3                   	ret

0000040b <sleep>:
SYSCALL(sleep)
 40b:	b8 0d 00 00 00       	mov    $0xd,%eax
 410:	cd 40                	int    $0x40
 412:	c3                   	ret

00000413 <uptime>:
SYSCALL(uptime)
 413:	b8 0e 00 00 00       	mov    $0xe,%eax
 418:	cd 40                	int    $0x40
 41a:	c3                   	ret
 41b:	66 90                	xchg   %ax,%ax
 41d:	66 90                	xchg   %ax,%ax
 41f:	90                   	nop

00000420 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	57                   	push   %edi
 424:	56                   	push   %esi
 425:	53                   	push   %ebx
 426:	89 cb                	mov    %ecx,%ebx
 428:	83 ec 3c             	sub    $0x3c,%esp
 42b:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 42e:	85 d2                	test   %edx,%edx
 430:	0f 89 9a 00 00 00    	jns    4d0 <printint+0xb0>
 436:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 43a:	0f 84 90 00 00 00    	je     4d0 <printint+0xb0>
    neg = 1;
    x = -xx;
 440:	f7 da                	neg    %edx
    neg = 1;
 442:	b8 01 00 00 00       	mov    $0x1,%eax
 447:	89 45 c0             	mov    %eax,-0x40(%ebp)
 44a:	89 d1                	mov    %edx,%ecx
  } else {
    x = xx;
  }

  i = 0;
 44c:	31 f6                	xor    %esi,%esi
 44e:	66 90                	xchg   %ax,%ax
 450:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 457:	00 
 458:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 45f:	00 
  do{
    buf[i++] = digits[x % base];
 460:	89 c8                	mov    %ecx,%eax
 462:	31 d2                	xor    %edx,%edx
 464:	89 f7                	mov    %esi,%edi
 466:	f7 f3                	div    %ebx
 468:	8d 76 01             	lea    0x1(%esi),%esi
  }while((x /= base) != 0);
 46b:	39 d9                	cmp    %ebx,%ecx
    buf[i++] = digits[x % base];
 46d:	0f b6 92 f8 08 00 00 	movzbl 0x8f8(%edx),%edx
  }while((x /= base) != 0);
 474:	89 c1                	mov    %eax,%ecx
    buf[i++] = digits[x % base];
 476:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
 47a:	73 e4                	jae    460 <printint+0x40>
  if(neg)
 47c:	8b 45 c0             	mov    -0x40(%ebp),%eax
 47f:	85 c0                	test   %eax,%eax
 481:	74 07                	je     48a <printint+0x6a>
    buf[i++] = '-';
 483:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
 488:	89 f7                	mov    %esi,%edi

  while(--i >= 0)
 48a:	8d 74 3d d8          	lea    -0x28(%ebp,%edi,1),%esi
 48e:	8b 7d c4             	mov    -0x3c(%ebp),%edi
 491:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 494:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 498:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 49f:	00 
    putc(fd, buf[i]);
 4a0:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 4a3:	83 ec 04             	sub    $0x4,%esp
  while(--i >= 0)
 4a6:	83 ee 01             	sub    $0x1,%esi
 4a9:	88 45 d7             	mov    %al,-0x29(%ebp)
  write(fd, &c, 1);
 4ac:	8d 45 d7             	lea    -0x29(%ebp),%eax
 4af:	6a 01                	push   $0x1
 4b1:	50                   	push   %eax
 4b2:	57                   	push   %edi
 4b3:	e8 db fe ff ff       	call   393 <write>
  while(--i >= 0)
 4b8:	83 c4 10             	add    $0x10,%esp
 4bb:	39 f3                	cmp    %esi,%ebx
 4bd:	75 e1                	jne    4a0 <printint+0x80>
}
 4bf:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4c2:	5b                   	pop    %ebx
 4c3:	5e                   	pop    %esi
 4c4:	5f                   	pop    %edi
 4c5:	5d                   	pop    %ebp
 4c6:	c3                   	ret
 4c7:	90                   	nop
 4c8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 4cf:	00 
  neg = 0;
 4d0:	31 c0                	xor    %eax,%eax
 4d2:	e9 70 ff ff ff       	jmp    447 <printint+0x27>
 4d7:	90                   	nop
 4d8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 4df:	00 

000004e0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 4e0:	55                   	push   %ebp
 4e1:	89 e5                	mov    %esp,%ebp
 4e3:	57                   	push   %edi
 4e4:	56                   	push   %esi
 4e5:	53                   	push   %ebx
 4e6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 4e9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 4ec:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 4ef:	0f b6 13             	movzbl (%ebx),%edx
 4f2:	83 c3 01             	add    $0x1,%ebx
 4f5:	84 d2                	test   %dl,%dl
 4f7:	0f 84 a0 00 00 00    	je     59d <printf+0xbd>
 4fd:	8d 45 10             	lea    0x10(%ebp),%eax
 500:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c = fmt[i] & 0xff;
 503:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 506:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 509:	eb 28                	jmp    533 <printf+0x53>
 50b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
 510:	83 ec 04             	sub    $0x4,%esp
 513:	8d 45 e7             	lea    -0x19(%ebp),%eax
 516:	88 55 e7             	mov    %dl,-0x19(%ebp)
  for(i = 0; fmt[i]; i++){
 519:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 51c:	6a 01                	push   $0x1
 51e:	50                   	push   %eax
 51f:	56                   	push   %esi
 520:	e8 6e fe ff ff       	call   393 <write>
  for(i = 0; fmt[i]; i++){
 525:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 529:	83 c4 10             	add    $0x10,%esp
 52c:	84 d2                	test   %dl,%dl
 52e:	74 6d                	je     59d <printf+0xbd>
    c = fmt[i] & 0xff;
 530:	0f b6 c2             	movzbl %dl,%eax
      if(c == '%'){
 533:	83 f8 25             	cmp    $0x25,%eax
 536:	75 d8                	jne    510 <printf+0x30>
  for(i = 0; fmt[i]; i++){
 538:	0f b6 13             	movzbl (%ebx),%edx
 53b:	84 d2                	test   %dl,%dl
 53d:	74 5e                	je     59d <printf+0xbd>
    c = fmt[i] & 0xff;
 53f:	0f b6 c2             	movzbl %dl,%eax
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
 542:	80 fa 25             	cmp    $0x25,%dl
 545:	0f 84 25 01 00 00    	je     670 <printf+0x190>
 54b:	83 e8 63             	sub    $0x63,%eax
 54e:	83 f8 15             	cmp    $0x15,%eax
 551:	77 0d                	ja     560 <printf+0x80>
 553:	ff 24 85 a0 08 00 00 	jmp    *0x8a0(,%eax,4)
 55a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 560:	83 ec 04             	sub    $0x4,%esp
 563:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 566:	88 55 d0             	mov    %dl,-0x30(%ebp)
        ap++;
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
 569:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
  write(fd, &c, 1);
 56d:	6a 01                	push   $0x1
 56f:	51                   	push   %ecx
 570:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
 573:	56                   	push   %esi
 574:	e8 1a fe ff ff       	call   393 <write>
        putc(fd, c);
 579:	0f b6 55 d0          	movzbl -0x30(%ebp),%edx
  write(fd, &c, 1);
 57d:	83 c4 0c             	add    $0xc,%esp
 580:	88 55 e7             	mov    %dl,-0x19(%ebp)
 583:	6a 01                	push   $0x1
 585:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
 588:	51                   	push   %ecx
  for(i = 0; fmt[i]; i++){
 589:	83 c3 02             	add    $0x2,%ebx
  write(fd, &c, 1);
 58c:	56                   	push   %esi
 58d:	e8 01 fe ff ff       	call   393 <write>
  for(i = 0; fmt[i]; i++){
 592:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 596:	83 c4 10             	add    $0x10,%esp
 599:	84 d2                	test   %dl,%dl
 59b:	75 93                	jne    530 <printf+0x50>
      }
      state = 0;
    }
  }
}
 59d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5a0:	5b                   	pop    %ebx
 5a1:	5e                   	pop    %esi
 5a2:	5f                   	pop    %edi
 5a3:	5d                   	pop    %ebp
 5a4:	c3                   	ret
 5a5:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 5a8:	83 ec 0c             	sub    $0xc,%esp
 5ab:	8b 17                	mov    (%edi),%edx
 5ad:	b9 10 00 00 00       	mov    $0x10,%ecx
 5b2:	89 f0                	mov    %esi,%eax
 5b4:	6a 00                	push   $0x0
 5b6:	e8 65 fe ff ff       	call   420 <printint>
  for(i = 0; fmt[i]; i++){
 5bb:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 5bf:	83 c3 02             	add    $0x2,%ebx
 5c2:	83 c4 10             	add    $0x10,%esp
 5c5:	84 d2                	test   %dl,%dl
 5c7:	74 d4                	je     59d <printf+0xbd>
        ap++;
 5c9:	83 c7 04             	add    $0x4,%edi
 5cc:	e9 5f ff ff ff       	jmp    530 <printf+0x50>
 5d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 5d8:	8b 07                	mov    (%edi),%eax
        ap++;
 5da:	83 c7 04             	add    $0x4,%edi
        if(s == 0)
 5dd:	85 c0                	test   %eax,%eax
 5df:	0f 84 9b 00 00 00    	je     680 <printf+0x1a0>
        while(*s != 0){
 5e5:	0f b6 10             	movzbl (%eax),%edx
 5e8:	84 d2                	test   %dl,%dl
 5ea:	0f 84 a2 00 00 00    	je     692 <printf+0x1b2>
 5f0:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 5f3:	89 c7                	mov    %eax,%edi
 5f5:	89 d0                	mov    %edx,%eax
 5f7:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 5fa:	89 fb                	mov    %edi,%ebx
 5fc:	8d 7d e7             	lea    -0x19(%ebp),%edi
 5ff:	90                   	nop
  write(fd, &c, 1);
 600:	83 ec 04             	sub    $0x4,%esp
 603:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
 606:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 609:	6a 01                	push   $0x1
 60b:	57                   	push   %edi
 60c:	56                   	push   %esi
 60d:	e8 81 fd ff ff       	call   393 <write>
        while(*s != 0){
 612:	0f b6 03             	movzbl (%ebx),%eax
 615:	83 c4 10             	add    $0x10,%esp
 618:	84 c0                	test   %al,%al
 61a:	75 e4                	jne    600 <printf+0x120>
 61c:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  for(i = 0; fmt[i]; i++){
 61f:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 623:	83 c3 02             	add    $0x2,%ebx
 626:	84 d2                	test   %dl,%dl
 628:	0f 85 d5 fe ff ff    	jne    503 <printf+0x23>
 62e:	e9 6a ff ff ff       	jmp    59d <printf+0xbd>
 633:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
 638:	83 ec 0c             	sub    $0xc,%esp
 63b:	8b 17                	mov    (%edi),%edx
 63d:	b9 0a 00 00 00       	mov    $0xa,%ecx
 642:	89 f0                	mov    %esi,%eax
 644:	6a 01                	push   $0x1
 646:	e8 d5 fd ff ff       	call   420 <printint>
  for(i = 0; fmt[i]; i++){
 64b:	e9 6b ff ff ff       	jmp    5bb <printf+0xdb>
        putc(fd, *ap);
 650:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 652:	83 ec 04             	sub    $0x4,%esp
 655:	8d 4d e7             	lea    -0x19(%ebp),%ecx
        putc(fd, *ap);
 658:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 65b:	6a 01                	push   $0x1
 65d:	51                   	push   %ecx
 65e:	56                   	push   %esi
 65f:	e8 2f fd ff ff       	call   393 <write>
 664:	e9 52 ff ff ff       	jmp    5bb <printf+0xdb>
 669:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 670:	83 ec 04             	sub    $0x4,%esp
 673:	88 55 e7             	mov    %dl,-0x19(%ebp)
 676:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 679:	6a 01                	push   $0x1
 67b:	e9 08 ff ff ff       	jmp    588 <printf+0xa8>
          s = "(null)";
 680:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 683:	b8 28 00 00 00       	mov    $0x28,%eax
 688:	bf 98 08 00 00       	mov    $0x898,%edi
 68d:	e9 65 ff ff ff       	jmp    5f7 <printf+0x117>
  for(i = 0; fmt[i]; i++){
 692:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 696:	83 c3 02             	add    $0x2,%ebx
 699:	84 d2                	test   %dl,%dl
 69b:	0f 85 8f fe ff ff    	jne    530 <printf+0x50>
 6a1:	e9 f7 fe ff ff       	jmp    59d <printf+0xbd>
 6a6:	66 90                	xchg   %ax,%ax
 6a8:	66 90                	xchg   %ax,%ax
 6aa:	66 90                	xchg   %ax,%ax
 6ac:	66 90                	xchg   %ax,%ax
 6ae:	66 90                	xchg   %ax,%ax
 6b0:	66 90                	xchg   %ax,%ax
 6b2:	66 90                	xchg   %ax,%ax
 6b4:	66 90                	xchg   %ax,%ax
 6b6:	66 90                	xchg   %ax,%ax
 6b8:	66 90                	xchg   %ax,%ax
 6ba:	66 90                	xchg   %ax,%ax
 6bc:	66 90                	xchg   %ax,%ax
 6be:	66 90                	xchg   %ax,%ax

000006c0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 6c0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6c1:	a1 ac 0b 00 00       	mov    0xbac,%eax
{
 6c6:	89 e5                	mov    %esp,%ebp
 6c8:	57                   	push   %edi
 6c9:	56                   	push   %esi
 6ca:	53                   	push   %ebx
 6cb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 6ce:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6d8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 6df:	00 
 6e0:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6e2:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6e4:	39 ca                	cmp    %ecx,%edx
 6e6:	73 30                	jae    718 <free+0x58>
 6e8:	39 c1                	cmp    %eax,%ecx
 6ea:	72 04                	jb     6f0 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6ec:	39 c2                	cmp    %eax,%edx
 6ee:	72 f0                	jb     6e0 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 6f0:	8b 73 fc             	mov    -0x4(%ebx),%esi
 6f3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 6f6:	39 f8                	cmp    %edi,%eax
 6f8:	74 36                	je     730 <free+0x70>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 6fa:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 6fd:	8b 42 04             	mov    0x4(%edx),%eax
 700:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 703:	39 f1                	cmp    %esi,%ecx
 705:	74 40                	je     747 <free+0x87>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 707:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 709:	5b                   	pop    %ebx
  freep = p;
 70a:	89 15 ac 0b 00 00    	mov    %edx,0xbac
}
 710:	5e                   	pop    %esi
 711:	5f                   	pop    %edi
 712:	5d                   	pop    %ebp
 713:	c3                   	ret
 714:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 718:	39 c2                	cmp    %eax,%edx
 71a:	72 c4                	jb     6e0 <free+0x20>
 71c:	39 c1                	cmp    %eax,%ecx
 71e:	73 c0                	jae    6e0 <free+0x20>
  if(bp + bp->s.size == p->s.ptr){
 720:	8b 73 fc             	mov    -0x4(%ebx),%esi
 723:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 726:	39 f8                	cmp    %edi,%eax
 728:	75 d0                	jne    6fa <free+0x3a>
 72a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
 730:	03 70 04             	add    0x4(%eax),%esi
 733:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 736:	8b 02                	mov    (%edx),%eax
 738:	8b 00                	mov    (%eax),%eax
 73a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 73d:	8b 42 04             	mov    0x4(%edx),%eax
 740:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 743:	39 f1                	cmp    %esi,%ecx
 745:	75 c0                	jne    707 <free+0x47>
    p->s.size += bp->s.size;
 747:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 74a:	89 15 ac 0b 00 00    	mov    %edx,0xbac
    p->s.size += bp->s.size;
 750:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 753:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 756:	89 0a                	mov    %ecx,(%edx)
}
 758:	5b                   	pop    %ebx
 759:	5e                   	pop    %esi
 75a:	5f                   	pop    %edi
 75b:	5d                   	pop    %ebp
 75c:	c3                   	ret
 75d:	8d 76 00             	lea    0x0(%esi),%esi

00000760 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 760:	55                   	push   %ebp
 761:	89 e5                	mov    %esp,%ebp
 763:	57                   	push   %edi
 764:	56                   	push   %esi
 765:	53                   	push   %ebx
 766:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 769:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 76c:	8b 15 ac 0b 00 00    	mov    0xbac,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 772:	8d 78 07             	lea    0x7(%eax),%edi
 775:	c1 ef 03             	shr    $0x3,%edi
 778:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 77b:	85 d2                	test   %edx,%edx
 77d:	0f 84 8d 00 00 00    	je     810 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 783:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 785:	8b 48 04             	mov    0x4(%eax),%ecx
 788:	39 f9                	cmp    %edi,%ecx
 78a:	73 64                	jae    7f0 <malloc+0x90>
  if(nu < 4096)
 78c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 791:	39 df                	cmp    %ebx,%edi
 793:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 796:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 79d:	eb 0a                	jmp    7a9 <malloc+0x49>
 79f:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 7a0:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 7a2:	8b 48 04             	mov    0x4(%eax),%ecx
 7a5:	39 f9                	cmp    %edi,%ecx
 7a7:	73 47                	jae    7f0 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 7a9:	89 c2                	mov    %eax,%edx
 7ab:	39 05 ac 0b 00 00    	cmp    %eax,0xbac
 7b1:	75 ed                	jne    7a0 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
 7b3:	83 ec 0c             	sub    $0xc,%esp
 7b6:	56                   	push   %esi
 7b7:	e8 47 fc ff ff       	call   403 <sbrk>
  if(p == (char*)-1)
 7bc:	83 c4 10             	add    $0x10,%esp
 7bf:	83 f8 ff             	cmp    $0xffffffff,%eax
 7c2:	74 1c                	je     7e0 <malloc+0x80>
  hp->s.size = nu;
 7c4:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 7c7:	83 ec 0c             	sub    $0xc,%esp
 7ca:	83 c0 08             	add    $0x8,%eax
 7cd:	50                   	push   %eax
 7ce:	e8 ed fe ff ff       	call   6c0 <free>
  return freep;
 7d3:	8b 15 ac 0b 00 00    	mov    0xbac,%edx
      if((p = morecore(nunits)) == 0)
 7d9:	83 c4 10             	add    $0x10,%esp
 7dc:	85 d2                	test   %edx,%edx
 7de:	75 c0                	jne    7a0 <malloc+0x40>
        return 0;
  }
}
 7e0:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 7e3:	31 c0                	xor    %eax,%eax
}
 7e5:	5b                   	pop    %ebx
 7e6:	5e                   	pop    %esi
 7e7:	5f                   	pop    %edi
 7e8:	5d                   	pop    %ebp
 7e9:	c3                   	ret
 7ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 7f0:	39 cf                	cmp    %ecx,%edi
 7f2:	74 4c                	je     840 <malloc+0xe0>
        p->s.size -= nunits;
 7f4:	29 f9                	sub    %edi,%ecx
 7f6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 7f9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 7fc:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 7ff:	89 15 ac 0b 00 00    	mov    %edx,0xbac
}
 805:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 808:	83 c0 08             	add    $0x8,%eax
}
 80b:	5b                   	pop    %ebx
 80c:	5e                   	pop    %esi
 80d:	5f                   	pop    %edi
 80e:	5d                   	pop    %ebp
 80f:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
 810:	c7 05 ac 0b 00 00 b0 	movl   $0xbb0,0xbac
 817:	0b 00 00 
    base.s.size = 0;
 81a:	b8 b0 0b 00 00       	mov    $0xbb0,%eax
    base.s.ptr = freep = prevp = &base;
 81f:	c7 05 b0 0b 00 00 b0 	movl   $0xbb0,0xbb0
 826:	0b 00 00 
    base.s.size = 0;
 829:	c7 05 b4 0b 00 00 00 	movl   $0x0,0xbb4
 830:	00 00 00 
    if(p->s.size >= nunits){
 833:	e9 54 ff ff ff       	jmp    78c <malloc+0x2c>
 838:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 83f:	00 
        prevp->s.ptr = p->s.ptr;
 840:	8b 08                	mov    (%eax),%ecx
 842:	89 0a                	mov    %ecx,(%edx)
 844:	eb b9                	jmp    7ff <malloc+0x9f>
