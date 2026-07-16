
_test_1:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "types.h"
#include "stat.h"
#include "user.h"

int
main(int argc, char *argv[]) {
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
  int x1 = getreadcount();
  int x2 = getreadcount();
  char buf[100];
  (void) read(4, buf, 1);
   f:	8d 75 84             	lea    -0x7c(%ebp),%esi
main(int argc, char *argv[]) {
  12:	53                   	push   %ebx
  int x3 = getreadcount();
  13:	bb e8 03 00 00       	mov    $0x3e8,%ebx
main(int argc, char *argv[]) {
  18:	51                   	push   %ecx
  19:	81 ec 88 00 00 00    	sub    $0x88,%esp
  int x1 = getreadcount();
  1f:	e8 77 03 00 00       	call   39b <getreadcount>
  24:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
  int x2 = getreadcount();
  2a:	e8 6c 03 00 00       	call   39b <getreadcount>
  (void) read(4, buf, 1);
  2f:	83 ec 04             	sub    $0x4,%esp
  32:	6a 01                	push   $0x1
  34:	56                   	push   %esi
  35:	6a 04                	push   $0x4
  int x2 = getreadcount();
  37:	89 85 70 ff ff ff    	mov    %eax,-0x90(%ebp)
  (void) read(4, buf, 1);
  3d:	e8 e9 02 00 00       	call   32b <read>
  int x3 = getreadcount();
  42:	e8 54 03 00 00       	call   39b <getreadcount>
  47:	83 c4 10             	add    $0x10,%esp
  4a:	89 c7                	mov    %eax,%edi
  int i;
  for (i = 0; i < 1000; i++) {
  4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    (void) read(4, buf, 1);
  50:	83 ec 04             	sub    $0x4,%esp
  53:	6a 01                	push   $0x1
  55:	56                   	push   %esi
  56:	6a 04                	push   $0x4
  58:	e8 ce 02 00 00       	call   32b <read>
  for (i = 0; i < 1000; i++) {
  5d:	83 c4 10             	add    $0x10,%esp
  60:	83 eb 01             	sub    $0x1,%ebx
  63:	75 eb                	jne    50 <main+0x50>
  }
  int x4 = getreadcount();
  65:	e8 31 03 00 00       	call   39b <getreadcount>
  printf(1, "XV6_TEST_OUTPUT %d %d %d\n", x2-x1, x3-x2, x4-x3);
  6a:	83 ec 0c             	sub    $0xc,%esp
  6d:	29 f8                	sub    %edi,%eax
  6f:	50                   	push   %eax
  70:	8b 85 70 ff ff ff    	mov    -0x90(%ebp),%eax
  76:	29 c7                	sub    %eax,%edi
  78:	2b 85 74 ff ff ff    	sub    -0x8c(%ebp),%eax
  7e:	57                   	push   %edi
  7f:	50                   	push   %eax
  80:	68 e8 07 00 00       	push   $0x7e8
  85:	6a 01                	push   $0x1
  87:	e8 f4 03 00 00       	call   480 <printf>
  exit();
  8c:	83 c4 20             	add    $0x20,%esp
  8f:	e8 7f 02 00 00       	call   313 <exit>
  94:	66 90                	xchg   %ax,%ax
  96:	66 90                	xchg   %ax,%ax
  98:	66 90                	xchg   %ax,%ax
  9a:	66 90                	xchg   %ax,%ax
  9c:	66 90                	xchg   %ax,%ax
  9e:	66 90                	xchg   %ax,%ax

000000a0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
  a0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
  a1:	31 c0                	xor    %eax,%eax
{
  a3:	89 e5                	mov    %esp,%ebp
  a5:	53                   	push   %ebx
  a6:	8b 4d 08             	mov    0x8(%ebp),%ecx
  a9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
  b0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
  b4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
  b7:	83 c0 01             	add    $0x1,%eax
  ba:	84 d2                	test   %dl,%dl
  bc:	75 f2                	jne    b0 <strcpy+0x10>
    ;
  return os;
}
  be:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  c1:	89 c8                	mov    %ecx,%eax
  c3:	c9                   	leave
  c4:	c3                   	ret
  c5:	8d 76 00             	lea    0x0(%esi),%esi
  c8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  cf:	00 

000000d0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
  d0:	55                   	push   %ebp
  d1:	89 e5                	mov    %esp,%ebp
  d3:	53                   	push   %ebx
  d4:	8b 55 08             	mov    0x8(%ebp),%edx
  d7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
  da:	0f b6 02             	movzbl (%edx),%eax
  dd:	84 c0                	test   %al,%al
  df:	75 2d                	jne    10e <strcmp+0x3e>
  e1:	eb 4a                	jmp    12d <strcmp+0x5d>
  e3:	eb 1b                	jmp    100 <strcmp+0x30>
  e5:	8d 76 00             	lea    0x0(%esi),%esi
  e8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  ef:	00 
  f0:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  f7:	00 
  f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
  ff:	00 
 100:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 104:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 107:	84 c0                	test   %al,%al
 109:	74 15                	je     120 <strcmp+0x50>
 10b:	83 c1 01             	add    $0x1,%ecx
 10e:	0f b6 19             	movzbl (%ecx),%ebx
 111:	38 c3                	cmp    %al,%bl
 113:	74 eb                	je     100 <strcmp+0x30>
  return (uchar)*p - (uchar)*q;
 115:	29 d8                	sub    %ebx,%eax
}
 117:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 11a:	c9                   	leave
 11b:	c3                   	ret
 11c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  return (uchar)*p - (uchar)*q;
 120:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 124:	31 c0                	xor    %eax,%eax
 126:	29 d8                	sub    %ebx,%eax
}
 128:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 12b:	c9                   	leave
 12c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
 12d:	0f b6 19             	movzbl (%ecx),%ebx
 130:	31 c0                	xor    %eax,%eax
 132:	eb e1                	jmp    115 <strcmp+0x45>
 134:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 138:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 13f:	00 

00000140 <strlen>:

uint
strlen(const char *s)
{
 140:	55                   	push   %ebp
 141:	89 e5                	mov    %esp,%ebp
 143:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 146:	80 3a 00             	cmpb   $0x0,(%edx)
 149:	74 15                	je     160 <strlen+0x20>
 14b:	31 c0                	xor    %eax,%eax
 14d:	8d 76 00             	lea    0x0(%esi),%esi
 150:	83 c0 01             	add    $0x1,%eax
 153:	89 c1                	mov    %eax,%ecx
 155:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 159:	75 f5                	jne    150 <strlen+0x10>
    ;
  return n;
}
 15b:	89 c8                	mov    %ecx,%eax
 15d:	5d                   	pop    %ebp
 15e:	c3                   	ret
 15f:	90                   	nop
  for(n = 0; s[n]; n++)
 160:	31 c9                	xor    %ecx,%ecx
}
 162:	5d                   	pop    %ebp
 163:	89 c8                	mov    %ecx,%eax
 165:	c3                   	ret
 166:	66 90                	xchg   %ax,%ax
 168:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 16f:	00 

00000170 <memset>:

void*
memset(void *dst, int c, uint n)
{
 170:	55                   	push   %ebp
 171:	89 e5                	mov    %esp,%ebp
 173:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 174:	8b 4d 10             	mov    0x10(%ebp),%ecx
 177:	8b 45 0c             	mov    0xc(%ebp),%eax
 17a:	8b 7d 08             	mov    0x8(%ebp),%edi
 17d:	fc                   	cld
 17e:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 180:	8b 45 08             	mov    0x8(%ebp),%eax
 183:	8b 7d fc             	mov    -0x4(%ebp),%edi
 186:	c9                   	leave
 187:	c3                   	ret
 188:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 18f:	00 

00000190 <strchr>:

char*
strchr(const char *s, char c)
{
 190:	55                   	push   %ebp
 191:	89 e5                	mov    %esp,%ebp
 193:	8b 45 08             	mov    0x8(%ebp),%eax
 196:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 19a:	0f b6 10             	movzbl (%eax),%edx
 19d:	84 d2                	test   %dl,%dl
 19f:	75 1a                	jne    1bb <strchr+0x2b>
 1a1:	eb 25                	jmp    1c8 <strchr+0x38>
 1a3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 1a8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1af:	00 
 1b0:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 1b4:	83 c0 01             	add    $0x1,%eax
 1b7:	84 d2                	test   %dl,%dl
 1b9:	74 0d                	je     1c8 <strchr+0x38>
    if(*s == c)
 1bb:	38 d1                	cmp    %dl,%cl
 1bd:	75 f1                	jne    1b0 <strchr+0x20>
      return (char*)s;
  return 0;
}
 1bf:	5d                   	pop    %ebp
 1c0:	c3                   	ret
 1c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 1c8:	31 c0                	xor    %eax,%eax
}
 1ca:	5d                   	pop    %ebp
 1cb:	c3                   	ret
 1cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000001d0 <gets>:

char*
gets(char *buf, int max)
{
 1d0:	55                   	push   %ebp
 1d1:	89 e5                	mov    %esp,%ebp
 1d3:	57                   	push   %edi
 1d4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 1d5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 1d8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 1d9:	31 db                	xor    %ebx,%ebx
{
 1db:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 1de:	eb 27                	jmp    207 <gets+0x37>
    cc = read(0, &c, 1);
 1e0:	83 ec 04             	sub    $0x4,%esp
 1e3:	6a 01                	push   $0x1
 1e5:	57                   	push   %edi
 1e6:	6a 00                	push   $0x0
 1e8:	e8 3e 01 00 00       	call   32b <read>
    if(cc < 1)
 1ed:	83 c4 10             	add    $0x10,%esp
 1f0:	85 c0                	test   %eax,%eax
 1f2:	7e 1d                	jle    211 <gets+0x41>
      break;
    buf[i++] = c;
 1f4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 1f8:	8b 55 08             	mov    0x8(%ebp),%edx
 1fb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 1ff:	3c 0a                	cmp    $0xa,%al
 201:	74 1d                	je     220 <gets+0x50>
 203:	3c 0d                	cmp    $0xd,%al
 205:	74 19                	je     220 <gets+0x50>
  for(i=0; i+1 < max; ){
 207:	89 de                	mov    %ebx,%esi
 209:	83 c3 01             	add    $0x1,%ebx
 20c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 20f:	7c cf                	jl     1e0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 211:	8b 45 08             	mov    0x8(%ebp),%eax
 214:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 218:	8d 65 f4             	lea    -0xc(%ebp),%esp
 21b:	5b                   	pop    %ebx
 21c:	5e                   	pop    %esi
 21d:	5f                   	pop    %edi
 21e:	5d                   	pop    %ebp
 21f:	c3                   	ret
  buf[i] = '\0';
 220:	8b 45 08             	mov    0x8(%ebp),%eax
    buf[i++] = c;
 223:	89 de                	mov    %ebx,%esi
  buf[i] = '\0';
 225:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 229:	8d 65 f4             	lea    -0xc(%ebp),%esp
 22c:	5b                   	pop    %ebx
 22d:	5e                   	pop    %esi
 22e:	5f                   	pop    %edi
 22f:	5d                   	pop    %ebp
 230:	c3                   	ret
 231:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 238:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 23f:	00 

00000240 <stat>:

int
stat(const char *n, struct stat *st)
{
 240:	55                   	push   %ebp
 241:	89 e5                	mov    %esp,%ebp
 243:	56                   	push   %esi
 244:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 245:	83 ec 08             	sub    $0x8,%esp
 248:	6a 00                	push   $0x0
 24a:	ff 75 08             	push   0x8(%ebp)
 24d:	e8 01 01 00 00       	call   353 <open>
  if(fd < 0)
 252:	83 c4 10             	add    $0x10,%esp
 255:	85 c0                	test   %eax,%eax
 257:	78 27                	js     280 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 259:	83 ec 08             	sub    $0x8,%esp
 25c:	ff 75 0c             	push   0xc(%ebp)
 25f:	89 c3                	mov    %eax,%ebx
 261:	50                   	push   %eax
 262:	e8 04 01 00 00       	call   36b <fstat>
  close(fd);
 267:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 26a:	89 c6                	mov    %eax,%esi
  close(fd);
 26c:	e8 ca 00 00 00       	call   33b <close>
  return r;
 271:	83 c4 10             	add    $0x10,%esp
}
 274:	8d 65 f8             	lea    -0x8(%ebp),%esp
 277:	89 f0                	mov    %esi,%eax
 279:	5b                   	pop    %ebx
 27a:	5e                   	pop    %esi
 27b:	5d                   	pop    %ebp
 27c:	c3                   	ret
 27d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 280:	be ff ff ff ff       	mov    $0xffffffff,%esi
 285:	eb ed                	jmp    274 <stat+0x34>
 287:	90                   	nop
 288:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 28f:	00 

00000290 <atoi>:

int
atoi(const char *s)
{
 290:	55                   	push   %ebp
 291:	89 e5                	mov    %esp,%ebp
 293:	53                   	push   %ebx
 294:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 297:	0f be 02             	movsbl (%edx),%eax
 29a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 29d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 2a0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 2a5:	77 2e                	ja     2d5 <atoi+0x45>
 2a7:	eb 17                	jmp    2c0 <atoi+0x30>
 2a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2b0:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 2b7:	00 
 2b8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 2bf:	00 
    n = n*10 + *s++ - '0';
 2c0:	83 c2 01             	add    $0x1,%edx
 2c3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 2c6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 2ca:	0f be 02             	movsbl (%edx),%eax
 2cd:	8d 58 d0             	lea    -0x30(%eax),%ebx
 2d0:	80 fb 09             	cmp    $0x9,%bl
 2d3:	76 eb                	jbe    2c0 <atoi+0x30>
  return n;
}
 2d5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2d8:	89 c8                	mov    %ecx,%eax
 2da:	c9                   	leave
 2db:	c3                   	ret
 2dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000002e0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 2e0:	55                   	push   %ebp
 2e1:	89 e5                	mov    %esp,%ebp
 2e3:	57                   	push   %edi
 2e4:	8b 45 10             	mov    0x10(%ebp),%eax
 2e7:	8b 55 08             	mov    0x8(%ebp),%edx
 2ea:	56                   	push   %esi
 2eb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 2ee:	85 c0                	test   %eax,%eax
 2f0:	7e 13                	jle    305 <memmove+0x25>
 2f2:	01 d0                	add    %edx,%eax
  dst = vdst;
 2f4:	89 d7                	mov    %edx,%edi
 2f6:	66 90                	xchg   %ax,%ax
 2f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 2ff:	00 
    *dst++ = *src++;
 300:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 301:	39 f8                	cmp    %edi,%eax
 303:	75 fb                	jne    300 <memmove+0x20>
  return vdst;
}
 305:	5e                   	pop    %esi
 306:	89 d0                	mov    %edx,%eax
 308:	5f                   	pop    %edi
 309:	5d                   	pop    %ebp
 30a:	c3                   	ret

0000030b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 30b:	b8 01 00 00 00       	mov    $0x1,%eax
 310:	cd 40                	int    $0x40
 312:	c3                   	ret

00000313 <exit>:
SYSCALL(exit)
 313:	b8 02 00 00 00       	mov    $0x2,%eax
 318:	cd 40                	int    $0x40
 31a:	c3                   	ret

0000031b <wait>:
SYSCALL(wait)
 31b:	b8 03 00 00 00       	mov    $0x3,%eax
 320:	cd 40                	int    $0x40
 322:	c3                   	ret

00000323 <pipe>:
SYSCALL(pipe)
 323:	b8 04 00 00 00       	mov    $0x4,%eax
 328:	cd 40                	int    $0x40
 32a:	c3                   	ret

0000032b <read>:
SYSCALL(read)
 32b:	b8 05 00 00 00       	mov    $0x5,%eax
 330:	cd 40                	int    $0x40
 332:	c3                   	ret

00000333 <write>:
SYSCALL(write)
 333:	b8 10 00 00 00       	mov    $0x10,%eax
 338:	cd 40                	int    $0x40
 33a:	c3                   	ret

0000033b <close>:
SYSCALL(close)
 33b:	b8 15 00 00 00       	mov    $0x15,%eax
 340:	cd 40                	int    $0x40
 342:	c3                   	ret

00000343 <kill>:
SYSCALL(kill)
 343:	b8 06 00 00 00       	mov    $0x6,%eax
 348:	cd 40                	int    $0x40
 34a:	c3                   	ret

0000034b <exec>:
SYSCALL(exec)
 34b:	b8 07 00 00 00       	mov    $0x7,%eax
 350:	cd 40                	int    $0x40
 352:	c3                   	ret

00000353 <open>:
SYSCALL(open)
 353:	b8 0f 00 00 00       	mov    $0xf,%eax
 358:	cd 40                	int    $0x40
 35a:	c3                   	ret

0000035b <mknod>:
SYSCALL(mknod)
 35b:	b8 11 00 00 00       	mov    $0x11,%eax
 360:	cd 40                	int    $0x40
 362:	c3                   	ret

00000363 <unlink>:
SYSCALL(unlink)
 363:	b8 12 00 00 00       	mov    $0x12,%eax
 368:	cd 40                	int    $0x40
 36a:	c3                   	ret

0000036b <fstat>:
SYSCALL(fstat)
 36b:	b8 08 00 00 00       	mov    $0x8,%eax
 370:	cd 40                	int    $0x40
 372:	c3                   	ret

00000373 <link>:
SYSCALL(link)
 373:	b8 13 00 00 00       	mov    $0x13,%eax
 378:	cd 40                	int    $0x40
 37a:	c3                   	ret

0000037b <mkdir>:
SYSCALL(mkdir)
 37b:	b8 14 00 00 00       	mov    $0x14,%eax
 380:	cd 40                	int    $0x40
 382:	c3                   	ret

00000383 <chdir>:
SYSCALL(chdir)
 383:	b8 09 00 00 00       	mov    $0x9,%eax
 388:	cd 40                	int    $0x40
 38a:	c3                   	ret

0000038b <dup>:
SYSCALL(dup)
 38b:	b8 0a 00 00 00       	mov    $0xa,%eax
 390:	cd 40                	int    $0x40
 392:	c3                   	ret

00000393 <getpid>:
SYSCALL(getpid)
 393:	b8 0b 00 00 00       	mov    $0xb,%eax
 398:	cd 40                	int    $0x40
 39a:	c3                   	ret

0000039b <getreadcount>:
SYSCALL(getreadcount)
 39b:	b8 16 00 00 00       	mov    $0x16,%eax
 3a0:	cd 40                	int    $0x40
 3a2:	c3                   	ret

000003a3 <sbrk>:
SYSCALL(sbrk)
 3a3:	b8 0c 00 00 00       	mov    $0xc,%eax
 3a8:	cd 40                	int    $0x40
 3aa:	c3                   	ret

000003ab <sleep>:
SYSCALL(sleep)
 3ab:	b8 0d 00 00 00       	mov    $0xd,%eax
 3b0:	cd 40                	int    $0x40
 3b2:	c3                   	ret

000003b3 <uptime>:
SYSCALL(uptime)
 3b3:	b8 0e 00 00 00       	mov    $0xe,%eax
 3b8:	cd 40                	int    $0x40
 3ba:	c3                   	ret
 3bb:	66 90                	xchg   %ax,%ax
 3bd:	66 90                	xchg   %ax,%ax
 3bf:	90                   	nop

000003c0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	57                   	push   %edi
 3c4:	56                   	push   %esi
 3c5:	53                   	push   %ebx
 3c6:	89 cb                	mov    %ecx,%ebx
 3c8:	83 ec 3c             	sub    $0x3c,%esp
 3cb:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 3ce:	85 d2                	test   %edx,%edx
 3d0:	0f 89 9a 00 00 00    	jns    470 <printint+0xb0>
 3d6:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 3da:	0f 84 90 00 00 00    	je     470 <printint+0xb0>
    neg = 1;
    x = -xx;
 3e0:	f7 da                	neg    %edx
    neg = 1;
 3e2:	b8 01 00 00 00       	mov    $0x1,%eax
 3e7:	89 45 c0             	mov    %eax,-0x40(%ebp)
 3ea:	89 d1                	mov    %edx,%ecx
  } else {
    x = xx;
  }

  i = 0;
 3ec:	31 f6                	xor    %esi,%esi
 3ee:	66 90                	xchg   %ax,%ax
 3f0:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3f7:	00 
 3f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 3ff:	00 
  do{
    buf[i++] = digits[x % base];
 400:	89 c8                	mov    %ecx,%eax
 402:	31 d2                	xor    %edx,%edx
 404:	89 f7                	mov    %esi,%edi
 406:	f7 f3                	div    %ebx
 408:	8d 76 01             	lea    0x1(%esi),%esi
  }while((x /= base) != 0);
 40b:	39 d9                	cmp    %ebx,%ecx
    buf[i++] = digits[x % base];
 40d:	0f b6 92 64 08 00 00 	movzbl 0x864(%edx),%edx
  }while((x /= base) != 0);
 414:	89 c1                	mov    %eax,%ecx
    buf[i++] = digits[x % base];
 416:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
 41a:	73 e4                	jae    400 <printint+0x40>
  if(neg)
 41c:	8b 45 c0             	mov    -0x40(%ebp),%eax
 41f:	85 c0                	test   %eax,%eax
 421:	74 07                	je     42a <printint+0x6a>
    buf[i++] = '-';
 423:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
 428:	89 f7                	mov    %esi,%edi

  while(--i >= 0)
 42a:	8d 74 3d d8          	lea    -0x28(%ebp,%edi,1),%esi
 42e:	8b 7d c4             	mov    -0x3c(%ebp),%edi
 431:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 434:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 438:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 43f:	00 
    putc(fd, buf[i]);
 440:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 443:	83 ec 04             	sub    $0x4,%esp
  while(--i >= 0)
 446:	83 ee 01             	sub    $0x1,%esi
 449:	88 45 d7             	mov    %al,-0x29(%ebp)
  write(fd, &c, 1);
 44c:	8d 45 d7             	lea    -0x29(%ebp),%eax
 44f:	6a 01                	push   $0x1
 451:	50                   	push   %eax
 452:	57                   	push   %edi
 453:	e8 db fe ff ff       	call   333 <write>
  while(--i >= 0)
 458:	83 c4 10             	add    $0x10,%esp
 45b:	39 f3                	cmp    %esi,%ebx
 45d:	75 e1                	jne    440 <printint+0x80>
}
 45f:	8d 65 f4             	lea    -0xc(%ebp),%esp
 462:	5b                   	pop    %ebx
 463:	5e                   	pop    %esi
 464:	5f                   	pop    %edi
 465:	5d                   	pop    %ebp
 466:	c3                   	ret
 467:	90                   	nop
 468:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 46f:	00 
  neg = 0;
 470:	31 c0                	xor    %eax,%eax
 472:	e9 70 ff ff ff       	jmp    3e7 <printint+0x27>
 477:	90                   	nop
 478:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 47f:	00 

