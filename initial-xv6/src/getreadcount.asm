
_getreadcount:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "stat.h"
#include "user.h"

int
main(void)
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	51                   	push   %ecx
   e:	83 ec 14             	sub    $0x14,%esp
    char c;

    printf(1, "Before reads: %d\n", getreadcount());
  11:	e8 45 03 00 00       	call   35b <getreadcount>
  16:	83 ec 04             	sub    $0x4,%esp
  19:	50                   	push   %eax
  1a:	68 a8 07 00 00       	push   $0x7a8
  1f:	6a 01                	push   $0x1
  21:	e8 1a 04 00 00       	call   440 <printf>
    read(0, &c, 1);
  26:	83 c4 0c             	add    $0xc,%esp
  29:	8d 45 f7             	lea    -0x9(%ebp),%eax
  2c:	6a 01                	push   $0x1
  2e:	50                   	push   %eax
  2f:	6a 00                	push   $0x0
  31:	e8 b5 02 00 00       	call   2eb <read>
    printf(1, "After one read: %d\n", getreadcount());
  36:	e8 20 03 00 00       	call   35b <getreadcount>
  3b:	83 c4 0c             	add    $0xc,%esp
  3e:	50                   	push   %eax
  3f:	68 ba 07 00 00       	push   $0x7ba
  44:	6a 01                	push   $0x1
  46:	e8 f5 03 00 00       	call   440 <printf>

    exit();
  4b:	e8 83 02 00 00       	call   2d3 <exit>
  50:	66 90                	xchg   %ax,%ax
  52:	66 90                	xchg   %ax,%ax
  54:	66 90                	xchg   %ax,%ax
  56:	66 90                	xchg   %ax,%ax
  58:	66 90                	xchg   %ax,%ax
  5a:	66 90                	xchg   %ax,%ax
  5c:	66 90                	xchg   %ax,%ax
  5e:	66 90                	xchg   %ax,%ax

00000060 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
  60:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
  61:	31 c0                	xor    %eax,%eax
{
  63:	89 e5                	mov    %esp,%ebp
  65:	53                   	push   %ebx
  66:	8b 4d 08             	mov    0x8(%ebp),%ecx
  69:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
  70:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
  74:	88 14 01             	mov    %dl,(%ecx,%eax,1)
  77:	83 c0 01             	add    $0x1,%eax
  7a:	84 d2                	test   %dl,%dl
  7c:	75 f2                	jne    70 <strcpy+0x10>
    ;
  return os;
}
  7e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  81:	89 c8                	mov    %ecx,%eax
  83:	c9                   	leave
  84:	c3                   	ret
  85:	8d 76 00             	lea    0x0(%esi),%esi
  88:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  8f:	00 

00000090 <strcmp>:

int
strcmp(const char *p, const char *q)
{
  90:	55                   	push   %ebp
  91:	89 e5                	mov    %esp,%ebp
  93:	53                   	push   %ebx
  94:	8b 55 08             	mov    0x8(%ebp),%edx
  97:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
  9a:	0f b6 02             	movzbl (%edx),%eax
  9d:	84 c0                	test   %al,%al
  9f:	75 2d                	jne    ce <strcmp+0x3e>
  a1:	eb 4a                	jmp    ed <strcmp+0x5d>
  a3:	eb 1b                	jmp    c0 <strcmp+0x30>
  a5:	8d 76 00             	lea    0x0(%esi),%esi
  a8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  af:	00 
  b0:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  b7:	00 
  b8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  bf:	00 
  c0:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
  c4:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
  c7:	84 c0                	test   %al,%al
  c9:	74 15                	je     e0 <strcmp+0x50>
  cb:	83 c1 01             	add    $0x1,%ecx
  ce:	0f b6 19             	movzbl (%ecx),%ebx
  d1:	38 c3                	cmp    %al,%bl
  d3:	74 eb                	je     c0 <strcmp+0x30>
  return (uchar)*p - (uchar)*q;
  d5:	29 d8                	sub    %ebx,%eax
}
  d7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  da:	c9                   	leave
  db:	c3                   	ret
  dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  return (uchar)*p - (uchar)*q;
  e0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
  e4:	31 c0                	xor    %eax,%eax
  e6:	29 d8                	sub    %ebx,%eax
}
  e8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  eb:	c9                   	leave
  ec:	c3                   	ret
  return (uchar)*p - (uchar)*q;
  ed:	0f b6 19             	movzbl (%ecx),%ebx
  f0:	31 c0                	xor    %eax,%eax
  f2:	eb e1                	jmp    d5 <strcmp+0x45>
  f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  ff:	00 

00000100 <strlen>:

