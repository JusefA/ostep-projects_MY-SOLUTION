
_cat:     file format elf32-i386


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
   f:	be 01 00 00 00       	mov    $0x1,%esi
  14:	53                   	push   %ebx
  15:	51                   	push   %ecx
  16:	83 ec 18             	sub    $0x18,%esp
  19:	8b 01                	mov    (%ecx),%eax
  1b:	8b 59 04             	mov    0x4(%ecx),%ebx
  1e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  21:	83 c3 04             	add    $0x4,%ebx
  int fd, i;

  if(argc <= 1){
  24:	83 f8 01             	cmp    $0x1,%eax
  27:	7e 54                	jle    7d <main+0x7d>
  29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    cat(0);
    exit();
  }

  for(i = 1; i < argc; i++){
    if((fd = open(argv[i], 0)) < 0){
  30:	83 ec 08             	sub    $0x8,%esp
  33:	6a 00                	push   $0x0
  35:	ff 33                	push   (%ebx)
  37:	e8 97 03 00 00       	call   3d3 <open>
  3c:	83 c4 10             	add    $0x10,%esp
  3f:	89 c7                	mov    %eax,%edi
  41:	85 c0                	test   %eax,%eax
  43:	78 24                	js     69 <main+0x69>
      printf(1, "cat: cannot open %s\n", argv[i]);
      exit();
    }
    cat(fd);
  45:	83 ec 0c             	sub    $0xc,%esp
  for(i = 1; i < argc; i++){
  48:	83 c6 01             	add    $0x1,%esi
  4b:	83 c3 04             	add    $0x4,%ebx
    cat(fd);
  4e:	50                   	push   %eax
  4f:	e8 3c 00 00 00       	call   90 <cat>
    close(fd);
  54:	89 3c 24             	mov    %edi,(%esp)
  57:	e8 5f 03 00 00       	call   3bb <close>
  for(i = 1; i < argc; i++){
  5c:	83 c4 10             	add    $0x10,%esp
  5f:	39 75 e4             	cmp    %esi,-0x1c(%ebp)
  62:	75 cc                	jne    30 <main+0x30>
  }
  exit();
  64:	e8 2a 03 00 00       	call   393 <exit>
      printf(1, "cat: cannot open %s\n", argv[i]);
  69:	50                   	push   %eax
  6a:	ff 33                	push   (%ebx)
  6c:	68 8b 08 00 00       	push   $0x88b
  71:	6a 01                	push   $0x1
  73:	e8 88 04 00 00       	call   500 <printf>
      exit();
  78:	e8 16 03 00 00       	call   393 <exit>
    cat(0);
  7d:	83 ec 0c             	sub    $0xc,%esp
  80:	6a 00                	push   $0x0
  82:	e8 09 00 00 00       	call   90 <cat>
    exit();
  87:	e8 07 03 00 00       	call   393 <exit>
  8c:	66 90                	xchg   %ax,%ax
  8e:	66 90                	xchg   %ax,%ax

00000090 <cat>:
{
  90:	55                   	push   %ebp
  91:	89 e5                	mov    %esp,%ebp
  93:	56                   	push   %esi
  94:	53                   	push   %ebx
  95:	8b 75 08             	mov    0x8(%ebp),%esi
  while((n = read(fd, buf, sizeof(buf))) > 0) {
  98:	eb 1d                	jmp    b7 <cat+0x27>
  9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if (write(1, buf, n) != n) {
  a0:	83 ec 04             	sub    $0x4,%esp
  a3:	53                   	push   %ebx
  a4:	68 00 0c 00 00       	push   $0xc00
  a9:	6a 01                	push   $0x1
  ab:	e8 03 03 00 00       	call   3b3 <write>
  b0:	83 c4 10             	add    $0x10,%esp
  b3:	39 d8                	cmp    %ebx,%eax
  b5:	75 25                	jne    dc <cat+0x4c>
  while((n = read(fd, buf, sizeof(buf))) > 0) {
  b7:	83 ec 04             	sub    $0x4,%esp
  ba:	68 00 02 00 00       	push   $0x200
  bf:	68 00 0c 00 00       	push   $0xc00
  c4:	56                   	push   %esi
  c5:	e8 e1 02 00 00       	call   3ab <read>
  ca:	83 c4 10             	add    $0x10,%esp
  cd:	89 c3                	mov    %eax,%ebx
  cf:	85 c0                	test   %eax,%eax
  d1:	7f cd                	jg     a0 <cat+0x10>
  if(n < 0){
  d3:	75 1b                	jne    f0 <cat+0x60>
}
  d5:	8d 65 f8             	lea    -0x8(%ebp),%esp
  d8:	5b                   	pop    %ebx
  d9:	5e                   	pop    %esi
  da:	5d                   	pop    %ebp
  db:	c3                   	ret
      printf(1, "cat: write error\n");
  dc:	83 ec 08             	sub    $0x8,%esp
  df:	68 68 08 00 00       	push   $0x868
  e4:	6a 01                	push   $0x1
  e6:	e8 15 04 00 00       	call   500 <printf>
      exit();
  eb:	e8 a3 02 00 00       	call   393 <exit>
    printf(1, "cat: read error\n");
  f0:	50                   	push   %eax
  f1:	50                   	push   %eax
  f2:	68 7a 08 00 00       	push   $0x87a
  f7:	6a 01                	push   $0x1
  f9:	e8 02 04 00 00       	call   500 <printf>
    exit();
  fe:	e8 90 02 00 00       	call   393 <exit>
 103:	66 90                	xchg   %ax,%ax
 105:	66 90                	xchg   %ax,%ax
 107:	66 90                	xchg   %ax,%ax
 109:	66 90                	xchg   %ax,%ax
 10b:	66 90                	xchg   %ax,%ax
 10d:	66 90                	xchg   %ax,%ax
 10f:	66 90                	xchg   %ax,%ax
 111:	66 90                	xchg   %ax,%ax
 113:	66 90                	xchg   %ax,%ax
 115:	66 90                	xchg   %ax,%ax
 117:	66 90                	xchg   %ax,%ax
 119:	66 90                	xchg   %ax,%ax
 11b:	66 90                	xchg   %ax,%ax
 11d:	66 90                	xchg   %ax,%ax
 11f:	90                   	nop

00000120 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 120:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 121:	31 c0                	xor    %eax,%eax
{
 123:	89 e5                	mov    %esp,%ebp
 125:	53                   	push   %ebx
 126:	8b 4d 08             	mov    0x8(%ebp),%ecx
 129:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 12c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 130:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 134:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 137:	83 c0 01             	add    $0x1,%eax
 13a:	84 d2                	test   %dl,%dl
 13c:	75 f2                	jne    130 <strcpy+0x10>
    ;
  return os;
}
 13e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 141:	89 c8                	mov    %ecx,%eax
 143:	c9                   	leave
 144:	c3                   	ret
 145:	8d 76 00             	lea    0x0(%esi),%esi
 148:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 14f:	00 

00000150 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 150:	55                   	push   %ebp
 151:	89 e5                	mov    %esp,%ebp
 153:	53                   	push   %ebx
 154:	8b 55 08             	mov    0x8(%ebp),%edx
 157:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 15a:	0f b6 02             	movzbl (%edx),%eax
 15d:	84 c0                	test   %al,%al
 15f:	75 2d                	jne    18e <strcmp+0x3e>
 161:	eb 4a                	jmp    1ad <strcmp+0x5d>
 163:	eb 1b                	jmp    180 <strcmp+0x30>
 165:	8d 76 00             	lea    0x0(%esi),%esi
 168:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 16f:	00 
 170:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 177:	00 
 178:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 17f:	00 
 180:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 184:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 187:	84 c0                	test   %al,%al
 189:	74 15                	je     1a0 <strcmp+0x50>
 18b:	83 c1 01             	add    $0x1,%ecx
 18e:	0f b6 19             	movzbl (%ecx),%ebx
 191:	38 c3                	cmp    %al,%bl
 193:	74 eb                	je     180 <strcmp+0x30>
  return (uchar)*p - (uchar)*q;
 195:	29 d8                	sub    %ebx,%eax
}
 197:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 19a:	c9                   	leave
 19b:	c3                   	ret
 19c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  return (uchar)*p - (uchar)*q;
 1a0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 1a4:	31 c0                	xor    %eax,%eax
 1a6:	29 d8                	sub    %ebx,%eax
}
 1a8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1ab:	c9                   	leave
 1ac:	c3                   	ret
  return (uchar)*p - (uchar)*q;
 1ad:	0f b6 19             	movzbl (%ecx),%ebx
 1b0:	31 c0                	xor    %eax,%eax
 1b2:	eb e1                	jmp    195 <strcmp+0x45>
 1b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1b8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1bf:	00 

000001c0 <strlen>:

uint
strlen(const char *s)
{
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
 1c3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 1c6:	80 3a 00             	cmpb   $0x0,(%edx)
 1c9:	74 15                	je     1e0 <strlen+0x20>
 1cb:	31 c0                	xor    %eax,%eax
 1cd:	8d 76 00             	lea    0x0(%esi),%esi
 1d0:	83 c0 01             	add    $0x1,%eax
 1d3:	89 c1                	mov    %eax,%ecx
 1d5:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 1d9:	75 f5                	jne    1d0 <strlen+0x10>
    ;
  return n;
}
 1db:	89 c8                	mov    %ecx,%eax
 1dd:	5d                   	pop    %ebp
 1de:	c3                   	ret
 1df:	90                   	nop
  for(n = 0; s[n]; n++)
 1e0:	31 c9                	xor    %ecx,%ecx
}
 1e2:	5d                   	pop    %ebp
 1e3:	89 c8                	mov    %ecx,%eax
 1e5:	c3                   	ret
 1e6:	66 90                	xchg   %ax,%ax
 1e8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 1ef:	00 

000001f0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 1f0:	55                   	push   %ebp
 1f1:	89 e5                	mov    %esp,%ebp
 1f3:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 1f4:	8b 4d 10             	mov    0x10(%ebp),%ecx
 1f7:	8b 45 0c             	mov    0xc(%ebp),%eax
 1fa:	8b 7d 08             	mov    0x8(%ebp),%edi
 1fd:	fc                   	cld
 1fe:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 200:	8b 45 08             	mov    0x8(%ebp),%eax
 203:	8b 7d fc             	mov    -0x4(%ebp),%edi
 206:	c9                   	leave
 207:	c3                   	ret
 208:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 20f:	00 

00000210 <strchr>:

char*
strchr(const char *s, char c)
{
 210:	55                   	push   %ebp
 211:	89 e5                	mov    %esp,%ebp
 213:	8b 45 08             	mov    0x8(%ebp),%eax
 216:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 21a:	0f b6 10             	movzbl (%eax),%edx
 21d:	84 d2                	test   %dl,%dl
 21f:	75 1a                	jne    23b <strchr+0x2b>
 221:	eb 25                	jmp    248 <strchr+0x38>
 223:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
 228:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 22f:	00 
 230:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 234:	83 c0 01             	add    $0x1,%eax
 237:	84 d2                	test   %dl,%dl
 239:	74 0d                	je     248 <strchr+0x38>
    if(*s == c)
 23b:	38 d1                	cmp    %dl,%cl
 23d:	75 f1                	jne    230 <strchr+0x20>
      return (char*)s;
  return 0;
}
 23f:	5d                   	pop    %ebp
 240:	c3                   	ret
 241:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 248:	31 c0                	xor    %eax,%eax
}
 24a:	5d                   	pop    %ebp
 24b:	c3                   	ret
 24c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000250 <gets>:

char*
gets(char *buf, int max)
{
 250:	55                   	push   %ebp
 251:	89 e5                	mov    %esp,%ebp
 253:	57                   	push   %edi
 254:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 255:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 258:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 259:	31 db                	xor    %ebx,%ebx
{
 25b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 25e:	eb 27                	jmp    287 <gets+0x37>
    cc = read(0, &c, 1);
 260:	83 ec 04             	sub    $0x4,%esp
 263:	6a 01                	push   $0x1
 265:	57                   	push   %edi
 266:	6a 00                	push   $0x0
 268:	e8 3e 01 00 00       	call   3ab <read>
    if(cc < 1)
 26d:	83 c4 10             	add    $0x10,%esp
 270:	85 c0                	test   %eax,%eax
 272:	7e 1d                	jle    291 <gets+0x41>
      break;
    buf[i++] = c;
 274:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 278:	8b 55 08             	mov    0x8(%ebp),%edx
 27b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 27f:	3c 0a                	cmp    $0xa,%al
 281:	74 1d                	je     2a0 <gets+0x50>
 283:	3c 0d                	cmp    $0xd,%al
 285:	74 19                	je     2a0 <gets+0x50>
  for(i=0; i+1 < max; ){
 287:	89 de                	mov    %ebx,%esi
 289:	83 c3 01             	add    $0x1,%ebx
 28c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 28f:	7c cf                	jl     260 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 291:	8b 45 08             	mov    0x8(%ebp),%eax
 294:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 298:	8d 65 f4             	lea    -0xc(%ebp),%esp
 29b:	5b                   	pop    %ebx
 29c:	5e                   	pop    %esi
 29d:	5f                   	pop    %edi
 29e:	5d                   	pop    %ebp
 29f:	c3                   	ret
  buf[i] = '\0';
 2a0:	8b 45 08             	mov    0x8(%ebp),%eax
    buf[i++] = c;
 2a3:	89 de                	mov    %ebx,%esi
  buf[i] = '\0';
 2a5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 2a9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2ac:	5b                   	pop    %ebx
 2ad:	5e                   	pop    %esi
 2ae:	5f                   	pop    %edi
 2af:	5d                   	pop    %ebp
 2b0:	c3                   	ret
 2b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2b8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 2bf:	00 

000002c0 <stat>:

int
stat(const char *n, struct stat *st)
{
 2c0:	55                   	push   %ebp
 2c1:	89 e5                	mov    %esp,%ebp
 2c3:	56                   	push   %esi
 2c4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 2c5:	83 ec 08             	sub    $0x8,%esp
 2c8:	6a 00                	push   $0x0
 2ca:	ff 75 08             	push   0x8(%ebp)
 2cd:	e8 01 01 00 00       	call   3d3 <open>
  if(fd < 0)
 2d2:	83 c4 10             	add    $0x10,%esp
 2d5:	85 c0                	test   %eax,%eax
 2d7:	78 27                	js     300 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 2d9:	83 ec 08             	sub    $0x8,%esp
 2dc:	ff 75 0c             	push   0xc(%ebp)
 2df:	89 c3                	mov    %eax,%ebx
 2e1:	50                   	push   %eax
 2e2:	e8 04 01 00 00       	call   3eb <fstat>
  close(fd);
 2e7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 2ea:	89 c6                	mov    %eax,%esi
  close(fd);
 2ec:	e8 ca 00 00 00       	call   3bb <close>
  return r;
 2f1:	83 c4 10             	add    $0x10,%esp
}
 2f4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 2f7:	89 f0                	mov    %esi,%eax
 2f9:	5b                   	pop    %ebx
 2fa:	5e                   	pop    %esi
 2fb:	5d                   	pop    %ebp
 2fc:	c3                   	ret
 2fd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 300:	be ff ff ff ff       	mov    $0xffffffff,%esi
 305:	eb ed                	jmp    2f4 <stat+0x34>
 307:	90                   	nop
 308:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 30f:	00 

00000310 <atoi>:

int
atoi(const char *s)
{
 310:	55                   	push   %ebp
 311:	89 e5                	mov    %esp,%ebp
 313:	53                   	push   %ebx
 314:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 317:	0f be 02             	movsbl (%edx),%eax
 31a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 31d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 320:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 325:	77 2e                	ja     355 <atoi+0x45>
 327:	eb 17                	jmp    340 <atoi+0x30>
 329:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 330:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 337:	00 
 338:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 33f:	00 
    n = n*10 + *s++ - '0';
 340:	83 c2 01             	add    $0x1,%edx
 343:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 346:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 34a:	0f be 02             	movsbl (%edx),%eax
 34d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 350:	80 fb 09             	cmp    $0x9,%bl
 353:	76 eb                	jbe    340 <atoi+0x30>
  return n;
}
 355:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 358:	89 c8                	mov    %ecx,%eax
 35a:	c9                   	leave
 35b:	c3                   	ret
 35c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000360 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 360:	55                   	push   %ebp
 361:	89 e5                	mov    %esp,%ebp
 363:	57                   	push   %edi
 364:	8b 45 10             	mov    0x10(%ebp),%eax
 367:	8b 55 08             	mov    0x8(%ebp),%edx
 36a:	56                   	push   %esi
 36b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 36e:	85 c0                	test   %eax,%eax
 370:	7e 13                	jle    385 <memmove+0x25>
 372:	01 d0                	add    %edx,%eax
  dst = vdst;
 374:	89 d7                	mov    %edx,%edi
 376:	66 90                	xchg   %ax,%ax
 378:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 37f:	00 
    *dst++ = *src++;
 380:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 381:	39 f8                	cmp    %edi,%eax
 383:	75 fb                	jne    380 <memmove+0x20>
  return vdst;
}
 385:	5e                   	pop    %esi
 386:	89 d0                	mov    %edx,%eax
 388:	5f                   	pop    %edi
 389:	5d                   	pop    %ebp
 38a:	c3                   	ret

0000038b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 38b:	b8 01 00 00 00       	mov    $0x1,%eax
 390:	cd 40                	int    $0x40
 392:	c3                   	ret

00000393 <exit>:
SYSCALL(exit)
 393:	b8 02 00 00 00       	mov    $0x2,%eax
 398:	cd 40                	int    $0x40
 39a:	c3                   	ret

0000039b <wait>:
SYSCALL(wait)
 39b:	b8 03 00 00 00       	mov    $0x3,%eax
 3a0:	cd 40                	int    $0x40
 3a2:	c3                   	ret

000003a3 <pipe>:
SYSCALL(pipe)
 3a3:	b8 04 00 00 00       	mov    $0x4,%eax
 3a8:	cd 40                	int    $0x40
 3aa:	c3                   	ret

000003ab <read>:
SYSCALL(read)
 3ab:	b8 05 00 00 00       	mov    $0x5,%eax
 3b0:	cd 40                	int    $0x40
 3b2:	c3                   	ret

000003b3 <write>:
SYSCALL(write)
 3b3:	b8 10 00 00 00       	mov    $0x10,%eax
 3b8:	cd 40                	int    $0x40
 3ba:	c3                   	ret

000003bb <close>:
SYSCALL(close)
 3bb:	b8 15 00 00 00       	mov    $0x15,%eax
 3c0:	cd 40                	int    $0x40
 3c2:	c3                   	ret

000003c3 <kill>:
SYSCALL(kill)
 3c3:	b8 06 00 00 00       	mov    $0x6,%eax
 3c8:	cd 40                	int    $0x40
 3ca:	c3                   	ret

000003cb <exec>:
SYSCALL(exec)
 3cb:	b8 07 00 00 00       	mov    $0x7,%eax
 3d0:	cd 40                	int    $0x40
 3d2:	c3                   	ret

000003d3 <open>:
SYSCALL(open)
 3d3:	b8 0f 00 00 00       	mov    $0xf,%eax
 3d8:	cd 40                	int    $0x40
 3da:	c3                   	ret

000003db <mknod>:
SYSCALL(mknod)
 3db:	b8 11 00 00 00       	mov    $0x11,%eax
 3e0:	cd 40                	int    $0x40
 3e2:	c3                   	ret

000003e3 <unlink>:
SYSCALL(unlink)
 3e3:	b8 12 00 00 00       	mov    $0x12,%eax
 3e8:	cd 40                	int    $0x40
 3ea:	c3                   	ret

000003eb <fstat>:
SYSCALL(fstat)
 3eb:	b8 08 00 00 00       	mov    $0x8,%eax
 3f0:	cd 40                	int    $0x40
 3f2:	c3                   	ret

000003f3 <link>:
SYSCALL(link)
 3f3:	b8 13 00 00 00       	mov    $0x13,%eax
 3f8:	cd 40                	int    $0x40
 3fa:	c3                   	ret

000003fb <mkdir>:
SYSCALL(mkdir)
 3fb:	b8 14 00 00 00       	mov    $0x14,%eax
 400:	cd 40                	int    $0x40
 402:	c3                   	ret

00000403 <chdir>:
SYSCALL(chdir)
 403:	b8 09 00 00 00       	mov    $0x9,%eax
 408:	cd 40                	int    $0x40
 40a:	c3                   	ret

0000040b <dup>:
SYSCALL(dup)
 40b:	b8 0a 00 00 00       	mov    $0xa,%eax
 410:	cd 40                	int    $0x40
 412:	c3                   	ret

00000413 <getpid>:
SYSCALL(getpid)
 413:	b8 0b 00 00 00       	mov    $0xb,%eax
 418:	cd 40                	int    $0x40
 41a:	c3                   	ret

0000041b <getreadcount>:
SYSCALL(getreadcount)
 41b:	b8 16 00 00 00       	mov    $0x16,%eax
 420:	cd 40                	int    $0x40
 422:	c3                   	ret

00000423 <sbrk>:
SYSCALL(sbrk)
 423:	b8 0c 00 00 00       	mov    $0xc,%eax
 428:	cd 40                	int    $0x40
 42a:	c3                   	ret

0000042b <sleep>:
SYSCALL(sleep)
 42b:	b8 0d 00 00 00       	mov    $0xd,%eax
 430:	cd 40                	int    $0x40
 432:	c3                   	ret

00000433 <uptime>:
SYSCALL(uptime)
 433:	b8 0e 00 00 00       	mov    $0xe,%eax
 438:	cd 40                	int    $0x40
 43a:	c3                   	ret
 43b:	66 90                	xchg   %ax,%ax
 43d:	66 90                	xchg   %ax,%ax
 43f:	90                   	nop

00000440 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 440:	55                   	push   %ebp
 441:	89 e5                	mov    %esp,%ebp
 443:	57                   	push   %edi
 444:	56                   	push   %esi
 445:	53                   	push   %ebx
 446:	89 cb                	mov    %ecx,%ebx
 448:	83 ec 3c             	sub    $0x3c,%esp
 44b:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 44e:	85 d2                	test   %edx,%edx
 450:	0f 89 9a 00 00 00    	jns    4f0 <printint+0xb0>
 456:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 45a:	0f 84 90 00 00 00    	je     4f0 <printint+0xb0>
    neg = 1;
    x = -xx;
 460:	f7 da                	neg    %edx
    neg = 1;
 462:	b8 01 00 00 00       	mov    $0x1,%eax
 467:	89 45 c0             	mov    %eax,-0x40(%ebp)
 46a:	89 d1                	mov    %edx,%ecx
  } else {
    x = xx;
  }

  i = 0;
 46c:	31 f6                	xor    %esi,%esi
 46e:	66 90                	xchg   %ax,%ax
 470:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 477:	00 
 478:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 47f:	00 
  do{
    buf[i++] = digits[x % base];
 480:	89 c8                	mov    %ecx,%eax
 482:	31 d2                	xor    %edx,%edx
 484:	89 f7                	mov    %esi,%edi
 486:	f7 f3                	div    %ebx
 488:	8d 76 01             	lea    0x1(%esi),%esi
  }while((x /= base) != 0);
 48b:	39 d9                	cmp    %ebx,%ecx
    buf[i++] = digits[x % base];
 48d:	0f b6 92 00 09 00 00 	movzbl 0x900(%edx),%edx
  }while((x /= base) != 0);
 494:	89 c1                	mov    %eax,%ecx
    buf[i++] = digits[x % base];
 496:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
 49a:	73 e4                	jae    480 <printint+0x40>
  if(neg)
 49c:	8b 45 c0             	mov    -0x40(%ebp),%eax
 49f:	85 c0                	test   %eax,%eax
 4a1:	74 07                	je     4aa <printint+0x6a>
    buf[i++] = '-';
 4a3:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
 4a8:	89 f7                	mov    %esi,%edi

  while(--i >= 0)
 4aa:	8d 74 3d d8          	lea    -0x28(%ebp,%edi,1),%esi
 4ae:	8b 7d c4             	mov    -0x3c(%ebp),%edi
 4b1:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 4b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4b8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 4bf:	00 
    putc(fd, buf[i]);
 4c0:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 4c3:	83 ec 04             	sub    $0x4,%esp
  while(--i >= 0)
 4c6:	83 ee 01             	sub    $0x1,%esi
 4c9:	88 45 d7             	mov    %al,-0x29(%ebp)
  write(fd, &c, 1);
 4cc:	8d 45 d7             	lea    -0x29(%ebp),%eax
 4cf:	6a 01                	push   $0x1
 4d1:	50                   	push   %eax
 4d2:	57                   	push   %edi
 4d3:	e8 db fe ff ff       	call   3b3 <write>
  while(--i >= 0)
 4d8:	83 c4 10             	add    $0x10,%esp
 4db:	39 f3                	cmp    %esi,%ebx
 4dd:	75 e1                	jne    4c0 <printint+0x80>
}
 4df:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4e2:	5b                   	pop    %ebx
 4e3:	5e                   	pop    %esi
 4e4:	5f                   	pop    %edi
 4e5:	5d                   	pop    %ebp
 4e6:	c3                   	ret
 4e7:	90                   	nop
 4e8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 4ef:	00 
  neg = 0;
 4f0:	31 c0                	xor    %eax,%eax
 4f2:	e9 70 ff ff ff       	jmp    467 <printint+0x27>
 4f7:	90                   	nop
 4f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 4ff:	00 

00000500 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	57                   	push   %edi
 504:	56                   	push   %esi
 505:	53                   	push   %ebx
 506:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 509:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 50c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 50f:	0f b6 13             	movzbl (%ebx),%edx
 512:	83 c3 01             	add    $0x1,%ebx
 515:	84 d2                	test   %dl,%dl
 517:	0f 84 a0 00 00 00    	je     5bd <printf+0xbd>
 51d:	8d 45 10             	lea    0x10(%ebp),%eax
 520:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c = fmt[i] & 0xff;
 523:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 526:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 529:	eb 28                	jmp    553 <printf+0x53>
 52b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
 530:	83 ec 04             	sub    $0x4,%esp
 533:	8d 45 e7             	lea    -0x19(%ebp),%eax
 536:	88 55 e7             	mov    %dl,-0x19(%ebp)
  for(i = 0; fmt[i]; i++){
 539:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 53c:	6a 01                	push   $0x1
 53e:	50                   	push   %eax
 53f:	56                   	push   %esi
 540:	e8 6e fe ff ff       	call   3b3 <write>
  for(i = 0; fmt[i]; i++){
 545:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 549:	83 c4 10             	add    $0x10,%esp
 54c:	84 d2                	test   %dl,%dl
 54e:	74 6d                	je     5bd <printf+0xbd>
    c = fmt[i] & 0xff;
 550:	0f b6 c2             	movzbl %dl,%eax
      if(c == '%'){
 553:	83 f8 25             	cmp    $0x25,%eax
 556:	75 d8                	jne    530 <printf+0x30>
  for(i = 0; fmt[i]; i++){
 558:	0f b6 13             	movzbl (%ebx),%edx
 55b:	84 d2                	test   %dl,%dl
 55d:	74 5e                	je     5bd <printf+0xbd>
    c = fmt[i] & 0xff;
 55f:	0f b6 c2             	movzbl %dl,%eax
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
 562:	80 fa 25             	cmp    $0x25,%dl
 565:	0f 84 25 01 00 00    	je     690 <printf+0x190>
 56b:	83 e8 63             	sub    $0x63,%eax
 56e:	83 f8 15             	cmp    $0x15,%eax
 571:	77 0d                	ja     580 <printf+0x80>
 573:	ff 24 85 a8 08 00 00 	jmp    *0x8a8(,%eax,4)
 57a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 580:	83 ec 04             	sub    $0x4,%esp
 583:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 586:	88 55 d0             	mov    %dl,-0x30(%ebp)
        ap++;
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
 589:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
  write(fd, &c, 1);
 58d:	6a 01                	push   $0x1
 58f:	51                   	push   %ecx
 590:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
 593:	56                   	push   %esi
 594:	e8 1a fe ff ff       	call   3b3 <write>
        putc(fd, c);
 599:	0f b6 55 d0          	movzbl -0x30(%ebp),%edx
  write(fd, &c, 1);
 59d:	83 c4 0c             	add    $0xc,%esp
 5a0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 5a3:	6a 01                	push   $0x1
 5a5:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
 5a8:	51                   	push   %ecx
  for(i = 0; fmt[i]; i++){
 5a9:	83 c3 02             	add    $0x2,%ebx
  write(fd, &c, 1);
 5ac:	56                   	push   %esi
 5ad:	e8 01 fe ff ff       	call   3b3 <write>
  for(i = 0; fmt[i]; i++){
 5b2:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 5b6:	83 c4 10             	add    $0x10,%esp
 5b9:	84 d2                	test   %dl,%dl
 5bb:	75 93                	jne    550 <printf+0x50>
      }
      state = 0;
    }
  }
}
 5bd:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5c0:	5b                   	pop    %ebx
 5c1:	5e                   	pop    %esi
 5c2:	5f                   	pop    %edi
 5c3:	5d                   	pop    %ebp
 5c4:	c3                   	ret
 5c5:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 5c8:	83 ec 0c             	sub    $0xc,%esp
 5cb:	8b 17                	mov    (%edi),%edx
 5cd:	b9 10 00 00 00       	mov    $0x10,%ecx
 5d2:	89 f0                	mov    %esi,%eax
 5d4:	6a 00                	push   $0x0
 5d6:	e8 65 fe ff ff       	call   440 <printint>
  for(i = 0; fmt[i]; i++){
 5db:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 5df:	83 c3 02             	add    $0x2,%ebx
 5e2:	83 c4 10             	add    $0x10,%esp
 5e5:	84 d2                	test   %dl,%dl
 5e7:	74 d4                	je     5bd <printf+0xbd>
        ap++;
 5e9:	83 c7 04             	add    $0x4,%edi
 5ec:	e9 5f ff ff ff       	jmp    550 <printf+0x50>
 5f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 5f8:	8b 07                	mov    (%edi),%eax
        ap++;
 5fa:	83 c7 04             	add    $0x4,%edi
        if(s == 0)
 5fd:	85 c0                	test   %eax,%eax
 5ff:	0f 84 9b 00 00 00    	je     6a0 <printf+0x1a0>
        while(*s != 0){
 605:	0f b6 10             	movzbl (%eax),%edx
 608:	84 d2                	test   %dl,%dl
 60a:	0f 84 a2 00 00 00    	je     6b2 <printf+0x1b2>
 610:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 613:	89 c7                	mov    %eax,%edi
 615:	89 d0                	mov    %edx,%eax
 617:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 61a:	89 fb                	mov    %edi,%ebx
 61c:	8d 7d e7             	lea    -0x19(%ebp),%edi
 61f:	90                   	nop
  write(fd, &c, 1);
 620:	83 ec 04             	sub    $0x4,%esp
 623:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
 626:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 629:	6a 01                	push   $0x1
 62b:	57                   	push   %edi
 62c:	56                   	push   %esi
 62d:	e8 81 fd ff ff       	call   3b3 <write>
        while(*s != 0){
 632:	0f b6 03             	movzbl (%ebx),%eax
 635:	83 c4 10             	add    $0x10,%esp
 638:	84 c0                	test   %al,%al
 63a:	75 e4                	jne    620 <printf+0x120>
 63c:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  for(i = 0; fmt[i]; i++){
 63f:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 643:	83 c3 02             	add    $0x2,%ebx
 646:	84 d2                	test   %dl,%dl
 648:	0f 85 d5 fe ff ff    	jne    523 <printf+0x23>
 64e:	e9 6a ff ff ff       	jmp    5bd <printf+0xbd>
 653:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
 658:	83 ec 0c             	sub    $0xc,%esp
 65b:	8b 17                	mov    (%edi),%edx
 65d:	b9 0a 00 00 00       	mov    $0xa,%ecx
 662:	89 f0                	mov    %esi,%eax
 664:	6a 01                	push   $0x1
 666:	e8 d5 fd ff ff       	call   440 <printint>
  for(i = 0; fmt[i]; i++){
 66b:	e9 6b ff ff ff       	jmp    5db <printf+0xdb>
        putc(fd, *ap);
 670:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 672:	83 ec 04             	sub    $0x4,%esp
 675:	8d 4d e7             	lea    -0x19(%ebp),%ecx
        putc(fd, *ap);
 678:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 67b:	6a 01                	push   $0x1
 67d:	51                   	push   %ecx
 67e:	56                   	push   %esi
 67f:	e8 2f fd ff ff       	call   3b3 <write>
 684:	e9 52 ff ff ff       	jmp    5db <printf+0xdb>
 689:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 690:	83 ec 04             	sub    $0x4,%esp
 693:	88 55 e7             	mov    %dl,-0x19(%ebp)
 696:	8d 4d e7             	lea    -0x19(%ebp),%ecx
 699:	6a 01                	push   $0x1
 69b:	e9 08 ff ff ff       	jmp    5a8 <printf+0xa8>
          s = "(null)";
 6a0:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 6a3:	b8 28 00 00 00       	mov    $0x28,%eax
 6a8:	bf a0 08 00 00       	mov    $0x8a0,%edi
 6ad:	e9 65 ff ff ff       	jmp    617 <printf+0x117>
  for(i = 0; fmt[i]; i++){
 6b2:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 6b6:	83 c3 02             	add    $0x2,%ebx
 6b9:	84 d2                	test   %dl,%dl
 6bb:	0f 85 8f fe ff ff    	jne    550 <printf+0x50>
 6c1:	e9 f7 fe ff ff       	jmp    5bd <printf+0xbd>
 6c6:	66 90                	xchg   %ax,%ax
 6c8:	66 90                	xchg   %ax,%ax
 6ca:	66 90                	xchg   %ax,%ax
 6cc:	66 90                	xchg   %ax,%ax
 6ce:	66 90                	xchg   %ax,%ax
 6d0:	66 90                	xchg   %ax,%ax
 6d2:	66 90                	xchg   %ax,%ax
 6d4:	66 90                	xchg   %ax,%ax
 6d6:	66 90                	xchg   %ax,%ax
 6d8:	66 90                	xchg   %ax,%ax
 6da:	66 90                	xchg   %ax,%ax
 6dc:	66 90                	xchg   %ax,%ax
 6de:	66 90                	xchg   %ax,%ax

000006e0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 6e0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6e1:	a1 00 0e 00 00       	mov    0xe00,%eax
{
 6e6:	89 e5                	mov    %esp,%ebp
 6e8:	57                   	push   %edi
 6e9:	56                   	push   %esi
 6ea:	53                   	push   %ebx
 6eb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 6ee:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 6ff:	00 
 700:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 702:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 704:	39 ca                	cmp    %ecx,%edx
 706:	73 30                	jae    738 <free+0x58>
 708:	39 c1                	cmp    %eax,%ecx
 70a:	72 04                	jb     710 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 70c:	39 c2                	cmp    %eax,%edx
 70e:	72 f0                	jb     700 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
 710:	8b 73 fc             	mov    -0x4(%ebx),%esi
 713:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 716:	39 f8                	cmp    %edi,%eax
 718:	74 36                	je     750 <free+0x70>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 71a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 71d:	8b 42 04             	mov    0x4(%edx),%eax
 720:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 723:	39 f1                	cmp    %esi,%ecx
 725:	74 40                	je     767 <free+0x87>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 727:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 729:	5b                   	pop    %ebx
  freep = p;
 72a:	89 15 00 0e 00 00    	mov    %edx,0xe00
}
 730:	5e                   	pop    %esi
 731:	5f                   	pop    %edi
 732:	5d                   	pop    %ebp
 733:	c3                   	ret
 734:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 738:	39 c2                	cmp    %eax,%edx
 73a:	72 c4                	jb     700 <free+0x20>
 73c:	39 c1                	cmp    %eax,%ecx
 73e:	73 c0                	jae    700 <free+0x20>
  if(bp + bp->s.size == p->s.ptr){
 740:	8b 73 fc             	mov    -0x4(%ebx),%esi
 743:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 746:	39 f8                	cmp    %edi,%eax
 748:	75 d0                	jne    71a <free+0x3a>
 74a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
 750:	03 70 04             	add    0x4(%eax),%esi
 753:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 756:	8b 02                	mov    (%edx),%eax
 758:	8b 00                	mov    (%eax),%eax
 75a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 75d:	8b 42 04             	mov    0x4(%edx),%eax
 760:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 763:	39 f1                	cmp    %esi,%ecx
 765:	75 c0                	jne    727 <free+0x47>
    p->s.size += bp->s.size;
 767:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 76a:	89 15 00 0e 00 00    	mov    %edx,0xe00
    p->s.size += bp->s.size;
 770:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 773:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 776:	89 0a                	mov    %ecx,(%edx)
}
 778:	5b                   	pop    %ebx
 779:	5e                   	pop    %esi
 77a:	5f                   	pop    %edi
 77b:	5d                   	pop    %ebp
 77c:	c3                   	ret
 77d:	8d 76 00             	lea    0x0(%esi),%esi

00000780 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 780:	55                   	push   %ebp
 781:	89 e5                	mov    %esp,%ebp
 783:	57                   	push   %edi
 784:	56                   	push   %esi
 785:	53                   	push   %ebx
 786:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 789:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 78c:	8b 15 00 0e 00 00    	mov    0xe00,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 792:	8d 78 07             	lea    0x7(%eax),%edi
 795:	c1 ef 03             	shr    $0x3,%edi
 798:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 79b:	85 d2                	test   %edx,%edx
 79d:	0f 84 8d 00 00 00    	je     830 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 7a3:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 7a5:	8b 48 04             	mov    0x4(%eax),%ecx
 7a8:	39 f9                	cmp    %edi,%ecx
 7aa:	73 64                	jae    810 <malloc+0x90>
  if(nu < 4096)
 7ac:	bb 00 10 00 00       	mov    $0x1000,%ebx
 7b1:	39 df                	cmp    %ebx,%edi
 7b3:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 7b6:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 7bd:	eb 0a                	jmp    7c9 <malloc+0x49>
 7bf:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 7c0:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 7c2:	8b 48 04             	mov    0x4(%eax),%ecx
 7c5:	39 f9                	cmp    %edi,%ecx
 7c7:	73 47                	jae    810 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 7c9:	89 c2                	mov    %eax,%edx
 7cb:	39 05 00 0e 00 00    	cmp    %eax,0xe00
 7d1:	75 ed                	jne    7c0 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
 7d3:	83 ec 0c             	sub    $0xc,%esp
 7d6:	56                   	push   %esi
 7d7:	e8 47 fc ff ff       	call   423 <sbrk>
  if(p == (char*)-1)
 7dc:	83 c4 10             	add    $0x10,%esp
 7df:	83 f8 ff             	cmp    $0xffffffff,%eax
 7e2:	74 1c                	je     800 <malloc+0x80>
  hp->s.size = nu;
 7e4:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 7e7:	83 ec 0c             	sub    $0xc,%esp
 7ea:	83 c0 08             	add    $0x8,%eax
 7ed:	50                   	push   %eax
 7ee:	e8 ed fe ff ff       	call   6e0 <free>
  return freep;
 7f3:	8b 15 00 0e 00 00    	mov    0xe00,%edx
      if((p = morecore(nunits)) == 0)
 7f9:	83 c4 10             	add    $0x10,%esp
 7fc:	85 d2                	test   %edx,%edx
 7fe:	75 c0                	jne    7c0 <malloc+0x40>
        return 0;
  }
}
 800:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 803:	31 c0                	xor    %eax,%eax
}
 805:	5b                   	pop    %ebx
 806:	5e                   	pop    %esi
 807:	5f                   	pop    %edi
 808:	5d                   	pop    %ebp
 809:	c3                   	ret
 80a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 810:	39 cf                	cmp    %ecx,%edi
 812:	74 4c                	je     860 <malloc+0xe0>
        p->s.size -= nunits;
 814:	29 f9                	sub    %edi,%ecx
 816:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 819:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 81c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 81f:	89 15 00 0e 00 00    	mov    %edx,0xe00
}
 825:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 828:	83 c0 08             	add    $0x8,%eax
}
 82b:	5b                   	pop    %ebx
 82c:	5e                   	pop    %esi
 82d:	5f                   	pop    %edi
 82e:	5d                   	pop    %ebp
 82f:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
 830:	c7 05 00 0e 00 00 04 	movl   $0xe04,0xe00
 837:	0e 00 00 
    base.s.size = 0;
 83a:	b8 04 0e 00 00       	mov    $0xe04,%eax
    base.s.ptr = freep = prevp = &base;
 83f:	c7 05 04 0e 00 00 04 	movl   $0xe04,0xe04
 846:	0e 00 00 
    base.s.size = 0;
 849:	c7 05 08 0e 00 00 00 	movl   $0x0,0xe08
 850:	00 00 00 
    if(p->s.size >= nunits){
 853:	e9 54 ff ff ff       	jmp    7ac <malloc+0x2c>
 858:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
 85f:	00 
        prevp->s.ptr = p->s.ptr;
 860:	8b 08                	mov    (%eax),%ecx
 862:	89 0a                	mov    %ecx,(%edx)
 864:	eb b9                	jmp    81f <malloc+0x9f>