00000480 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 480:	55                   	push   %ebp
 481:	89 e5                	mov    %esp,%ebp
 483:	57                   	push   %edi
 484:	56                   	push   %esi
 485:	53                   	push   %ebx
 486:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 489:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 48c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 48f:	0f b6 13             	movzbl (%ebx),%edx
 492:	83 c3 01             	add    $0x1,%ebx
 495:	84 d2                	test   %dl,%dl
 497:	0f 84 a0 00 00 00    	je     53d <printf+0xbd>
 49d:	8d 45 10             	lea    0x10(%ebp),%eax
 4a0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c = fmt[i] & 0xff;
 4a3:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 4a6:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 4a9:	eb 28                	jmp    4d3 <printf+0x53>
 4ab:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
 4b0:	83 ec 04             	sub    $0x4,%esp
 4b3:	8d 45 e7             	lea    -0x19(%ebp),%eax
 4b6:	88 55 e7             	mov    %dl,-0x19(%ebp)
  for(i = 0; fmt[i]; i++){
 4b9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 4bc:	6a 01                	push   $0x1
 4be:	50                   	push   %eax
 4bf:	56                   	push   %esi
 4c0:	e8 6e fe ff ff       	call   333 <write>
  for(i = 0; fmt[i]; i++){
 4c5:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 4c9:	83 c4 10             	add    $0x10,%esp
 4cc:	84 d2                	test   %dl,%dl
 4ce:	74 6d                	je     53d <printf+0xbd>
    c = fmt[i] & 0xff;
 4d0:	0f b6 c2             	movzbl %dl,%eax
      if(c == '%'){
 4d3:	83 f8 25             	cmp    $0x25,%eax
 4d6:	75 d8                	jne    4b0 <printf+0x30>
  for(i = 0; fmt[i]; i++){
 4d8:	0f b6 13             	movzbl (%ebx),%edx
 4db:	84 d2                	test   %dl,%dl
 4dd:	74 5e                	je     53d <printf+0xbd>
    c = fmt[i] & 0xff;
 4df:	0f b6 c2             	movzbl %dl,%eax
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
 4e2:	80 fa 25             	cmp    $0x25,%dl
 4e5:	0f 84 25 01 00 00    	je     610 <printf+0x190>
 4eb:	83 e8 63             	sub    $0x63,%eax
 4ee:	83 f8 15             	cmp    $0x15,%eax
 4f1:	77 0d                	ja     500 <printf+0x80>
 4f3:	ff 24 85 0c 08 00 00 	jmp    *0x80c(,%eax,4)
 4fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 500:	83 ec 04             	sub    $0x4,%esp
 503:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 506:	88 55 d0             	mov    %dl,-0x30(%ebp)
        ap++;
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
 509:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
  write(fd, &c, 1);
 50d:	6a 01                	push   $0x1
 50f:	51                   	push   %ecx
 510:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
 513:	56                   	push   %esi
 514:	e8 1a fe ff ff       	call   333 <write>
        putc(fd, c);
 519:	0f b6 55 d0          	movzbl -0x30(%ebp),%edx
  write(fd, &c, 1);
 51d:	83 c4 0c             	add    $0xc,%esp
 520:	88 55 e7             	mov    %dl,-0x19(%ebp)
 523:	6a 01                	push   $0x1
 525:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
 528:	51                   	push   %ecx
  for(i = 0; fmt[i]; i++){
 529:	83 c3 02             	add    $0x2,%ebx
  write(fd, &c, 1);
 52c:	56                   	push   %esi
 52d:	e8 01 fe ff ff       	call   333 <write>
  for(i = 0; fmt[i]; i++){
 532:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 536:	83 c4 10             	add    $0x10,%esp
 539:	84 d2                	test   %dl,%dl
 53b:	75 93                	jne    4d0 <printf+0x50>
      }
      state = 0;
    }
  }
}
 53d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 540:	5b                   	pop    %ebx
 541:	5e                   	pop    %esi
 542:	5f                   	pop    %edi
 543:	5d                   	pop    %ebp
 544:	c3                   	ret
 545:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 548:	83 ec 0c             	sub    $0xc,%esp
 54b:	8b 17                	mov    (%edi),%edx
 54d:	b9 10 00 00 00       	mov    $0x10,%ecx
 552:	89 f0                	mov    %esi,%eax
 554:	6a 00                	push   $0x0
 556:	e8 65 fe ff ff       	call   3c0 <printint>
  for(i = 0; fmt[i]; i++){
 55b:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 55f:	83 c3 02             	add    $0x2,%ebx
 562:	83 c4 10             	add    $0x10,%esp
 565:	84 d2                	test   %dl,%dl
 567:	74 d4                	je     53d <printf+0xbd>
        ap++;
 569:	83 c7 04             	add    $0x4,%edi
 56c:	e9 5f ff ff ff       	jmp    4d0 <printf+0x50>
 571:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 578:	8b 07                	mov    (%edi),%eax
        ap++;
 57a:	83 c7 04             	add    $0x4,%edi
        if(s == 0)
 57d:	85 c0                	test   %eax,%eax
 57f:	0f 84 9b 00 00 00    	je     620 <printf+0x1a0>
        while(*s != 0){
 585:	0f b6 10             	movzbl (%eax),%edx
 588:	84 d2                	test   %dl,%dl
 58a:	0f 84 a2 00 00 00    	je     632 <printf+0x1b2>
 590:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 593:	89 c7                	mov    %eax,%edi
 595:	89 d0                	mov    %edx,%eax
 597:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 59a:	89 fb                	mov    %edi,%ebx
 59c:	8d 7d e7             	lea    -0x19(%ebp),%edi
 59f:	90                   	nop
  write(fd, &c, 1);
 5a0:	83 ec 04             	sub    $0x4,%esp
 5a3:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
 5a6:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 5a9:	6a 01                	push   $0x1
 5ab:	57                   	push   %edi
 5ac:	56                   	push   %esi
 5ad:	e8 81 fd ff ff       	call   333 <write>
        while(*s != 0){
 5b2:	0f b6 03             	movzbl (%ebx),%eax
 5b5:	83 c4 10             	add    $0x10,%esp
 5b8:	84 c0                	test   %al,%al
 5ba:	75 e4                	jne    5a0 <printf+0x120>
 5bc:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  for(i = 0; fmt[i]; i++){
 5bf:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 5c3:	83 c3 02             	add    $0x2,%ebx
 5c6:	84 d2                	test   %dl,%dl
 5c8:	0f 85 d5 fe ff ff    	jne    4a3 <printf+0x23>
 5ce:	e9 6a ff ff ff       	jmp    53d <printf+0xbd>
 5d3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
 5d8:	83 ec 0c             	sub    $0xc,%esp
 5db:	8b 17                	mov    (%edi),%edx
 5dd:	b9 0a 00 00 00       	mov    $0xa,%ecx
 5e2:	89 f0                	mov    %esi,%eax
 5e4:	6a 01                	push   $0x1
 5e6:	e8 d5 fd ff ff       	call   3c0 <printint>
  for(i = 0; fmt[i]; i++){
 5eb:	e9 6b ff ff ff       	jmp    55b <printf+0xdb>
        putc(fd, *ap);
 5f0:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 5f2:	83 ec 04             	sub    $0x4,%esp
 5f5:	8d 4d e7             	lea    -0x19(%ebp),%ecx
        putc(fd, *ap);
 5f8:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 5fb:	6a 01                	push   $0x1
 5fd:	51                   	push   %ecx
 5fe:	56                   	push   %esi
 5ff:	e8 2f fd ff ff       	call   333 <write>
 604:	e9 52 ff ff ff       	jmp    55b <printf+0xdb>
 609:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 610:	83 ec 04             	sub    $0x4,%esp
 613:	88 55 e7             	mov    %dl,-0x19(%ebp)
 616:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 619:	6a 01                	push   $0x1
 61b:	e9 08 ff ff ff       	jmp    528 <printf+0xa8>
          s = "(null)";
 620:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 623:	b8 28 00 00 00       	mov    $0x28,%eax
 628:	bf 02 08 00 00       	mov    $0x802,%edi
 62d:	e9 65 ff ff ff       	jmp    597 <printf+0x117>
  for(i = 0; fmt[i]; i++){
 632:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 636:	83 c3 02             	add    $0x2,%ebx
 639:	84 d2                	test   %dl,%dl
 63b:	0f 85 8f fe ff ff    	jne    4d0 <printf+0x50>
 641:	e9 f7 fe ff ff       	jmp    53d <printf+0xbd>
 646:	66 90                	xchg   %ax,%ax
 648:	66 90                	xchg   %ax,%ax
 64a:	66 90                	xchg   %ax,%ax
 64c:	66 90                	xchg   %ax,%ax
 64e:	66 90                	xchg   %ax,%ax
 650:	66 90                	xchg   %ax,%ax
 652:	66 90                	xchg   %ax,%ax
 654:	66 90                	xchg   %ax,%ax
 656:	66 90                	xchg   %ax,%ax
 658:	66 90                	xchg   %ax,%ax
 65a:	66 90                	xchg   %ax,%ax
 65c:	66 90                	xchg   %ax,%ax
 65e:	66 90                	xchg   %ax,%ax

00000660 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 660:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 661:	a1 1c 0b 00 00       	mov    0xb1c,%eax
{
 666:	89 e5                	mov    %esp,%ebp
 668:	57                   	push   %edi
 669:	56                   	push   %esi
 66a:	53                   	push   %ebx
 66b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 66e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 671:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 678:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 67f:	00 
 680:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 682:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 684:	39 ca                	cmp    %ecx,%edx
 686:	73 30                	jae    6b8 <free+0x58>
 688:	39 c1                	cmp    %eax,%ecx
 68a:	72 04                	jb     690 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 68c:	39 c2                	cmp    %eax,%edx
 68e:	72 f0                	jb     680 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 690:	8b 73 fc             	mov    -0x4(%ebx),%esi
 693:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 696:	39 f8                	cmp    %edi,%eax
 698:	74 36                	je     6d0 <free+0x70>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 69a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 69d:	8b 42 04             	mov    0x4(%edx),%eax
 6a0:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 6a3:	39 f1                	cmp    %esi,%ecx
 6a5:	74 40                	je     6e7 <free+0x87>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 6a7:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 6a9:	5b                   	pop    %ebx
  freep = p;
 6aa:	89 15 1c 0b 00 00    	mov    %edx,0xb1c
}
 6b0:	5e                   	pop    %esi
 6b1:	5f                   	pop    %edi
 6b2:	5d                   	pop    %ebp
 6b3:	c3                   	ret
 6b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6b8:	39 c2                	cmp    %eax,%edx
 6ba:	72 c4                	jb     680 <free+0x20>
 6bc:	39 c1                	cmp    %eax,%ecx
 6be:	73 c0                	jae    680 <free+0x20>
  if(bp + bp->s.size == p->s.ptr){
 6c0:	8b 73 fc             	mov    -0x4(%ebx),%esi
 6c3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 6c6:	39 f8                	cmp    %edi,%eax
 6c8:	75 d0                	jne    69a <free+0x3a>
 6ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
 6d0:	03 70 04             	add    0x4(%eax),%esi
 6d3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 6d6:	8b 02                	mov    (%edx),%eax
 6d8:	8b 00                	mov    (%eax),%eax
 6da:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 6dd:	8b 42 04             	mov    0x4(%edx),%eax
 6e0:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 6e3:	39 f1                	cmp    %esi,%ecx
 6e5:	75 c0                	jne    6a7 <free+0x47>
    p->s.size += bp->s.size;
 6e7:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 6ea:	89 15 1c 0b 00 00    	mov    %edx,0xb1c
    p->s.size += bp->s.size;
 6f0:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 6f3:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 6f6:	89 0a                	mov    %ecx,(%edx)
}
 6f8:	5b                   	pop    %ebx
 6f9:	5e                   	pop    %esi
 6fa:	5f                   	pop    %edi
 6fb:	5d                   	pop    %ebp
 6fc:	c3                   	ret
 6fd:	8d 76 00             	lea    0x0(%esi),%esi

00000700 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 700:	55                   	push   %ebp
 701:	89 e5                	mov    %esp,%ebp
 703:	57                   	push   %edi
 704:	56                   	push   %esi
 705:	53                   	push   %ebx
 706:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 709:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 70c:	8b 15 1c 0b 00 00    	mov    0xb1c,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 712:	8d 78 07             	lea    0x7(%eax),%edi
 715:	c1 ef 03             	shr    $0x3,%edi
 718:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 71b:	85 d2                	test   %edx,%edx
 71d:	0f 84 8d 00 00 00    	je     7b0 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 723:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 725:	8b 48 04             	mov    0x4(%eax),%ecx
 728:	39 f9                	cmp    %edi,%ecx
 72a:	73 64                	jae    790 <malloc+0x90>
  if(nu < 4096)
 72c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 731:	39 df                	cmp    %ebx,%edi
 733:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 736:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 73d:	eb 0a                	jmp    749 <malloc+0x49>
 73f:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 740:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 742:	8b 48 04             	mov    0x4(%eax),%ecx
 745:	39 f9                	cmp    %edi,%ecx
 747:	73 47                	jae    790 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 749:	89 c2                	mov    %eax,%edx
 74b:	39 05 1c 0b 00 00    	cmp    %eax,0xb1c
 751:	75 ed                	jne    740 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
 753:	83 ec 0c             	sub    $0xc,%esp
 756:	56                   	push   %esi
 757:	e8 47 fc ff ff       	call   3a3 <sbrk>
  if(p == (char*)-1)
 75c:	83 c4 10             	add    $0x10,%esp
 75f:	83 f8 ff             	cmp    $0xffffffff,%eax
 762:	74 1c                	je     780 <malloc+0x80>
  hp->s.size = nu;
 764:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 767:	83 ec 0c             	sub    $0xc,%esp
 76a:	83 c0 08             	add    $0x8,%eax
 76d:	50                   	push   %eax
 76e:	e8 ed fe ff ff       	call   660 <free>
  return freep;
 773:	8b 15 1c 0b 00 00    	mov    0xb1c,%edx
      if((p = morecore(nunits)) == 0)
 779:	83 c4 10             	add    $0x10,%esp
 77c:	85 d2                	test   %edx,%edx
 77e:	75 c0                	jne    740 <malloc+0x40>
        return 0;
  }
}
 780:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 783:	31 c0                	xor    %eax,%eax
}
 785:	5b                   	pop    %ebx
 786:	5e                   	pop    %esi
 787:	5f                   	pop    %edi
 788:	5d                   	pop    %ebp
 789:	c3                   	ret
 78a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 790:	39 cf                	cmp    %ecx,%edi
 792:	74 4c                	je     7e0 <malloc+0xe0>
        p->s.size -= nunits;
 794:	29 f9                	sub    %edi,%ecx
 796:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 799:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 79c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 79f:	89 15 1c 0b 00 00    	mov    %edx,0xb1c
}
 7a5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 7a8:	83 c0 08             	add    $0x8,%eax
}
 7ab:	5b                   	pop    %ebx
 7ac:	5e                   	pop    %esi
 7ad:	5f                   	pop    %edi
 7ae:	5d                   	pop    %ebp
 7af:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
 7b0:	c7 05 1c 0b 00 00 20 	movl   $0xb20,0xb1c
 7b7:	0b 00 00 
    base.s.size = 0;
 7ba:	b8 20 0b 00 00       	mov    $0xb20,%eax
    base.s.ptr = freep = prevp = &base;
 7bf:	c7 05 20 0b 00 00 20 	movl   $0xb20,0xb20
 7c6:	0b 00 00 
    base.s.size = 0;
 7c9:	c7 05 24 0b 00 00 00 	movl   $0x0,0xb24
 7d0:	00 00 00 
    if(p->s.size >= nunits){
 7d3:	e9 54 ff ff ff       	jmp    72c <malloc+0x2c>
 7d8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 7df:	00 
        prevp->s.ptr = p->s.ptr;
 7e0:	8b 08                	mov    (%eax),%ecx
 7e2:	89 0a                	mov    %ecx,(%edx)
 7e4:	eb b9                	jmp    79f <malloc+0x9f>