uint
strlen(const char *s)
{
 100:	55                   	push   %ebp
 101:	89 e5                	mov    %esp,%ebp
 103:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 106:	80 3a 00             	cmpb   $0x0,(%edx)
 109:	74 15                	je     120 <strlen+0x20>
 10b:	31 c0                	xor    %eax,%eax
 10d:	8d 76 00             	lea    0x0(%esi),%esi
 110:	83 c0 01             	add    $0x1,%eax
 113:	89 c1                	mov    %eax,%ecx
 115:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 119:	75 f5                	jne    110 <strlen+0x10>
    ;
  return n;
}
 11b:	89 c8                	mov    %ecx,%eax
 11d:	5d                   	pop    %ebp
 11e:	c3                   	ret
 11f:	90                   	nop
  for(n = 0; s[n]; n++)
 120:	31 c9                	xor    %ecx,%ecx
}
 122:	5d                   	pop    %ebp
 123:	89 c8                	mov    %ecx,%eax
 125:	c3                   	ret
 126:	66 90                	xchg   %ax,%ax
 128:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 12f:	00 

00000130 <memset>:

void*
memset(void *dst, int c, uint n)
{
 130:	55                   	push   %ebp
 131:	89 e5                	mov    %esp,%ebp
 133:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 134:	8b 4d 10             	mov    0x10(%ebp),%ecx
 137:	8b 45 0c             	mov    0xc(%ebp),%eax
 13a:	8b 7d 08             	mov    0x8(%ebp),%edi
 13d:	fc                   	cld
 13e:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 140:	8b 45 08             	mov    0x8(%ebp),%eax
 143:	8b 7d fc             	mov    -0x4(%ebp),%edi
 146:	c9                   	leave
 147:	c3                   	ret
 148:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 14f:	00 

00000150 <strchr>:

char*
strchr(const char *s, char c)
{
 150:	55                   	push   %ebp
 151:	89 e5                	mov    %esp,%ebp
 153:	8b 45 08             	mov    0x8(%ebp),%eax
 156:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 15a:	0f b6 10             	movzbl (%eax),%edx
 15d:	84 d2                	test   %dl,%dl
 15f:	75 1a                	jne    17b <strchr+0x2b>
 161:	eb 25                	jmp    188 <strchr+0x38>
 163:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 168:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 16f:	00 
 170:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 174:	83 c0 01             	add    $0x1,%eax
 177:	84 d2                	test   %dl,%dl
 179:	74 0d                	je     188 <strchr+0x38>
    if(*s == c)
 17b:	38 d1                	cmp    %dl,%cl
 17d:	75 f1                	jne    170 <strchr+0x20>
      return (char*)s;
  return 0;
}
 17f:	5d                   	pop    %ebp
 180:	c3                   	ret
 181:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 188:	31 c0                	xor    %eax,%eax
}
 18a:	5d                   	pop    %ebp
 18b:	c3                   	ret
 18c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000190 <gets>:

char*
gets(char *buf, int max)
{
 190:	55                   	push   %ebp
 191:	89 e5                	mov    %esp,%ebp
 193:	57                   	push   %edi
 194:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 195:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 198:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 199:	31 db                	xor    %ebx,%ebx
{
 19b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 19e:	eb 27                	jmp    1c7 <gets+0x37>
    cc = read(0, &c, 1);
 1a0:	83 ec 04             	sub    $0x4,%esp
 1a3:	6a 01                	push   $0x1
 1a5:	57                   	push   %edi
 1a6:	6a 00                	push   $0x0
 1a8:	e8 3e 01 00 00       	call   2eb <read>
    if(cc < 1)
 1ad:	83 c4 10             	add    $0x10,%esp
 1b0:	85 c0                	test   %eax,%eax
 1b2:	7e 1d                	jle    1d1 <gets+0x41>
      break;
    buf[i++] = c;
 1b4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 1b8:	8b 55 08             	mov    0x8(%ebp),%edx
 1bb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 1bf:	3c 0a                	cmp    $0xa,%al
 1c1:	74 1d                	je     1e0 <gets+0x50>
 1c3:	3c 0d                	cmp    $0xd,%al
 1c5:	74 19                	je     1e0 <gets+0x50>
  for(i=0; i+1 < max; ){
 1c7:	89 de                	mov    %ebx,%esi
 1c9:	83 c3 01             	add    $0x1,%ebx
 1cc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 1cf:	7c cf                	jl     1a0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 1d1:	8b 45 08             	mov    0x8(%ebp),%eax
 1d4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 1d8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1db:	5b                   	pop    %ebx
 1dc:	5e                   	pop    %esi
 1dd:	5f                   	pop    %edi
 1de:	5d                   	pop    %ebp
 1df:	c3                   	ret
  buf[i] = '\0';
 1e0:	8b 45 08             	mov    0x8(%ebp),%eax
    buf[i++] = c;
 1e3:	89 de                	mov    %ebx,%esi
  buf[i] = '\0';
 1e5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 1e9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1ec:	5b                   	pop    %ebx
 1ed:	5e                   	pop    %esi
 1ee:	5f                   	pop    %edi
 1ef:	5d                   	pop    %ebp
 1f0:	c3                   	ret
 1f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1ff:	00 

00000200 <stat>:

int
stat(const char *n, struct stat *st)
{
 200:	55                   	push   %ebp
 201:	89 e5                	mov    %esp,%ebp
 203:	56                   	push   %esi
 204:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 205:	83 ec 08             	sub    $0x8,%esp
 208:	6a 00                	push   $0x0
 20a:	ff 75 08             	push   0x8(%ebp)
 20d:	e8 01 01 00 00       	call   313 <open>
  if(fd < 0)
 212:	83 c4 10             	add    $0x10,%esp
 215:	85 c0                	test   %eax,%eax
 217:	78 27                	js     240 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 219:	83 ec 08             	sub    $0x8,%esp
 21c:	ff 75 0c             	push   0xc(%ebp)
 21f:	89 c3                	mov    %eax,%ebx
 221:	50                   	push   %eax
 222:	e8 04 01 00 00       	call   32b <fstat>
  close(fd);
 227:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 22a:	89 c6                	mov    %eax,%esi
  close(fd);
 22c:	e8 ca 00 00 00       	call   2fb <close>
  return r;
 231:	83 c4 10             	add    $0x10,%esp
}
 234:	8d 65 f8             	lea    -0x8(%ebp),%esp
 237:	89 f0                	mov    %esi,%eax
 239:	5b                   	pop    %ebx
 23a:	5e                   	pop    %esi
 23b:	5d                   	pop    %ebp
 23c:	c3                   	ret
 23d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 240:	be ff ff ff ff       	mov    $0xffffffff,%esi
 245:	eb ed                	jmp    234 <stat+0x34>
 247:	90                   	nop
 248:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 24f:	00 

00000250 <atoi>:

int
atoi(const char *s)
{
 250:	55                   	push   %ebp
 251:	89 e5                	mov    %esp,%ebp
 253:	53                   	push   %ebx
 254:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 257:	0f be 02             	movsbl (%edx),%eax
 25a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 25d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 260:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 265:	77 2e                	ja     295 <atoi+0x45>
 267:	eb 17                	jmp    280 <atoi+0x30>
 269:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 270:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 277:	00 
 278:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 27f:	00 
    n = n*10 + *s++ - '0';
 280:	83 c2 01             	add    $0x1,%edx
 283:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 286:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 28a:	0f be 02             	movsbl (%edx),%eax
 28d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 290:	80 fb 09             	cmp    $0x9,%bl
 293:	76 eb                	jbe    280 <atoi+0x30>
  return n;
}
 295:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 298:	89 c8                	mov    %ecx,%eax
 29a:	c9                   	leave
 29b:	c3                   	ret
 29c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000002a0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 2a0:	55                   	push   %ebp
 2a1:	89 e5                	mov    %esp,%ebp
 2a3:	57                   	push   %edi
 2a4:	8b 45 10             	mov    0x10(%ebp),%eax
 2a7:	8b 55 08             	mov    0x8(%ebp),%edx
 2aa:	56                   	push   %esi
 2ab:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 2ae:	85 c0                	test   %eax,%eax
 2b0:	7e 13                	jle    2c5 <memmove+0x25>
 2b2:	01 d0                	add    %edx,%eax
  dst = vdst;
 2b4:	89 d7                	mov    %edx,%edi
 2b6:	66 90                	xchg   %ax,%ax
 2b8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 2bf:	00 
    *dst++ = *src++;
 2c0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 2c1:	39 f8                	cmp    %edi,%eax
 2c3:	75 fb                	jne    2c0 <memmove+0x20>
  return vdst;
}
 2c5:	5e                   	pop    %esi
 2c6:	89 d0                	mov    %edx,%eax
 2c8:	5f                   	pop    %edi
 2c9:	5d                   	pop    %ebp
 2ca:	c3                   	ret

000002cb <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 2cb:	b8 01 00 00 00       	mov    $0x1,%eax
 2d0:	cd 40                	int    $0x40
 2d2:	c3                   	ret

000002d3 <exit>:
SYSCALL(exit)
 2d3:	b8 02 00 00 00       	mov    $0x2,%eax
 2d8:	cd 40                	int    $0x40
 2da:	c3                   	ret

000002db <wait>:
SYSCALL(wait)
 2db:	b8 03 00 00 00       	mov    $0x3,%eax
 2e0:	cd 40                	int    $0x40
 2e2:	c3                   	ret

000002e3 <pipe>:
SYSCALL(pipe)
 2e3:	b8 04 00 00 00       	mov    $0x4,%eax
 2e8:	cd 40                	int    $0x40
 2ea:	c3                   	ret

000002eb <read>:
SYSCALL(read)
 2eb:	b8 05 00 00 00       	mov    $0x5,%eax
 2f0:	cd 40                	int    $0x40
 2f2:	c3                   	ret

000002f3 <write>:
SYSCALL(write)
 2f3:	b8 10 00 00 00       	mov    $0x10,%eax
 2f8:	cd 40                	int    $0x40
 2fa:	c3                   	ret

000002fb <close>:
SYSCALL(close)
 2fb:	b8 15 00 00 00       	mov    $0x15,%eax
 300:	cd 40                	int    $0x40
 302:	c3                   	ret

00000303 <kill>:
SYSCALL(kill)
 303:	b8 06 00 00 00       	mov    $0x6,%eax
 308:	cd 40                	int    $0x40
 30a:	c3                   	ret

0000030b <exec>:
SYSCALL(exec)
 30b:	b8 07 00 00 00       	mov    $0x7,%eax
 310:	cd 40                	int    $0x40
 312:	c3                   	ret

00000313 <open>:
SYSCALL(open)
 313:	b8 0f 00 00 00       	mov    $0xf,%eax
 318:	cd 40                	int    $0x40
 31a:	c3                   	ret

0000031b <mknod>:
SYSCALL(mknod)
 31b:	b8 11 00 00 00       	mov    $0x11,%eax
 320:	cd 40                	int    $0x40
 322:	c3                   	ret

00000323 <unlink>:
SYSCALL(unlink)
 323:	b8 12 00 00 00       	mov    $0x12,%eax
 328:	cd 40                	int    $0x40
 32a:	c3                   	ret

0000032b <fstat>:
SYSCALL(fstat)
 32b:	b8 08 00 00 00       	mov    $0x8,%eax
 330:	cd 40                	int    $0x40
 332:	c3                   	ret

00000333 <link>:
SYSCALL(link)
 333:	b8 13 00 00 00       	mov    $0x13,%eax
 338:	cd 40                	int    $0x40
 33a:	c3                   	ret

0000033b <mkdir>:
SYSCALL(mkdir)
 33b:	b8 14 00 00 00       	mov    $0x14,%eax
 340:	cd 40                	int    $0x40
 342:	c3                   	ret

00000343 <chdir>:
SYSCALL(chdir)
 343:	b8 09 00 00 00       	mov    $0x9,%eax
 348:	cd 40                	int    $0x40
 34a:	c3                   	ret

0000034b <dup>:
SYSCALL(dup)
 34b:	b8 0a 00 00 00       	mov    $0xa,%eax
 350:	cd 40                	int    $0x40
 352:	c3                   	ret

00000353 <getpid>:
SYSCALL(getpid)
 353:	b8 0b 00 00 00       	mov    $0xb,%eax
 358:	cd 40                	int    $0x40
 35a:	c3                   	ret

0000035b <getreadcount>:
SYSCALL(getreadcount)
 35b:	b8 16 00 00 00       	mov    $0x16,%eax
 360:	cd 40                	int    $0x40
 362:	c3                   	ret

00000363 <sbrk>:
SYSCALL(sbrk)
 363:	b8 0c 00 00 00       	mov    $0xc,%eax
 368:	cd 40                	int    $0x40
 36a:	c3                   	ret

0000036b <sleep>:
SYSCALL(sleep)
 36b:	b8 0d 00 00 00       	mov    $0xd,%eax
 370:	cd 40                	int    $0x40
 372:	c3                   	ret

00000373 <uptime>:
SYSCALL(uptime)
 373:	b8 0e 00 00 00       	mov    $0xe,%eax
 378:	cd 40                	int    $0x40
 37a:	c3                   	ret
 37b:	66 90                	xchg   %ax,%ax
 37d:	66 90                	xchg   %ax,%ax
 37f:	90                   	nop

00000380 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 380:	55                   	push   %ebp
 381:	89 e5                	mov    %esp,%ebp
 383:	57                   	push   %edi
 384:	56                   	push   %esi
 385:	53                   	push   %ebx
 386:	89 cb                	mov    %ecx,%ebx
 388:	83 ec 3c             	sub    $0x3c,%esp
 38b:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 38e:	85 d2                	test   %edx,%edx
 390:	0f 89 9a 00 00 00    	jns    430 <printint+0xb0>
 396:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 39a:	0f 84 90 00 00 00    	je     430 <printint+0xb0>
    neg = 1;
    x = -xx;
 3a0:	f7 da                	neg    %edx
    neg = 1;
 3a2:	b8 01 00 00 00       	mov    $0x1,%eax
 3a7:	89 45 c0             	mov    %eax,-0x40(%ebp)
 3aa:	89 d1                	mov    %edx,%ecx
  } else {
    x = xx;
  }

  i = 0;
 3ac:	31 f6                	xor    %esi,%esi
 3ae:	66 90                	xchg   %ax,%ax
 3b0:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3b7:	00 
 3b8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3bf:	00 
  do{
    buf[i++] = digits[x % base];
 3c0:	89 c8                	mov    %ecx,%eax
 3c2:	31 d2                	xor    %edx,%edx
 3c4:	89 f7                	mov    %esi,%edi
 3c6:	f7 f3                	div    %ebx
 3c8:	8d 76 01             	lea    0x1(%esi),%esi
  }while((x /= base) != 0);
 3cb:	39 d9                	cmp    %ebx,%ecx
    buf[i++] = digits[x % base];
 3cd:	0f b6 92 30 08 00 00 	movzbl 0x830(%edx),%edx
  }while((x /= base) != 0);
 3d4:	89 c1                	mov    %eax,%ecx
    buf[i++] = digits[x % base];
 3d6:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
 3da:	73 e4                	jae    3c0 <printint+0x40>
  if(neg)
 3dc:	8b 45 c0             	mov    -0x40(%ebp),%eax
 3df:	85 c0                	test   %eax,%eax
 3e1:	74 07                	je     3ea <printint+0x6a>
    buf[i++] = '-';
 3e3:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
 3e8:	89 f7                	mov    %esi,%edi

  while(--i >= 0)
 3ea:	8d 74 3d d8          	lea    -0x28(%ebp,%edi,1),%esi
 3ee:	8b 7d c4             	mov    -0x3c(%ebp),%edi
 3f1:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 3f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3ff:	00 
    putc(fd, buf[i]);
 400:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 403:	83 ec 04             	sub    $0x4,%esp
  while(--i >= 0)
 406:	83 ee 01             	sub    $0x1,%esi
 409:	88 45 d7             	mov    %al,-0x29(%ebp)
  write(fd, &c, 1);
 40c:	8d 45 d7             	lea    -0x29(%ebp),%eax
 40f:	6a 01                	push   $0x1
 411:	50                   	push   %eax
 412:	57                   	push   %edi
 413:	e8 db fe ff ff       	call   2f3 <write>
  while(--i >= 0)
 418:	83 c4 10             	add    $0x10,%esp
 41b:	39 f3                	cmp    %esi,%ebx
 41d:	75 e1                	jne    400 <printint+0x80>
}
 41f:	8d 65 f4             	lea    -0xc(%ebp),%esp
 422:	5b                   	pop    %ebx
 423:	5e                   	pop    %esi
 424:	5f                   	pop    %edi
 425:	5d                   	pop    %ebp
 426:	c3                   	ret
 427:	90                   	nop
 428:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 42f:	00 
  neg = 0;
 430:	31 c0                	xor    %eax,%eax
 432:	e9 70 ff ff ff       	jmp    3a7 <printint+0x27>
 437:	90                   	nop
 438:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 43f:	00 

00000440 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 440:	55                   	push   %ebp
 441:	89 e5                	mov    %esp,%ebp
 443:	57                   	push   %edi
 444:	56                   	push   %esi
 445:	53                   	push   %ebx
 446:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 449:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 44c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 44f:	0f b6 13             	movzbl (%ebx),%edx
 452:	83 c3 01             	add    $0x1,%ebx
 455:	84 d2                	test   %dl,%dl
 457:	0f 84 a0 00 00 00    	je     4fd <printf+0xbd>
 45d:	8d 45 10             	lea    0x10(%ebp),%eax
 460:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c = fmt[i] & 0xff;
 463:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 466:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 469:	eb 28                	jmp    493 <printf+0x53>
 46b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
 470:	83 ec 04             	sub    $0x4,%esp
 473:	8d 45 e7             	lea    -0x19(%ebp),%eax
 476:	88 55 e7             	mov    %dl,-0x19(%ebp)
  for(i = 0; fmt[i]; i++){
 479:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 47c:	6a 01                	push   $0x1
 47e:	50                   	push   %eax
 47f:	56                   	push   %esi
 480:	e8 6e fe ff ff       	call   2f3 <write>
  for(i = 0; fmt[i]; i++){
 485:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 489:	83 c4 10             	add    $0x10,%esp
 48c:	84 d2                	test   %dl,%dl
 48e:	74 6d                	je     4fd <printf+0xbd>
    c = fmt[i] & 0xff;
 490:	0f b6 c2             	movzbl %dl,%eax
      if(c == '%'){
 493:	83 f8 25             	cmp    $0x25,%eax
 496:	75 d8                	jne    470 <printf+0x30>
  for(i = 0; fmt[i]; i++){
 498:	0f b6 13             	movzbl (%ebx),%edx
 49b:	84 d2                	test   %dl,%dl
 49d:	74 5e                	je     4fd <printf+0xbd>
    c = fmt[i] & 0xff;
 49f:	0f b6 c2             	movzbl %dl,%eax
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
 4a2:	80 fa 25             	cmp    $0x25,%dl
 4a5:	0f 84 25 01 00 00    	je     5d0 <printf+0x190>
 4ab:	83 e8 63             	sub    $0x63,%eax
 4ae:	83 f8 15             	cmp    $0x15,%eax
 4b1:	77 0d                	ja     4c0 <printf+0x80>
 4b3:	ff 24 85 d8 07 00 00 	jmp    *0x7d8(,%eax,4)
 4ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 4c0:	83 ec 04             	sub    $0x4,%esp
 4c3:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 4c6:	88 55 d0             	mov    %dl,-0x30(%ebp)
        ap++;
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
 4c9:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
  write(fd, &c, 1);
 4cd:	6a 01                	push   $0x1
 4cf:	51                   	push   %ecx
 4d0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
 4d3:	56                   	push   %esi
 4d4:	e8 1a fe ff ff       	call   2f3 <write>
        putc(fd, c);
 4d9:	0f b6 55 d0          	movzbl -0x30(%ebp),%edx
  write(fd, &c, 1);
 4dd:	83 c4 0c             	add    $0xc,%esp
 4e0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 4e3:	6a 01                	push   $0x1
 4e5:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
 4e8:	51                   	push   %ecx
  for(i = 0; fmt[i]; i++){
 4e9:	83 c3 02             	add    $0x2,%ebx
  write(fd, &c, 1);
 4ec:	56                   	push   %esi
 4ed:	e8 01 fe ff ff       	call   2f3 <write>
  for(i = 0; fmt[i]; i++){
 4f2:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 4f6:	83 c4 10             	add    $0x10,%esp
 4f9:	84 d2                	test   %dl,%dl
 4fb:	75 93                	jne    490 <printf+0x50>
      }
      state = 0;
    }
  }
}
 4fd:	8d 65 f4             	lea    -0xc(%ebp),%esp
 500:	5b                   	pop    %ebx
 501:	5e                   	pop    %esi
 502:	5f                   	pop    %edi
 503:	5d                   	pop    %ebp
 504:	c3                   	ret
 505:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 508:	83 ec 0c             	sub    $0xc,%esp
 50b:	8b 17                	mov    (%edi),%edx
 50d:	b9 10 00 00 00       	mov    $0x10,%ecx
 512:	89 f0                	mov    %esi,%eax
 514:	6a 00                	push   $0x0
 516:	e8 65 fe ff ff       	call   380 <printint>
  for(i = 0; fmt[i]; i++){
 51b:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 51f:	83 c3 02             	add    $0x2,%ebx
 522:	83 c4 10             	add    $0x10,%esp
 525:	84 d2                	test   %dl,%dl
 527:	74 d4                	je     4fd <printf+0xbd>
        ap++;
 529:	83 c7 04             	add    $0x4,%edi
 52c:	e9 5f ff ff ff       	jmp    490 <printf+0x50>
 531:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 538:	8b 07                	mov    (%edi),%eax
        ap++;
 53a:	83 c7 04             	add    $0x4,%edi
        if(s == 0)
 53d:	85 c0                	test   %eax,%eax
 53f:	0f 84 9b 00 00 00    	je     5e0 <printf+0x1a0>
        while(*s != 0){
 545:	0f b6 10             	movzbl (%eax),%edx
 548:	84 d2                	test   %dl,%dl
 54a:	0f 84 a2 00 00 00    	je     5f2 <printf+0x1b2>
 550:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 553:	89 c7                	mov    %eax,%edi
 555:	89 d0                	mov    %edx,%eax
 557:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 55a:	89 fb                	mov    %edi,%ebx
 55c:	8d 7d e7             	lea    -0x19(%ebp),%edi
 55f:	90                   	nop
  write(fd, &c, 1);
 560:	83 ec 04             	sub    $0x4,%esp
 563:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
 566:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 569:	6a 01                	push   $0x1
 56b:	57                   	push   %edi
 56c:	56                   	push   %esi
 56d:	e8 81 fd ff ff       	call   2f3 <write>
        while(*s != 0){
 572:	0f b6 03             	movzbl (%ebx),%eax
 575:	83 c4 10             	add    $0x10,%esp
 578:	84 c0                	test   %al,%al
 57a:	75 e4                	jne    560 <printf+0x120>
 57c:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  for(i = 0; fmt[i]; i++){
 57f:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 583:	83 c3 02             	add    $0x2,%ebx
 586:	84 d2                	test   %dl,%dl
 588:	0f 85 d5 fe ff ff    	jne    463 <printf+0x23>
 58e:	e9 6a ff ff ff       	jmp    4fd <printf+0xbd>
 593:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
 598:	83 ec 0c             	sub    $0xc,%esp
 59b:	8b 17                	mov    (%edi),%edx
 59d:	b9 0a 00 00 00       	mov    $0xa,%ecx
 5a2:	89 f0                	mov    %esi,%eax
 5a4:	6a 01                	push   $0x1
 5a6:	e8 d5 fd ff ff       	call   380 <printint>
  for(i = 0; fmt[i]; i++){
 5ab:	e9 6b ff ff ff       	jmp    51b <printf+0xdb>
        putc(fd, *ap);
 5b0:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 5b2:	83 ec 04             	sub    $0x4,%esp
 5b5:	8d 4d e7             	lea    -0x19(%ebp),%ecx
        putc(fd, *ap);
 5b8:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 5bb:	6a 01                	push   $0x1
 5bd:	51                   	push   %ecx
 5be:	56                   	push   %esi
 5bf:	e8 2f fd ff ff       	call   2f3 <write>
 5c4:	e9 52 ff ff ff       	jmp    51b <printf+0xdb>
 5c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5d0:	83 ec 04             	sub    $0x4,%esp
 5d3:	88 55 e7             	mov    %dl,-0x19(%ebp)
 5d6:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 5d9:	6a 01                	push   $0x1
 5db:	e9 08 ff ff ff       	jmp    4e8 <printf+0xa8>
          s = "(null)";
 5e0:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 5e3:	b8 28 00 00 00       	mov    $0x28,%eax
 5e8:	bf ce 07 00 00       	mov    $0x7ce,%edi
 5ed:	e9 65 ff ff ff       	jmp    557 <printf+0x117>
  for(i = 0; fmt[i]; i++){
 5f2:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 5f6:	83 c3 02             	add    $0x2,%ebx
 5f9:	84 d2                	test   %dl,%dl
 5fb:	0f 85 8f fe ff ff    	jne    490 <printf+0x50>
 601:	e9 f7 fe ff ff       	jmp    4fd <printf+0xbd>
 606:	66 90                	xchg   %ax,%ax
 608:	66 90                	xchg   %ax,%ax
 60a:	66 90                	xchg   %ax,%ax
 60c:	66 90                	xchg   %ax,%ax
 60e:	66 90                	xchg   %ax,%ax
 610:	66 90                	xchg   %ax,%ax
 612:	66 90                	xchg   %ax,%ax
 614:	66 90                	xchg   %ax,%ax
 616:	66 90                	xchg   %ax,%ax
 618:	66 90                	xchg   %ax,%ax
 61a:	66 90                	xchg   %ax,%ax
 61c:	66 90                	xchg   %ax,%ax
 61e:	66 90                	xchg   %ax,%ax

00000620 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 620:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 621:	a1 d8 0a 00 00       	mov    0xad8,%eax
{
 626:	89 e5                	mov    %esp,%ebp
 628:	57                   	push   %edi
 629:	56                   	push   %esi
 62a:	53                   	push   %ebx
 62b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 62e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 631:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 638:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 63f:	00 
 640:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 642:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 644:	39 ca                	cmp    %ecx,%edx
 646:	73 30                	jae    678 <free+0x58>
 648:	39 c1                	cmp    %eax,%ecx
 64a:	72 04                	jb     650 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 64c:	39 c2                	cmp    %eax,%edx
 64e:	72 f0                	jb     640 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 650:	8b 73 fc             	mov    -0x4(%ebx),%esi
 653:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 656:	39 f8                	cmp    %edi,%eax
 658:	74 36                	je     690 <free+0x70>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 65a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 65d:	8b 42 04             	mov    0x4(%edx),%eax
 660:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 663:	39 f1                	cmp    %esi,%ecx
 665:	74 40                	je     6a7 <free+0x87>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 667:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 669:	5b                   	pop    %ebx
  freep = p;
 66a:	89 15 d8 0a 00 00    	mov    %edx,0xad8
}
 670:	5e                   	pop    %esi
 671:	5f                   	pop    %edi
 672:	5d                   	pop    %ebp
 673:	c3                   	ret
 674:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 678:	39 c2                	cmp    %eax,%edx
 67a:	72 c4                	jb     640 <free+0x20>
 67c:	39 c1                	cmp    %eax,%ecx
 67e:	73 c0                	jae    640 <free+0x20>
  if(bp + bp->s.size == p->s.ptr){
 680:	8b 73 fc             	mov    -0x4(%ebx),%esi
 683:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 686:	39 f8                	cmp    %edi,%eax
 688:	75 d0                	jne    65a <free+0x3a>
 68a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
 690:	03 70 04             	add    0x4(%eax),%esi
 693:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 696:	8b 02                	mov    (%edx),%eax
 698:	8b 00                	mov    (%eax),%eax
 69a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 69d:	8b 42 04             	mov    0x4(%edx),%eax
 6a0:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 6a3:	39 f1                	cmp    %esi,%ecx
 6a5:	75 c0                	jne    667 <free+0x47>
    p->s.size += bp->s.size;
 6a7:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 6aa:	89 15 d8 0a 00 00    	mov    %edx,0xad8
    p->s.size += bp->s.size;
 6b0:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 6b3:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 6b6:	89 0a                	mov    %ecx,(%edx)
}
 6b8:	5b                   	pop    %ebx
 6b9:	5e                   	pop    %esi
 6ba:	5f                   	pop    %edi
 6bb:	5d                   	pop    %ebp
 6bc:	c3                   	ret
 6bd:	8d 76 00             	lea    0x0(%esi),%esi

000006c0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 6c0:	55                   	push   %ebp
 6c1:	89 e5                	mov    %esp,%ebp
 6c3:	57                   	push   %edi
 6c4:	56                   	push   %esi
 6c5:	53                   	push   %ebx
 6c6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 6c9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 6cc:	8b 15 d8 0a 00 00    	mov    0xad8,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 6d2:	8d 78 07             	lea    0x7(%eax),%edi
 6d5:	c1 ef 03             	shr    $0x3,%edi
 6d8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 6db:	85 d2                	test   %edx,%edx
 6dd:	0f 84 8d 00 00 00    	je     770 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 6e3:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 6e5:	8b 48 04             	mov    0x4(%eax),%ecx
 6e8:	39 f9                	cmp    %edi,%ecx
 6ea:	73 64                	jae    750 <malloc+0x90>
  if(nu < 4096)
 6ec:	bb 00 10 00 00       	mov    $0x1000,%ebx
 6f1:	39 df                	cmp    %ebx,%edi
 6f3:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 6f6:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 6fd:	eb 0a                	jmp    709 <malloc+0x49>
 6ff:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 700:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 702:	8b 48 04             	mov    0x4(%eax),%ecx
 705:	39 f9                	cmp    %edi,%ecx
 707:	73 47                	jae    750 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 709:	89 c2                	mov    %eax,%edx
 70b:	39 05 d8 0a 00 00    	cmp    %eax,0xad8
 711:	75 ed                	jne    700 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
 713:	83 ec 0c             	sub    $0xc,%esp
 716:	56                   	push   %esi
 717:	e8 47 fc ff ff       	call   363 <sbrk>
  if(p == (char*)-1)
 71c:	83 c4 10             	add    $0x10,%esp
 71f:	83 f8 ff             	cmp    $0xffffffff,%eax
 722:	74 1c                	je     740 <malloc+0x80>
  hp->s.size = nu;
 724:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 727:	83 ec 0c             	sub    $0xc,%esp
 72a:	83 c0 08             	add    $0x8,%eax
 72d:	50                   	push   %eax
 72e:	e8 ed fe ff ff       	call   620 <free>
  return freep;
 733:	8b 15 d8 0a 00 00    	mov    0xad8,%edx
      if((p = morecore(nunits)) == 0)
 739:	83 c4 10             	add    $0x10,%esp
 73c:	85 d2                	test   %edx,%edx
 73e:	75 c0                	jne    700 <malloc+0x40>
        return 0;
  }
}
 740:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 743:	31 c0                	xor    %eax,%eax
}
 745:	5b                   	pop    %ebx
 746:	5e                   	pop    %esi
 747:	5f                   	pop    %edi
 748:	5d                   	pop    %ebp
 749:	c3                   	ret
 74a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 750:	39 cf                	cmp    %ecx,%edi
 752:	74 4c                	je     7a0 <malloc+0xe0>
        p->s.size -= nunits;
 754:	29 f9                	sub    %edi,%ecx
 756:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 759:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 75c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 75f:	89 15 d8 0a 00 00    	mov    %edx,0xad8
}
 765:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 768:	83 c0 08             	add    $0x8,%eax
}
 76b:	5b                   	pop    %ebx
 76c:	5e                   	pop    %esi
 76d:	5f                   	pop    %edi
 76e:	5d                   	pop    %ebp
 76f:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
 770:	c7 05 d8 0a 00 00 dc 	movl   $0xadc,0xad8
 777:	0a 00 00 
    base.s.size = 0;
 77a:	b8 dc 0a 00 00       	mov    $0xadc,%eax
    base.s.ptr = freep = prevp = &base;
 77f:	c7 05 dc 0a 00 00 dc 	movl   $0xadc,0xadc
 786:	0a 00 00 
    base.s.size = 0;
 789:	c7 05 e0 0a 00 00 00 	movl   $0x0,0xae0
 790:	00 00 00 
    if(p->s.size >= nunits){
 793:	e9 54 ff ff ff       	jmp    6ec <malloc+0x2c>
 798:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 79f:	00 
        prevp->s.ptr = p->s.ptr;
 7a0:	8b 08                	mov    (%eax),%ecx
 7a2:	89 0a                	mov    %ecx,(%edx)
 7a4:	eb b9                	jmp    75f <malloc+0x9f>
