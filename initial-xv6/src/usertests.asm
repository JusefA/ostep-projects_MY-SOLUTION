
_usertests:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return randstate;
}

int
main(int argc, char *argv[])
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	push   -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	51                   	push   %ecx
       e:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "usertests starting\n");
      11:	68 d6 4d 00 00       	push   $0x4dd6
      16:	6a 01                	push   $0x1
      18:	e8 63 3a 00 00       	call   3a80 <printf>

  if(open("usertests.ran", 0) >= 0){
      1d:	59                   	pop    %ecx
      1e:	58                   	pop    %eax
      1f:	6a 00                	push   $0x0
      21:	68 ea 4d 00 00       	push   $0x4dea
      26:	e8 28 39 00 00       	call   3953 <open>
      2b:	83 c4 10             	add    $0x10,%esp
      2e:	85 c0                	test   %eax,%eax
      30:	78 13                	js     45 <main+0x45>
    printf(1, "already ran user tests -- rebuild fs.img\n");
      32:	52                   	push   %edx
      33:	52                   	push   %edx
      34:	68 5c 55 00 00       	push   $0x555c
      39:	6a 01                	push   $0x1
      3b:	e8 40 3a 00 00       	call   3a80 <printf>
    exit();
      40:	e8 ce 38 00 00       	call   3913 <exit>
  }
  close(open("usertests.ran", O_CREATE));
      45:	50                   	push   %eax
      46:	50                   	push   %eax
      47:	68 00 02 00 00       	push   $0x200
      4c:	68 ea 4d 00 00       	push   $0x4dea
      51:	e8 fd 38 00 00       	call   3953 <open>
      56:	89 04 24             	mov    %eax,(%esp)
      59:	e8 dd 38 00 00       	call   393b <close>

  argptest();
      5e:	e8 ad 35 00 00       	call   3610 <argptest>
  createdelete();
      63:	e8 a8 11 00 00       	call   1210 <createdelete>
  linkunlink();
      68:	e8 53 1a 00 00       	call   1ac0 <linkunlink>
  concreate();
      6d:	e8 4e 17 00 00       	call   17c0 <concreate>
  fourfiles();
      72:	e8 99 0f 00 00       	call   1010 <fourfiles>
  sharedfd();
      77:	e8 c4 0d 00 00       	call   e40 <sharedfd>

  bigargtest();
      7c:	e8 2f 32 00 00       	call   32b0 <bigargtest>
  bigwrite();
      81:	e8 5a 23 00 00       	call   23e0 <bigwrite>
  bigargtest();
      86:	e8 25 32 00 00       	call   32b0 <bigargtest>
  bsstest();
      8b:	e8 b0 31 00 00       	call   3240 <bsstest>
  sbrktest();
      90:	e8 ab 2c 00 00       	call   2d40 <sbrktest>
  validatetest();
      95:	e8 f6 30 00 00       	call   3190 <validatetest>

  opentest();
      9a:	e8 61 03 00 00       	call   400 <opentest>
  writetest();
      9f:	e8 ec 03 00 00       	call   490 <writetest>
  writetest1();
      a4:	e8 b7 05 00 00       	call   660 <writetest1>
  createtest();
      a9:	e8 82 07 00 00       	call   830 <createtest>

  openiputtest();
      ae:	e8 4d 02 00 00       	call   300 <openiputtest>
  exitiputtest();
      b3:	e8 48 01 00 00       	call   200 <exitiputtest>
  iputtest();
      b8:	e8 63 00 00 00       	call   120 <iputtest>

  mem();
      bd:	e8 ae 0c 00 00       	call   d70 <mem>
  pipe1();
      c2:	e8 49 09 00 00       	call   a10 <pipe1>
  preempt();
      c7:	e8 d4 0a 00 00       	call   ba0 <preempt>
  exitwait();
      cc:	e8 1f 0c 00 00       	call   cf0 <exitwait>

  rmdot();
      d1:	e8 1a 27 00 00       	call   27f0 <rmdot>
  fourteen();
      d6:	e8 d5 25 00 00       	call   26b0 <fourteen>
  bigfile();
      db:	e8 f0 23 00 00       	call   24d0 <bigfile>
  subdir();
      e0:	e8 1b 1c 00 00       	call   1d00 <subdir>
  linktest();
      e5:	e8 c6 14 00 00       	call   15b0 <linktest>
  unlinkread();
      ea:	e8 31 13 00 00       	call   1420 <unlinkread>
  dirfile();
      ef:	e8 7c 28 00 00       	call   2970 <dirfile>
  iref();
      f4:	e8 77 2a 00 00       	call   2b70 <iref>
  forktest();
      f9:	e8 92 2b 00 00       	call   2c90 <forktest>
  bigdir(); // slow
      fe:	e8 cd 1a 00 00       	call   1bd0 <bigdir>

  uio();
     103:	e8 98 34 00 00       	call   35a0 <uio>

  exectest();
     108:	e8 b3 08 00 00       	call   9c0 <exectest>

  exit();
     10d:	e8 01 38 00 00       	call   3913 <exit>
     112:	66 90                	xchg   %ax,%ax
     114:	66 90                	xchg   %ax,%ax
     116:	66 90                	xchg   %ax,%ax
     118:	66 90                	xchg   %ax,%ax
     11a:	66 90                	xchg   %ax,%ax
     11c:	66 90                	xchg   %ax,%ax
     11e:	66 90                	xchg   %ax,%ax

00000120 <iputtest>:
{
     120:	55                   	push   %ebp
     121:	89 e5                	mov    %esp,%ebp
     123:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "iput test\n");
     126:	68 7c 3e 00 00       	push   $0x3e7c
     12b:	ff 35 d8 5e 00 00    	push   0x5ed8
     131:	e8 4a 39 00 00       	call   3a80 <printf>
  if(mkdir("iputdir") < 0){
     136:	c7 04 24 0f 3e 00 00 	movl   $0x3e0f,(%esp)
     13d:	e8 39 38 00 00       	call   397b <mkdir>
     142:	83 c4 10             	add    $0x10,%esp
     145:	85 c0                	test   %eax,%eax
     147:	78 5a                	js     1a3 <iputtest+0x83>
  if(chdir("iputdir") < 0){
     149:	83 ec 0c             	sub    $0xc,%esp
     14c:	68 0f 3e 00 00       	push   $0x3e0f
     151:	e8 2d 38 00 00       	call   3983 <chdir>
     156:	83 c4 10             	add    $0x10,%esp
     159:	85 c0                	test   %eax,%eax
     15b:	0f 88 82 00 00 00    	js     1e3 <iputtest+0xc3>
  if(unlink("../iputdir") < 0){
     161:	83 ec 0c             	sub    $0xc,%esp
     164:	68 0c 3e 00 00       	push   $0x3e0c
     169:	e8 f5 37 00 00       	call   3963 <unlink>
     16e:	83 c4 10             	add    $0x10,%esp
     171:	85 c0                	test   %eax,%eax
     173:	78 57                	js     1cc <iputtest+0xac>
  if(chdir("/") < 0){
     175:	83 ec 0c             	sub    $0xc,%esp
     178:	68 31 3e 00 00       	push   $0x3e31
     17d:	e8 01 38 00 00       	call   3983 <chdir>
     182:	83 c4 10             	add    $0x10,%esp
     185:	89 c2                	mov    %eax,%edx
    printf(stdout, "chdir / failed\n");
     187:	a1 d8 5e 00 00       	mov    0x5ed8,%eax
  if(chdir("/") < 0){
     18c:	85 d2                	test   %edx,%edx
     18e:	78 2a                	js     1ba <iputtest+0x9a>
  printf(stdout, "iput test ok\n");
     190:	83 ec 08             	sub    $0x8,%esp
     193:	68 b4 3e 00 00       	push   $0x3eb4
     198:	50                   	push   %eax
     199:	e8 e2 38 00 00       	call   3a80 <printf>
}
     19e:	83 c4 10             	add    $0x10,%esp
     1a1:	c9                   	leave
     1a2:	c3                   	ret
    printf(stdout, "mkdir failed\n");
     1a3:	50                   	push   %eax
     1a4:	50                   	push   %eax
     1a5:	68 e8 3d 00 00       	push   $0x3de8
     1aa:	ff 35 d8 5e 00 00    	push   0x5ed8
     1b0:	e8 cb 38 00 00       	call   3a80 <printf>
    exit();
     1b5:	e8 59 37 00 00       	call   3913 <exit>
    printf(stdout, "chdir / failed\n");
     1ba:	52                   	push   %edx
     1bb:	52                   	push   %edx
     1bc:	68 33 3e 00 00       	push   $0x3e33
     1c1:	50                   	push   %eax
     1c2:	e8 b9 38 00 00       	call   3a80 <printf>
    exit();
     1c7:	e8 47 37 00 00       	call   3913 <exit>
    printf(stdout, "unlink ../iputdir failed\n");
     1cc:	51                   	push   %ecx
     1cd:	51                   	push   %ecx
     1ce:	68 17 3e 00 00       	push   $0x3e17
     1d3:	ff 35 d8 5e 00 00    	push   0x5ed8
     1d9:	e8 a2 38 00 00       	call   3a80 <printf>
    exit();
     1de:	e8 30 37 00 00       	call   3913 <exit>
    printf(stdout, "chdir iputdir failed\n");
     1e3:	50                   	push   %eax
     1e4:	50                   	push   %eax
     1e5:	68 f6 3d 00 00       	push   $0x3df6
     1ea:	ff 35 d8 5e 00 00    	push   0x5ed8
     1f0:	e8 8b 38 00 00       	call   3a80 <printf>
    exit();
     1f5:	e8 19 37 00 00       	call   3913 <exit>
     1fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000200 <exitiputtest>:
{
     200:	55                   	push   %ebp
     201:	89 e5                	mov    %esp,%ebp
     203:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exitiput test\n");
     206:	68 43 3e 00 00       	push   $0x3e43
     20b:	ff 35 d8 5e 00 00    	push   0x5ed8
     211:	e8 6a 38 00 00       	call   3a80 <printf>
  pid = fork();
     216:	e8 f0 36 00 00       	call   390b <fork>
  if(pid < 0){
     21b:	83 c4 10             	add    $0x10,%esp
     21e:	85 c0                	test   %eax,%eax
     220:	0f 88 8a 00 00 00    	js     2b0 <exitiputtest+0xb0>
  if(pid == 0){
     226:	75 50                	jne    278 <exitiputtest+0x78>
    if(mkdir("iputdir") < 0){
     228:	83 ec 0c             	sub    $0xc,%esp
     22b:	68 0f 3e 00 00       	push   $0x3e0f
     230:	e8 46 37 00 00       	call   397b <mkdir>
     235:	83 c4 10             	add    $0x10,%esp
     238:	85 c0                	test   %eax,%eax
     23a:	0f 88 87 00 00 00    	js     2c7 <exitiputtest+0xc7>
    if(chdir("iputdir") < 0){
     240:	83 ec 0c             	sub    $0xc,%esp
     243:	68 0f 3e 00 00       	push   $0x3e0f
     248:	e8 36 37 00 00       	call   3983 <chdir>
     24d:	83 c4 10             	add    $0x10,%esp
     250:	85 c0                	test   %eax,%eax
     252:	0f 88 86 00 00 00    	js     2de <exitiputtest+0xde>
    if(unlink("../iputdir") < 0){
     258:	83 ec 0c             	sub    $0xc,%esp
     25b:	68 0c 3e 00 00       	push   $0x3e0c
     260:	e8 fe 36 00 00       	call   3963 <unlink>
     265:	83 c4 10             	add    $0x10,%esp
     268:	85 c0                	test   %eax,%eax
     26a:	78 2c                	js     298 <exitiputtest+0x98>
    exit();
     26c:	e8 a2 36 00 00       	call   3913 <exit>
     271:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  wait();
     278:	e8 9e 36 00 00       	call   391b <wait>
  printf(stdout, "exitiput test ok\n");
     27d:	83 ec 08             	sub    $0x8,%esp
     280:	68 66 3e 00 00       	push   $0x3e66
     285:	ff 35 d8 5e 00 00    	push   0x5ed8
     28b:	e8 f0 37 00 00       	call   3a80 <printf>
}
     290:	83 c4 10             	add    $0x10,%esp
     293:	c9                   	leave
     294:	c3                   	ret
     295:	8d 76 00             	lea    0x0(%esi),%esi
      printf(stdout, "unlink ../iputdir failed\n");
     298:	83 ec 08             	sub    $0x8,%esp
     29b:	68 17 3e 00 00       	push   $0x3e17
     2a0:	ff 35 d8 5e 00 00    	push   0x5ed8
     2a6:	e8 d5 37 00 00       	call   3a80 <printf>
      exit();
     2ab:	e8 63 36 00 00       	call   3913 <exit>
    printf(stdout, "fork failed\n");
     2b0:	51                   	push   %ecx
     2b1:	51                   	push   %ecx
     2b2:	68 29 4d 00 00       	push   $0x4d29
     2b7:	ff 35 d8 5e 00 00    	push   0x5ed8
     2bd:	e8 be 37 00 00       	call   3a80 <printf>
    exit();
     2c2:	e8 4c 36 00 00       	call   3913 <exit>
      printf(stdout, "mkdir failed\n");
     2c7:	52                   	push   %edx
     2c8:	52                   	push   %edx
     2c9:	68 e8 3d 00 00       	push   $0x3de8
     2ce:	ff 35 d8 5e 00 00    	push   0x5ed8
     2d4:	e8 a7 37 00 00       	call   3a80 <printf>
      exit();
     2d9:	e8 35 36 00 00       	call   3913 <exit>
      printf(stdout, "child chdir failed\n");
     2de:	50                   	push   %eax
     2df:	50                   	push   %eax
     2e0:	68 52 3e 00 00       	push   $0x3e52
     2e5:	ff 35 d8 5e 00 00    	push   0x5ed8
     2eb:	e8 90 37 00 00       	call   3a80 <printf>
      exit();
     2f0:	e8 1e 36 00 00       	call   3913 <exit>
     2f5:	8d 76 00             	lea    0x0(%esi),%esi
     2f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     2ff:	00 

00000300 <openiputtest>:
{
     300:	55                   	push   %ebp
     301:	89 e5                	mov    %esp,%ebp
     303:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "openiput test\n");
     306:	68 78 3e 00 00       	push   $0x3e78
     30b:	ff 35 d8 5e 00 00    	push   0x5ed8
     311:	e8 6a 37 00 00       	call   3a80 <printf>
  if(mkdir("oidir") < 0){
     316:	c7 04 24 87 3e 00 00 	movl   $0x3e87,(%esp)
     31d:	e8 59 36 00 00       	call   397b <mkdir>
     322:	83 c4 10             	add    $0x10,%esp
     325:	85 c0                	test   %eax,%eax
     327:	0f 88 9f 00 00 00    	js     3cc <openiputtest+0xcc>
  pid = fork();
     32d:	e8 d9 35 00 00       	call   390b <fork>
  if(pid < 0){
     332:	85 c0                	test   %eax,%eax
     334:	78 7f                	js     3b5 <openiputtest+0xb5>
  if(pid == 0){
     336:	75 38                	jne    370 <openiputtest+0x70>
    int fd = open("oidir", O_RDWR);
     338:	83 ec 08             	sub    $0x8,%esp
     33b:	6a 02                	push   $0x2
     33d:	68 87 3e 00 00       	push   $0x3e87
     342:	e8 0c 36 00 00       	call   3953 <open>
    if(fd >= 0){
     347:	83 c4 10             	add    $0x10,%esp
     34a:	85 c0                	test   %eax,%eax
     34c:	78 62                	js     3b0 <openiputtest+0xb0>
      printf(stdout, "open directory for write succeeded\n");
     34e:	83 ec 08             	sub    $0x8,%esp
     351:	68 10 4e 00 00       	push   $0x4e10
     356:	ff 35 d8 5e 00 00    	push   0x5ed8
     35c:	e8 1f 37 00 00       	call   3a80 <printf>
      exit();
     361:	e8 ad 35 00 00       	call   3913 <exit>
     366:	66 90                	xchg   %ax,%ax
     368:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     36f:	00 
  sleep(1);
     370:	83 ec 0c             	sub    $0xc,%esp
     373:	6a 01                	push   $0x1
     375:	e8 31 36 00 00       	call   39ab <sleep>
  if(unlink("oidir") != 0){
     37a:	c7 04 24 87 3e 00 00 	movl   $0x3e87,(%esp)
     381:	e8 dd 35 00 00       	call   3963 <unlink>
     386:	83 c4 10             	add    $0x10,%esp
     389:	85 c0                	test   %eax,%eax
     38b:	75 56                	jne    3e3 <openiputtest+0xe3>
  wait();
     38d:	e8 89 35 00 00       	call   391b <wait>
  printf(stdout, "openiput test ok\n");
     392:	83 ec 08             	sub    $0x8,%esp
     395:	68 b0 3e 00 00       	push   $0x3eb0
     39a:	ff 35 d8 5e 00 00    	push   0x5ed8
     3a0:	e8 db 36 00 00       	call   3a80 <printf>
}
     3a5:	83 c4 10             	add    $0x10,%esp
     3a8:	c9                   	leave
     3a9:	c3                   	ret
     3aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    exit();
     3b0:	e8 5e 35 00 00       	call   3913 <exit>
    printf(stdout, "fork failed\n");
     3b5:	52                   	push   %edx
     3b6:	52                   	push   %edx
     3b7:	68 29 4d 00 00       	push   $0x4d29
     3bc:	ff 35 d8 5e 00 00    	push   0x5ed8
     3c2:	e8 b9 36 00 00       	call   3a80 <printf>
    exit();
     3c7:	e8 47 35 00 00       	call   3913 <exit>
    printf(stdout, "mkdir oidir failed\n");
     3cc:	51                   	push   %ecx
     3cd:	51                   	push   %ecx
     3ce:	68 8d 3e 00 00       	push   $0x3e8d
     3d3:	ff 35 d8 5e 00 00    	push   0x5ed8
     3d9:	e8 a2 36 00 00       	call   3a80 <printf>
    exit();
     3de:	e8 30 35 00 00       	call   3913 <exit>
    printf(stdout, "unlink failed\n");
     3e3:	50                   	push   %eax
     3e4:	50                   	push   %eax
     3e5:	68 a1 3e 00 00       	push   $0x3ea1
     3ea:	ff 35 d8 5e 00 00    	push   0x5ed8
     3f0:	e8 8b 36 00 00       	call   3a80 <printf>
    exit();
     3f5:	e8 19 35 00 00       	call   3913 <exit>
     3fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000400 <opentest>:
{
     400:	55                   	push   %ebp
     401:	89 e5                	mov    %esp,%ebp
     403:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "open test\n");
     406:	68 c2 3e 00 00       	push   $0x3ec2
     40b:	ff 35 d8 5e 00 00    	push   0x5ed8
     411:	e8 6a 36 00 00       	call   3a80 <printf>
  fd = open("echo", 0);
     416:	58                   	pop    %eax
     417:	5a                   	pop    %edx
     418:	6a 00                	push   $0x0
     41a:	68 cd 3e 00 00       	push   $0x3ecd
     41f:	e8 2f 35 00 00       	call   3953 <open>
  if(fd < 0){
     424:	83 c4 10             	add    $0x10,%esp
     427:	85 c0                	test   %eax,%eax
     429:	78 38                	js     463 <opentest+0x63>
  close(fd);
     42b:	83 ec 0c             	sub    $0xc,%esp
     42e:	50                   	push   %eax
     42f:	e8 07 35 00 00       	call   393b <close>
  fd = open("doesnotexist", 0);
     434:	59                   	pop    %ecx
     435:	58                   	pop    %eax
     436:	6a 00                	push   $0x0
     438:	68 e5 3e 00 00       	push   $0x3ee5
     43d:	e8 11 35 00 00       	call   3953 <open>
  if(fd >= 0){
     442:	83 c4 10             	add    $0x10,%esp
  fd = open("doesnotexist", 0);
     445:	89 c2                	mov    %eax,%edx
    printf(stdout, "open doesnotexist succeeded!\n");
     447:	a1 d8 5e 00 00       	mov    0x5ed8,%eax
  if(fd >= 0){
     44c:	85 d2                	test   %edx,%edx
     44e:	79 2a                	jns    47a <opentest+0x7a>
  printf(stdout, "open test ok\n");
     450:	83 ec 08             	sub    $0x8,%esp
     453:	68 10 3f 00 00       	push   $0x3f10
     458:	50                   	push   %eax
     459:	e8 22 36 00 00       	call   3a80 <printf>
}
     45e:	83 c4 10             	add    $0x10,%esp
     461:	c9                   	leave
     462:	c3                   	ret
    printf(stdout, "open echo failed!\n");
     463:	50                   	push   %eax
     464:	50                   	push   %eax
     465:	68 d2 3e 00 00       	push   $0x3ed2
     46a:	ff 35 d8 5e 00 00    	push   0x5ed8
     470:	e8 0b 36 00 00       	call   3a80 <printf>
    exit();
     475:	e8 99 34 00 00       	call   3913 <exit>
    printf(stdout, "open doesnotexist succeeded!\n");
     47a:	52                   	push   %edx
     47b:	52                   	push   %edx
     47c:	68 f2 3e 00 00       	push   $0x3ef2
     481:	50                   	push   %eax
     482:	e8 f9 35 00 00       	call   3a80 <printf>
    exit();
     487:	e8 87 34 00 00       	call   3913 <exit>
     48c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000490 <writetest>:
{
     490:	55                   	push   %ebp
     491:	89 e5                	mov    %esp,%ebp
     493:	56                   	push   %esi
     494:	53                   	push   %ebx
  printf(stdout, "small file test\n");
     495:	83 ec 08             	sub    $0x8,%esp
     498:	68 1e 3f 00 00       	push   $0x3f1e
     49d:	ff 35 d8 5e 00 00    	push   0x5ed8
     4a3:	e8 d8 35 00 00       	call   3a80 <printf>
  fd = open("small", O_CREATE|O_RDWR);
     4a8:	59                   	pop    %ecx
     4a9:	5b                   	pop    %ebx
     4aa:	68 02 02 00 00       	push   $0x202
     4af:	68 2f 3f 00 00       	push   $0x3f2f
     4b4:	e8 9a 34 00 00       	call   3953 <open>
  if(fd >= 0){
     4b9:	83 c4 10             	add    $0x10,%esp
  fd = open("small", O_CREATE|O_RDWR);
     4bc:	89 c6                	mov    %eax,%esi
    printf(stdout, "creat small succeeded; ok\n");
     4be:	a1 d8 5e 00 00       	mov    0x5ed8,%eax
  if(fd >= 0){
     4c3:	85 f6                	test   %esi,%esi
     4c5:	0f 88 77 01 00 00    	js     642 <writetest+0x1b2>
    printf(stdout, "creat small succeeded; ok\n");
     4cb:	83 ec 08             	sub    $0x8,%esp
  for(i = 0; i < 100; i++){
     4ce:	31 db                	xor    %ebx,%ebx
    printf(stdout, "creat small succeeded; ok\n");
     4d0:	68 35 3f 00 00       	push   $0x3f35
     4d5:	50                   	push   %eax
     4d6:	e8 a5 35 00 00       	call   3a80 <printf>
     4db:	83 c4 10             	add    $0x10,%esp
     4de:	66 90                	xchg   %ax,%ax
    if(write(fd, "aaaaaaaaaa", 10) != 10){
     4e0:	83 ec 04             	sub    $0x4,%esp
     4e3:	6a 0a                	push   $0xa
     4e5:	68 6c 3f 00 00       	push   $0x3f6c
     4ea:	56                   	push   %esi
     4eb:	e8 43 34 00 00       	call   3933 <write>
     4f0:	83 c4 10             	add    $0x10,%esp
     4f3:	83 f8 0a             	cmp    $0xa,%eax
     4f6:	0f 85 de 00 00 00    	jne    5da <writetest+0x14a>
    if(write(fd, "bbbbbbbbbb", 10) != 10){
     4fc:	83 ec 04             	sub    $0x4,%esp
     4ff:	6a 0a                	push   $0xa
     501:	68 77 3f 00 00       	push   $0x3f77
     506:	56                   	push   %esi
     507:	e8 27 34 00 00       	call   3933 <write>
     50c:	83 c4 10             	add    $0x10,%esp
     50f:	83 f8 0a             	cmp    $0xa,%eax
     512:	0f 85 db 00 00 00    	jne    5f3 <writetest+0x163>
  for(i = 0; i < 100; i++){
     518:	83 c3 01             	add    $0x1,%ebx
     51b:	83 fb 64             	cmp    $0x64,%ebx
     51e:	75 c0                	jne    4e0 <writetest+0x50>
  printf(stdout, "writes ok\n");
     520:	83 ec 08             	sub    $0x8,%esp
     523:	68 82 3f 00 00       	push   $0x3f82
     528:	ff 35 d8 5e 00 00    	push   0x5ed8
     52e:	e8 4d 35 00 00       	call   3a80 <printf>
  close(fd);
     533:	89 34 24             	mov    %esi,(%esp)
     536:	e8 00 34 00 00       	call   393b <close>
  fd = open("small", O_RDONLY);
     53b:	5e                   	pop    %esi
     53c:	58                   	pop    %eax
     53d:	6a 00                	push   $0x0
     53f:	68 2f 3f 00 00       	push   $0x3f2f
     544:	e8 0a 34 00 00       	call   3953 <open>
  if(fd >= 0){
     549:	83 c4 10             	add    $0x10,%esp
  fd = open("small", O_RDONLY);
     54c:	89 c3                	mov    %eax,%ebx
    printf(stdout, "open small succeeded ok\n");
     54e:	a1 d8 5e 00 00       	mov    0x5ed8,%eax
  if(fd >= 0){
     553:	85 db                	test   %ebx,%ebx
     555:	0f 88 b1 00 00 00    	js     60c <writetest+0x17c>
    printf(stdout, "open small succeeded ok\n");
     55b:	83 ec 08             	sub    $0x8,%esp
     55e:	68 8d 3f 00 00       	push   $0x3f8d
     563:	50                   	push   %eax
     564:	e8 17 35 00 00       	call   3a80 <printf>
  i = read(fd, buf, 2000);
     569:	83 c4 0c             	add    $0xc,%esp
     56c:	68 d0 07 00 00       	push   $0x7d0
     571:	68 20 86 00 00       	push   $0x8620
     576:	53                   	push   %ebx
     577:	e8 af 33 00 00       	call   392b <read>
  if(i == 2000){
     57c:	83 c4 10             	add    $0x10,%esp
  i = read(fd, buf, 2000);
     57f:	89 c2                	mov    %eax,%edx
    printf(stdout, "read succeeded ok\n");
     581:	a1 d8 5e 00 00       	mov    0x5ed8,%eax
  if(i == 2000){
     586:	81 fa d0 07 00 00    	cmp    $0x7d0,%edx
     58c:	0f 85 8c 00 00 00    	jne    61e <writetest+0x18e>
    printf(stdout, "read succeeded ok\n");
     592:	83 ec 08             	sub    $0x8,%esp
     595:	68 c1 3f 00 00       	push   $0x3fc1
     59a:	50                   	push   %eax
     59b:	e8 e0 34 00 00       	call   3a80 <printf>
  close(fd);
     5a0:	89 1c 24             	mov    %ebx,(%esp)
     5a3:	e8 93 33 00 00       	call   393b <close>
  if(unlink("small") < 0){
     5a8:	c7 04 24 2f 3f 00 00 	movl   $0x3f2f,(%esp)
     5af:	e8 af 33 00 00       	call   3963 <unlink>
     5b4:	83 c4 10             	add    $0x10,%esp
     5b7:	89 c2                	mov    %eax,%edx
    printf(stdout, "unlink small failed\n");
     5b9:	a1 d8 5e 00 00       	mov    0x5ed8,%eax
  if(unlink("small") < 0){
     5be:	85 d2                	test   %edx,%edx
     5c0:	78 6e                	js     630 <writetest+0x1a0>
  printf(stdout, "small file test ok\n");
     5c2:	83 ec 08             	sub    $0x8,%esp
     5c5:	68 e9 3f 00 00       	push   $0x3fe9
     5ca:	50                   	push   %eax
     5cb:	e8 b0 34 00 00       	call   3a80 <printf>
}
     5d0:	83 c4 10             	add    $0x10,%esp
     5d3:	8d 65 f8             	lea    -0x8(%ebp),%esp
     5d6:	5b                   	pop    %ebx
     5d7:	5e                   	pop    %esi
     5d8:	5d                   	pop    %ebp
     5d9:	c3                   	ret
      printf(stdout, "error: write aa %d new file failed\n", i);
     5da:	83 ec 04             	sub    $0x4,%esp
     5dd:	53                   	push   %ebx
     5de:	68 34 4e 00 00       	push   $0x4e34
     5e3:	ff 35 d8 5e 00 00    	push   0x5ed8
     5e9:	e8 92 34 00 00       	call   3a80 <printf>
      exit();
     5ee:	e8 20 33 00 00       	call   3913 <exit>
      printf(stdout, "error: write bb %d new file failed\n", i);
     5f3:	83 ec 04             	sub    $0x4,%esp
     5f6:	53                   	push   %ebx
     5f7:	68 58 4e 00 00       	push   $0x4e58
     5fc:	ff 35 d8 5e 00 00    	push   0x5ed8
     602:	e8 79 34 00 00       	call   3a80 <printf>
      exit();
     607:	e8 07 33 00 00       	call   3913 <exit>
    printf(stdout, "error: open small failed!\n");
     60c:	53                   	push   %ebx
     60d:	53                   	push   %ebx
     60e:	68 a6 3f 00 00       	push   $0x3fa6
     613:	50                   	push   %eax
     614:	e8 67 34 00 00       	call   3a80 <printf>
    exit();
     619:	e8 f5 32 00 00       	call   3913 <exit>
    printf(stdout, "read failed\n");
     61e:	51                   	push   %ecx
     61f:	51                   	push   %ecx
     620:	68 ed 42 00 00       	push   $0x42ed
     625:	50                   	push   %eax
     626:	e8 55 34 00 00       	call   3a80 <printf>
    exit();
     62b:	e8 e3 32 00 00       	call   3913 <exit>
    printf(stdout, "unlink small failed\n");
     630:	52                   	push   %edx
     631:	52                   	push   %edx
     632:	68 d4 3f 00 00       	push   $0x3fd4
     637:	50                   	push   %eax
     638:	e8 43 34 00 00       	call   3a80 <printf>
    exit();
     63d:	e8 d1 32 00 00       	call   3913 <exit>
    printf(stdout, "error: creat small failed!\n");
     642:	52                   	push   %edx
     643:	52                   	push   %edx
     644:	68 50 3f 00 00       	push   $0x3f50
     649:	50                   	push   %eax
     64a:	e8 31 34 00 00       	call   3a80 <printf>
    exit();
     64f:	e8 bf 32 00 00       	call   3913 <exit>
     654:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     658:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     65f:	00 

00000660 <writetest1>:
{
     660:	55                   	push   %ebp
     661:	89 e5                	mov    %esp,%ebp
     663:	56                   	push   %esi
     664:	53                   	push   %ebx
  printf(stdout, "big files test\n");
     665:	83 ec 08             	sub    $0x8,%esp
     668:	68 fd 3f 00 00       	push   $0x3ffd
     66d:	ff 35 d8 5e 00 00    	push   0x5ed8
     673:	e8 08 34 00 00       	call   3a80 <printf>
  fd = open("big", O_CREATE|O_RDWR);
     678:	58                   	pop    %eax
     679:	5a                   	pop    %edx
     67a:	68 02 02 00 00       	push   $0x202
     67f:	68 77 40 00 00       	push   $0x4077
     684:	e8 ca 32 00 00       	call   3953 <open>
  if(fd < 0){
     689:	83 c4 10             	add    $0x10,%esp
     68c:	85 c0                	test   %eax,%eax
     68e:	0f 88 67 01 00 00    	js     7fb <writetest1+0x19b>
     694:	89 c6                	mov    %eax,%esi
  for(i = 0; i < MAXFILE; i++){
     696:	31 db                	xor    %ebx,%ebx
     698:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     69f:	00 
    if(write(fd, buf, 512) != 512){
     6a0:	83 ec 04             	sub    $0x4,%esp
    ((int*)buf)[0] = i;
     6a3:	89 1d 20 86 00 00    	mov    %ebx,0x8620
    if(write(fd, buf, 512) != 512){
     6a9:	68 00 02 00 00       	push   $0x200
     6ae:	68 20 86 00 00       	push   $0x8620
     6b3:	56                   	push   %esi
     6b4:	e8 7a 32 00 00       	call   3933 <write>
     6b9:	83 c4 10             	add    $0x10,%esp
     6bc:	3d 00 02 00 00       	cmp    $0x200,%eax
     6c1:	0f 85 b9 00 00 00    	jne    780 <writetest1+0x120>
  for(i = 0; i < MAXFILE; i++){
     6c7:	83 c3 01             	add    $0x1,%ebx
     6ca:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
     6d0:	75 ce                	jne    6a0 <writetest1+0x40>
  close(fd);
     6d2:	83 ec 0c             	sub    $0xc,%esp
     6d5:	56                   	push   %esi
     6d6:	e8 60 32 00 00       	call   393b <close>
  fd = open("big", O_RDONLY);
     6db:	5e                   	pop    %esi
     6dc:	58                   	pop    %eax
     6dd:	6a 00                	push   $0x0
     6df:	68 77 40 00 00       	push   $0x4077
     6e4:	e8 6a 32 00 00       	call   3953 <open>
  if(fd < 0){
     6e9:	83 c4 10             	add    $0x10,%esp
  fd = open("big", O_RDONLY);
     6ec:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
     6ee:	85 c0                	test   %eax,%eax
     6f0:	0f 88 ee 00 00 00    	js     7e4 <writetest1+0x184>
  n = 0;
     6f6:	31 f6                	xor    %esi,%esi
     6f8:	eb 21                	jmp    71b <writetest1+0xbb>
     6fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(i != 512){
     700:	3d 00 02 00 00       	cmp    $0x200,%eax
     705:	0f 85 a5 00 00 00    	jne    7b0 <writetest1+0x150>
    if(((int*)buf)[0] != n){
     70b:	a1 20 86 00 00       	mov    0x8620,%eax
     710:	39 f0                	cmp    %esi,%eax
     712:	0f 85 81 00 00 00    	jne    799 <writetest1+0x139>
    n++;
     718:	83 c6 01             	add    $0x1,%esi
    i = read(fd, buf, 512);
     71b:	83 ec 04             	sub    $0x4,%esp
     71e:	68 00 02 00 00       	push   $0x200
     723:	68 20 86 00 00       	push   $0x8620
     728:	53                   	push   %ebx
     729:	e8 fd 31 00 00       	call   392b <read>
    if(i == 0){
     72e:	83 c4 10             	add    $0x10,%esp
     731:	85 c0                	test   %eax,%eax
     733:	75 cb                	jne    700 <writetest1+0xa0>
      if(n == MAXFILE - 1){
     735:	81 fe 8b 00 00 00    	cmp    $0x8b,%esi
     73b:	0f 84 88 00 00 00    	je     7c9 <writetest1+0x169>
  close(fd);
     741:	83 ec 0c             	sub    $0xc,%esp
     744:	53                   	push   %ebx
     745:	e8 f1 31 00 00       	call   393b <close>
  if(unlink("big") < 0){
     74a:	c7 04 24 77 40 00 00 	movl   $0x4077,(%esp)
     751:	e8 0d 32 00 00       	call   3963 <unlink>
     756:	83 c4 10             	add    $0x10,%esp
     759:	89 c2                	mov    %eax,%edx
    printf(stdout, "unlink big failed\n");
     75b:	a1 d8 5e 00 00       	mov    0x5ed8,%eax
  if(unlink("big") < 0){
     760:	85 d2                	test   %edx,%edx
     762:	0f 88 aa 00 00 00    	js     812 <writetest1+0x1b2>
  printf(stdout, "big files ok\n");
     768:	83 ec 08             	sub    $0x8,%esp
     76b:	68 9e 40 00 00       	push   $0x409e
     770:	50                   	push   %eax
     771:	e8 0a 33 00 00       	call   3a80 <printf>
}
     776:	83 c4 10             	add    $0x10,%esp
     779:	8d 65 f8             	lea    -0x8(%ebp),%esp
     77c:	5b                   	pop    %ebx
     77d:	5e                   	pop    %esi
     77e:	5d                   	pop    %ebp
     77f:	c3                   	ret
      printf(stdout, "error: write big file failed\n", i);
     780:	83 ec 04             	sub    $0x4,%esp
     783:	53                   	push   %ebx
     784:	68 27 40 00 00       	push   $0x4027
     789:	ff 35 d8 5e 00 00    	push   0x5ed8
     78f:	e8 ec 32 00 00       	call   3a80 <printf>
      exit();
     794:	e8 7a 31 00 00       	call   3913 <exit>
      printf(stdout, "read content of block %d is %d\n",
     799:	50                   	push   %eax
     79a:	56                   	push   %esi
     79b:	68 7c 4e 00 00       	push   $0x4e7c
     7a0:	ff 35 d8 5e 00 00    	push   0x5ed8
     7a6:	e8 d5 32 00 00       	call   3a80 <printf>
      exit();
     7ab:	e8 63 31 00 00       	call   3913 <exit>
      printf(stdout, "read failed %d\n", i);
     7b0:	83 ec 04             	sub    $0x4,%esp
     7b3:	50                   	push   %eax
     7b4:	68 7b 40 00 00       	push   $0x407b
     7b9:	ff 35 d8 5e 00 00    	push   0x5ed8
     7bf:	e8 bc 32 00 00       	call   3a80 <printf>
      exit();
     7c4:	e8 4a 31 00 00       	call   3913 <exit>
        printf(stdout, "read only %d blocks from big", n);
     7c9:	51                   	push   %ecx
     7ca:	68 8b 00 00 00       	push   $0x8b
     7cf:	68 5e 40 00 00       	push   $0x405e
     7d4:	ff 35 d8 5e 00 00    	push   0x5ed8
     7da:	e8 a1 32 00 00       	call   3a80 <printf>
        exit();
     7df:	e8 2f 31 00 00       	call   3913 <exit>
    printf(stdout, "error: open big failed!\n");
     7e4:	53                   	push   %ebx
     7e5:	53                   	push   %ebx
     7e6:	68 45 40 00 00       	push   $0x4045
     7eb:	ff 35 d8 5e 00 00    	push   0x5ed8
     7f1:	e8 8a 32 00 00       	call   3a80 <printf>
    exit();
     7f6:	e8 18 31 00 00       	call   3913 <exit>
    printf(stdout, "error: creat big failed!\n");
     7fb:	50                   	push   %eax
     7fc:	50                   	push   %eax
     7fd:	68 0d 40 00 00       	push   $0x400d
     802:	ff 35 d8 5e 00 00    	push   0x5ed8
     808:	e8 73 32 00 00       	call   3a80 <printf>
    exit();
     80d:	e8 01 31 00 00       	call   3913 <exit>
    printf(stdout, "unlink big failed\n");
     812:	52                   	push   %edx
     813:	52                   	push   %edx
     814:	68 8b 40 00 00       	push   $0x408b
     819:	50                   	push   %eax
     81a:	e8 61 32 00 00       	call   3a80 <printf>
    exit();
     81f:	e8 ef 30 00 00       	call   3913 <exit>
     824:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     828:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     82f:	00 

00000830 <createtest>:
{
     830:	55                   	push   %ebp
     831:	89 e5                	mov    %esp,%ebp
     833:	53                   	push   %ebx
  name[2] = '\0';
     834:	bb 30 00 00 00       	mov    $0x30,%ebx
{
     839:	83 ec 0c             	sub    $0xc,%esp
  printf(stdout, "many creates, followed by unlink test\n");
     83c:	68 9c 4e 00 00       	push   $0x4e9c
     841:	ff 35 d8 5e 00 00    	push   0x5ed8
     847:	e8 34 32 00 00       	call   3a80 <printf>
  name[0] = 'a';
     84c:	c6 05 10 86 00 00 61 	movb   $0x61,0x8610
  name[2] = '\0';
     853:	83 c4 10             	add    $0x10,%esp
     856:	c6 05 12 86 00 00 00 	movb   $0x0,0x8612
  for(i = 0; i < 52; i++){
     85d:	8d 76 00             	lea    0x0(%esi),%esi
    fd = open(name, O_CREATE|O_RDWR);
     860:	83 ec 08             	sub    $0x8,%esp
    name[1] = '0' + i;
     863:	88 1d 11 86 00 00    	mov    %bl,0x8611
  for(i = 0; i < 52; i++){
     869:	83 c3 01             	add    $0x1,%ebx
    fd = open(name, O_CREATE|O_RDWR);
     86c:	68 02 02 00 00       	push   $0x202
     871:	68 10 86 00 00       	push   $0x8610
     876:	e8 d8 30 00 00       	call   3953 <open>
    close(fd);
     87b:	89 04 24             	mov    %eax,(%esp)
     87e:	e8 b8 30 00 00       	call   393b <close>
  for(i = 0; i < 52; i++){
     883:	83 c4 10             	add    $0x10,%esp
     886:	80 fb 64             	cmp    $0x64,%bl
     889:	75 d5                	jne    860 <createtest+0x30>
  name[0] = 'a';
     88b:	c6 05 10 86 00 00 61 	movb   $0x61,0x8610
  name[2] = '\0';
     892:	bb 30 00 00 00       	mov    $0x30,%ebx
     897:	c6 05 12 86 00 00 00 	movb   $0x0,0x8612
  for(i = 0; i < 52; i++){
     89e:	66 90                	xchg   %ax,%ax
    unlink(name);
     8a0:	83 ec 0c             	sub    $0xc,%esp
    name[1] = '0' + i;
     8a3:	88 1d 11 86 00 00    	mov    %bl,0x8611
  for(i = 0; i < 52; i++){
     8a9:	83 c3 01             	add    $0x1,%ebx
    unlink(name);
     8ac:	68 10 86 00 00       	push   $0x8610
     8b1:	e8 ad 30 00 00       	call   3963 <unlink>
  for(i = 0; i < 52; i++){
     8b6:	83 c4 10             	add    $0x10,%esp
     8b9:	80 fb 64             	cmp    $0x64,%bl
     8bc:	75 e2                	jne    8a0 <createtest+0x70>
  printf(stdout, "many creates, followed by unlink; ok\n");
     8be:	83 ec 08             	sub    $0x8,%esp
     8c1:	68 c8 4e 00 00       	push   $0x4ec8
     8c6:	ff 35 d8 5e 00 00    	push   0x5ed8
     8cc:	e8 af 31 00 00       	call   3a80 <printf>
}
     8d1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     8d4:	83 c4 10             	add    $0x10,%esp
     8d7:	c9                   	leave
     8d8:	c3                   	ret
     8d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000008e0 <dirtest>:
{
     8e0:	55                   	push   %ebp
     8e1:	89 e5                	mov    %esp,%ebp
     8e3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "mkdir test\n");
     8e6:	68 ac 40 00 00       	push   $0x40ac
     8eb:	ff 35 d8 5e 00 00    	push   0x5ed8
     8f1:	e8 8a 31 00 00       	call   3a80 <printf>
  if(mkdir("dir0") < 0){
     8f6:	c7 04 24 b8 40 00 00 	movl   $0x40b8,(%esp)
     8fd:	e8 79 30 00 00       	call   397b <mkdir>
     902:	83 c4 10             	add    $0x10,%esp
     905:	85 c0                	test   %eax,%eax
     907:	78 5a                	js     963 <dirtest+0x83>
  if(chdir("dir0") < 0){
     909:	83 ec 0c             	sub    $0xc,%esp
     90c:	68 b8 40 00 00       	push   $0x40b8
     911:	e8 6d 30 00 00       	call   3983 <chdir>
     916:	83 c4 10             	add    $0x10,%esp
     919:	85 c0                	test   %eax,%eax
     91b:	0f 88 82 00 00 00    	js     9a3 <dirtest+0xc3>
  if(chdir("..") < 0){
     921:	83 ec 0c             	sub    $0xc,%esp
     924:	68 5d 46 00 00       	push   $0x465d
     929:	e8 55 30 00 00       	call   3983 <chdir>
     92e:	83 c4 10             	add    $0x10,%esp
     931:	85 c0                	test   %eax,%eax
     933:	78 57                	js     98c <dirtest+0xac>
  if(unlink("dir0") < 0){
     935:	83 ec 0c             	sub    $0xc,%esp
     938:	68 b8 40 00 00       	push   $0x40b8
     93d:	e8 21 30 00 00       	call   3963 <unlink>
     942:	83 c4 10             	add    $0x10,%esp
     945:	89 c2                	mov    %eax,%edx
    printf(stdout, "unlink dir0 failed\n");
     947:	a1 d8 5e 00 00       	mov    0x5ed8,%eax
  if(unlink("dir0") < 0){
     94c:	85 d2                	test   %edx,%edx
     94e:	78 2a                	js     97a <dirtest+0x9a>
  printf(stdout, "mkdir test ok\n");
     950:	83 ec 08             	sub    $0x8,%esp
     953:	68 f5 40 00 00       	push   $0x40f5
     958:	50                   	push   %eax
     959:	e8 22 31 00 00       	call   3a80 <printf>
}
     95e:	83 c4 10             	add    $0x10,%esp
     961:	c9                   	leave
     962:	c3                   	ret
    printf(stdout, "mkdir failed\n");
     963:	50                   	push   %eax
     964:	50                   	push   %eax
     965:	68 e8 3d 00 00       	push   $0x3de8
     96a:	ff 35 d8 5e 00 00    	push   0x5ed8
     970:	e8 0b 31 00 00       	call   3a80 <printf>
    exit();
     975:	e8 99 2f 00 00       	call   3913 <exit>
    printf(stdout, "unlink dir0 failed\n");
     97a:	52                   	push   %edx
     97b:	52                   	push   %edx
     97c:	68 e1 40 00 00       	push   $0x40e1
     981:	50                   	push   %eax
     982:	e8 f9 30 00 00       	call   3a80 <printf>
    exit();
     987:	e8 87 2f 00 00       	call   3913 <exit>
    printf(stdout, "chdir .. failed\n");
     98c:	51                   	push   %ecx
     98d:	51                   	push   %ecx
     98e:	68 d0 40 00 00       	push   $0x40d0
     993:	ff 35 d8 5e 00 00    	push   0x5ed8
     999:	e8 e2 30 00 00       	call   3a80 <printf>
    exit();
     99e:	e8 70 2f 00 00       	call   3913 <exit>
    printf(stdout, "chdir dir0 failed\n");
     9a3:	50                   	push   %eax
     9a4:	50                   	push   %eax
     9a5:	68 bd 40 00 00       	push   $0x40bd
     9aa:	ff 35 d8 5e 00 00    	push   0x5ed8
     9b0:	e8 cb 30 00 00       	call   3a80 <printf>
    exit();
     9b5:	e8 59 2f 00 00       	call   3913 <exit>
     9ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000009c0 <exectest>:
{
     9c0:	55                   	push   %ebp
     9c1:	89 e5                	mov    %esp,%ebp
     9c3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exec test\n");
     9c6:	68 04 41 00 00       	push   $0x4104
     9cb:	ff 35 d8 5e 00 00    	push   0x5ed8
     9d1:	e8 aa 30 00 00       	call   3a80 <printf>
  if(exec("echo", echoargv) < 0){
     9d6:	5a                   	pop    %edx
     9d7:	59                   	pop    %ecx
     9d8:	68 dc 5e 00 00       	push   $0x5edc
     9dd:	68 cd 3e 00 00       	push   $0x3ecd
     9e2:	e8 64 2f 00 00       	call   394b <exec>
     9e7:	83 c4 10             	add    $0x10,%esp
     9ea:	85 c0                	test   %eax,%eax
     9ec:	78 02                	js     9f0 <exectest+0x30>
}
     9ee:	c9                   	leave
     9ef:	c3                   	ret
    printf(stdout, "exec echo failed\n");
     9f0:	50                   	push   %eax
     9f1:	50                   	push   %eax
     9f2:	68 0f 41 00 00       	push   $0x410f
     9f7:	ff 35 d8 5e 00 00    	push   0x5ed8
     9fd:	e8 7e 30 00 00       	call   3a80 <printf>
    exit();
     a02:	e8 0c 2f 00 00       	call   3913 <exit>
     a07:	90                   	nop
     a08:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     a0f:	00 

00000a10 <pipe1>:
{
     a10:	55                   	push   %ebp
     a11:	89 e5                	mov    %esp,%ebp
     a13:	57                   	push   %edi
     a14:	56                   	push   %esi
  if(pipe(fds) != 0){
     a15:	8d 45 e0             	lea    -0x20(%ebp),%eax
{
     a18:	53                   	push   %ebx
     a19:	83 ec 28             	sub    $0x28,%esp
  if(pipe(fds) != 0){
     a1c:	50                   	push   %eax
     a1d:	e8 01 2f 00 00       	call   3923 <pipe>
     a22:	83 c4 10             	add    $0x10,%esp
     a25:	85 c0                	test   %eax,%eax
     a27:	0f 85 39 01 00 00    	jne    b66 <pipe1+0x156>
  pid = fork();
     a2d:	e8 d9 2e 00 00       	call   390b <fork>
  if(pid == 0){
     a32:	85 c0                	test   %eax,%eax
     a34:	0f 84 82 00 00 00    	je     abc <pipe1+0xac>
  } else if(pid > 0){
     a3a:	0f 8e 39 01 00 00    	jle    b79 <pipe1+0x169>
    close(fds[1]);
     a40:	83 ec 0c             	sub    $0xc,%esp
     a43:	ff 75 e4             	push   -0x1c(%ebp)
    total = 0;
     a46:	31 f6                	xor    %esi,%esi
  seq = 0;
     a48:	31 db                	xor    %ebx,%ebx
    cc = 1;
     a4a:	bf 01 00 00 00       	mov    $0x1,%edi
    close(fds[1]);
     a4f:	e8 e7 2e 00 00       	call   393b <close>
    while((n = read(fds[0], buf, cc)) > 0){
     a54:	83 c4 10             	add    $0x10,%esp
     a57:	83 ec 04             	sub    $0x4,%esp
     a5a:	57                   	push   %edi
     a5b:	68 20 86 00 00       	push   $0x8620
     a60:	ff 75 e0             	push   -0x20(%ebp)
     a63:	e8 c3 2e 00 00       	call   392b <read>
     a68:	83 c4 10             	add    $0x10,%esp
     a6b:	89 c1                	mov    %eax,%ecx
     a6d:	85 c0                	test   %eax,%eax
     a6f:	0f 8e b0 00 00 00    	jle    b25 <pipe1+0x115>
     a75:	8d 14 0b             	lea    (%ebx,%ecx,1),%edx
      for(i = 0; i < n; i++){
     a78:	31 c0                	xor    %eax,%eax
     a7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     a80:	38 98 20 86 00 00    	cmp    %bl,0x8620(%eax)
     a86:	75 1a                	jne    aa2 <pipe1+0x92>
     a88:	83 c3 01             	add    $0x1,%ebx
      for(i = 0; i < n; i++){
     a8b:	83 c0 01             	add    $0x1,%eax
     a8e:	39 d3                	cmp    %edx,%ebx
     a90:	75 ee                	jne    a80 <pipe1+0x70>
      cc = cc * 2;
     a92:	01 ff                	add    %edi,%edi
      if(cc > sizeof(buf))
     a94:	b8 00 20 00 00       	mov    $0x2000,%eax
      total += n;
     a99:	01 ce                	add    %ecx,%esi
      if(cc > sizeof(buf))
     a9b:	39 c7                	cmp    %eax,%edi
     a9d:	0f 4f f8             	cmovg  %eax,%edi
     aa0:	eb b5                	jmp    a57 <pipe1+0x47>
          printf(1, "pipe1 oops 2\n");
     aa2:	83 ec 08             	sub    $0x8,%esp
     aa5:	68 3e 41 00 00       	push   $0x413e
     aaa:	6a 01                	push   $0x1
     aac:	e8 cf 2f 00 00       	call   3a80 <printf>
     ab1:	83 c4 10             	add    $0x10,%esp
}
     ab4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     ab7:	5b                   	pop    %ebx
     ab8:	5e                   	pop    %esi
     ab9:	5f                   	pop    %edi
     aba:	5d                   	pop    %ebp
     abb:	c3                   	ret
    close(fds[0]);
     abc:	83 ec 0c             	sub    $0xc,%esp
     abf:	ff 75 e0             	push   -0x20(%ebp)
  seq = 0;
     ac2:	31 db                	xor    %ebx,%ebx
    close(fds[0]);
     ac4:	e8 72 2e 00 00       	call   393b <close>
     ac9:	83 c4 10             	add    $0x10,%esp
      for(i = 0; i < 1033; i++)
     acc:	31 c0                	xor    %eax,%eax
     ace:	66 90                	xchg   %ax,%ax
     ad0:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     ad7:	00 
     ad8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     adf:	00 
        buf[i] = seq++;
     ae0:	8d 14 18             	lea    (%eax,%ebx,1),%edx
      for(i = 0; i < 1033; i++)
     ae3:	83 c0 01             	add    $0x1,%eax
        buf[i] = seq++;
     ae6:	88 90 1f 86 00 00    	mov    %dl,0x861f(%eax)
      for(i = 0; i < 1033; i++)
     aec:	3d 09 04 00 00       	cmp    $0x409,%eax
     af1:	75 ed                	jne    ae0 <pipe1+0xd0>
      if(write(fds[1], buf, 1033) != 1033){
     af3:	83 ec 04             	sub    $0x4,%esp
     af6:	68 09 04 00 00       	push   $0x409
     afb:	68 20 86 00 00       	push   $0x8620
     b00:	ff 75 e4             	push   -0x1c(%ebp)
     b03:	e8 2b 2e 00 00       	call   3933 <write>
     b08:	83 c4 10             	add    $0x10,%esp
     b0b:	3d 09 04 00 00       	cmp    $0x409,%eax
     b10:	75 7a                	jne    b8c <pipe1+0x17c>
     b12:	81 c3 09 04 00 00    	add    $0x409,%ebx
    for(n = 0; n < 5; n++){
     b18:	81 fb 2d 14 00 00    	cmp    $0x142d,%ebx
     b1e:	75 ac                	jne    acc <pipe1+0xbc>
    exit();
     b20:	e8 ee 2d 00 00       	call   3913 <exit>
    if(total != 5 * 1033){
     b25:	81 fe 2d 14 00 00    	cmp    $0x142d,%esi
     b2b:	75 26                	jne    b53 <pipe1+0x143>
    close(fds[0]);
     b2d:	83 ec 0c             	sub    $0xc,%esp
     b30:	ff 75 e0             	push   -0x20(%ebp)
     b33:	e8 03 2e 00 00       	call   393b <close>
    wait();
     b38:	e8 de 2d 00 00       	call   391b <wait>
  printf(1, "pipe1 ok\n");
     b3d:	5a                   	pop    %edx
     b3e:	59                   	pop    %ecx
     b3f:	68 63 41 00 00       	push   $0x4163
     b44:	6a 01                	push   $0x1
     b46:	e8 35 2f 00 00       	call   3a80 <printf>
     b4b:	83 c4 10             	add    $0x10,%esp
     b4e:	e9 61 ff ff ff       	jmp    ab4 <pipe1+0xa4>
      printf(1, "pipe1 oops 3 total %d\n", total);
     b53:	53                   	push   %ebx
     b54:	56                   	push   %esi
     b55:	68 4c 41 00 00       	push   $0x414c
     b5a:	6a 01                	push   $0x1
     b5c:	e8 1f 2f 00 00       	call   3a80 <printf>
      exit();
     b61:	e8 ad 2d 00 00       	call   3913 <exit>
    printf(1, "pipe() failed\n");
     b66:	57                   	push   %edi
     b67:	57                   	push   %edi
     b68:	68 21 41 00 00       	push   $0x4121
     b6d:	6a 01                	push   $0x1
     b6f:	e8 0c 2f 00 00       	call   3a80 <printf>
    exit();
     b74:	e8 9a 2d 00 00       	call   3913 <exit>
    printf(1, "fork() failed\n");
     b79:	50                   	push   %eax
     b7a:	50                   	push   %eax
     b7b:	68 6d 41 00 00       	push   $0x416d
     b80:	6a 01                	push   $0x1
     b82:	e8 f9 2e 00 00       	call   3a80 <printf>
    exit();
     b87:	e8 87 2d 00 00       	call   3913 <exit>
        printf(1, "pipe1 oops 1\n");
     b8c:	56                   	push   %esi
     b8d:	56                   	push   %esi
     b8e:	68 30 41 00 00       	push   $0x4130
     b93:	6a 01                	push   $0x1
     b95:	e8 e6 2e 00 00       	call   3a80 <printf>
        exit();
     b9a:	e8 74 2d 00 00       	call   3913 <exit>
     b9f:	90                   	nop

00000ba0 <preempt>:
{
     ba0:	55                   	push   %ebp
     ba1:	89 e5                	mov    %esp,%ebp
     ba3:	56                   	push   %esi
     ba4:	53                   	push   %ebx
     ba5:	83 ec 28             	sub    $0x28,%esp
  printf(1, "preempt: ");
     ba8:	68 7c 41 00 00       	push   $0x417c
     bad:	6a 01                	push   $0x1
     baf:	e8 cc 2e 00 00       	call   3a80 <printf>
  pid1 = fork();
     bb4:	e8 52 2d 00 00       	call   390b <fork>
  if(pid1 == 0)
     bb9:	83 c4 10             	add    $0x10,%esp
     bbc:	85 c0                	test   %eax,%eax
     bbe:	75 08                	jne    bc8 <preempt+0x28>
    for(;;)
     bc0:	eb fe                	jmp    bc0 <preempt+0x20>
     bc2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     bc8:	89 c3                	mov    %eax,%ebx
  pid2 = fork();
     bca:	e8 3c 2d 00 00       	call   390b <fork>
  if(pid2 == 0)
     bcf:	85 c0                	test   %eax,%eax
     bd1:	75 05                	jne    bd8 <preempt+0x38>
    for(;;)
     bd3:	eb fe                	jmp    bd3 <preempt+0x33>
     bd5:	8d 76 00             	lea    0x0(%esi),%esi
  pipe(pfds);
     bd8:	83 ec 0c             	sub    $0xc,%esp
     bdb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     bde:	8d 45 f0             	lea    -0x10(%ebp),%eax
     be1:	50                   	push   %eax
     be2:	e8 3c 2d 00 00       	call   3923 <pipe>
  pid3 = fork();
     be7:	e8 1f 2d 00 00       	call   390b <fork>
  if(pid3 == 0){
     bec:	83 c4 10             	add    $0x10,%esp
  pid3 = fork();
     bef:	89 c6                	mov    %eax,%esi
  if(pid3 == 0){
     bf1:	85 c0                	test   %eax,%eax
     bf3:	75 3b                	jne    c30 <preempt+0x90>
    close(pfds[0]);
     bf5:	83 ec 0c             	sub    $0xc,%esp
     bf8:	ff 75 f0             	push   -0x10(%ebp)
     bfb:	e8 3b 2d 00 00       	call   393b <close>
    if(write(pfds[1], "x", 1) != 1)
     c00:	83 c4 0c             	add    $0xc,%esp
     c03:	6a 01                	push   $0x1
     c05:	68 41 47 00 00       	push   $0x4741
     c0a:	ff 75 f4             	push   -0xc(%ebp)
     c0d:	e8 21 2d 00 00       	call   3933 <write>
     c12:	83 c4 10             	add    $0x10,%esp
     c15:	83 f8 01             	cmp    $0x1,%eax
     c18:	0f 85 b7 00 00 00    	jne    cd5 <preempt+0x135>
    close(pfds[1]);
     c1e:	83 ec 0c             	sub    $0xc,%esp
     c21:	ff 75 f4             	push   -0xc(%ebp)
     c24:	e8 12 2d 00 00       	call   393b <close>
     c29:	83 c4 10             	add    $0x10,%esp
    for(;;)
     c2c:	eb fe                	jmp    c2c <preempt+0x8c>
     c2e:	66 90                	xchg   %ax,%ax
  close(pfds[1]);
     c30:	83 ec 0c             	sub    $0xc,%esp
     c33:	ff 75 f4             	push   -0xc(%ebp)
     c36:	e8 00 2d 00 00       	call   393b <close>
  if(read(pfds[0], buf, sizeof(buf)) != 1){
     c3b:	83 c4 0c             	add    $0xc,%esp
     c3e:	68 00 20 00 00       	push   $0x2000
     c43:	68 20 86 00 00       	push   $0x8620
     c48:	ff 75 f0             	push   -0x10(%ebp)
     c4b:	e8 db 2c 00 00       	call   392b <read>
     c50:	83 c4 10             	add    $0x10,%esp
     c53:	83 f8 01             	cmp    $0x1,%eax
     c56:	75 69                	jne    cc1 <preempt+0x121>
  close(pfds[0]);
     c58:	83 ec 0c             	sub    $0xc,%esp
     c5b:	ff 75 f0             	push   -0x10(%ebp)
     c5e:	e8 d8 2c 00 00       	call   393b <close>
  printf(1, "kill... ");
     c63:	58                   	pop    %eax
     c64:	5a                   	pop    %edx
     c65:	68 ad 41 00 00       	push   $0x41ad
     c6a:	6a 01                	push   $0x1
     c6c:	e8 0f 2e 00 00       	call   3a80 <printf>
  kill(pid1);
     c71:	89 1c 24             	mov    %ebx,(%esp)
     c74:	e8 ca 2c 00 00       	call   3943 <kill>
  kill(pid2);
     c79:	8b 55 e4             	mov    -0x1c(%ebp),%edx
     c7c:	89 14 24             	mov    %edx,(%esp)
     c7f:	e8 bf 2c 00 00       	call   3943 <kill>
  kill(pid3);
     c84:	89 34 24             	mov    %esi,(%esp)
     c87:	e8 b7 2c 00 00       	call   3943 <kill>
  printf(1, "wait... ");
     c8c:	59                   	pop    %ecx
     c8d:	5b                   	pop    %ebx
     c8e:	68 b6 41 00 00       	push   $0x41b6
     c93:	6a 01                	push   $0x1
     c95:	e8 e6 2d 00 00       	call   3a80 <printf>
  wait();
     c9a:	e8 7c 2c 00 00       	call   391b <wait>
  wait();
     c9f:	e8 77 2c 00 00       	call   391b <wait>
  wait();
     ca4:	e8 72 2c 00 00       	call   391b <wait>
  printf(1, "preempt ok\n");
     ca9:	5e                   	pop    %esi
     caa:	58                   	pop    %eax
     cab:	68 bf 41 00 00       	push   $0x41bf
     cb0:	6a 01                	push   $0x1
     cb2:	e8 c9 2d 00 00       	call   3a80 <printf>
     cb7:	83 c4 10             	add    $0x10,%esp
}
     cba:	8d 65 f8             	lea    -0x8(%ebp),%esp
     cbd:	5b                   	pop    %ebx
     cbe:	5e                   	pop    %esi
     cbf:	5d                   	pop    %ebp
     cc0:	c3                   	ret
    printf(1, "preempt read error");
     cc1:	83 ec 08             	sub    $0x8,%esp
     cc4:	68 9a 41 00 00       	push   $0x419a
     cc9:	6a 01                	push   $0x1
     ccb:	e8 b0 2d 00 00       	call   3a80 <printf>
     cd0:	83 c4 10             	add    $0x10,%esp
     cd3:	eb e5                	jmp    cba <preempt+0x11a>
      printf(1, "preempt write error");
     cd5:	83 ec 08             	sub    $0x8,%esp
     cd8:	68 86 41 00 00       	push   $0x4186
     cdd:	6a 01                	push   $0x1
     cdf:	e8 9c 2d 00 00       	call   3a80 <printf>
     ce4:	83 c4 10             	add    $0x10,%esp
     ce7:	e9 32 ff ff ff       	jmp    c1e <preempt+0x7e>
     cec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000cf0 <exitwait>:
{
     cf0:	55                   	push   %ebp
     cf1:	89 e5                	mov    %esp,%ebp
     cf3:	56                   	push   %esi
     cf4:	be 64 00 00 00       	mov    $0x64,%esi
     cf9:	53                   	push   %ebx
     cfa:	eb 14                	jmp    d10 <exitwait+0x20>
     cfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid){
     d00:	74 68                	je     d6a <exitwait+0x7a>
      if(wait() != pid){
     d02:	e8 14 2c 00 00       	call   391b <wait>
     d07:	39 d8                	cmp    %ebx,%eax
     d09:	75 2d                	jne    d38 <exitwait+0x48>
  for(i = 0; i < 100; i++){
     d0b:	83 ee 01             	sub    $0x1,%esi
     d0e:	74 41                	je     d51 <exitwait+0x61>
    pid = fork();
     d10:	e8 f6 2b 00 00       	call   390b <fork>
     d15:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
     d17:	85 c0                	test   %eax,%eax
     d19:	79 e5                	jns    d00 <exitwait+0x10>
      printf(1, "fork failed\n");
     d1b:	83 ec 08             	sub    $0x8,%esp
     d1e:	68 29 4d 00 00       	push   $0x4d29
     d23:	6a 01                	push   $0x1
     d25:	e8 56 2d 00 00       	call   3a80 <printf>
      return;
     d2a:	83 c4 10             	add    $0x10,%esp
}
     d2d:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d30:	5b                   	pop    %ebx
     d31:	5e                   	pop    %esi
     d32:	5d                   	pop    %ebp
     d33:	c3                   	ret
     d34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        printf(1, "wait wrong pid\n");
     d38:	83 ec 08             	sub    $0x8,%esp
     d3b:	68 cb 41 00 00       	push   $0x41cb
     d40:	6a 01                	push   $0x1
     d42:	e8 39 2d 00 00       	call   3a80 <printf>
        return;
     d47:	83 c4 10             	add    $0x10,%esp
}
     d4a:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d4d:	5b                   	pop    %ebx
     d4e:	5e                   	pop    %esi
     d4f:	5d                   	pop    %ebp
     d50:	c3                   	ret
  printf(1, "exitwait ok\n");
     d51:	83 ec 08             	sub    $0x8,%esp
     d54:	68 db 41 00 00       	push   $0x41db
     d59:	6a 01                	push   $0x1
     d5b:	e8 20 2d 00 00       	call   3a80 <printf>
     d60:	83 c4 10             	add    $0x10,%esp
}
     d63:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d66:	5b                   	pop    %ebx
     d67:	5e                   	pop    %esi
     d68:	5d                   	pop    %ebp
     d69:	c3                   	ret
      exit();
     d6a:	e8 a4 2b 00 00       	call   3913 <exit>
     d6f:	90                   	nop

00000d70 <mem>:
{
     d70:	55                   	push   %ebp
     d71:	89 e5                	mov    %esp,%ebp
     d73:	56                   	push   %esi
     d74:	53                   	push   %ebx
     d75:	31 db                	xor    %ebx,%ebx
  printf(1, "mem test\n");
     d77:	83 ec 08             	sub    $0x8,%esp
     d7a:	68 e8 41 00 00       	push   $0x41e8
     d7f:	6a 01                	push   $0x1
     d81:	e8 fa 2c 00 00       	call   3a80 <printf>
  ppid = getpid();
     d86:	e8 08 2c 00 00       	call   3993 <getpid>
     d8b:	89 c6                	mov    %eax,%esi
  if((pid = fork()) == 0){
     d8d:	e8 79 2b 00 00       	call   390b <fork>
     d92:	83 c4 10             	add    $0x10,%esp
     d95:	85 c0                	test   %eax,%eax
     d97:	74 0b                	je     da4 <mem+0x34>
     d99:	e9 8a 00 00 00       	jmp    e28 <mem+0xb8>
     d9e:	66 90                	xchg   %ax,%ax
      *(char**)m2 = m1;
     da0:	89 18                	mov    %ebx,(%eax)
      m1 = m2;
     da2:	89 c3                	mov    %eax,%ebx
    while((m2 = malloc(10001)) != 0){
     da4:	83 ec 0c             	sub    $0xc,%esp
     da7:	68 11 27 00 00       	push   $0x2711
     dac:	e8 4f 2f 00 00       	call   3d00 <malloc>
     db1:	83 c4 10             	add    $0x10,%esp
     db4:	85 c0                	test   %eax,%eax
     db6:	75 e8                	jne    da0 <mem+0x30>
    while(m1){
     db8:	85 db                	test   %ebx,%ebx
     dba:	74 18                	je     dd4 <mem+0x64>
     dbc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      m2 = *(char**)m1;
     dc0:	89 d8                	mov    %ebx,%eax
      free(m1);
     dc2:	83 ec 0c             	sub    $0xc,%esp
      m2 = *(char**)m1;
     dc5:	8b 1b                	mov    (%ebx),%ebx
      free(m1);
     dc7:	50                   	push   %eax
     dc8:	e8 93 2e 00 00       	call   3c60 <free>
    while(m1){
     dcd:	83 c4 10             	add    $0x10,%esp
     dd0:	85 db                	test   %ebx,%ebx
     dd2:	75 ec                	jne    dc0 <mem+0x50>
    m1 = malloc(1024*20);
     dd4:	83 ec 0c             	sub    $0xc,%esp
     dd7:	68 00 50 00 00       	push   $0x5000
     ddc:	e8 1f 2f 00 00       	call   3d00 <malloc>
    if(m1 == 0){
     de1:	83 c4 10             	add    $0x10,%esp
     de4:	85 c0                	test   %eax,%eax
     de6:	74 20                	je     e08 <mem+0x98>
    free(m1);
     de8:	83 ec 0c             	sub    $0xc,%esp
     deb:	50                   	push   %eax
     dec:	e8 6f 2e 00 00       	call   3c60 <free>
    printf(1, "mem ok\n");
     df1:	58                   	pop    %eax
     df2:	5a                   	pop    %edx
     df3:	68 0c 42 00 00       	push   $0x420c
     df8:	6a 01                	push   $0x1
     dfa:	e8 81 2c 00 00       	call   3a80 <printf>
    exit();
     dff:	e8 0f 2b 00 00       	call   3913 <exit>
     e04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(1, "couldn't allocate mem?!!\n");
     e08:	83 ec 08             	sub    $0x8,%esp
     e0b:	68 f2 41 00 00       	push   $0x41f2
     e10:	6a 01                	push   $0x1
     e12:	e8 69 2c 00 00       	call   3a80 <printf>
      kill(ppid);
     e17:	89 34 24             	mov    %esi,(%esp)
     e1a:	e8 24 2b 00 00       	call   3943 <kill>
      exit();
     e1f:	e8 ef 2a 00 00       	call   3913 <exit>
     e24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
}
     e28:	8d 65 f8             	lea    -0x8(%ebp),%esp
     e2b:	5b                   	pop    %ebx
     e2c:	5e                   	pop    %esi
     e2d:	5d                   	pop    %ebp
    wait();
     e2e:	e9 e8 2a 00 00       	jmp    391b <wait>
     e33:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
     e38:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     e3f:	00 

00000e40 <sharedfd>:
{
     e40:	55                   	push   %ebp
     e41:	89 e5                	mov    %esp,%ebp
     e43:	57                   	push   %edi
     e44:	56                   	push   %esi
     e45:	53                   	push   %ebx
     e46:	83 ec 34             	sub    $0x34,%esp
  printf(1, "sharedfd test\n");
     e49:	68 14 42 00 00       	push   $0x4214
     e4e:	6a 01                	push   $0x1
     e50:	e8 2b 2c 00 00       	call   3a80 <printf>
  unlink("sharedfd");
     e55:	c7 04 24 23 42 00 00 	movl   $0x4223,(%esp)
     e5c:	e8 02 2b 00 00       	call   3963 <unlink>
  fd = open("sharedfd", O_CREATE|O_RDWR);
     e61:	5b                   	pop    %ebx
     e62:	5e                   	pop    %esi
     e63:	68 02 02 00 00       	push   $0x202
     e68:	68 23 42 00 00       	push   $0x4223
     e6d:	e8 e1 2a 00 00       	call   3953 <open>
  if(fd < 0){
     e72:	83 c4 10             	add    $0x10,%esp
     e75:	85 c0                	test   %eax,%eax
     e77:	0f 88 3a 01 00 00    	js     fb7 <sharedfd+0x177>
     e7d:	89 c7                	mov    %eax,%edi
  memset(buf, pid==0?'c':'p', sizeof(buf));
     e7f:	8d 75 dc             	lea    -0x24(%ebp),%esi
     e82:	bb e8 03 00 00       	mov    $0x3e8,%ebx
  pid = fork();
     e87:	e8 7f 2a 00 00       	call   390b <fork>
  memset(buf, pid==0?'c':'p', sizeof(buf));
     e8c:	83 f8 01             	cmp    $0x1,%eax
  pid = fork();
     e8f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  memset(buf, pid==0?'c':'p', sizeof(buf));
     e92:	19 c0                	sbb    %eax,%eax
     e94:	83 ec 04             	sub    $0x4,%esp
     e97:	83 e0 f3             	and    $0xfffffff3,%eax
     e9a:	6a 0a                	push   $0xa
     e9c:	83 c0 70             	add    $0x70,%eax
     e9f:	50                   	push   %eax
     ea0:	56                   	push   %esi
     ea1:	e8 ca 28 00 00       	call   3770 <memset>
     ea6:	83 c4 10             	add    $0x10,%esp
     ea9:	eb 0a                	jmp    eb5 <sharedfd+0x75>
     eab:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  for(i = 0; i < 1000; i++){
     eb0:	83 eb 01             	sub    $0x1,%ebx
     eb3:	74 26                	je     edb <sharedfd+0x9b>
    if(write(fd, buf, sizeof(buf)) != sizeof(buf)){
     eb5:	83 ec 04             	sub    $0x4,%esp
     eb8:	6a 0a                	push   $0xa
     eba:	56                   	push   %esi
     ebb:	57                   	push   %edi
     ebc:	e8 72 2a 00 00       	call   3933 <write>
     ec1:	83 c4 10             	add    $0x10,%esp
     ec4:	83 f8 0a             	cmp    $0xa,%eax
     ec7:	74 e7                	je     eb0 <sharedfd+0x70>
      printf(1, "fstests: write sharedfd failed\n");
     ec9:	83 ec 08             	sub    $0x8,%esp
     ecc:	68 1c 4f 00 00       	push   $0x4f1c
     ed1:	6a 01                	push   $0x1
     ed3:	e8 a8 2b 00 00       	call   3a80 <printf>
      break;
     ed8:	83 c4 10             	add    $0x10,%esp
  if(pid == 0)
     edb:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
     ede:	85 c9                	test   %ecx,%ecx
     ee0:	0f 84 05 01 00 00    	je     feb <sharedfd+0x1ab>
    wait();
     ee6:	e8 30 2a 00 00       	call   391b <wait>
  close(fd);
     eeb:	83 ec 0c             	sub    $0xc,%esp
  nc = np = 0;
     eee:	31 db                	xor    %ebx,%ebx
  close(fd);
     ef0:	57                   	push   %edi
     ef1:	8d 7d e6             	lea    -0x1a(%ebp),%edi
     ef4:	e8 42 2a 00 00       	call   393b <close>
  fd = open("sharedfd", 0);
     ef9:	58                   	pop    %eax
     efa:	5a                   	pop    %edx
     efb:	6a 00                	push   $0x0
     efd:	68 23 42 00 00       	push   $0x4223
     f02:	e8 4c 2a 00 00       	call   3953 <open>
  if(fd < 0){
     f07:	83 c4 10             	add    $0x10,%esp
  fd = open("sharedfd", 0);
     f0a:	89 45 d0             	mov    %eax,-0x30(%ebp)
  if(fd < 0){
     f0d:	85 c0                	test   %eax,%eax
     f0f:	0f 88 bc 00 00 00    	js     fd1 <sharedfd+0x191>
     f15:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
     f1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((n = read(fd, buf, sizeof(buf))) > 0){
     f20:	83 ec 04             	sub    $0x4,%esp
     f23:	6a 0a                	push   $0xa
     f25:	56                   	push   %esi
     f26:	ff 75 d0             	push   -0x30(%ebp)
     f29:	e8 fd 29 00 00       	call   392b <read>
     f2e:	83 c4 10             	add    $0x10,%esp
     f31:	85 c0                	test   %eax,%eax
     f33:	7e 3b                	jle    f70 <sharedfd+0x130>
     f35:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     f38:	89 f0                	mov    %esi,%eax
     f3a:	eb 16                	jmp    f52 <sharedfd+0x112>
     f3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        np++;
     f40:	80 f9 70             	cmp    $0x70,%cl
     f43:	0f 94 c1             	sete   %cl
    for(i = 0; i < sizeof(buf); i++){
     f46:	83 c0 01             	add    $0x1,%eax
        np++;
     f49:	0f b6 c9             	movzbl %cl,%ecx
     f4c:	01 cb                	add    %ecx,%ebx
    for(i = 0; i < sizeof(buf); i++){
     f4e:	39 f8                	cmp    %edi,%eax
     f50:	74 12                	je     f64 <sharedfd+0x124>
      if(buf[i] == 'c')
     f52:	0f b6 08             	movzbl (%eax),%ecx
     f55:	80 f9 63             	cmp    $0x63,%cl
     f58:	75 e6                	jne    f40 <sharedfd+0x100>
    for(i = 0; i < sizeof(buf); i++){
     f5a:	83 c0 01             	add    $0x1,%eax
        nc++;
     f5d:	83 c2 01             	add    $0x1,%edx
    for(i = 0; i < sizeof(buf); i++){
     f60:	39 f8                	cmp    %edi,%eax
     f62:	75 ee                	jne    f52 <sharedfd+0x112>
     f64:	89 55 d4             	mov    %edx,-0x2c(%ebp)
     f67:	eb b7                	jmp    f20 <sharedfd+0xe0>
     f69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  close(fd);
     f70:	83 ec 0c             	sub    $0xc,%esp
     f73:	ff 75 d0             	push   -0x30(%ebp)
     f76:	e8 c0 29 00 00       	call   393b <close>
  unlink("sharedfd");
     f7b:	c7 04 24 23 42 00 00 	movl   $0x4223,(%esp)
     f82:	e8 dc 29 00 00       	call   3963 <unlink>
  if(nc == 10000 && np == 10000){
     f87:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     f8a:	83 c4 10             	add    $0x10,%esp
     f8d:	81 fa 10 27 00 00    	cmp    $0x2710,%edx
     f93:	75 5b                	jne    ff0 <sharedfd+0x1b0>
     f95:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
     f9b:	75 53                	jne    ff0 <sharedfd+0x1b0>
    printf(1, "sharedfd ok\n");
     f9d:	83 ec 08             	sub    $0x8,%esp
     fa0:	68 2c 42 00 00       	push   $0x422c
     fa5:	6a 01                	push   $0x1
     fa7:	e8 d4 2a 00 00       	call   3a80 <printf>
     fac:	83 c4 10             	add    $0x10,%esp
}
     faf:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fb2:	5b                   	pop    %ebx
     fb3:	5e                   	pop    %esi
     fb4:	5f                   	pop    %edi
     fb5:	5d                   	pop    %ebp
     fb6:	c3                   	ret
    printf(1, "fstests: cannot open sharedfd for writing");
     fb7:	83 ec 08             	sub    $0x8,%esp
     fba:	68 f0 4e 00 00       	push   $0x4ef0
     fbf:	6a 01                	push   $0x1
     fc1:	e8 ba 2a 00 00       	call   3a80 <printf>
    return;
     fc6:	83 c4 10             	add    $0x10,%esp
}
     fc9:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fcc:	5b                   	pop    %ebx
     fcd:	5e                   	pop    %esi
     fce:	5f                   	pop    %edi
     fcf:	5d                   	pop    %ebp
     fd0:	c3                   	ret
    printf(1, "fstests: cannot open sharedfd for reading\n");
     fd1:	83 ec 08             	sub    $0x8,%esp
     fd4:	68 3c 4f 00 00       	push   $0x4f3c
     fd9:	6a 01                	push   $0x1
     fdb:	e8 a0 2a 00 00       	call   3a80 <printf>
    return;
     fe0:	83 c4 10             	add    $0x10,%esp
}
     fe3:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fe6:	5b                   	pop    %ebx
     fe7:	5e                   	pop    %esi
     fe8:	5f                   	pop    %edi
     fe9:	5d                   	pop    %ebp
     fea:	c3                   	ret
    exit();
     feb:	e8 23 29 00 00       	call   3913 <exit>
    printf(1, "sharedfd oops %d %d\n", nc, np);
     ff0:	53                   	push   %ebx
     ff1:	52                   	push   %edx
     ff2:	68 39 42 00 00       	push   $0x4239
     ff7:	6a 01                	push   $0x1
     ff9:	e8 82 2a 00 00       	call   3a80 <printf>
    exit();
     ffe:	e8 10 29 00 00       	call   3913 <exit>
    1003:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    1008:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    100f:	00 

00001010 <fourfiles>:
{
    1010:	55                   	push   %ebp
    1011:	89 e5                	mov    %esp,%ebp
    1013:	57                   	push   %edi
    1014:	56                   	push   %esi
    1015:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    1016:	31 db                	xor    %ebx,%ebx
{
    1018:	83 ec 34             	sub    $0x34,%esp
  char *names[] = { "f0", "f1", "f2", "f3" };
    101b:	c7 45 d8 4e 42 00 00 	movl   $0x424e,-0x28(%ebp)
    1022:	c7 45 dc 97 43 00 00 	movl   $0x4397,-0x24(%ebp)
    1029:	c7 45 e0 9b 43 00 00 	movl   $0x439b,-0x20(%ebp)
    1030:	c7 45 e4 51 42 00 00 	movl   $0x4251,-0x1c(%ebp)
  printf(1, "fourfiles test\n");
    1037:	68 54 42 00 00       	push   $0x4254
    103c:	6a 01                	push   $0x1
    103e:	e8 3d 2a 00 00       	call   3a80 <printf>
    1043:	83 c4 10             	add    $0x10,%esp
    fname = names[pi];
    1046:	8b 74 9d d8          	mov    -0x28(%ebp,%ebx,4),%esi
    unlink(fname);
    104a:	83 ec 0c             	sub    $0xc,%esp
    104d:	56                   	push   %esi
    104e:	e8 10 29 00 00       	call   3963 <unlink>
    pid = fork();
    1053:	e8 b3 28 00 00       	call   390b <fork>
    if(pid < 0){
    1058:	83 c4 10             	add    $0x10,%esp
    105b:	85 c0                	test   %eax,%eax
    105d:	0f 88 6d 01 00 00    	js     11d0 <fourfiles+0x1c0>
    if(pid == 0){
    1063:	0f 84 f7 00 00 00    	je     1160 <fourfiles+0x150>
  for(pi = 0; pi < 4; pi++){
    1069:	83 c3 01             	add    $0x1,%ebx
    106c:	83 fb 04             	cmp    $0x4,%ebx
    106f:	75 d5                	jne    1046 <fourfiles+0x36>
    wait();
    1071:	e8 a5 28 00 00       	call   391b <wait>
    1076:	e8 a0 28 00 00       	call   391b <wait>
    107b:	e8 9b 28 00 00       	call   391b <wait>
    1080:	e8 96 28 00 00       	call   391b <wait>
  for(i = 0; i < 2; i++){
    1085:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    fname = names[i];
    108c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
    fd = open(fname, 0);
    108f:	83 ec 08             	sub    $0x8,%esp
    fname = names[i];
    1092:	8b 44 9d d8          	mov    -0x28(%ebp,%ebx,4),%eax
        if(buf[j] != '0'+i){
    1096:	8d 73 30             	lea    0x30(%ebx),%esi
    total = 0;
    1099:	31 db                	xor    %ebx,%ebx
    fname = names[i];
    109b:	89 45 d0             	mov    %eax,-0x30(%ebp)
    fd = open(fname, 0);
    109e:	6a 00                	push   $0x0
    10a0:	50                   	push   %eax
    10a1:	e8 ad 28 00 00       	call   3953 <open>
        if(buf[j] != '0'+i){
    10a6:	83 c4 10             	add    $0x10,%esp
    fd = open(fname, 0);
    10a9:	89 c7                	mov    %eax,%edi
    while((n = read(fd, buf, sizeof(buf))) > 0){
    10ab:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    10b0:	83 ec 04             	sub    $0x4,%esp
    10b3:	68 00 20 00 00       	push   $0x2000
    10b8:	68 20 86 00 00       	push   $0x8620
    10bd:	57                   	push   %edi
    10be:	e8 68 28 00 00       	call   392b <read>
    10c3:	83 c4 10             	add    $0x10,%esp
    10c6:	89 c1                	mov    %eax,%ecx
    10c8:	85 c0                	test   %eax,%eax
    10ca:	7e 2a                	jle    10f6 <fourfiles+0xe6>
      for(j = 0; j < n; j++){
    10cc:	31 c0                	xor    %eax,%eax
    10ce:	66 90                	xchg   %ax,%ax
    10d0:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    10d7:	00 
    10d8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    10df:	00 
        if(buf[j] != '0'+i){
    10e0:	0f be 90 20 86 00 00 	movsbl 0x8620(%eax),%edx
    10e7:	39 f2                	cmp    %esi,%edx
    10e9:	75 61                	jne    114c <fourfiles+0x13c>
      for(j = 0; j < n; j++){
    10eb:	83 c0 01             	add    $0x1,%eax
    10ee:	39 c1                	cmp    %eax,%ecx
    10f0:	75 ee                	jne    10e0 <fourfiles+0xd0>
      total += n;
    10f2:	01 cb                	add    %ecx,%ebx
    10f4:	eb ba                	jmp    10b0 <fourfiles+0xa0>
    close(fd);
    10f6:	83 ec 0c             	sub    $0xc,%esp
    10f9:	57                   	push   %edi
    10fa:	e8 3c 28 00 00       	call   393b <close>
    if(total != 12*500){
    10ff:	83 c4 10             	add    $0x10,%esp
    1102:	81 fb 70 17 00 00    	cmp    $0x1770,%ebx
    1108:	0f 85 d6 00 00 00    	jne    11e4 <fourfiles+0x1d4>
    unlink(fname);
    110e:	83 ec 0c             	sub    $0xc,%esp
    1111:	ff 75 d0             	push   -0x30(%ebp)
    1114:	e8 4a 28 00 00       	call   3963 <unlink>
  for(i = 0; i < 2; i++){
    1119:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    111c:	83 c4 10             	add    $0x10,%esp
    111f:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
    1126:	83 c0 01             	add    $0x1,%eax
    1129:	83 f8 02             	cmp    $0x2,%eax
    112c:	0f 85 5a ff ff ff    	jne    108c <fourfiles+0x7c>
  printf(1, "fourfiles ok\n");
    1132:	83 ec 08             	sub    $0x8,%esp
    1135:	68 92 42 00 00       	push   $0x4292
    113a:	6a 01                	push   $0x1
    113c:	e8 3f 29 00 00       	call   3a80 <printf>
}
    1141:	83 c4 10             	add    $0x10,%esp
    1144:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1147:	5b                   	pop    %ebx
    1148:	5e                   	pop    %esi
    1149:	5f                   	pop    %edi
    114a:	5d                   	pop    %ebp
    114b:	c3                   	ret
          printf(1, "wrong char\n");
    114c:	83 ec 08             	sub    $0x8,%esp
    114f:	68 75 42 00 00       	push   $0x4275
    1154:	6a 01                	push   $0x1
    1156:	e8 25 29 00 00       	call   3a80 <printf>
          exit();
    115b:	e8 b3 27 00 00       	call   3913 <exit>
      fd = open(fname, O_CREATE | O_RDWR);
    1160:	83 ec 08             	sub    $0x8,%esp
    1163:	68 02 02 00 00       	push   $0x202
    1168:	56                   	push   %esi
    1169:	e8 e5 27 00 00       	call   3953 <open>
      if(fd < 0){
    116e:	83 c4 10             	add    $0x10,%esp
      fd = open(fname, O_CREATE | O_RDWR);
    1171:	89 c6                	mov    %eax,%esi
      if(fd < 0){
    1173:	85 c0                	test   %eax,%eax
    1175:	78 45                	js     11bc <fourfiles+0x1ac>
      memset(buf, '0'+pi, 512);
    1177:	83 ec 04             	sub    $0x4,%esp
    117a:	83 c3 30             	add    $0x30,%ebx
    117d:	68 00 02 00 00       	push   $0x200
    1182:	53                   	push   %ebx
    1183:	bb 0c 00 00 00       	mov    $0xc,%ebx
    1188:	68 20 86 00 00       	push   $0x8620
    118d:	e8 de 25 00 00       	call   3770 <memset>
    1192:	83 c4 10             	add    $0x10,%esp
        if((n = write(fd, buf, 500)) != 500){
    1195:	83 ec 04             	sub    $0x4,%esp
    1198:	68 f4 01 00 00       	push   $0x1f4
    119d:	68 20 86 00 00       	push   $0x8620
    11a2:	56                   	push   %esi
    11a3:	e8 8b 27 00 00       	call   3933 <write>
    11a8:	83 c4 10             	add    $0x10,%esp
    11ab:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    11b0:	75 45                	jne    11f7 <fourfiles+0x1e7>
      for(i = 0; i < 12; i++){
    11b2:	83 eb 01             	sub    $0x1,%ebx
    11b5:	75 de                	jne    1195 <fourfiles+0x185>
      exit();
    11b7:	e8 57 27 00 00       	call   3913 <exit>
        printf(1, "create failed\n");
    11bc:	51                   	push   %ecx
    11bd:	51                   	push   %ecx
    11be:	68 ef 44 00 00       	push   $0x44ef
    11c3:	6a 01                	push   $0x1
    11c5:	e8 b6 28 00 00       	call   3a80 <printf>
        exit();
    11ca:	e8 44 27 00 00       	call   3913 <exit>
    11cf:	90                   	nop
      printf(1, "fork failed\n");
    11d0:	83 ec 08             	sub    $0x8,%esp
    11d3:	68 29 4d 00 00       	push   $0x4d29
    11d8:	6a 01                	push   $0x1
    11da:	e8 a1 28 00 00       	call   3a80 <printf>
      exit();
    11df:	e8 2f 27 00 00       	call   3913 <exit>
      printf(1, "wrong length %d\n", total);
    11e4:	50                   	push   %eax
    11e5:	53                   	push   %ebx
    11e6:	68 81 42 00 00       	push   $0x4281
    11eb:	6a 01                	push   $0x1
    11ed:	e8 8e 28 00 00       	call   3a80 <printf>
      exit();
    11f2:	e8 1c 27 00 00       	call   3913 <exit>
          printf(1, "write failed %d\n", n);
    11f7:	52                   	push   %edx
    11f8:	50                   	push   %eax
    11f9:	68 64 42 00 00       	push   $0x4264
    11fe:	6a 01                	push   $0x1
    1200:	e8 7b 28 00 00       	call   3a80 <printf>
          exit();
    1205:	e8 09 27 00 00       	call   3913 <exit>
    120a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001210 <createdelete>:
{
    1210:	55                   	push   %ebp
    1211:	89 e5                	mov    %esp,%ebp
    1213:	57                   	push   %edi
    1214:	56                   	push   %esi
  for(pi = 0; pi < 4; pi++){
    1215:	31 f6                	xor    %esi,%esi
{
    1217:	53                   	push   %ebx
    1218:	83 ec 44             	sub    $0x44,%esp
  printf(1, "createdelete test\n");
    121b:	68 a0 42 00 00       	push   $0x42a0
    1220:	6a 01                	push   $0x1
    1222:	e8 59 28 00 00       	call   3a80 <printf>
    1227:	83 c4 10             	add    $0x10,%esp
    pid = fork();
    122a:	e8 dc 26 00 00       	call   390b <fork>
    122f:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
    1231:	85 c0                	test   %eax,%eax
    1233:	0f 88 aa 01 00 00    	js     13e3 <createdelete+0x1d3>
    if(pid == 0){
    1239:	0f 84 11 01 00 00    	je     1350 <createdelete+0x140>
  for(pi = 0; pi < 4; pi++){
    123f:	83 c6 01             	add    $0x1,%esi
    1242:	83 fe 04             	cmp    $0x4,%esi
    1245:	75 e3                	jne    122a <createdelete+0x1a>
    wait();
    1247:	e8 cf 26 00 00       	call   391b <wait>
  for(i = 0; i < N; i++){
    124c:	31 ff                	xor    %edi,%edi
    124e:	8d 75 c8             	lea    -0x38(%ebp),%esi
    wait();
    1251:	e8 c5 26 00 00       	call   391b <wait>
    1256:	e8 c0 26 00 00       	call   391b <wait>
    125b:	e8 bb 26 00 00       	call   391b <wait>
  name[0] = name[1] = name[2] = 0;
    1260:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
  for(i = 0; i < N; i++){
    1264:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1268:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    126f:	00 
      if((i == 0 || i >= N/2) && fd < 0){
    1270:	85 ff                	test   %edi,%edi
      name[1] = '0' + i;
    1272:	bb 70 00 00 00       	mov    $0x70,%ebx
      if((i == 0 || i >= N/2) && fd < 0){
    1277:	0f 94 c2             	sete   %dl
    127a:	83 ff 09             	cmp    $0x9,%edi
    127d:	0f 9f c0             	setg   %al
    1280:	09 c2                	or     %eax,%edx
      name[1] = '0' + i;
    1282:	8d 47 30             	lea    0x30(%edi),%eax
      if((i == 0 || i >= N/2) && fd < 0){
    1285:	88 55 c7             	mov    %dl,-0x39(%ebp)
      name[1] = '0' + i;
    1288:	88 45 c6             	mov    %al,-0x3a(%ebp)
    128b:	0f b6 45 c6          	movzbl -0x3a(%ebp),%eax
      fd = open(name, 0);
    128f:	83 ec 08             	sub    $0x8,%esp
      name[0] = 'p' + pi;
    1292:	88 5d c8             	mov    %bl,-0x38(%ebp)
      name[1] = '0' + i;
    1295:	88 45 c9             	mov    %al,-0x37(%ebp)
      fd = open(name, 0);
    1298:	6a 00                	push   $0x0
    129a:	56                   	push   %esi
    129b:	e8 b3 26 00 00       	call   3953 <open>
      if((i == 0 || i >= N/2) && fd < 0){
    12a0:	83 c4 10             	add    $0x10,%esp
    12a3:	80 7d c7 00          	cmpb   $0x0,-0x39(%ebp)
    12a7:	0f 84 83 00 00 00    	je     1330 <createdelete+0x120>
    12ad:	85 c0                	test   %eax,%eax
    12af:	0f 88 19 01 00 00    	js     13ce <createdelete+0x1be>
        close(fd);
    12b5:	83 ec 0c             	sub    $0xc,%esp
    12b8:	50                   	push   %eax
    12b9:	e8 7d 26 00 00       	call   393b <close>
    12be:	83 c4 10             	add    $0x10,%esp
    for(pi = 0; pi < 4; pi++){
    12c1:	83 c3 01             	add    $0x1,%ebx
    12c4:	80 fb 74             	cmp    $0x74,%bl
    12c7:	75 c2                	jne    128b <createdelete+0x7b>
  for(i = 0; i < N; i++){
    12c9:	83 c7 01             	add    $0x1,%edi
    12cc:	83 ff 14             	cmp    $0x14,%edi
    12cf:	75 9f                	jne    1270 <createdelete+0x60>
    12d1:	bf 70 00 00 00       	mov    $0x70,%edi
    12d6:	66 90                	xchg   %ax,%ax
    12d8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    12df:	00 
      name[1] = '0' + i;
    12e0:	8d 47 c0             	lea    -0x40(%edi),%eax
    12e3:	bb 04 00 00 00       	mov    $0x4,%ebx
    12e8:	88 45 c7             	mov    %al,-0x39(%ebp)
      name[0] = 'p' + i;
    12eb:	89 f8                	mov    %edi,%eax
      unlink(name);
    12ed:	83 ec 0c             	sub    $0xc,%esp
      name[0] = 'p' + i;
    12f0:	88 45 c8             	mov    %al,-0x38(%ebp)
      name[1] = '0' + i;
    12f3:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
    12f7:	88 45 c9             	mov    %al,-0x37(%ebp)
      unlink(name);
    12fa:	56                   	push   %esi
    12fb:	e8 63 26 00 00       	call   3963 <unlink>
    for(pi = 0; pi < 4; pi++){
    1300:	83 c4 10             	add    $0x10,%esp
    1303:	83 eb 01             	sub    $0x1,%ebx
    1306:	75 e3                	jne    12eb <createdelete+0xdb>
  for(i = 0; i < N; i++){
    1308:	83 c7 01             	add    $0x1,%edi
    130b:	89 f8                	mov    %edi,%eax
    130d:	3c 84                	cmp    $0x84,%al
    130f:	75 cf                	jne    12e0 <createdelete+0xd0>
  printf(1, "createdelete ok\n");
    1311:	83 ec 08             	sub    $0x8,%esp
    1314:	68 b3 42 00 00       	push   $0x42b3
    1319:	6a 01                	push   $0x1
    131b:	e8 60 27 00 00       	call   3a80 <printf>
}
    1320:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1323:	5b                   	pop    %ebx
    1324:	5e                   	pop    %esi
    1325:	5f                   	pop    %edi
    1326:	5d                   	pop    %ebp
    1327:	c3                   	ret
    1328:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    132f:	00 
      } else if((i >= 1 && i < N/2) && fd >= 0){
    1330:	85 c0                	test   %eax,%eax
    1332:	78 8d                	js     12c1 <createdelete+0xb1>
        printf(1, "oops createdelete %s did exist\n", name);
    1334:	50                   	push   %eax
    1335:	56                   	push   %esi
    1336:	68 8c 4f 00 00       	push   $0x4f8c
    133b:	6a 01                	push   $0x1
    133d:	e8 3e 27 00 00       	call   3a80 <printf>
        exit();
    1342:	e8 cc 25 00 00       	call   3913 <exit>
    1347:	90                   	nop
    1348:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    134f:	00 
      name[0] = 'p' + pi;
    1350:	8d 46 70             	lea    0x70(%esi),%eax
      name[2] = '\0';
    1353:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    1357:	8d 75 c8             	lea    -0x38(%ebp),%esi
      name[0] = 'p' + pi;
    135a:	88 45 c8             	mov    %al,-0x38(%ebp)
      for(i = 0; i < N; i++){
    135d:	8d 76 00             	lea    0x0(%esi),%esi
        fd = open(name, O_CREATE | O_RDWR);
    1360:	83 ec 08             	sub    $0x8,%esp
        name[1] = '0' + i;
    1363:	8d 43 30             	lea    0x30(%ebx),%eax
    1366:	88 45 c9             	mov    %al,-0x37(%ebp)
        fd = open(name, O_CREATE | O_RDWR);
    1369:	68 02 02 00 00       	push   $0x202
    136e:	56                   	push   %esi
    136f:	e8 df 25 00 00       	call   3953 <open>
        if(fd < 0){
    1374:	83 c4 10             	add    $0x10,%esp
    1377:	85 c0                	test   %eax,%eax
    1379:	0f 88 8b 00 00 00    	js     140a <createdelete+0x1fa>
        close(fd);
    137f:	83 ec 0c             	sub    $0xc,%esp
    1382:	50                   	push   %eax
    1383:	e8 b3 25 00 00       	call   393b <close>
        if(i > 0 && (i % 2 ) == 0){
    1388:	83 c4 10             	add    $0x10,%esp
    138b:	85 db                	test   %ebx,%ebx
    138d:	74 19                	je     13a8 <createdelete+0x198>
    138f:	f6 c3 01             	test   $0x1,%bl
    1392:	74 1b                	je     13af <createdelete+0x19f>
      for(i = 0; i < N; i++){
    1394:	83 c3 01             	add    $0x1,%ebx
    1397:	83 fb 14             	cmp    $0x14,%ebx
    139a:	75 c4                	jne    1360 <createdelete+0x150>
      exit();
    139c:	e8 72 25 00 00       	call   3913 <exit>
    13a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      for(i = 0; i < N; i++){
    13a8:	bb 01 00 00 00       	mov    $0x1,%ebx
    13ad:	eb b1                	jmp    1360 <createdelete+0x150>
          name[1] = '0' + (i / 2);
    13af:	89 d8                	mov    %ebx,%eax
          if(unlink(name) < 0){
    13b1:	83 ec 0c             	sub    $0xc,%esp
          name[1] = '0' + (i / 2);
    13b4:	d1 f8                	sar    $1,%eax
    13b6:	83 c0 30             	add    $0x30,%eax
    13b9:	88 45 c9             	mov    %al,-0x37(%ebp)
          if(unlink(name) < 0){
    13bc:	56                   	push   %esi
    13bd:	e8 a1 25 00 00       	call   3963 <unlink>
    13c2:	83 c4 10             	add    $0x10,%esp
    13c5:	85 c0                	test   %eax,%eax
    13c7:	78 2e                	js     13f7 <createdelete+0x1e7>
      for(i = 0; i < N; i++){
    13c9:	83 c3 01             	add    $0x1,%ebx
    13cc:	eb 92                	jmp    1360 <createdelete+0x150>
        printf(1, "oops createdelete %s didn't exist\n", name);
    13ce:	83 ec 04             	sub    $0x4,%esp
    13d1:	56                   	push   %esi
    13d2:	68 68 4f 00 00       	push   $0x4f68
    13d7:	6a 01                	push   $0x1
    13d9:	e8 a2 26 00 00       	call   3a80 <printf>
        exit();
    13de:	e8 30 25 00 00       	call   3913 <exit>
      printf(1, "fork failed\n");
    13e3:	83 ec 08             	sub    $0x8,%esp
    13e6:	68 29 4d 00 00       	push   $0x4d29
    13eb:	6a 01                	push   $0x1
    13ed:	e8 8e 26 00 00       	call   3a80 <printf>
      exit();
    13f2:	e8 1c 25 00 00       	call   3913 <exit>
            printf(1, "unlink failed\n");
    13f7:	52                   	push   %edx
    13f8:	52                   	push   %edx
    13f9:	68 a1 3e 00 00       	push   $0x3ea1
    13fe:	6a 01                	push   $0x1
    1400:	e8 7b 26 00 00       	call   3a80 <printf>
            exit();
    1405:	e8 09 25 00 00       	call   3913 <exit>
          printf(1, "create failed\n");
    140a:	83 ec 08             	sub    $0x8,%esp
    140d:	68 ef 44 00 00       	push   $0x44ef
    1412:	6a 01                	push   $0x1
    1414:	e8 67 26 00 00       	call   3a80 <printf>
          exit();
    1419:	e8 f5 24 00 00       	call   3913 <exit>
    141e:	66 90                	xchg   %ax,%ax

00001420 <unlinkread>:
{
    1420:	55                   	push   %ebp
    1421:	89 e5                	mov    %esp,%ebp
    1423:	56                   	push   %esi
    1424:	53                   	push   %ebx
  printf(1, "unlinkread test\n");
    1425:	83 ec 08             	sub    $0x8,%esp
    1428:	68 c4 42 00 00       	push   $0x42c4
    142d:	6a 01                	push   $0x1
    142f:	e8 4c 26 00 00       	call   3a80 <printf>
  fd = open("unlinkread", O_CREATE | O_RDWR);
    1434:	5b                   	pop    %ebx
    1435:	5e                   	pop    %esi
    1436:	68 02 02 00 00       	push   $0x202
    143b:	68 d5 42 00 00       	push   $0x42d5
    1440:	e8 0e 25 00 00       	call   3953 <open>
  if(fd < 0){
    1445:	83 c4 10             	add    $0x10,%esp
    1448:	85 c0                	test   %eax,%eax
    144a:	0f 88 e6 00 00 00    	js     1536 <unlinkread+0x116>
  write(fd, "hello", 5);
    1450:	83 ec 04             	sub    $0x4,%esp
    1453:	89 c3                	mov    %eax,%ebx
    1455:	6a 05                	push   $0x5
    1457:	68 fa 42 00 00       	push   $0x42fa
    145c:	50                   	push   %eax
    145d:	e8 d1 24 00 00       	call   3933 <write>
  close(fd);
    1462:	89 1c 24             	mov    %ebx,(%esp)
    1465:	e8 d1 24 00 00       	call   393b <close>
  fd = open("unlinkread", O_RDWR);
    146a:	58                   	pop    %eax
    146b:	5a                   	pop    %edx
    146c:	6a 02                	push   $0x2
    146e:	68 d5 42 00 00       	push   $0x42d5
    1473:	e8 db 24 00 00       	call   3953 <open>
  if(fd < 0){
    1478:	83 c4 10             	add    $0x10,%esp
  fd = open("unlinkread", O_RDWR);
    147b:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    147d:	85 c0                	test   %eax,%eax
    147f:	0f 88 10 01 00 00    	js     1595 <unlinkread+0x175>
  if(unlink("unlinkread") != 0){
    1485:	83 ec 0c             	sub    $0xc,%esp
    1488:	68 d5 42 00 00       	push   $0x42d5
    148d:	e8 d1 24 00 00       	call   3963 <unlink>
    1492:	83 c4 10             	add    $0x10,%esp
    1495:	85 c0                	test   %eax,%eax
    1497:	0f 85 e5 00 00 00    	jne    1582 <unlinkread+0x162>
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    149d:	83 ec 08             	sub    $0x8,%esp
    14a0:	68 02 02 00 00       	push   $0x202
    14a5:	68 d5 42 00 00       	push   $0x42d5
    14aa:	e8 a4 24 00 00       	call   3953 <open>
  write(fd1, "yyy", 3);
    14af:	83 c4 0c             	add    $0xc,%esp
    14b2:	6a 03                	push   $0x3
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    14b4:	89 c6                	mov    %eax,%esi
  write(fd1, "yyy", 3);
    14b6:	68 32 43 00 00       	push   $0x4332
    14bb:	50                   	push   %eax
    14bc:	e8 72 24 00 00       	call   3933 <write>
  close(fd1);
    14c1:	89 34 24             	mov    %esi,(%esp)
    14c4:	e8 72 24 00 00       	call   393b <close>
  if(read(fd, buf, sizeof(buf)) != 5){
    14c9:	83 c4 0c             	add    $0xc,%esp
    14cc:	68 00 20 00 00       	push   $0x2000
    14d1:	68 20 86 00 00       	push   $0x8620
    14d6:	53                   	push   %ebx
    14d7:	e8 4f 24 00 00       	call   392b <read>
    14dc:	83 c4 10             	add    $0x10,%esp
    14df:	83 f8 05             	cmp    $0x5,%eax
    14e2:	0f 85 87 00 00 00    	jne    156f <unlinkread+0x14f>
  if(buf[0] != 'h'){
    14e8:	80 3d 20 86 00 00 68 	cmpb   $0x68,0x8620
    14ef:	75 6b                	jne    155c <unlinkread+0x13c>
  if(write(fd, buf, 10) != 10){
    14f1:	83 ec 04             	sub    $0x4,%esp
    14f4:	6a 0a                	push   $0xa
    14f6:	68 20 86 00 00       	push   $0x8620
    14fb:	53                   	push   %ebx
    14fc:	e8 32 24 00 00       	call   3933 <write>
    1501:	83 c4 10             	add    $0x10,%esp
    1504:	83 f8 0a             	cmp    $0xa,%eax
    1507:	75 40                	jne    1549 <unlinkread+0x129>
  close(fd);
    1509:	83 ec 0c             	sub    $0xc,%esp
    150c:	53                   	push   %ebx
    150d:	e8 29 24 00 00       	call   393b <close>
  unlink("unlinkread");
    1512:	c7 04 24 d5 42 00 00 	movl   $0x42d5,(%esp)
    1519:	e8 45 24 00 00       	call   3963 <unlink>
  printf(1, "unlinkread ok\n");
    151e:	58                   	pop    %eax
    151f:	5a                   	pop    %edx
    1520:	68 7d 43 00 00       	push   $0x437d
    1525:	6a 01                	push   $0x1
    1527:	e8 54 25 00 00       	call   3a80 <printf>
}
    152c:	83 c4 10             	add    $0x10,%esp
    152f:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1532:	5b                   	pop    %ebx
    1533:	5e                   	pop    %esi
    1534:	5d                   	pop    %ebp
    1535:	c3                   	ret
    printf(1, "create unlinkread failed\n");
    1536:	51                   	push   %ecx
    1537:	51                   	push   %ecx
    1538:	68 e0 42 00 00       	push   $0x42e0
    153d:	6a 01                	push   $0x1
    153f:	e8 3c 25 00 00       	call   3a80 <printf>
    exit();
    1544:	e8 ca 23 00 00       	call   3913 <exit>
    printf(1, "unlinkread write failed\n");
    1549:	51                   	push   %ecx
    154a:	51                   	push   %ecx
    154b:	68 64 43 00 00       	push   $0x4364
    1550:	6a 01                	push   $0x1
    1552:	e8 29 25 00 00       	call   3a80 <printf>
    exit();
    1557:	e8 b7 23 00 00       	call   3913 <exit>
    printf(1, "unlinkread wrong data\n");
    155c:	53                   	push   %ebx
    155d:	53                   	push   %ebx
    155e:	68 4d 43 00 00       	push   $0x434d
    1563:	6a 01                	push   $0x1
    1565:	e8 16 25 00 00       	call   3a80 <printf>
    exit();
    156a:	e8 a4 23 00 00       	call   3913 <exit>
    printf(1, "unlinkread read failed");
    156f:	56                   	push   %esi
    1570:	56                   	push   %esi
    1571:	68 36 43 00 00       	push   $0x4336
    1576:	6a 01                	push   $0x1
    1578:	e8 03 25 00 00       	call   3a80 <printf>
    exit();
    157d:	e8 91 23 00 00       	call   3913 <exit>
    printf(1, "unlink unlinkread failed\n");
    1582:	50                   	push   %eax
    1583:	50                   	push   %eax
    1584:	68 18 43 00 00       	push   $0x4318
    1589:	6a 01                	push   $0x1
    158b:	e8 f0 24 00 00       	call   3a80 <printf>
    exit();
    1590:	e8 7e 23 00 00       	call   3913 <exit>
    printf(1, "open unlinkread failed\n");
    1595:	50                   	push   %eax
    1596:	50                   	push   %eax
    1597:	68 00 43 00 00       	push   $0x4300
    159c:	6a 01                	push   $0x1
    159e:	e8 dd 24 00 00       	call   3a80 <printf>
    exit();
    15a3:	e8 6b 23 00 00       	call   3913 <exit>
    15a8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    15af:	00 

000015b0 <linktest>:
{
    15b0:	55                   	push   %ebp
    15b1:	89 e5                	mov    %esp,%ebp
    15b3:	53                   	push   %ebx
    15b4:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "linktest\n");
    15b7:	68 8c 43 00 00       	push   $0x438c
    15bc:	6a 01                	push   $0x1
    15be:	e8 bd 24 00 00       	call   3a80 <printf>
  unlink("lf1");
    15c3:	c7 04 24 96 43 00 00 	movl   $0x4396,(%esp)
    15ca:	e8 94 23 00 00       	call   3963 <unlink>
  unlink("lf2");
    15cf:	c7 04 24 9a 43 00 00 	movl   $0x439a,(%esp)
    15d6:	e8 88 23 00 00       	call   3963 <unlink>
  fd = open("lf1", O_CREATE|O_RDWR);
    15db:	58                   	pop    %eax
    15dc:	5a                   	pop    %edx
    15dd:	68 02 02 00 00       	push   $0x202
    15e2:	68 96 43 00 00       	push   $0x4396
    15e7:	e8 67 23 00 00       	call   3953 <open>
  if(fd < 0){
    15ec:	83 c4 10             	add    $0x10,%esp
    15ef:	85 c0                	test   %eax,%eax
    15f1:	0f 88 1e 01 00 00    	js     1715 <linktest+0x165>
  if(write(fd, "hello", 5) != 5){
    15f7:	83 ec 04             	sub    $0x4,%esp
    15fa:	89 c3                	mov    %eax,%ebx
    15fc:	6a 05                	push   $0x5
    15fe:	68 fa 42 00 00       	push   $0x42fa
    1603:	50                   	push   %eax
    1604:	e8 2a 23 00 00       	call   3933 <write>
    1609:	83 c4 10             	add    $0x10,%esp
    160c:	83 f8 05             	cmp    $0x5,%eax
    160f:	0f 85 98 01 00 00    	jne    17ad <linktest+0x1fd>
  close(fd);
    1615:	83 ec 0c             	sub    $0xc,%esp
    1618:	53                   	push   %ebx
    1619:	e8 1d 23 00 00       	call   393b <close>
  if(link("lf1", "lf2") < 0){
    161e:	5b                   	pop    %ebx
    161f:	58                   	pop    %eax
    1620:	68 9a 43 00 00       	push   $0x439a
    1625:	68 96 43 00 00       	push   $0x4396
    162a:	e8 44 23 00 00       	call   3973 <link>
    162f:	83 c4 10             	add    $0x10,%esp
    1632:	85 c0                	test   %eax,%eax
    1634:	0f 88 60 01 00 00    	js     179a <linktest+0x1ea>
  unlink("lf1");
    163a:	83 ec 0c             	sub    $0xc,%esp
    163d:	68 96 43 00 00       	push   $0x4396
    1642:	e8 1c 23 00 00       	call   3963 <unlink>
  if(open("lf1", 0) >= 0){
    1647:	58                   	pop    %eax
    1648:	5a                   	pop    %edx
    1649:	6a 00                	push   $0x0
    164b:	68 96 43 00 00       	push   $0x4396
    1650:	e8 fe 22 00 00       	call   3953 <open>
    1655:	83 c4 10             	add    $0x10,%esp
    1658:	85 c0                	test   %eax,%eax
    165a:	0f 89 27 01 00 00    	jns    1787 <linktest+0x1d7>
  fd = open("lf2", 0);
    1660:	83 ec 08             	sub    $0x8,%esp
    1663:	6a 00                	push   $0x0
    1665:	68 9a 43 00 00       	push   $0x439a
    166a:	e8 e4 22 00 00       	call   3953 <open>
  if(fd < 0){
    166f:	83 c4 10             	add    $0x10,%esp
  fd = open("lf2", 0);
    1672:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1674:	85 c0                	test   %eax,%eax
    1676:	0f 88 f8 00 00 00    	js     1774 <linktest+0x1c4>
  if(read(fd, buf, sizeof(buf)) != 5){
    167c:	83 ec 04             	sub    $0x4,%esp
    167f:	68 00 20 00 00       	push   $0x2000
    1684:	68 20 86 00 00       	push   $0x8620
    1689:	50                   	push   %eax
    168a:	e8 9c 22 00 00       	call   392b <read>
    168f:	83 c4 10             	add    $0x10,%esp
    1692:	83 f8 05             	cmp    $0x5,%eax
    1695:	0f 85 c6 00 00 00    	jne    1761 <linktest+0x1b1>
  close(fd);
    169b:	83 ec 0c             	sub    $0xc,%esp
    169e:	53                   	push   %ebx
    169f:	e8 97 22 00 00       	call   393b <close>
  if(link("lf2", "lf2") >= 0){
    16a4:	58                   	pop    %eax
    16a5:	5a                   	pop    %edx
    16a6:	68 9a 43 00 00       	push   $0x439a
    16ab:	68 9a 43 00 00       	push   $0x439a
    16b0:	e8 be 22 00 00       	call   3973 <link>
    16b5:	83 c4 10             	add    $0x10,%esp
    16b8:	85 c0                	test   %eax,%eax
    16ba:	0f 89 8e 00 00 00    	jns    174e <linktest+0x19e>
  unlink("lf2");
    16c0:	83 ec 0c             	sub    $0xc,%esp
    16c3:	68 9a 43 00 00       	push   $0x439a
    16c8:	e8 96 22 00 00       	call   3963 <unlink>
  if(link("lf2", "lf1") >= 0){
    16cd:	59                   	pop    %ecx
    16ce:	5b                   	pop    %ebx
    16cf:	68 96 43 00 00       	push   $0x4396
    16d4:	68 9a 43 00 00       	push   $0x439a
    16d9:	e8 95 22 00 00       	call   3973 <link>
    16de:	83 c4 10             	add    $0x10,%esp
    16e1:	85 c0                	test   %eax,%eax
    16e3:	79 56                	jns    173b <linktest+0x18b>
  if(link(".", "lf1") >= 0){
    16e5:	83 ec 08             	sub    $0x8,%esp
    16e8:	68 96 43 00 00       	push   $0x4396
    16ed:	68 5e 46 00 00       	push   $0x465e
    16f2:	e8 7c 22 00 00       	call   3973 <link>
    16f7:	83 c4 10             	add    $0x10,%esp
    16fa:	85 c0                	test   %eax,%eax
    16fc:	79 2a                	jns    1728 <linktest+0x178>
  printf(1, "linktest ok\n");
    16fe:	83 ec 08             	sub    $0x8,%esp
    1701:	68 34 44 00 00       	push   $0x4434
    1706:	6a 01                	push   $0x1
    1708:	e8 73 23 00 00       	call   3a80 <printf>
}
    170d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1710:	83 c4 10             	add    $0x10,%esp
    1713:	c9                   	leave
    1714:	c3                   	ret
    printf(1, "create lf1 failed\n");
    1715:	50                   	push   %eax
    1716:	50                   	push   %eax
    1717:	68 9e 43 00 00       	push   $0x439e
    171c:	6a 01                	push   $0x1
    171e:	e8 5d 23 00 00       	call   3a80 <printf>
    exit();
    1723:	e8 eb 21 00 00       	call   3913 <exit>
    printf(1, "link . lf1 succeeded! oops\n");
    1728:	50                   	push   %eax
    1729:	50                   	push   %eax
    172a:	68 18 44 00 00       	push   $0x4418
    172f:	6a 01                	push   $0x1
    1731:	e8 4a 23 00 00       	call   3a80 <printf>
    exit();
    1736:	e8 d8 21 00 00       	call   3913 <exit>
    printf(1, "link non-existant succeeded! oops\n");
    173b:	52                   	push   %edx
    173c:	52                   	push   %edx
    173d:	68 d4 4f 00 00       	push   $0x4fd4
    1742:	6a 01                	push   $0x1
    1744:	e8 37 23 00 00       	call   3a80 <printf>
    exit();
    1749:	e8 c5 21 00 00       	call   3913 <exit>
    printf(1, "link lf2 lf2 succeeded! oops\n");
    174e:	50                   	push   %eax
    174f:	50                   	push   %eax
    1750:	68 fa 43 00 00       	push   $0x43fa
    1755:	6a 01                	push   $0x1
    1757:	e8 24 23 00 00       	call   3a80 <printf>
    exit();
    175c:	e8 b2 21 00 00       	call   3913 <exit>
    printf(1, "read lf2 failed\n");
    1761:	51                   	push   %ecx
    1762:	51                   	push   %ecx
    1763:	68 e9 43 00 00       	push   $0x43e9
    1768:	6a 01                	push   $0x1
    176a:	e8 11 23 00 00       	call   3a80 <printf>
    exit();
    176f:	e8 9f 21 00 00       	call   3913 <exit>
    printf(1, "open lf2 failed\n");
    1774:	53                   	push   %ebx
    1775:	53                   	push   %ebx
    1776:	68 d8 43 00 00       	push   $0x43d8
    177b:	6a 01                	push   $0x1
    177d:	e8 fe 22 00 00       	call   3a80 <printf>
    exit();
    1782:	e8 8c 21 00 00       	call   3913 <exit>
    printf(1, "unlinked lf1 but it is still there!\n");
    1787:	50                   	push   %eax
    1788:	50                   	push   %eax
    1789:	68 ac 4f 00 00       	push   $0x4fac
    178e:	6a 01                	push   $0x1
    1790:	e8 eb 22 00 00       	call   3a80 <printf>
    exit();
    1795:	e8 79 21 00 00       	call   3913 <exit>
    printf(1, "link lf1 lf2 failed\n");
    179a:	51                   	push   %ecx
    179b:	51                   	push   %ecx
    179c:	68 c3 43 00 00       	push   $0x43c3
    17a1:	6a 01                	push   $0x1
    17a3:	e8 d8 22 00 00       	call   3a80 <printf>
    exit();
    17a8:	e8 66 21 00 00       	call   3913 <exit>
    printf(1, "write lf1 failed\n");
    17ad:	50                   	push   %eax
    17ae:	50                   	push   %eax
    17af:	68 b1 43 00 00       	push   $0x43b1
    17b4:	6a 01                	push   $0x1
    17b6:	e8 c5 22 00 00       	call   3a80 <printf>
    exit();
    17bb:	e8 53 21 00 00       	call   3913 <exit>

000017c0 <concreate>:
{
    17c0:	55                   	push   %ebp
    17c1:	89 e5                	mov    %esp,%ebp
    17c3:	57                   	push   %edi
    17c4:	56                   	push   %esi
  for(i = 0; i < 40; i++){
    17c5:	31 f6                	xor    %esi,%esi
{
    17c7:	53                   	push   %ebx
    17c8:	8d 5d ad             	lea    -0x53(%ebp),%ebx
    17cb:	83 ec 64             	sub    $0x64,%esp
  printf(1, "concreate test\n");
    17ce:	68 41 44 00 00       	push   $0x4441
    17d3:	6a 01                	push   $0x1
    17d5:	e8 a6 22 00 00       	call   3a80 <printf>
  file[0] = 'C';
    17da:	c6 45 ad 43          	movb   $0x43,-0x53(%ebp)
  file[2] = '\0';
    17de:	83 c4 10             	add    $0x10,%esp
    17e1:	c6 45 af 00          	movb   $0x0,-0x51(%ebp)
  for(i = 0; i < 40; i++){
    17e5:	eb 4c                	jmp    1833 <concreate+0x73>
    17e7:	90                   	nop
    17e8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    17ef:	00 
    17f0:	69 c6 ab aa aa aa    	imul   $0xaaaaaaab,%esi,%eax
    if(pid && (i % 3) == 1){
    17f6:	3d ab aa aa aa       	cmp    $0xaaaaaaab,%eax
    17fb:	0f 83 8f 00 00 00    	jae    1890 <concreate+0xd0>
      fd = open(file, O_CREATE | O_RDWR);
    1801:	83 ec 08             	sub    $0x8,%esp
    1804:	68 02 02 00 00       	push   $0x202
    1809:	53                   	push   %ebx
    180a:	e8 44 21 00 00       	call   3953 <open>
      if(fd < 0){
    180f:	83 c4 10             	add    $0x10,%esp
    1812:	85 c0                	test   %eax,%eax
    1814:	78 63                	js     1879 <concreate+0xb9>
      close(fd);
    1816:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 40; i++){
    1819:	83 c6 01             	add    $0x1,%esi
      close(fd);
    181c:	50                   	push   %eax
    181d:	e8 19 21 00 00       	call   393b <close>
    1822:	83 c4 10             	add    $0x10,%esp
      wait();
    1825:	e8 f1 20 00 00       	call   391b <wait>
  for(i = 0; i < 40; i++){
    182a:	83 fe 28             	cmp    $0x28,%esi
    182d:	0f 84 7f 00 00 00    	je     18b2 <concreate+0xf2>
    unlink(file);
    1833:	83 ec 0c             	sub    $0xc,%esp
    file[1] = '0' + i;
    1836:	8d 46 30             	lea    0x30(%esi),%eax
    1839:	88 45 ae             	mov    %al,-0x52(%ebp)
    unlink(file);
    183c:	53                   	push   %ebx
    183d:	e8 21 21 00 00       	call   3963 <unlink>
    pid = fork();
    1842:	e8 c4 20 00 00       	call   390b <fork>
    if(pid && (i % 3) == 1){
    1847:	83 c4 10             	add    $0x10,%esp
    184a:	85 c0                	test   %eax,%eax
    184c:	75 a2                	jne    17f0 <concreate+0x30>
      link("C0", file);
    184e:	69 f6 cd cc cc cc    	imul   $0xcccccccd,%esi,%esi
    } else if(pid == 0 && (i % 5) == 1){
    1854:	81 fe cd cc cc cc    	cmp    $0xcccccccd,%esi
    185a:	0f 83 d0 00 00 00    	jae    1930 <concreate+0x170>
      fd = open(file, O_CREATE | O_RDWR);
    1860:	83 ec 08             	sub    $0x8,%esp
    1863:	68 02 02 00 00       	push   $0x202
    1868:	53                   	push   %ebx
    1869:	e8 e5 20 00 00       	call   3953 <open>
      if(fd < 0){
    186e:	83 c4 10             	add    $0x10,%esp
    1871:	85 c0                	test   %eax,%eax
    1873:	0f 89 ea 01 00 00    	jns    1a63 <concreate+0x2a3>
        printf(1, "concreate create %s failed\n", file);
    1879:	83 ec 04             	sub    $0x4,%esp
    187c:	53                   	push   %ebx
    187d:	68 54 44 00 00       	push   $0x4454
    1882:	6a 01                	push   $0x1
    1884:	e8 f7 21 00 00       	call   3a80 <printf>
        exit();
    1889:	e8 85 20 00 00       	call   3913 <exit>
    188e:	66 90                	xchg   %ax,%ax
      link("C0", file);
    1890:	83 ec 08             	sub    $0x8,%esp
  for(i = 0; i < 40; i++){
    1893:	83 c6 01             	add    $0x1,%esi
      link("C0", file);
    1896:	53                   	push   %ebx
    1897:	68 51 44 00 00       	push   $0x4451
    189c:	e8 d2 20 00 00       	call   3973 <link>
    18a1:	83 c4 10             	add    $0x10,%esp
      wait();
    18a4:	e8 72 20 00 00       	call   391b <wait>
  for(i = 0; i < 40; i++){
    18a9:	83 fe 28             	cmp    $0x28,%esi
    18ac:	0f 85 81 ff ff ff    	jne    1833 <concreate+0x73>
  memset(fa, 0, sizeof(fa));
    18b2:	83 ec 04             	sub    $0x4,%esp
    18b5:	8d 45 c0             	lea    -0x40(%ebp),%eax
    18b8:	6a 28                	push   $0x28
    18ba:	6a 00                	push   $0x0
    18bc:	50                   	push   %eax
    18bd:	e8 ae 1e 00 00       	call   3770 <memset>
  fd = open(".", 0);
    18c2:	5e                   	pop    %esi
    18c3:	5f                   	pop    %edi
    18c4:	6a 00                	push   $0x0
    18c6:	68 5e 46 00 00       	push   $0x465e
    18cb:	8d 7d b0             	lea    -0x50(%ebp),%edi
    18ce:	e8 80 20 00 00       	call   3953 <open>
  while(read(fd, &de, sizeof(de)) > 0){
    18d3:	83 c4 10             	add    $0x10,%esp
  n = 0;
    18d6:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
  fd = open(".", 0);
    18dd:	89 c6                	mov    %eax,%esi
  while(read(fd, &de, sizeof(de)) > 0){
    18df:	90                   	nop
    18e0:	83 ec 04             	sub    $0x4,%esp
    18e3:	6a 10                	push   $0x10
    18e5:	57                   	push   %edi
    18e6:	56                   	push   %esi
    18e7:	e8 3f 20 00 00       	call   392b <read>
    18ec:	83 c4 10             	add    $0x10,%esp
    18ef:	85 c0                	test   %eax,%eax
    18f1:	7e 5d                	jle    1950 <concreate+0x190>
    if(de.inum == 0)
    18f3:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
    18f8:	74 e6                	je     18e0 <concreate+0x120>
    if(de.name[0] == 'C' && de.name[2] == '\0'){
    18fa:	80 7d b2 43          	cmpb   $0x43,-0x4e(%ebp)
    18fe:	75 e0                	jne    18e0 <concreate+0x120>
    1900:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
    1904:	75 da                	jne    18e0 <concreate+0x120>
      i = de.name[1] - '0';
    1906:	0f be 45 b3          	movsbl -0x4d(%ebp),%eax
    190a:	83 e8 30             	sub    $0x30,%eax
      if(i < 0 || i >= sizeof(fa)){
    190d:	83 f8 27             	cmp    $0x27,%eax
    1910:	0f 87 5e 01 00 00    	ja     1a74 <concreate+0x2b4>
      if(fa[i]){
    1916:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    191b:	0f 85 7e 01 00 00    	jne    1a9f <concreate+0x2df>
      n++;
    1921:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
      fa[i] = 1;
    1925:	c6 44 05 c0 01       	movb   $0x1,-0x40(%ebp,%eax,1)
      n++;
    192a:	eb b4                	jmp    18e0 <concreate+0x120>
    192c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      link("C0", file);
    1930:	83 ec 08             	sub    $0x8,%esp
    1933:	53                   	push   %ebx
    1934:	68 51 44 00 00       	push   $0x4451
    1939:	e8 35 20 00 00       	call   3973 <link>
    193e:	83 c4 10             	add    $0x10,%esp
      exit();
    1941:	e8 cd 1f 00 00       	call   3913 <exit>
    1946:	66 90                	xchg   %ax,%ax
    1948:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    194f:	00 
  close(fd);
    1950:	83 ec 0c             	sub    $0xc,%esp
    1953:	56                   	push   %esi
    1954:	e8 e2 1f 00 00       	call   393b <close>
  if(n != 40){
    1959:	83 c4 10             	add    $0x10,%esp
    195c:	83 7d a4 28          	cmpl   $0x28,-0x5c(%ebp)
    1960:	0f 85 26 01 00 00    	jne    1a8c <concreate+0x2cc>
  for(i = 0; i < 40; i++){
    1966:	31 f6                	xor    %esi,%esi
    1968:	eb 48                	jmp    19b2 <concreate+0x1f2>
    196a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
       ((i % 3) == 1 && pid != 0)){
    1970:	83 f8 01             	cmp    $0x1,%eax
    1973:	75 04                	jne    1979 <concreate+0x1b9>
    1975:	85 ff                	test   %edi,%edi
    1977:	75 68                	jne    19e1 <concreate+0x221>
      unlink(file);
    1979:	83 ec 0c             	sub    $0xc,%esp
    197c:	53                   	push   %ebx
    197d:	e8 e1 1f 00 00       	call   3963 <unlink>
      unlink(file);
    1982:	89 1c 24             	mov    %ebx,(%esp)
    1985:	e8 d9 1f 00 00       	call   3963 <unlink>
      unlink(file);
    198a:	89 1c 24             	mov    %ebx,(%esp)
    198d:	e8 d1 1f 00 00       	call   3963 <unlink>
      unlink(file);
    1992:	89 1c 24             	mov    %ebx,(%esp)
    1995:	e8 c9 1f 00 00       	call   3963 <unlink>
    199a:	83 c4 10             	add    $0x10,%esp
    if(pid == 0)
    199d:	85 ff                	test   %edi,%edi
    199f:	74 a0                	je     1941 <concreate+0x181>
      wait();
    19a1:	e8 75 1f 00 00       	call   391b <wait>
  for(i = 0; i < 40; i++){
    19a6:	83 c6 01             	add    $0x1,%esi
    19a9:	83 fe 28             	cmp    $0x28,%esi
    19ac:	0f 84 86 00 00 00    	je     1a38 <concreate+0x278>
    file[1] = '0' + i;
    19b2:	8d 46 30             	lea    0x30(%esi),%eax
    19b5:	88 45 ae             	mov    %al,-0x52(%ebp)
    pid = fork();
    19b8:	e8 4e 1f 00 00       	call   390b <fork>
    19bd:	89 c7                	mov    %eax,%edi
    if(pid < 0){
    19bf:	85 c0                	test   %eax,%eax
    19c1:	0f 88 88 00 00 00    	js     1a4f <concreate+0x28f>
    if(((i % 3) == 0 && pid == 0) ||
    19c7:	b8 ab aa aa aa       	mov    $0xaaaaaaab,%eax
    19cc:	f7 e6                	mul    %esi
    19ce:	89 d0                	mov    %edx,%eax
    19d0:	83 e2 fe             	and    $0xfffffffe,%edx
    19d3:	d1 e8                	shr    $1,%eax
    19d5:	01 c2                	add    %eax,%edx
    19d7:	89 f0                	mov    %esi,%eax
    19d9:	29 d0                	sub    %edx,%eax
    19db:	89 c1                	mov    %eax,%ecx
    19dd:	09 f9                	or     %edi,%ecx
    19df:	75 8f                	jne    1970 <concreate+0x1b0>
      close(open(file, 0));
    19e1:	83 ec 08             	sub    $0x8,%esp
    19e4:	6a 00                	push   $0x0
    19e6:	53                   	push   %ebx
    19e7:	e8 67 1f 00 00       	call   3953 <open>
    19ec:	89 04 24             	mov    %eax,(%esp)
    19ef:	e8 47 1f 00 00       	call   393b <close>
      close(open(file, 0));
    19f4:	58                   	pop    %eax
    19f5:	5a                   	pop    %edx
    19f6:	6a 00                	push   $0x0
    19f8:	53                   	push   %ebx
    19f9:	e8 55 1f 00 00       	call   3953 <open>
    19fe:	89 04 24             	mov    %eax,(%esp)
    1a01:	e8 35 1f 00 00       	call   393b <close>
      close(open(file, 0));
    1a06:	59                   	pop    %ecx
    1a07:	58                   	pop    %eax
    1a08:	6a 00                	push   $0x0
    1a0a:	53                   	push   %ebx
    1a0b:	e8 43 1f 00 00       	call   3953 <open>
    1a10:	89 04 24             	mov    %eax,(%esp)
    1a13:	e8 23 1f 00 00       	call   393b <close>
      close(open(file, 0));
    1a18:	58                   	pop    %eax
    1a19:	5a                   	pop    %edx
    1a1a:	6a 00                	push   $0x0
    1a1c:	53                   	push   %ebx
    1a1d:	e8 31 1f 00 00       	call   3953 <open>
    1a22:	89 04 24             	mov    %eax,(%esp)
    1a25:	e8 11 1f 00 00       	call   393b <close>
    1a2a:	83 c4 10             	add    $0x10,%esp
    1a2d:	e9 6b ff ff ff       	jmp    199d <concreate+0x1dd>
    1a32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  printf(1, "concreate ok\n");
    1a38:	83 ec 08             	sub    $0x8,%esp
    1a3b:	68 a6 44 00 00       	push   $0x44a6
    1a40:	6a 01                	push   $0x1
    1a42:	e8 39 20 00 00       	call   3a80 <printf>
}
    1a47:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1a4a:	5b                   	pop    %ebx
    1a4b:	5e                   	pop    %esi
    1a4c:	5f                   	pop    %edi
    1a4d:	5d                   	pop    %ebp
    1a4e:	c3                   	ret
      printf(1, "fork failed\n");
    1a4f:	83 ec 08             	sub    $0x8,%esp
    1a52:	68 29 4d 00 00       	push   $0x4d29
    1a57:	6a 01                	push   $0x1
    1a59:	e8 22 20 00 00       	call   3a80 <printf>
      exit();
    1a5e:	e8 b0 1e 00 00       	call   3913 <exit>
      close(fd);
    1a63:	83 ec 0c             	sub    $0xc,%esp
    1a66:	50                   	push   %eax
    1a67:	e8 cf 1e 00 00       	call   393b <close>
    1a6c:	83 c4 10             	add    $0x10,%esp
    1a6f:	e9 cd fe ff ff       	jmp    1941 <concreate+0x181>
        printf(1, "concreate weird file %s\n", de.name);
    1a74:	83 ec 04             	sub    $0x4,%esp
    1a77:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1a7a:	50                   	push   %eax
    1a7b:	68 70 44 00 00       	push   $0x4470
    1a80:	6a 01                	push   $0x1
    1a82:	e8 f9 1f 00 00       	call   3a80 <printf>
        exit();
    1a87:	e8 87 1e 00 00       	call   3913 <exit>
    printf(1, "concreate not enough files in directory listing\n");
    1a8c:	51                   	push   %ecx
    1a8d:	51                   	push   %ecx
    1a8e:	68 f8 4f 00 00       	push   $0x4ff8
    1a93:	6a 01                	push   $0x1
    1a95:	e8 e6 1f 00 00       	call   3a80 <printf>
    exit();
    1a9a:	e8 74 1e 00 00       	call   3913 <exit>
        printf(1, "concreate duplicate file %s\n", de.name);
    1a9f:	83 ec 04             	sub    $0x4,%esp
    1aa2:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1aa5:	50                   	push   %eax
    1aa6:	68 89 44 00 00       	push   $0x4489
    1aab:	6a 01                	push   $0x1
    1aad:	e8 ce 1f 00 00       	call   3a80 <printf>
        exit();
    1ab2:	e8 5c 1e 00 00       	call   3913 <exit>
    1ab7:	90                   	nop
    1ab8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    1abf:	00 

00001ac0 <linkunlink>:
{
    1ac0:	55                   	push   %ebp
    1ac1:	89 e5                	mov    %esp,%ebp
    1ac3:	57                   	push   %edi
    1ac4:	56                   	push   %esi
    1ac5:	53                   	push   %ebx
    1ac6:	83 ec 24             	sub    $0x24,%esp
  printf(1, "linkunlink test\n");
    1ac9:	68 b4 44 00 00       	push   $0x44b4
    1ace:	6a 01                	push   $0x1
    1ad0:	e8 ab 1f 00 00       	call   3a80 <printf>
  unlink("x");
    1ad5:	c7 04 24 41 47 00 00 	movl   $0x4741,(%esp)
    1adc:	e8 82 1e 00 00       	call   3963 <unlink>
  pid = fork();
    1ae1:	e8 25 1e 00 00       	call   390b <fork>
  if(pid < 0){
    1ae6:	83 c4 10             	add    $0x10,%esp
  pid = fork();
    1ae9:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(pid < 0){
    1aec:	85 c0                	test   %eax,%eax
    1aee:	0f 88 b6 00 00 00    	js     1baa <linkunlink+0xea>
  unsigned int x = (pid ? 1 : 97);
    1af4:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    1af8:	bb 64 00 00 00       	mov    $0x64,%ebx
    if((x % 3) == 0){
    1afd:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
  unsigned int x = (pid ? 1 : 97);
    1b02:	19 ff                	sbb    %edi,%edi
    1b04:	83 e7 60             	and    $0x60,%edi
    1b07:	83 c7 01             	add    $0x1,%edi
  for(i = 0; i < 100; i++){
    1b0a:	eb 1e                	jmp    1b2a <linkunlink+0x6a>
    1b0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if((x % 3) == 1){
    1b10:	83 f8 01             	cmp    $0x1,%eax
    1b13:	74 7b                	je     1b90 <linkunlink+0xd0>
      unlink("x");
    1b15:	83 ec 0c             	sub    $0xc,%esp
    1b18:	68 41 47 00 00       	push   $0x4741
    1b1d:	e8 41 1e 00 00       	call   3963 <unlink>
    1b22:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    1b25:	83 eb 01             	sub    $0x1,%ebx
    1b28:	74 41                	je     1b6b <linkunlink+0xab>
    x = x * 1103515245 + 12345;
    1b2a:	69 cf 6d 4e c6 41    	imul   $0x41c64e6d,%edi,%ecx
    1b30:	8d b9 39 30 00 00    	lea    0x3039(%ecx),%edi
    if((x % 3) == 0){
    1b36:	89 f8                	mov    %edi,%eax
    1b38:	f7 e6                	mul    %esi
    1b3a:	89 d0                	mov    %edx,%eax
    1b3c:	83 e2 fe             	and    $0xfffffffe,%edx
    1b3f:	d1 e8                	shr    $1,%eax
    1b41:	01 c2                	add    %eax,%edx
    1b43:	89 f8                	mov    %edi,%eax
    1b45:	29 d0                	sub    %edx,%eax
    1b47:	75 c7                	jne    1b10 <linkunlink+0x50>
      close(open("x", O_RDWR | O_CREATE));
    1b49:	83 ec 08             	sub    $0x8,%esp
    1b4c:	68 02 02 00 00       	push   $0x202
    1b51:	68 41 47 00 00       	push   $0x4741
    1b56:	e8 f8 1d 00 00       	call   3953 <open>
    1b5b:	89 04 24             	mov    %eax,(%esp)
    1b5e:	e8 d8 1d 00 00       	call   393b <close>
    1b63:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    1b66:	83 eb 01             	sub    $0x1,%ebx
    1b69:	75 bf                	jne    1b2a <linkunlink+0x6a>
  if(pid)
    1b6b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    1b6e:	85 c0                	test   %eax,%eax
    1b70:	74 4b                	je     1bbd <linkunlink+0xfd>
    wait();
    1b72:	e8 a4 1d 00 00       	call   391b <wait>
  printf(1, "linkunlink ok\n");
    1b77:	83 ec 08             	sub    $0x8,%esp
    1b7a:	68 c9 44 00 00       	push   $0x44c9
    1b7f:	6a 01                	push   $0x1
    1b81:	e8 fa 1e 00 00       	call   3a80 <printf>
}
    1b86:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1b89:	5b                   	pop    %ebx
    1b8a:	5e                   	pop    %esi
    1b8b:	5f                   	pop    %edi
    1b8c:	5d                   	pop    %ebp
    1b8d:	c3                   	ret
    1b8e:	66 90                	xchg   %ax,%ax
      link("cat", "x");
    1b90:	83 ec 08             	sub    $0x8,%esp
    1b93:	68 41 47 00 00       	push   $0x4741
    1b98:	68 c5 44 00 00       	push   $0x44c5
    1b9d:	e8 d1 1d 00 00       	call   3973 <link>
    1ba2:	83 c4 10             	add    $0x10,%esp
    1ba5:	e9 7b ff ff ff       	jmp    1b25 <linkunlink+0x65>
    printf(1, "fork failed\n");
    1baa:	52                   	push   %edx
    1bab:	52                   	push   %edx
    1bac:	68 29 4d 00 00       	push   $0x4d29
    1bb1:	6a 01                	push   $0x1
    1bb3:	e8 c8 1e 00 00       	call   3a80 <printf>
    exit();
    1bb8:	e8 56 1d 00 00       	call   3913 <exit>
    exit();
    1bbd:	e8 51 1d 00 00       	call   3913 <exit>
    1bc2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1bc8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    1bcf:	00 

00001bd0 <bigdir>:
{
    1bd0:	55                   	push   %ebp
    1bd1:	89 e5                	mov    %esp,%ebp
    1bd3:	57                   	push   %edi
    1bd4:	56                   	push   %esi
    1bd5:	53                   	push   %ebx
    1bd6:	83 ec 24             	sub    $0x24,%esp
  printf(1, "bigdir test\n");
    1bd9:	68 d8 44 00 00       	push   $0x44d8
    1bde:	6a 01                	push   $0x1
    1be0:	e8 9b 1e 00 00       	call   3a80 <printf>
  unlink("bd");
    1be5:	c7 04 24 e5 44 00 00 	movl   $0x44e5,(%esp)
    1bec:	e8 72 1d 00 00       	call   3963 <unlink>
  fd = open("bd", O_CREATE);
    1bf1:	5a                   	pop    %edx
    1bf2:	59                   	pop    %ecx
    1bf3:	68 00 02 00 00       	push   $0x200
    1bf8:	68 e5 44 00 00       	push   $0x44e5
    1bfd:	e8 51 1d 00 00       	call   3953 <open>
  if(fd < 0){
    1c02:	83 c4 10             	add    $0x10,%esp
    1c05:	85 c0                	test   %eax,%eax
    1c07:	0f 88 de 00 00 00    	js     1ceb <bigdir+0x11b>
  close(fd);
    1c0d:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 500; i++){
    1c10:	31 f6                	xor    %esi,%esi
    1c12:	8d 7d de             	lea    -0x22(%ebp),%edi
  close(fd);
    1c15:	50                   	push   %eax
    1c16:	e8 20 1d 00 00       	call   393b <close>
    1c1b:	83 c4 10             	add    $0x10,%esp
    1c1e:	66 90                	xchg   %ax,%ax
    name[1] = '0' + (i / 64);
    1c20:	89 f0                	mov    %esi,%eax
    if(link("bd", name) != 0){
    1c22:	83 ec 08             	sub    $0x8,%esp
    name[0] = 'x';
    1c25:	c6 45 de 78          	movb   $0x78,-0x22(%ebp)
    name[1] = '0' + (i / 64);
    1c29:	c1 f8 06             	sar    $0x6,%eax
    name[3] = '\0';
    1c2c:	c6 45 e1 00          	movb   $0x0,-0x1f(%ebp)
    name[1] = '0' + (i / 64);
    1c30:	83 c0 30             	add    $0x30,%eax
    1c33:	88 45 df             	mov    %al,-0x21(%ebp)
    name[2] = '0' + (i % 64);
    1c36:	89 f0                	mov    %esi,%eax
    1c38:	83 e0 3f             	and    $0x3f,%eax
    1c3b:	83 c0 30             	add    $0x30,%eax
    1c3e:	88 45 e0             	mov    %al,-0x20(%ebp)
    if(link("bd", name) != 0){
    1c41:	57                   	push   %edi
    1c42:	68 e5 44 00 00       	push   $0x44e5
    1c47:	e8 27 1d 00 00       	call   3973 <link>
    1c4c:	83 c4 10             	add    $0x10,%esp
    1c4f:	89 c3                	mov    %eax,%ebx
    1c51:	85 c0                	test   %eax,%eax
    1c53:	75 6e                	jne    1cc3 <bigdir+0xf3>
  for(i = 0; i < 500; i++){
    1c55:	83 c6 01             	add    $0x1,%esi
    1c58:	81 fe f4 01 00 00    	cmp    $0x1f4,%esi
    1c5e:	75 c0                	jne    1c20 <bigdir+0x50>
  unlink("bd");
    1c60:	83 ec 0c             	sub    $0xc,%esp
    1c63:	68 e5 44 00 00       	push   $0x44e5
    1c68:	e8 f6 1c 00 00       	call   3963 <unlink>
    1c6d:	83 c4 10             	add    $0x10,%esp
    name[1] = '0' + (i / 64);
    1c70:	89 d8                	mov    %ebx,%eax
    if(unlink(name) != 0){
    1c72:	83 ec 0c             	sub    $0xc,%esp
    name[0] = 'x';
    1c75:	c6 45 de 78          	movb   $0x78,-0x22(%ebp)
    name[1] = '0' + (i / 64);
    1c79:	c1 f8 06             	sar    $0x6,%eax
    name[3] = '\0';
    1c7c:	c6 45 e1 00          	movb   $0x0,-0x1f(%ebp)
    name[1] = '0' + (i / 64);
    1c80:	83 c0 30             	add    $0x30,%eax
    1c83:	88 45 df             	mov    %al,-0x21(%ebp)
    name[2] = '0' + (i % 64);
    1c86:	89 d8                	mov    %ebx,%eax
    1c88:	83 e0 3f             	and    $0x3f,%eax
    1c8b:	83 c0 30             	add    $0x30,%eax
    1c8e:	88 45 e0             	mov    %al,-0x20(%ebp)
    if(unlink(name) != 0){
    1c91:	57                   	push   %edi
    1c92:	e8 cc 1c 00 00       	call   3963 <unlink>
    1c97:	83 c4 10             	add    $0x10,%esp
    1c9a:	85 c0                	test   %eax,%eax
    1c9c:	75 39                	jne    1cd7 <bigdir+0x107>
  for(i = 0; i < 500; i++){
    1c9e:	83 c3 01             	add    $0x1,%ebx
    1ca1:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1ca7:	75 c7                	jne    1c70 <bigdir+0xa0>
  printf(1, "bigdir ok\n");
    1ca9:	83 ec 08             	sub    $0x8,%esp
    1cac:	68 27 45 00 00       	push   $0x4527
    1cb1:	6a 01                	push   $0x1
    1cb3:	e8 c8 1d 00 00       	call   3a80 <printf>
    1cb8:	83 c4 10             	add    $0x10,%esp
}
    1cbb:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1cbe:	5b                   	pop    %ebx
    1cbf:	5e                   	pop    %esi
    1cc0:	5f                   	pop    %edi
    1cc1:	5d                   	pop    %ebp
    1cc2:	c3                   	ret
      printf(1, "bigdir link failed\n");
    1cc3:	83 ec 08             	sub    $0x8,%esp
    1cc6:	68 fe 44 00 00       	push   $0x44fe
    1ccb:	6a 01                	push   $0x1
    1ccd:	e8 ae 1d 00 00       	call   3a80 <printf>
      exit();
    1cd2:	e8 3c 1c 00 00       	call   3913 <exit>
      printf(1, "bigdir unlink failed");
    1cd7:	83 ec 08             	sub    $0x8,%esp
    1cda:	68 12 45 00 00       	push   $0x4512
    1cdf:	6a 01                	push   $0x1
    1ce1:	e8 9a 1d 00 00       	call   3a80 <printf>
      exit();
    1ce6:	e8 28 1c 00 00       	call   3913 <exit>
    printf(1, "bigdir create failed\n");
    1ceb:	50                   	push   %eax
    1cec:	50                   	push   %eax
    1ced:	68 e8 44 00 00       	push   $0x44e8
    1cf2:	6a 01                	push   $0x1
    1cf4:	e8 87 1d 00 00       	call   3a80 <printf>
    exit();
    1cf9:	e8 15 1c 00 00       	call   3913 <exit>
    1cfe:	66 90                	xchg   %ax,%ax

00001d00 <subdir>:
{
    1d00:	55                   	push   %ebp
    1d01:	89 e5                	mov    %esp,%ebp
    1d03:	53                   	push   %ebx
    1d04:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "subdir test\n");
    1d07:	68 32 45 00 00       	push   $0x4532
    1d0c:	6a 01                	push   $0x1
    1d0e:	e8 6d 1d 00 00       	call   3a80 <printf>
  unlink("ff");
    1d13:	c7 04 24 bb 45 00 00 	movl   $0x45bb,(%esp)
    1d1a:	e8 44 1c 00 00       	call   3963 <unlink>
  if(mkdir("dd") != 0){
    1d1f:	c7 04 24 58 46 00 00 	movl   $0x4658,(%esp)
    1d26:	e8 50 1c 00 00       	call   397b <mkdir>
    1d2b:	83 c4 10             	add    $0x10,%esp
    1d2e:	85 c0                	test   %eax,%eax
    1d30:	0f 85 b3 05 00 00    	jne    22e9 <subdir+0x5e9>
  fd = open("dd/ff", O_CREATE | O_RDWR);
    1d36:	83 ec 08             	sub    $0x8,%esp
    1d39:	68 02 02 00 00       	push   $0x202
    1d3e:	68 91 45 00 00       	push   $0x4591
    1d43:	e8 0b 1c 00 00       	call   3953 <open>
  if(fd < 0){
    1d48:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/ff", O_CREATE | O_RDWR);
    1d4b:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1d4d:	85 c0                	test   %eax,%eax
    1d4f:	0f 88 81 05 00 00    	js     22d6 <subdir+0x5d6>
  write(fd, "ff", 2);
    1d55:	83 ec 04             	sub    $0x4,%esp
    1d58:	6a 02                	push   $0x2
    1d5a:	68 bb 45 00 00       	push   $0x45bb
    1d5f:	50                   	push   %eax
    1d60:	e8 ce 1b 00 00       	call   3933 <write>
  close(fd);
    1d65:	89 1c 24             	mov    %ebx,(%esp)
    1d68:	e8 ce 1b 00 00       	call   393b <close>
  if(unlink("dd") >= 0){
    1d6d:	c7 04 24 58 46 00 00 	movl   $0x4658,(%esp)
    1d74:	e8 ea 1b 00 00       	call   3963 <unlink>
    1d79:	83 c4 10             	add    $0x10,%esp
    1d7c:	85 c0                	test   %eax,%eax
    1d7e:	0f 89 3f 05 00 00    	jns    22c3 <subdir+0x5c3>
  if(mkdir("/dd/dd") != 0){
    1d84:	83 ec 0c             	sub    $0xc,%esp
    1d87:	68 6c 45 00 00       	push   $0x456c
    1d8c:	e8 ea 1b 00 00       	call   397b <mkdir>
    1d91:	83 c4 10             	add    $0x10,%esp
    1d94:	85 c0                	test   %eax,%eax
    1d96:	0f 85 14 05 00 00    	jne    22b0 <subdir+0x5b0>
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    1d9c:	83 ec 08             	sub    $0x8,%esp
    1d9f:	68 02 02 00 00       	push   $0x202
    1da4:	68 8e 45 00 00       	push   $0x458e
    1da9:	e8 a5 1b 00 00       	call   3953 <open>
  if(fd < 0){
    1dae:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    1db1:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1db3:	85 c0                	test   %eax,%eax
    1db5:	0f 88 24 04 00 00    	js     21df <subdir+0x4df>
  write(fd, "FF", 2);
    1dbb:	83 ec 04             	sub    $0x4,%esp
    1dbe:	6a 02                	push   $0x2
    1dc0:	68 af 45 00 00       	push   $0x45af
    1dc5:	50                   	push   %eax
    1dc6:	e8 68 1b 00 00       	call   3933 <write>
  close(fd);
    1dcb:	89 1c 24             	mov    %ebx,(%esp)
    1dce:	e8 68 1b 00 00       	call   393b <close>
  fd = open("dd/dd/../ff", 0);
    1dd3:	58                   	pop    %eax
    1dd4:	5a                   	pop    %edx
    1dd5:	6a 00                	push   $0x0
    1dd7:	68 b2 45 00 00       	push   $0x45b2
    1ddc:	e8 72 1b 00 00       	call   3953 <open>
  if(fd < 0){
    1de1:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/dd/../ff", 0);
    1de4:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1de6:	85 c0                	test   %eax,%eax
    1de8:	0f 88 de 03 00 00    	js     21cc <subdir+0x4cc>
  cc = read(fd, buf, sizeof(buf));
    1dee:	83 ec 04             	sub    $0x4,%esp
    1df1:	68 00 20 00 00       	push   $0x2000
    1df6:	68 20 86 00 00       	push   $0x8620
    1dfb:	50                   	push   %eax
    1dfc:	e8 2a 1b 00 00       	call   392b <read>
  if(cc != 2 || buf[0] != 'f'){
    1e01:	83 c4 10             	add    $0x10,%esp
    1e04:	83 f8 02             	cmp    $0x2,%eax
    1e07:	0f 85 3a 03 00 00    	jne    2147 <subdir+0x447>
    1e0d:	80 3d 20 86 00 00 66 	cmpb   $0x66,0x8620
    1e14:	0f 85 2d 03 00 00    	jne    2147 <subdir+0x447>
  close(fd);
    1e1a:	83 ec 0c             	sub    $0xc,%esp
    1e1d:	53                   	push   %ebx
    1e1e:	e8 18 1b 00 00       	call   393b <close>
  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    1e23:	59                   	pop    %ecx
    1e24:	5b                   	pop    %ebx
    1e25:	68 f2 45 00 00       	push   $0x45f2
    1e2a:	68 8e 45 00 00       	push   $0x458e
    1e2f:	e8 3f 1b 00 00       	call   3973 <link>
    1e34:	83 c4 10             	add    $0x10,%esp
    1e37:	85 c0                	test   %eax,%eax
    1e39:	0f 85 c6 03 00 00    	jne    2205 <subdir+0x505>
  if(unlink("dd/dd/ff") != 0){
    1e3f:	83 ec 0c             	sub    $0xc,%esp
    1e42:	68 8e 45 00 00       	push   $0x458e
    1e47:	e8 17 1b 00 00       	call   3963 <unlink>
    1e4c:	83 c4 10             	add    $0x10,%esp
    1e4f:	85 c0                	test   %eax,%eax
    1e51:	0f 85 16 03 00 00    	jne    216d <subdir+0x46d>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    1e57:	83 ec 08             	sub    $0x8,%esp
    1e5a:	6a 00                	push   $0x0
    1e5c:	68 8e 45 00 00       	push   $0x458e
    1e61:	e8 ed 1a 00 00       	call   3953 <open>
    1e66:	83 c4 10             	add    $0x10,%esp
    1e69:	85 c0                	test   %eax,%eax
    1e6b:	0f 89 2c 04 00 00    	jns    229d <subdir+0x59d>
  if(chdir("dd") != 0){
    1e71:	83 ec 0c             	sub    $0xc,%esp
    1e74:	68 58 46 00 00       	push   $0x4658
    1e79:	e8 05 1b 00 00       	call   3983 <chdir>
    1e7e:	83 c4 10             	add    $0x10,%esp
    1e81:	85 c0                	test   %eax,%eax
    1e83:	0f 85 01 04 00 00    	jne    228a <subdir+0x58a>
  if(chdir("dd/../../dd") != 0){
    1e89:	83 ec 0c             	sub    $0xc,%esp
    1e8c:	68 26 46 00 00       	push   $0x4626
    1e91:	e8 ed 1a 00 00       	call   3983 <chdir>
    1e96:	83 c4 10             	add    $0x10,%esp
    1e99:	85 c0                	test   %eax,%eax
    1e9b:	0f 85 b9 02 00 00    	jne    215a <subdir+0x45a>
  if(chdir("dd/../../../dd") != 0){
    1ea1:	83 ec 0c             	sub    $0xc,%esp
    1ea4:	68 4c 46 00 00       	push   $0x464c
    1ea9:	e8 d5 1a 00 00       	call   3983 <chdir>
    1eae:	83 c4 10             	add    $0x10,%esp
    1eb1:	85 c0                	test   %eax,%eax
    1eb3:	0f 85 a1 02 00 00    	jne    215a <subdir+0x45a>
  if(chdir("./..") != 0){
    1eb9:	83 ec 0c             	sub    $0xc,%esp
    1ebc:	68 5b 46 00 00       	push   $0x465b
    1ec1:	e8 bd 1a 00 00       	call   3983 <chdir>
    1ec6:	83 c4 10             	add    $0x10,%esp
    1ec9:	85 c0                	test   %eax,%eax
    1ecb:	0f 85 21 03 00 00    	jne    21f2 <subdir+0x4f2>
  fd = open("dd/dd/ffff", 0);
    1ed1:	83 ec 08             	sub    $0x8,%esp
    1ed4:	6a 00                	push   $0x0
    1ed6:	68 f2 45 00 00       	push   $0x45f2
    1edb:	e8 73 1a 00 00       	call   3953 <open>
  if(fd < 0){
    1ee0:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/dd/ffff", 0);
    1ee3:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1ee5:	85 c0                	test   %eax,%eax
    1ee7:	0f 88 e0 04 00 00    	js     23cd <subdir+0x6cd>
  if(read(fd, buf, sizeof(buf)) != 2){
    1eed:	83 ec 04             	sub    $0x4,%esp
    1ef0:	68 00 20 00 00       	push   $0x2000
    1ef5:	68 20 86 00 00       	push   $0x8620
    1efa:	50                   	push   %eax
    1efb:	e8 2b 1a 00 00       	call   392b <read>
    1f00:	83 c4 10             	add    $0x10,%esp
    1f03:	83 f8 02             	cmp    $0x2,%eax
    1f06:	0f 85 ae 04 00 00    	jne    23ba <subdir+0x6ba>
  close(fd);
    1f0c:	83 ec 0c             	sub    $0xc,%esp
    1f0f:	53                   	push   %ebx
    1f10:	e8 26 1a 00 00       	call   393b <close>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    1f15:	58                   	pop    %eax
    1f16:	5a                   	pop    %edx
    1f17:	6a 00                	push   $0x0
    1f19:	68 8e 45 00 00       	push   $0x458e
    1f1e:	e8 30 1a 00 00       	call   3953 <open>
    1f23:	83 c4 10             	add    $0x10,%esp
    1f26:	85 c0                	test   %eax,%eax
    1f28:	0f 89 65 02 00 00    	jns    2193 <subdir+0x493>
  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    1f2e:	83 ec 08             	sub    $0x8,%esp
    1f31:	68 02 02 00 00       	push   $0x202
    1f36:	68 a6 46 00 00       	push   $0x46a6
    1f3b:	e8 13 1a 00 00       	call   3953 <open>
    1f40:	83 c4 10             	add    $0x10,%esp
    1f43:	85 c0                	test   %eax,%eax
    1f45:	0f 89 35 02 00 00    	jns    2180 <subdir+0x480>
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    1f4b:	83 ec 08             	sub    $0x8,%esp
    1f4e:	68 02 02 00 00       	push   $0x202
    1f53:	68 cb 46 00 00       	push   $0x46cb
    1f58:	e8 f6 19 00 00       	call   3953 <open>
    1f5d:	83 c4 10             	add    $0x10,%esp
    1f60:	85 c0                	test   %eax,%eax
    1f62:	0f 89 0f 03 00 00    	jns    2277 <subdir+0x577>
  if(open("dd", O_CREATE) >= 0){
    1f68:	83 ec 08             	sub    $0x8,%esp
    1f6b:	68 00 02 00 00       	push   $0x200
    1f70:	68 58 46 00 00       	push   $0x4658
    1f75:	e8 d9 19 00 00       	call   3953 <open>
    1f7a:	83 c4 10             	add    $0x10,%esp
    1f7d:	85 c0                	test   %eax,%eax
    1f7f:	0f 89 df 02 00 00    	jns    2264 <subdir+0x564>
  if(open("dd", O_RDWR) >= 0){
    1f85:	83 ec 08             	sub    $0x8,%esp
    1f88:	6a 02                	push   $0x2
    1f8a:	68 58 46 00 00       	push   $0x4658
    1f8f:	e8 bf 19 00 00       	call   3953 <open>
    1f94:	83 c4 10             	add    $0x10,%esp
    1f97:	85 c0                	test   %eax,%eax
    1f99:	0f 89 b2 02 00 00    	jns    2251 <subdir+0x551>
  if(open("dd", O_WRONLY) >= 0){
    1f9f:	83 ec 08             	sub    $0x8,%esp
    1fa2:	6a 01                	push   $0x1
    1fa4:	68 58 46 00 00       	push   $0x4658
    1fa9:	e8 a5 19 00 00       	call   3953 <open>
    1fae:	83 c4 10             	add    $0x10,%esp
    1fb1:	85 c0                	test   %eax,%eax
    1fb3:	0f 89 85 02 00 00    	jns    223e <subdir+0x53e>
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    1fb9:	83 ec 08             	sub    $0x8,%esp
    1fbc:	68 3a 47 00 00       	push   $0x473a
    1fc1:	68 a6 46 00 00       	push   $0x46a6
    1fc6:	e8 a8 19 00 00       	call   3973 <link>
    1fcb:	83 c4 10             	add    $0x10,%esp
    1fce:	85 c0                	test   %eax,%eax
    1fd0:	0f 84 55 02 00 00    	je     222b <subdir+0x52b>
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    1fd6:	83 ec 08             	sub    $0x8,%esp
    1fd9:	68 3a 47 00 00       	push   $0x473a
    1fde:	68 cb 46 00 00       	push   $0x46cb
    1fe3:	e8 8b 19 00 00       	call   3973 <link>
    1fe8:	83 c4 10             	add    $0x10,%esp
    1feb:	85 c0                	test   %eax,%eax
    1fed:	0f 84 25 02 00 00    	je     2218 <subdir+0x518>
  if(link("dd/ff", "dd/dd/ffff") == 0){
    1ff3:	83 ec 08             	sub    $0x8,%esp
    1ff6:	68 f2 45 00 00       	push   $0x45f2
    1ffb:	68 91 45 00 00       	push   $0x4591
    2000:	e8 6e 19 00 00       	call   3973 <link>
    2005:	83 c4 10             	add    $0x10,%esp
    2008:	85 c0                	test   %eax,%eax
    200a:	0f 84 a9 01 00 00    	je     21b9 <subdir+0x4b9>
  if(mkdir("dd/ff/ff") == 0){
    2010:	83 ec 0c             	sub    $0xc,%esp
    2013:	68 a6 46 00 00       	push   $0x46a6
    2018:	e8 5e 19 00 00       	call   397b <mkdir>
    201d:	83 c4 10             	add    $0x10,%esp
    2020:	85 c0                	test   %eax,%eax
    2022:	0f 84 7e 01 00 00    	je     21a6 <subdir+0x4a6>
  if(mkdir("dd/xx/ff") == 0){
    2028:	83 ec 0c             	sub    $0xc,%esp
    202b:	68 cb 46 00 00       	push   $0x46cb
    2030:	e8 46 19 00 00       	call   397b <mkdir>
    2035:	83 c4 10             	add    $0x10,%esp
    2038:	85 c0                	test   %eax,%eax
    203a:	0f 84 67 03 00 00    	je     23a7 <subdir+0x6a7>
  if(mkdir("dd/dd/ffff") == 0){
    2040:	83 ec 0c             	sub    $0xc,%esp
    2043:	68 f2 45 00 00       	push   $0x45f2
    2048:	e8 2e 19 00 00       	call   397b <mkdir>
    204d:	83 c4 10             	add    $0x10,%esp
    2050:	85 c0                	test   %eax,%eax
    2052:	0f 84 3c 03 00 00    	je     2394 <subdir+0x694>
  if(unlink("dd/xx/ff") == 0){
    2058:	83 ec 0c             	sub    $0xc,%esp
    205b:	68 cb 46 00 00       	push   $0x46cb
    2060:	e8 fe 18 00 00       	call   3963 <unlink>
    2065:	83 c4 10             	add    $0x10,%esp
    2068:	85 c0                	test   %eax,%eax
    206a:	0f 84 11 03 00 00    	je     2381 <subdir+0x681>
  if(unlink("dd/ff/ff") == 0){
    2070:	83 ec 0c             	sub    $0xc,%esp
    2073:	68 a6 46 00 00       	push   $0x46a6
    2078:	e8 e6 18 00 00       	call   3963 <unlink>
    207d:	83 c4 10             	add    $0x10,%esp
    2080:	85 c0                	test   %eax,%eax
    2082:	0f 84 e6 02 00 00    	je     236e <subdir+0x66e>
  if(chdir("dd/ff") == 0){
    2088:	83 ec 0c             	sub    $0xc,%esp
    208b:	68 91 45 00 00       	push   $0x4591
    2090:	e8 ee 18 00 00       	call   3983 <chdir>
    2095:	83 c4 10             	add    $0x10,%esp
    2098:	85 c0                	test   %eax,%eax
    209a:	0f 84 bb 02 00 00    	je     235b <subdir+0x65b>
  if(chdir("dd/xx") == 0){
    20a0:	83 ec 0c             	sub    $0xc,%esp
    20a3:	68 3d 47 00 00       	push   $0x473d
    20a8:	e8 d6 18 00 00       	call   3983 <chdir>
    20ad:	83 c4 10             	add    $0x10,%esp
    20b0:	85 c0                	test   %eax,%eax
    20b2:	0f 84 90 02 00 00    	je     2348 <subdir+0x648>
  if(unlink("dd/dd/ffff") != 0){
    20b8:	83 ec 0c             	sub    $0xc,%esp
    20bb:	68 f2 45 00 00       	push   $0x45f2
    20c0:	e8 9e 18 00 00       	call   3963 <unlink>
    20c5:	83 c4 10             	add    $0x10,%esp
    20c8:	85 c0                	test   %eax,%eax
    20ca:	0f 85 9d 00 00 00    	jne    216d <subdir+0x46d>
  if(unlink("dd/ff") != 0){
    20d0:	83 ec 0c             	sub    $0xc,%esp
    20d3:	68 91 45 00 00       	push   $0x4591
    20d8:	e8 86 18 00 00       	call   3963 <unlink>
    20dd:	83 c4 10             	add    $0x10,%esp
    20e0:	85 c0                	test   %eax,%eax
    20e2:	0f 85 4d 02 00 00    	jne    2335 <subdir+0x635>
  if(unlink("dd") == 0){
    20e8:	83 ec 0c             	sub    $0xc,%esp
    20eb:	68 58 46 00 00       	push   $0x4658
    20f0:	e8 6e 18 00 00       	call   3963 <unlink>
    20f5:	83 c4 10             	add    $0x10,%esp
    20f8:	85 c0                	test   %eax,%eax
    20fa:	0f 84 22 02 00 00    	je     2322 <subdir+0x622>
  if(unlink("dd/dd") < 0){
    2100:	83 ec 0c             	sub    $0xc,%esp
    2103:	68 6d 45 00 00       	push   $0x456d
    2108:	e8 56 18 00 00       	call   3963 <unlink>
    210d:	83 c4 10             	add    $0x10,%esp
    2110:	85 c0                	test   %eax,%eax
    2112:	0f 88 f7 01 00 00    	js     230f <subdir+0x60f>
  if(unlink("dd") < 0){
    2118:	83 ec 0c             	sub    $0xc,%esp
    211b:	68 58 46 00 00       	push   $0x4658
    2120:	e8 3e 18 00 00       	call   3963 <unlink>
    2125:	83 c4 10             	add    $0x10,%esp
    2128:	85 c0                	test   %eax,%eax
    212a:	0f 88 cc 01 00 00    	js     22fc <subdir+0x5fc>
  printf(1, "subdir ok\n");
    2130:	83 ec 08             	sub    $0x8,%esp
    2133:	68 3a 48 00 00       	push   $0x483a
    2138:	6a 01                	push   $0x1
    213a:	e8 41 19 00 00       	call   3a80 <printf>
}
    213f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2142:	83 c4 10             	add    $0x10,%esp
    2145:	c9                   	leave
    2146:	c3                   	ret
    printf(1, "dd/dd/../ff wrong content\n");
    2147:	50                   	push   %eax
    2148:	50                   	push   %eax
    2149:	68 d7 45 00 00       	push   $0x45d7
    214e:	6a 01                	push   $0x1
    2150:	e8 2b 19 00 00       	call   3a80 <printf>
    exit();
    2155:	e8 b9 17 00 00       	call   3913 <exit>
    printf(1, "chdir dd/../../dd failed\n");
    215a:	50                   	push   %eax
    215b:	50                   	push   %eax
    215c:	68 32 46 00 00       	push   $0x4632
    2161:	6a 01                	push   $0x1
    2163:	e8 18 19 00 00       	call   3a80 <printf>
    exit();
    2168:	e8 a6 17 00 00       	call   3913 <exit>
    printf(1, "unlink dd/dd/ff failed\n");
    216d:	50                   	push   %eax
    216e:	50                   	push   %eax
    216f:	68 fd 45 00 00       	push   $0x45fd
    2174:	6a 01                	push   $0x1
    2176:	e8 05 19 00 00       	call   3a80 <printf>
    exit();
    217b:	e8 93 17 00 00       	call   3913 <exit>
    printf(1, "create dd/ff/ff succeeded!\n");
    2180:	51                   	push   %ecx
    2181:	51                   	push   %ecx
    2182:	68 af 46 00 00       	push   $0x46af
    2187:	6a 01                	push   $0x1
    2189:	e8 f2 18 00 00       	call   3a80 <printf>
    exit();
    218e:	e8 80 17 00 00       	call   3913 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    2193:	53                   	push   %ebx
    2194:	53                   	push   %ebx
    2195:	68 9c 50 00 00       	push   $0x509c
    219a:	6a 01                	push   $0x1
    219c:	e8 df 18 00 00       	call   3a80 <printf>
    exit();
    21a1:	e8 6d 17 00 00       	call   3913 <exit>
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    21a6:	51                   	push   %ecx
    21a7:	51                   	push   %ecx
    21a8:	68 43 47 00 00       	push   $0x4743
    21ad:	6a 01                	push   $0x1
    21af:	e8 cc 18 00 00       	call   3a80 <printf>
    exit();
    21b4:	e8 5a 17 00 00       	call   3913 <exit>
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    21b9:	53                   	push   %ebx
    21ba:	53                   	push   %ebx
    21bb:	68 0c 51 00 00       	push   $0x510c
    21c0:	6a 01                	push   $0x1
    21c2:	e8 b9 18 00 00       	call   3a80 <printf>
    exit();
    21c7:	e8 47 17 00 00       	call   3913 <exit>
    printf(1, "open dd/dd/../ff failed\n");
    21cc:	50                   	push   %eax
    21cd:	50                   	push   %eax
    21ce:	68 be 45 00 00       	push   $0x45be
    21d3:	6a 01                	push   $0x1
    21d5:	e8 a6 18 00 00       	call   3a80 <printf>
    exit();
    21da:	e8 34 17 00 00       	call   3913 <exit>
    printf(1, "create dd/dd/ff failed\n");
    21df:	51                   	push   %ecx
    21e0:	51                   	push   %ecx
    21e1:	68 97 45 00 00       	push   $0x4597
    21e6:	6a 01                	push   $0x1
    21e8:	e8 93 18 00 00       	call   3a80 <printf>
    exit();
    21ed:	e8 21 17 00 00       	call   3913 <exit>
    printf(1, "chdir ./.. failed\n");
    21f2:	50                   	push   %eax
    21f3:	50                   	push   %eax
    21f4:	68 60 46 00 00       	push   $0x4660
    21f9:	6a 01                	push   $0x1
    21fb:	e8 80 18 00 00       	call   3a80 <printf>
    exit();
    2200:	e8 0e 17 00 00       	call   3913 <exit>
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    2205:	52                   	push   %edx
    2206:	52                   	push   %edx
    2207:	68 54 50 00 00       	push   $0x5054
    220c:	6a 01                	push   $0x1
    220e:	e8 6d 18 00 00       	call   3a80 <printf>
    exit();
    2213:	e8 fb 16 00 00       	call   3913 <exit>
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    2218:	50                   	push   %eax
    2219:	50                   	push   %eax
    221a:	68 e8 50 00 00       	push   $0x50e8
    221f:	6a 01                	push   $0x1
    2221:	e8 5a 18 00 00       	call   3a80 <printf>
    exit();
    2226:	e8 e8 16 00 00       	call   3913 <exit>
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    222b:	50                   	push   %eax
    222c:	50                   	push   %eax
    222d:	68 c4 50 00 00       	push   $0x50c4
    2232:	6a 01                	push   $0x1
    2234:	e8 47 18 00 00       	call   3a80 <printf>
    exit();
    2239:	e8 d5 16 00 00       	call   3913 <exit>
    printf(1, "open dd wronly succeeded!\n");
    223e:	50                   	push   %eax
    223f:	50                   	push   %eax
    2240:	68 1f 47 00 00       	push   $0x471f
    2245:	6a 01                	push   $0x1
    2247:	e8 34 18 00 00       	call   3a80 <printf>
    exit();
    224c:	e8 c2 16 00 00       	call   3913 <exit>
    printf(1, "open dd rdwr succeeded!\n");
    2251:	50                   	push   %eax
    2252:	50                   	push   %eax
    2253:	68 06 47 00 00       	push   $0x4706
    2258:	6a 01                	push   $0x1
    225a:	e8 21 18 00 00       	call   3a80 <printf>
    exit();
    225f:	e8 af 16 00 00       	call   3913 <exit>
    printf(1, "create dd succeeded!\n");
    2264:	50                   	push   %eax
    2265:	50                   	push   %eax
    2266:	68 f0 46 00 00       	push   $0x46f0
    226b:	6a 01                	push   $0x1
    226d:	e8 0e 18 00 00       	call   3a80 <printf>
    exit();
    2272:	e8 9c 16 00 00       	call   3913 <exit>
    printf(1, "create dd/xx/ff succeeded!\n");
    2277:	52                   	push   %edx
    2278:	52                   	push   %edx
    2279:	68 d4 46 00 00       	push   $0x46d4
    227e:	6a 01                	push   $0x1
    2280:	e8 fb 17 00 00       	call   3a80 <printf>
    exit();
    2285:	e8 89 16 00 00       	call   3913 <exit>
    printf(1, "chdir dd failed\n");
    228a:	50                   	push   %eax
    228b:	50                   	push   %eax
    228c:	68 15 46 00 00       	push   $0x4615
    2291:	6a 01                	push   $0x1
    2293:	e8 e8 17 00 00       	call   3a80 <printf>
    exit();
    2298:	e8 76 16 00 00       	call   3913 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    229d:	50                   	push   %eax
    229e:	50                   	push   %eax
    229f:	68 78 50 00 00       	push   $0x5078
    22a4:	6a 01                	push   $0x1
    22a6:	e8 d5 17 00 00       	call   3a80 <printf>
    exit();
    22ab:	e8 63 16 00 00       	call   3913 <exit>
    printf(1, "subdir mkdir dd/dd failed\n");
    22b0:	53                   	push   %ebx
    22b1:	53                   	push   %ebx
    22b2:	68 73 45 00 00       	push   $0x4573
    22b7:	6a 01                	push   $0x1
    22b9:	e8 c2 17 00 00       	call   3a80 <printf>
    exit();
    22be:	e8 50 16 00 00       	call   3913 <exit>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    22c3:	50                   	push   %eax
    22c4:	50                   	push   %eax
    22c5:	68 2c 50 00 00       	push   $0x502c
    22ca:	6a 01                	push   $0x1
    22cc:	e8 af 17 00 00       	call   3a80 <printf>
    exit();
    22d1:	e8 3d 16 00 00       	call   3913 <exit>
    printf(1, "create dd/ff failed\n");
    22d6:	50                   	push   %eax
    22d7:	50                   	push   %eax
    22d8:	68 57 45 00 00       	push   $0x4557
    22dd:	6a 01                	push   $0x1
    22df:	e8 9c 17 00 00       	call   3a80 <printf>
    exit();
    22e4:	e8 2a 16 00 00       	call   3913 <exit>
    printf(1, "subdir mkdir dd failed\n");
    22e9:	50                   	push   %eax
    22ea:	50                   	push   %eax
    22eb:	68 3f 45 00 00       	push   $0x453f
    22f0:	6a 01                	push   $0x1
    22f2:	e8 89 17 00 00       	call   3a80 <printf>
    exit();
    22f7:	e8 17 16 00 00       	call   3913 <exit>
    printf(1, "unlink dd failed\n");
    22fc:	50                   	push   %eax
    22fd:	50                   	push   %eax
    22fe:	68 28 48 00 00       	push   $0x4828
    2303:	6a 01                	push   $0x1
    2305:	e8 76 17 00 00       	call   3a80 <printf>
    exit();
    230a:	e8 04 16 00 00       	call   3913 <exit>
    printf(1, "unlink dd/dd failed\n");
    230f:	52                   	push   %edx
    2310:	52                   	push   %edx
    2311:	68 13 48 00 00       	push   $0x4813
    2316:	6a 01                	push   $0x1
    2318:	e8 63 17 00 00       	call   3a80 <printf>
    exit();
    231d:	e8 f1 15 00 00       	call   3913 <exit>
    printf(1, "unlink non-empty dd succeeded!\n");
    2322:	51                   	push   %ecx
    2323:	51                   	push   %ecx
    2324:	68 30 51 00 00       	push   $0x5130
    2329:	6a 01                	push   $0x1
    232b:	e8 50 17 00 00       	call   3a80 <printf>
    exit();
    2330:	e8 de 15 00 00       	call   3913 <exit>
    printf(1, "unlink dd/ff failed\n");
    2335:	53                   	push   %ebx
    2336:	53                   	push   %ebx
    2337:	68 fe 47 00 00       	push   $0x47fe
    233c:	6a 01                	push   $0x1
    233e:	e8 3d 17 00 00       	call   3a80 <printf>
    exit();
    2343:	e8 cb 15 00 00       	call   3913 <exit>
    printf(1, "chdir dd/xx succeeded!\n");
    2348:	50                   	push   %eax
    2349:	50                   	push   %eax
    234a:	68 e6 47 00 00       	push   $0x47e6
    234f:	6a 01                	push   $0x1
    2351:	e8 2a 17 00 00       	call   3a80 <printf>
    exit();
    2356:	e8 b8 15 00 00       	call   3913 <exit>
    printf(1, "chdir dd/ff succeeded!\n");
    235b:	50                   	push   %eax
    235c:	50                   	push   %eax
    235d:	68 ce 47 00 00       	push   $0x47ce
    2362:	6a 01                	push   $0x1
    2364:	e8 17 17 00 00       	call   3a80 <printf>
    exit();
    2369:	e8 a5 15 00 00       	call   3913 <exit>
    printf(1, "unlink dd/ff/ff succeeded!\n");
    236e:	50                   	push   %eax
    236f:	50                   	push   %eax
    2370:	68 b2 47 00 00       	push   $0x47b2
    2375:	6a 01                	push   $0x1
    2377:	e8 04 17 00 00       	call   3a80 <printf>
    exit();
    237c:	e8 92 15 00 00       	call   3913 <exit>
    printf(1, "unlink dd/xx/ff succeeded!\n");
    2381:	50                   	push   %eax
    2382:	50                   	push   %eax
    2383:	68 96 47 00 00       	push   $0x4796
    2388:	6a 01                	push   $0x1
    238a:	e8 f1 16 00 00       	call   3a80 <printf>
    exit();
    238f:	e8 7f 15 00 00       	call   3913 <exit>
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    2394:	50                   	push   %eax
    2395:	50                   	push   %eax
    2396:	68 79 47 00 00       	push   $0x4779
    239b:	6a 01                	push   $0x1
    239d:	e8 de 16 00 00       	call   3a80 <printf>
    exit();
    23a2:	e8 6c 15 00 00       	call   3913 <exit>
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    23a7:	52                   	push   %edx
    23a8:	52                   	push   %edx
    23a9:	68 5e 47 00 00       	push   $0x475e
    23ae:	6a 01                	push   $0x1
    23b0:	e8 cb 16 00 00       	call   3a80 <printf>
    exit();
    23b5:	e8 59 15 00 00       	call   3913 <exit>
    printf(1, "read dd/dd/ffff wrong len\n");
    23ba:	51                   	push   %ecx
    23bb:	51                   	push   %ecx
    23bc:	68 8b 46 00 00       	push   $0x468b
    23c1:	6a 01                	push   $0x1
    23c3:	e8 b8 16 00 00       	call   3a80 <printf>
    exit();
    23c8:	e8 46 15 00 00       	call   3913 <exit>
    printf(1, "open dd/dd/ffff failed\n");
    23cd:	53                   	push   %ebx
    23ce:	53                   	push   %ebx
    23cf:	68 73 46 00 00       	push   $0x4673
    23d4:	6a 01                	push   $0x1
    23d6:	e8 a5 16 00 00       	call   3a80 <printf>
    exit();
    23db:	e8 33 15 00 00       	call   3913 <exit>

000023e0 <bigwrite>:
{
    23e0:	55                   	push   %ebp
    23e1:	89 e5                	mov    %esp,%ebp
    23e3:	57                   	push   %edi
    23e4:	56                   	push   %esi
    23e5:	53                   	push   %ebx
  for(sz = 499; sz < 12*512; sz += 471){
    23e6:	bb f3 01 00 00       	mov    $0x1f3,%ebx
{
    23eb:	83 ec 14             	sub    $0x14,%esp
  printf(1, "bigwrite test\n");
    23ee:	68 45 48 00 00       	push   $0x4845
    23f3:	6a 01                	push   $0x1
    23f5:	e8 86 16 00 00       	call   3a80 <printf>
  unlink("bigwrite");
    23fa:	c7 04 24 54 48 00 00 	movl   $0x4854,(%esp)
    2401:	e8 5d 15 00 00       	call   3963 <unlink>
    2406:	83 c4 10             	add    $0x10,%esp
    2409:	eb 2b                	jmp    2436 <bigwrite+0x56>
    240b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    close(fd);
    2410:	83 ec 0c             	sub    $0xc,%esp
  for(sz = 499; sz < 12*512; sz += 471){
    2413:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
    close(fd);
    2419:	57                   	push   %edi
    241a:	e8 1c 15 00 00       	call   393b <close>
    unlink("bigwrite");
    241f:	c7 04 24 54 48 00 00 	movl   $0x4854,(%esp)
    2426:	e8 38 15 00 00       	call   3963 <unlink>
  for(sz = 499; sz < 12*512; sz += 471){
    242b:	83 c4 10             	add    $0x10,%esp
    242e:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    2434:	74 4a                	je     2480 <bigwrite+0xa0>
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2436:	83 ec 08             	sub    $0x8,%esp
    2439:	68 02 02 00 00       	push   $0x202
    243e:	68 54 48 00 00       	push   $0x4854
    2443:	e8 0b 15 00 00       	call   3953 <open>
    if(fd < 0){
    2448:	83 c4 10             	add    $0x10,%esp
    fd = open("bigwrite", O_CREATE | O_RDWR);
    244b:	89 c7                	mov    %eax,%edi
    if(fd < 0){
    244d:	85 c0                	test   %eax,%eax
    244f:	78 5c                	js     24ad <bigwrite+0xcd>
    2451:	be 02 00 00 00       	mov    $0x2,%esi
      int cc = write(fd, buf, sz);
    2456:	83 ec 04             	sub    $0x4,%esp
    2459:	53                   	push   %ebx
    245a:	68 20 86 00 00       	push   $0x8620
    245f:	57                   	push   %edi
    2460:	e8 ce 14 00 00       	call   3933 <write>
      if(cc != sz){
    2465:	83 c4 10             	add    $0x10,%esp
    2468:	39 d8                	cmp    %ebx,%eax
    246a:	75 2e                	jne    249a <bigwrite+0xba>
    for(i = 0; i < 2; i++){
    246c:	83 fe 01             	cmp    $0x1,%esi
    246f:	74 9f                	je     2410 <bigwrite+0x30>
    2471:	be 01 00 00 00       	mov    $0x1,%esi
    2476:	eb de                	jmp    2456 <bigwrite+0x76>
    2478:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    247f:	00 
  printf(1, "bigwrite ok\n");
    2480:	83 ec 08             	sub    $0x8,%esp
    2483:	68 87 48 00 00       	push   $0x4887
    2488:	6a 01                	push   $0x1
    248a:	e8 f1 15 00 00       	call   3a80 <printf>
}
    248f:	83 c4 10             	add    $0x10,%esp
    2492:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2495:	5b                   	pop    %ebx
    2496:	5e                   	pop    %esi
    2497:	5f                   	pop    %edi
    2498:	5d                   	pop    %ebp
    2499:	c3                   	ret
        printf(1, "write(%d) ret %d\n", sz, cc);
    249a:	50                   	push   %eax
    249b:	53                   	push   %ebx
    249c:	68 75 48 00 00       	push   $0x4875
    24a1:	6a 01                	push   $0x1
    24a3:	e8 d8 15 00 00       	call   3a80 <printf>
        exit();
    24a8:	e8 66 14 00 00       	call   3913 <exit>
      printf(1, "cannot create bigwrite\n");
    24ad:	83 ec 08             	sub    $0x8,%esp
    24b0:	68 5d 48 00 00       	push   $0x485d
    24b5:	6a 01                	push   $0x1
    24b7:	e8 c4 15 00 00       	call   3a80 <printf>
      exit();
    24bc:	e8 52 14 00 00       	call   3913 <exit>
    24c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    24c8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    24cf:	00 

000024d0 <bigfile>:
{
    24d0:	55                   	push   %ebp
    24d1:	89 e5                	mov    %esp,%ebp
    24d3:	57                   	push   %edi
    24d4:	56                   	push   %esi
    24d5:	53                   	push   %ebx
    24d6:	83 ec 14             	sub    $0x14,%esp
  printf(1, "bigfile test\n");
    24d9:	68 94 48 00 00       	push   $0x4894
    24de:	6a 01                	push   $0x1
    24e0:	e8 9b 15 00 00       	call   3a80 <printf>
  unlink("bigfile");
    24e5:	c7 04 24 b0 48 00 00 	movl   $0x48b0,(%esp)
    24ec:	e8 72 14 00 00       	call   3963 <unlink>
  fd = open("bigfile", O_CREATE | O_RDWR);
    24f1:	58                   	pop    %eax
    24f2:	5a                   	pop    %edx
    24f3:	68 02 02 00 00       	push   $0x202
    24f8:	68 b0 48 00 00       	push   $0x48b0
    24fd:	e8 51 14 00 00       	call   3953 <open>
  if(fd < 0){
    2502:	83 c4 10             	add    $0x10,%esp
    2505:	85 c0                	test   %eax,%eax
    2507:	0f 88 6e 01 00 00    	js     267b <bigfile+0x1ab>
    250d:	89 c6                	mov    %eax,%esi
  for(i = 0; i < 20; i++){
    250f:	31 db                	xor    %ebx,%ebx
    2511:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2518:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    251f:	00 
    memset(buf, i, 600);
    2520:	83 ec 04             	sub    $0x4,%esp
    2523:	68 58 02 00 00       	push   $0x258
    2528:	53                   	push   %ebx
    2529:	68 20 86 00 00       	push   $0x8620
    252e:	e8 3d 12 00 00       	call   3770 <memset>
    if(write(fd, buf, 600) != 600){
    2533:	83 c4 0c             	add    $0xc,%esp
    2536:	68 58 02 00 00       	push   $0x258
    253b:	68 20 86 00 00       	push   $0x8620
    2540:	56                   	push   %esi
    2541:	e8 ed 13 00 00       	call   3933 <write>
    2546:	83 c4 10             	add    $0x10,%esp
    2549:	3d 58 02 00 00       	cmp    $0x258,%eax
    254e:	0f 85 00 01 00 00    	jne    2654 <bigfile+0x184>
  for(i = 0; i < 20; i++){
    2554:	83 c3 01             	add    $0x1,%ebx
    2557:	83 fb 14             	cmp    $0x14,%ebx
    255a:	75 c4                	jne    2520 <bigfile+0x50>
  close(fd);
    255c:	83 ec 0c             	sub    $0xc,%esp
    255f:	56                   	push   %esi
    2560:	e8 d6 13 00 00       	call   393b <close>
  fd = open("bigfile", 0);
    2565:	5e                   	pop    %esi
    2566:	5f                   	pop    %edi
    2567:	6a 00                	push   $0x0
    2569:	68 b0 48 00 00       	push   $0x48b0
    256e:	e8 e0 13 00 00       	call   3953 <open>
  if(fd < 0){
    2573:	83 c4 10             	add    $0x10,%esp
  fd = open("bigfile", 0);
    2576:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    2578:	85 c0                	test   %eax,%eax
    257a:	0f 88 e8 00 00 00    	js     2668 <bigfile+0x198>
  total = 0;
    2580:	31 db                	xor    %ebx,%ebx
  for(i = 0; ; i++){
    2582:	31 ff                	xor    %edi,%edi
    2584:	eb 38                	jmp    25be <bigfile+0xee>
    2586:	66 90                	xchg   %ax,%ax
    2588:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    258f:	00 
    if(cc != 300){
    2590:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    2595:	0f 85 91 00 00 00    	jne    262c <bigfile+0x15c>
    if(buf[0] != i/2 || buf[299] != i/2){
    259b:	89 fa                	mov    %edi,%edx
    259d:	0f be 05 20 86 00 00 	movsbl 0x8620,%eax
    25a4:	d1 fa                	sar    $1,%edx
    25a6:	39 d0                	cmp    %edx,%eax
    25a8:	75 6e                	jne    2618 <bigfile+0x148>
    25aa:	0f be 15 4b 87 00 00 	movsbl 0x874b,%edx
    25b1:	39 d0                	cmp    %edx,%eax
    25b3:	75 63                	jne    2618 <bigfile+0x148>
    total += cc;
    25b5:	81 c3 2c 01 00 00    	add    $0x12c,%ebx
  for(i = 0; ; i++){
    25bb:	83 c7 01             	add    $0x1,%edi
    cc = read(fd, buf, 300);
    25be:	83 ec 04             	sub    $0x4,%esp
    25c1:	68 2c 01 00 00       	push   $0x12c
    25c6:	68 20 86 00 00       	push   $0x8620
    25cb:	56                   	push   %esi
    25cc:	e8 5a 13 00 00       	call   392b <read>
    if(cc < 0){
    25d1:	83 c4 10             	add    $0x10,%esp
    25d4:	85 c0                	test   %eax,%eax
    25d6:	78 68                	js     2640 <bigfile+0x170>
    if(cc == 0)
    25d8:	75 b6                	jne    2590 <bigfile+0xc0>
  close(fd);
    25da:	83 ec 0c             	sub    $0xc,%esp
    25dd:	56                   	push   %esi
    25de:	e8 58 13 00 00       	call   393b <close>
  if(total != 20*600){
    25e3:	83 c4 10             	add    $0x10,%esp
    25e6:	81 fb e0 2e 00 00    	cmp    $0x2ee0,%ebx
    25ec:	0f 85 9c 00 00 00    	jne    268e <bigfile+0x1be>
  unlink("bigfile");
    25f2:	83 ec 0c             	sub    $0xc,%esp
    25f5:	68 b0 48 00 00       	push   $0x48b0
    25fa:	e8 64 13 00 00       	call   3963 <unlink>
  printf(1, "bigfile test ok\n");
    25ff:	58                   	pop    %eax
    2600:	5a                   	pop    %edx
    2601:	68 3f 49 00 00       	push   $0x493f
    2606:	6a 01                	push   $0x1
    2608:	e8 73 14 00 00       	call   3a80 <printf>
}
    260d:	83 c4 10             	add    $0x10,%esp
    2610:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2613:	5b                   	pop    %ebx
    2614:	5e                   	pop    %esi
    2615:	5f                   	pop    %edi
    2616:	5d                   	pop    %ebp
    2617:	c3                   	ret
      printf(1, "read bigfile wrong data\n");
    2618:	83 ec 08             	sub    $0x8,%esp
    261b:	68 0c 49 00 00       	push   $0x490c
    2620:	6a 01                	push   $0x1
    2622:	e8 59 14 00 00       	call   3a80 <printf>
      exit();
    2627:	e8 e7 12 00 00       	call   3913 <exit>
      printf(1, "short read bigfile\n");
    262c:	83 ec 08             	sub    $0x8,%esp
    262f:	68 f8 48 00 00       	push   $0x48f8
    2634:	6a 01                	push   $0x1
    2636:	e8 45 14 00 00       	call   3a80 <printf>
      exit();
    263b:	e8 d3 12 00 00       	call   3913 <exit>
      printf(1, "read bigfile failed\n");
    2640:	83 ec 08             	sub    $0x8,%esp
    2643:	68 e3 48 00 00       	push   $0x48e3
    2648:	6a 01                	push   $0x1
    264a:	e8 31 14 00 00       	call   3a80 <printf>
      exit();
    264f:	e8 bf 12 00 00       	call   3913 <exit>
      printf(1, "write bigfile failed\n");
    2654:	83 ec 08             	sub    $0x8,%esp
    2657:	68 b8 48 00 00       	push   $0x48b8
    265c:	6a 01                	push   $0x1
    265e:	e8 1d 14 00 00       	call   3a80 <printf>
      exit();
    2663:	e8 ab 12 00 00       	call   3913 <exit>
    printf(1, "cannot open bigfile\n");
    2668:	53                   	push   %ebx
    2669:	53                   	push   %ebx
    266a:	68 ce 48 00 00       	push   $0x48ce
    266f:	6a 01                	push   $0x1
    2671:	e8 0a 14 00 00       	call   3a80 <printf>
    exit();
    2676:	e8 98 12 00 00       	call   3913 <exit>
    printf(1, "cannot create bigfile");
    267b:	50                   	push   %eax
    267c:	50                   	push   %eax
    267d:	68 a2 48 00 00       	push   $0x48a2
    2682:	6a 01                	push   $0x1
    2684:	e8 f7 13 00 00       	call   3a80 <printf>
    exit();
    2689:	e8 85 12 00 00       	call   3913 <exit>
    printf(1, "read bigfile wrong total\n");
    268e:	51                   	push   %ecx
    268f:	51                   	push   %ecx
    2690:	68 25 49 00 00       	push   $0x4925
    2695:	6a 01                	push   $0x1
    2697:	e8 e4 13 00 00       	call   3a80 <printf>
    exit();
    269c:	e8 72 12 00 00       	call   3913 <exit>
    26a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    26a8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    26af:	00 

000026b0 <fourteen>:
{
    26b0:	55                   	push   %ebp
    26b1:	89 e5                	mov    %esp,%ebp
    26b3:	83 ec 10             	sub    $0x10,%esp
  printf(1, "fourteen test\n");
    26b6:	68 50 49 00 00       	push   $0x4950
    26bb:	6a 01                	push   $0x1
    26bd:	e8 be 13 00 00       	call   3a80 <printf>
  if(mkdir("12345678901234") != 0){
    26c2:	c7 04 24 8b 49 00 00 	movl   $0x498b,(%esp)
    26c9:	e8 ad 12 00 00       	call   397b <mkdir>
    26ce:	83 c4 10             	add    $0x10,%esp
    26d1:	85 c0                	test   %eax,%eax
    26d3:	0f 85 97 00 00 00    	jne    2770 <fourteen+0xc0>
  if(mkdir("12345678901234/123456789012345") != 0){
    26d9:	83 ec 0c             	sub    $0xc,%esp
    26dc:	68 50 51 00 00       	push   $0x5150
    26e1:	e8 95 12 00 00       	call   397b <mkdir>
    26e6:	83 c4 10             	add    $0x10,%esp
    26e9:	85 c0                	test   %eax,%eax
    26eb:	0f 85 de 00 00 00    	jne    27cf <fourteen+0x11f>
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
    26f1:	83 ec 08             	sub    $0x8,%esp
    26f4:	68 00 02 00 00       	push   $0x200
    26f9:	68 a0 51 00 00       	push   $0x51a0
    26fe:	e8 50 12 00 00       	call   3953 <open>
  if(fd < 0){
    2703:	83 c4 10             	add    $0x10,%esp
    2706:	85 c0                	test   %eax,%eax
    2708:	0f 88 ae 00 00 00    	js     27bc <fourteen+0x10c>
  close(fd);
    270e:	83 ec 0c             	sub    $0xc,%esp
    2711:	50                   	push   %eax
    2712:	e8 24 12 00 00       	call   393b <close>
  fd = open("12345678901234/12345678901234/12345678901234", 0);
    2717:	58                   	pop    %eax
    2718:	5a                   	pop    %edx
    2719:	6a 00                	push   $0x0
    271b:	68 10 52 00 00       	push   $0x5210
    2720:	e8 2e 12 00 00       	call   3953 <open>
  if(fd < 0){
    2725:	83 c4 10             	add    $0x10,%esp
    2728:	85 c0                	test   %eax,%eax
    272a:	78 7d                	js     27a9 <fourteen+0xf9>
  close(fd);
    272c:	83 ec 0c             	sub    $0xc,%esp
    272f:	50                   	push   %eax
    2730:	e8 06 12 00 00       	call   393b <close>
  if(mkdir("12345678901234/12345678901234") == 0){
    2735:	c7 04 24 7c 49 00 00 	movl   $0x497c,(%esp)
    273c:	e8 3a 12 00 00       	call   397b <mkdir>
    2741:	83 c4 10             	add    $0x10,%esp
    2744:	85 c0                	test   %eax,%eax
    2746:	74 4e                	je     2796 <fourteen+0xe6>
  if(mkdir("123456789012345/12345678901234") == 0){
    2748:	83 ec 0c             	sub    $0xc,%esp
    274b:	68 ac 52 00 00       	push   $0x52ac
    2750:	e8 26 12 00 00       	call   397b <mkdir>
    2755:	83 c4 10             	add    $0x10,%esp
    2758:	85 c0                	test   %eax,%eax
    275a:	74 27                	je     2783 <fourteen+0xd3>
  printf(1, "fourteen ok\n");
    275c:	83 ec 08             	sub    $0x8,%esp
    275f:	68 9a 49 00 00       	push   $0x499a
    2764:	6a 01                	push   $0x1
    2766:	e8 15 13 00 00       	call   3a80 <printf>
}
    276b:	83 c4 10             	add    $0x10,%esp
    276e:	c9                   	leave
    276f:	c3                   	ret
    printf(1, "mkdir 12345678901234 failed\n");
    2770:	50                   	push   %eax
    2771:	50                   	push   %eax
    2772:	68 5f 49 00 00       	push   $0x495f
    2777:	6a 01                	push   $0x1
    2779:	e8 02 13 00 00       	call   3a80 <printf>
    exit();
    277e:	e8 90 11 00 00       	call   3913 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    2783:	50                   	push   %eax
    2784:	50                   	push   %eax
    2785:	68 cc 52 00 00       	push   $0x52cc
    278a:	6a 01                	push   $0x1
    278c:	e8 ef 12 00 00       	call   3a80 <printf>
    exit();
    2791:	e8 7d 11 00 00       	call   3913 <exit>
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    2796:	52                   	push   %edx
    2797:	52                   	push   %edx
    2798:	68 7c 52 00 00       	push   $0x527c
    279d:	6a 01                	push   $0x1
    279f:	e8 dc 12 00 00       	call   3a80 <printf>
    exit();
    27a4:	e8 6a 11 00 00       	call   3913 <exit>
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    27a9:	51                   	push   %ecx
    27aa:	51                   	push   %ecx
    27ab:	68 40 52 00 00       	push   $0x5240
    27b0:	6a 01                	push   $0x1
    27b2:	e8 c9 12 00 00       	call   3a80 <printf>
    exit();
    27b7:	e8 57 11 00 00       	call   3913 <exit>
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    27bc:	51                   	push   %ecx
    27bd:	51                   	push   %ecx
    27be:	68 d0 51 00 00       	push   $0x51d0
    27c3:	6a 01                	push   $0x1
    27c5:	e8 b6 12 00 00       	call   3a80 <printf>
    exit();
    27ca:	e8 44 11 00 00       	call   3913 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    27cf:	50                   	push   %eax
    27d0:	50                   	push   %eax
    27d1:	68 70 51 00 00       	push   $0x5170
    27d6:	6a 01                	push   $0x1
    27d8:	e8 a3 12 00 00       	call   3a80 <printf>
    exit();
    27dd:	e8 31 11 00 00       	call   3913 <exit>
    27e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    27e8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    27ef:	00 

000027f0 <rmdot>:
{
    27f0:	55                   	push   %ebp
    27f1:	89 e5                	mov    %esp,%ebp
    27f3:	83 ec 10             	sub    $0x10,%esp
  printf(1, "rmdot test\n");
    27f6:	68 a7 49 00 00       	push   $0x49a7
    27fb:	6a 01                	push   $0x1
    27fd:	e8 7e 12 00 00       	call   3a80 <printf>
  if(mkdir("dots") != 0){
    2802:	c7 04 24 b3 49 00 00 	movl   $0x49b3,(%esp)
    2809:	e8 6d 11 00 00       	call   397b <mkdir>
    280e:	83 c4 10             	add    $0x10,%esp
    2811:	85 c0                	test   %eax,%eax
    2813:	0f 85 b0 00 00 00    	jne    28c9 <rmdot+0xd9>
  if(chdir("dots") != 0){
    2819:	83 ec 0c             	sub    $0xc,%esp
    281c:	68 b3 49 00 00       	push   $0x49b3
    2821:	e8 5d 11 00 00       	call   3983 <chdir>
    2826:	83 c4 10             	add    $0x10,%esp
    2829:	85 c0                	test   %eax,%eax
    282b:	0f 85 1d 01 00 00    	jne    294e <rmdot+0x15e>
  if(unlink(".") == 0){
    2831:	83 ec 0c             	sub    $0xc,%esp
    2834:	68 5e 46 00 00       	push   $0x465e
    2839:	e8 25 11 00 00       	call   3963 <unlink>
    283e:	83 c4 10             	add    $0x10,%esp
    2841:	85 c0                	test   %eax,%eax
    2843:	0f 84 f2 00 00 00    	je     293b <rmdot+0x14b>
  if(unlink("..") == 0){
    2849:	83 ec 0c             	sub    $0xc,%esp
    284c:	68 5d 46 00 00       	push   $0x465d
    2851:	e8 0d 11 00 00       	call   3963 <unlink>
    2856:	83 c4 10             	add    $0x10,%esp
    2859:	85 c0                	test   %eax,%eax
    285b:	0f 84 c7 00 00 00    	je     2928 <rmdot+0x138>
  if(chdir("/") != 0){
    2861:	83 ec 0c             	sub    $0xc,%esp
    2864:	68 31 3e 00 00       	push   $0x3e31
    2869:	e8 15 11 00 00       	call   3983 <chdir>
    286e:	83 c4 10             	add    $0x10,%esp
    2871:	85 c0                	test   %eax,%eax
    2873:	0f 85 9c 00 00 00    	jne    2915 <rmdot+0x125>
  if(unlink("dots/.") == 0){
    2879:	83 ec 0c             	sub    $0xc,%esp
    287c:	68 fb 49 00 00       	push   $0x49fb
    2881:	e8 dd 10 00 00       	call   3963 <unlink>
    2886:	83 c4 10             	add    $0x10,%esp
    2889:	85 c0                	test   %eax,%eax
    288b:	74 75                	je     2902 <rmdot+0x112>
  if(unlink("dots/..") == 0){
    288d:	83 ec 0c             	sub    $0xc,%esp
    2890:	68 19 4a 00 00       	push   $0x4a19
    2895:	e8 c9 10 00 00       	call   3963 <unlink>
    289a:	83 c4 10             	add    $0x10,%esp
    289d:	85 c0                	test   %eax,%eax
    289f:	74 4e                	je     28ef <rmdot+0xff>
  if(unlink("dots") != 0){
    28a1:	83 ec 0c             	sub    $0xc,%esp
    28a4:	68 b3 49 00 00       	push   $0x49b3
    28a9:	e8 b5 10 00 00       	call   3963 <unlink>
    28ae:	83 c4 10             	add    $0x10,%esp
    28b1:	85 c0                	test   %eax,%eax
    28b3:	75 27                	jne    28dc <rmdot+0xec>
  printf(1, "rmdot ok\n");
    28b5:	83 ec 08             	sub    $0x8,%esp
    28b8:	68 4e 4a 00 00       	push   $0x4a4e
    28bd:	6a 01                	push   $0x1
    28bf:	e8 bc 11 00 00       	call   3a80 <printf>
}
    28c4:	83 c4 10             	add    $0x10,%esp
    28c7:	c9                   	leave
    28c8:	c3                   	ret
    printf(1, "mkdir dots failed\n");
    28c9:	50                   	push   %eax
    28ca:	50                   	push   %eax
    28cb:	68 b8 49 00 00       	push   $0x49b8
    28d0:	6a 01                	push   $0x1
    28d2:	e8 a9 11 00 00       	call   3a80 <printf>
    exit();
    28d7:	e8 37 10 00 00       	call   3913 <exit>
    printf(1, "unlink dots failed!\n");
    28dc:	50                   	push   %eax
    28dd:	50                   	push   %eax
    28de:	68 39 4a 00 00       	push   $0x4a39
    28e3:	6a 01                	push   $0x1
    28e5:	e8 96 11 00 00       	call   3a80 <printf>
    exit();
    28ea:	e8 24 10 00 00       	call   3913 <exit>
    printf(1, "unlink dots/.. worked!\n");
    28ef:	52                   	push   %edx
    28f0:	52                   	push   %edx
    28f1:	68 21 4a 00 00       	push   $0x4a21
    28f6:	6a 01                	push   $0x1
    28f8:	e8 83 11 00 00       	call   3a80 <printf>
    exit();
    28fd:	e8 11 10 00 00       	call   3913 <exit>
    printf(1, "unlink dots/. worked!\n");
    2902:	51                   	push   %ecx
    2903:	51                   	push   %ecx
    2904:	68 02 4a 00 00       	push   $0x4a02
    2909:	6a 01                	push   $0x1
    290b:	e8 70 11 00 00       	call   3a80 <printf>
    exit();
    2910:	e8 fe 0f 00 00       	call   3913 <exit>
    printf(1, "chdir / failed\n");
    2915:	50                   	push   %eax
    2916:	50                   	push   %eax
    2917:	68 33 3e 00 00       	push   $0x3e33
    291c:	6a 01                	push   $0x1
    291e:	e8 5d 11 00 00       	call   3a80 <printf>
    exit();
    2923:	e8 eb 0f 00 00       	call   3913 <exit>
    printf(1, "rm .. worked!\n");
    2928:	50                   	push   %eax
    2929:	50                   	push   %eax
    292a:	68 ec 49 00 00       	push   $0x49ec
    292f:	6a 01                	push   $0x1
    2931:	e8 4a 11 00 00       	call   3a80 <printf>
    exit();
    2936:	e8 d8 0f 00 00       	call   3913 <exit>
    printf(1, "rm . worked!\n");
    293b:	50                   	push   %eax
    293c:	50                   	push   %eax
    293d:	68 de 49 00 00       	push   $0x49de
    2942:	6a 01                	push   $0x1
    2944:	e8 37 11 00 00       	call   3a80 <printf>
    exit();
    2949:	e8 c5 0f 00 00       	call   3913 <exit>
    printf(1, "chdir dots failed\n");
    294e:	50                   	push   %eax
    294f:	50                   	push   %eax
    2950:	68 cb 49 00 00       	push   $0x49cb
    2955:	6a 01                	push   $0x1
    2957:	e8 24 11 00 00       	call   3a80 <printf>
    exit();
    295c:	e8 b2 0f 00 00       	call   3913 <exit>
    2961:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2968:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    296f:	00 

00002970 <dirfile>:
{
    2970:	55                   	push   %ebp
    2971:	89 e5                	mov    %esp,%ebp
    2973:	53                   	push   %ebx
    2974:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "dir vs file\n");
    2977:	68 58 4a 00 00       	push   $0x4a58
    297c:	6a 01                	push   $0x1
    297e:	e8 fd 10 00 00       	call   3a80 <printf>
  fd = open("dirfile", O_CREATE);
    2983:	5b                   	pop    %ebx
    2984:	58                   	pop    %eax
    2985:	68 00 02 00 00       	push   $0x200
    298a:	68 65 4a 00 00       	push   $0x4a65
    298f:	e8 bf 0f 00 00       	call   3953 <open>
  if(fd < 0){
    2994:	83 c4 10             	add    $0x10,%esp
    2997:	85 c0                	test   %eax,%eax
    2999:	0f 88 43 01 00 00    	js     2ae2 <dirfile+0x172>
  close(fd);
    299f:	83 ec 0c             	sub    $0xc,%esp
    29a2:	50                   	push   %eax
    29a3:	e8 93 0f 00 00       	call   393b <close>
  if(chdir("dirfile") == 0){
    29a8:	c7 04 24 65 4a 00 00 	movl   $0x4a65,(%esp)
    29af:	e8 cf 0f 00 00       	call   3983 <chdir>
    29b4:	83 c4 10             	add    $0x10,%esp
    29b7:	85 c0                	test   %eax,%eax
    29b9:	0f 84 10 01 00 00    	je     2acf <dirfile+0x15f>
  fd = open("dirfile/xx", 0);
    29bf:	83 ec 08             	sub    $0x8,%esp
    29c2:	6a 00                	push   $0x0
    29c4:	68 9e 4a 00 00       	push   $0x4a9e
    29c9:	e8 85 0f 00 00       	call   3953 <open>
  if(fd >= 0){
    29ce:	83 c4 10             	add    $0x10,%esp
    29d1:	85 c0                	test   %eax,%eax
    29d3:	0f 89 e3 00 00 00    	jns    2abc <dirfile+0x14c>
  fd = open("dirfile/xx", O_CREATE);
    29d9:	83 ec 08             	sub    $0x8,%esp
    29dc:	68 00 02 00 00       	push   $0x200
    29e1:	68 9e 4a 00 00       	push   $0x4a9e
    29e6:	e8 68 0f 00 00       	call   3953 <open>
  if(fd >= 0){
    29eb:	83 c4 10             	add    $0x10,%esp
    29ee:	85 c0                	test   %eax,%eax
    29f0:	0f 89 c6 00 00 00    	jns    2abc <dirfile+0x14c>
  if(mkdir("dirfile/xx") == 0){
    29f6:	83 ec 0c             	sub    $0xc,%esp
    29f9:	68 9e 4a 00 00       	push   $0x4a9e
    29fe:	e8 78 0f 00 00       	call   397b <mkdir>
    2a03:	83 c4 10             	add    $0x10,%esp
    2a06:	85 c0                	test   %eax,%eax
    2a08:	0f 84 46 01 00 00    	je     2b54 <dirfile+0x1e4>
  if(unlink("dirfile/xx") == 0){
    2a0e:	83 ec 0c             	sub    $0xc,%esp
    2a11:	68 9e 4a 00 00       	push   $0x4a9e
    2a16:	e8 48 0f 00 00       	call   3963 <unlink>
    2a1b:	83 c4 10             	add    $0x10,%esp
    2a1e:	85 c0                	test   %eax,%eax
    2a20:	0f 84 1b 01 00 00    	je     2b41 <dirfile+0x1d1>
  if(link("README", "dirfile/xx") == 0){
    2a26:	83 ec 08             	sub    $0x8,%esp
    2a29:	68 9e 4a 00 00       	push   $0x4a9e
    2a2e:	68 02 4b 00 00       	push   $0x4b02
    2a33:	e8 3b 0f 00 00       	call   3973 <link>
    2a38:	83 c4 10             	add    $0x10,%esp
    2a3b:	85 c0                	test   %eax,%eax
    2a3d:	0f 84 eb 00 00 00    	je     2b2e <dirfile+0x1be>
  if(unlink("dirfile") != 0){
    2a43:	83 ec 0c             	sub    $0xc,%esp
    2a46:	68 65 4a 00 00       	push   $0x4a65
    2a4b:	e8 13 0f 00 00       	call   3963 <unlink>
    2a50:	83 c4 10             	add    $0x10,%esp
    2a53:	85 c0                	test   %eax,%eax
    2a55:	0f 85 c0 00 00 00    	jne    2b1b <dirfile+0x1ab>
  fd = open(".", O_RDWR);
    2a5b:	83 ec 08             	sub    $0x8,%esp
    2a5e:	6a 02                	push   $0x2
    2a60:	68 5e 46 00 00       	push   $0x465e
    2a65:	e8 e9 0e 00 00       	call   3953 <open>
  if(fd >= 0){
    2a6a:	83 c4 10             	add    $0x10,%esp
    2a6d:	85 c0                	test   %eax,%eax
    2a6f:	0f 89 93 00 00 00    	jns    2b08 <dirfile+0x198>
  fd = open(".", 0);
    2a75:	83 ec 08             	sub    $0x8,%esp
    2a78:	6a 00                	push   $0x0
    2a7a:	68 5e 46 00 00       	push   $0x465e
    2a7f:	e8 cf 0e 00 00       	call   3953 <open>
  if(write(fd, "x", 1) > 0){
    2a84:	83 c4 0c             	add    $0xc,%esp
    2a87:	6a 01                	push   $0x1
  fd = open(".", 0);
    2a89:	89 c3                	mov    %eax,%ebx
  if(write(fd, "x", 1) > 0){
    2a8b:	68 41 47 00 00       	push   $0x4741
    2a90:	50                   	push   %eax
    2a91:	e8 9d 0e 00 00       	call   3933 <write>
    2a96:	83 c4 10             	add    $0x10,%esp
    2a99:	85 c0                	test   %eax,%eax
    2a9b:	7f 58                	jg     2af5 <dirfile+0x185>
  close(fd);
    2a9d:	83 ec 0c             	sub    $0xc,%esp
    2aa0:	53                   	push   %ebx
    2aa1:	e8 95 0e 00 00       	call   393b <close>
  printf(1, "dir vs file OK\n");
    2aa6:	58                   	pop    %eax
    2aa7:	5a                   	pop    %edx
    2aa8:	68 35 4b 00 00       	push   $0x4b35
    2aad:	6a 01                	push   $0x1
    2aaf:	e8 cc 0f 00 00       	call   3a80 <printf>
}
    2ab4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2ab7:	83 c4 10             	add    $0x10,%esp
    2aba:	c9                   	leave
    2abb:	c3                   	ret
    printf(1, "create dirfile/xx succeeded!\n");
    2abc:	50                   	push   %eax
    2abd:	50                   	push   %eax
    2abe:	68 a9 4a 00 00       	push   $0x4aa9
    2ac3:	6a 01                	push   $0x1
    2ac5:	e8 b6 0f 00 00       	call   3a80 <printf>
    exit();
    2aca:	e8 44 0e 00 00       	call   3913 <exit>
    printf(1, "chdir dirfile succeeded!\n");
    2acf:	52                   	push   %edx
    2ad0:	52                   	push   %edx
    2ad1:	68 84 4a 00 00       	push   $0x4a84
    2ad6:	6a 01                	push   $0x1
    2ad8:	e8 a3 0f 00 00       	call   3a80 <printf>
    exit();
    2add:	e8 31 0e 00 00       	call   3913 <exit>
    printf(1, "create dirfile failed\n");
    2ae2:	51                   	push   %ecx
    2ae3:	51                   	push   %ecx
    2ae4:	68 6d 4a 00 00       	push   $0x4a6d
    2ae9:	6a 01                	push   $0x1
    2aeb:	e8 90 0f 00 00       	call   3a80 <printf>
    exit();
    2af0:	e8 1e 0e 00 00       	call   3913 <exit>
    printf(1, "write . succeeded!\n");
    2af5:	51                   	push   %ecx
    2af6:	51                   	push   %ecx
    2af7:	68 21 4b 00 00       	push   $0x4b21
    2afc:	6a 01                	push   $0x1
    2afe:	e8 7d 0f 00 00       	call   3a80 <printf>
    exit();
    2b03:	e8 0b 0e 00 00       	call   3913 <exit>
    printf(1, "open . for writing succeeded!\n");
    2b08:	53                   	push   %ebx
    2b09:	53                   	push   %ebx
    2b0a:	68 20 53 00 00       	push   $0x5320
    2b0f:	6a 01                	push   $0x1
    2b11:	e8 6a 0f 00 00       	call   3a80 <printf>
    exit();
    2b16:	e8 f8 0d 00 00       	call   3913 <exit>
    printf(1, "unlink dirfile failed!\n");
    2b1b:	50                   	push   %eax
    2b1c:	50                   	push   %eax
    2b1d:	68 09 4b 00 00       	push   $0x4b09
    2b22:	6a 01                	push   $0x1
    2b24:	e8 57 0f 00 00       	call   3a80 <printf>
    exit();
    2b29:	e8 e5 0d 00 00       	call   3913 <exit>
    printf(1, "link to dirfile/xx succeeded!\n");
    2b2e:	50                   	push   %eax
    2b2f:	50                   	push   %eax
    2b30:	68 00 53 00 00       	push   $0x5300
    2b35:	6a 01                	push   $0x1
    2b37:	e8 44 0f 00 00       	call   3a80 <printf>
    exit();
    2b3c:	e8 d2 0d 00 00       	call   3913 <exit>
    printf(1, "unlink dirfile/xx succeeded!\n");
    2b41:	50                   	push   %eax
    2b42:	50                   	push   %eax
    2b43:	68 e4 4a 00 00       	push   $0x4ae4
    2b48:	6a 01                	push   $0x1
    2b4a:	e8 31 0f 00 00       	call   3a80 <printf>
    exit();
    2b4f:	e8 bf 0d 00 00       	call   3913 <exit>
    printf(1, "mkdir dirfile/xx succeeded!\n");
    2b54:	50                   	push   %eax
    2b55:	50                   	push   %eax
    2b56:	68 c7 4a 00 00       	push   $0x4ac7
    2b5b:	6a 01                	push   $0x1
    2b5d:	e8 1e 0f 00 00       	call   3a80 <printf>
    exit();
    2b62:	e8 ac 0d 00 00       	call   3913 <exit>
    2b67:	90                   	nop
    2b68:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    2b6f:	00 

00002b70 <iref>:
{
    2b70:	55                   	push   %ebp
    2b71:	89 e5                	mov    %esp,%ebp
    2b73:	53                   	push   %ebx
  printf(1, "empty file name\n");
    2b74:	bb 33 00 00 00       	mov    $0x33,%ebx
{
    2b79:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "empty file name\n");
    2b7c:	68 45 4b 00 00       	push   $0x4b45
    2b81:	6a 01                	push   $0x1
    2b83:	e8 f8 0e 00 00       	call   3a80 <printf>
    2b88:	83 c4 10             	add    $0x10,%esp
    2b8b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    if(mkdir("irefd") != 0){
    2b90:	83 ec 0c             	sub    $0xc,%esp
    2b93:	68 56 4b 00 00       	push   $0x4b56
    2b98:	e8 de 0d 00 00       	call   397b <mkdir>
    2b9d:	83 c4 10             	add    $0x10,%esp
    2ba0:	85 c0                	test   %eax,%eax
    2ba2:	0f 85 bb 00 00 00    	jne    2c63 <iref+0xf3>
    if(chdir("irefd") != 0){
    2ba8:	83 ec 0c             	sub    $0xc,%esp
    2bab:	68 56 4b 00 00       	push   $0x4b56
    2bb0:	e8 ce 0d 00 00       	call   3983 <chdir>
    2bb5:	83 c4 10             	add    $0x10,%esp
    2bb8:	85 c0                	test   %eax,%eax
    2bba:	0f 85 b7 00 00 00    	jne    2c77 <iref+0x107>
    mkdir("");
    2bc0:	83 ec 0c             	sub    $0xc,%esp
    2bc3:	68 0b 42 00 00       	push   $0x420b
    2bc8:	e8 ae 0d 00 00       	call   397b <mkdir>
    link("README", "");
    2bcd:	59                   	pop    %ecx
    2bce:	58                   	pop    %eax
    2bcf:	68 0b 42 00 00       	push   $0x420b
    2bd4:	68 02 4b 00 00       	push   $0x4b02
    2bd9:	e8 95 0d 00 00       	call   3973 <link>
    fd = open("", O_CREATE);
    2bde:	58                   	pop    %eax
    2bdf:	5a                   	pop    %edx
    2be0:	68 00 02 00 00       	push   $0x200
    2be5:	68 0b 42 00 00       	push   $0x420b
    2bea:	e8 64 0d 00 00       	call   3953 <open>
    if(fd >= 0)
    2bef:	83 c4 10             	add    $0x10,%esp
    2bf2:	85 c0                	test   %eax,%eax
    2bf4:	78 0c                	js     2c02 <iref+0x92>
      close(fd);
    2bf6:	83 ec 0c             	sub    $0xc,%esp
    2bf9:	50                   	push   %eax
    2bfa:	e8 3c 0d 00 00       	call   393b <close>
    2bff:	83 c4 10             	add    $0x10,%esp
    fd = open("xx", O_CREATE);
    2c02:	83 ec 08             	sub    $0x8,%esp
    2c05:	68 00 02 00 00       	push   $0x200
    2c0a:	68 40 47 00 00       	push   $0x4740
    2c0f:	e8 3f 0d 00 00       	call   3953 <open>
    if(fd >= 0)
    2c14:	83 c4 10             	add    $0x10,%esp
    2c17:	85 c0                	test   %eax,%eax
    2c19:	78 0c                	js     2c27 <iref+0xb7>
      close(fd);
    2c1b:	83 ec 0c             	sub    $0xc,%esp
    2c1e:	50                   	push   %eax
    2c1f:	e8 17 0d 00 00       	call   393b <close>
    2c24:	83 c4 10             	add    $0x10,%esp
    unlink("xx");
    2c27:	83 ec 0c             	sub    $0xc,%esp
    2c2a:	68 40 47 00 00       	push   $0x4740
    2c2f:	e8 2f 0d 00 00       	call   3963 <unlink>
  for(i = 0; i < 50 + 1; i++){
    2c34:	83 c4 10             	add    $0x10,%esp
    2c37:	83 eb 01             	sub    $0x1,%ebx
    2c3a:	0f 85 50 ff ff ff    	jne    2b90 <iref+0x20>
  chdir("/");
    2c40:	83 ec 0c             	sub    $0xc,%esp
    2c43:	68 31 3e 00 00       	push   $0x3e31
    2c48:	e8 36 0d 00 00       	call   3983 <chdir>
  printf(1, "empty file name OK\n");
    2c4d:	58                   	pop    %eax
    2c4e:	5a                   	pop    %edx
    2c4f:	68 84 4b 00 00       	push   $0x4b84
    2c54:	6a 01                	push   $0x1
    2c56:	e8 25 0e 00 00       	call   3a80 <printf>
}
    2c5b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2c5e:	83 c4 10             	add    $0x10,%esp
    2c61:	c9                   	leave
    2c62:	c3                   	ret
      printf(1, "mkdir irefd failed\n");
    2c63:	83 ec 08             	sub    $0x8,%esp
    2c66:	68 5c 4b 00 00       	push   $0x4b5c
    2c6b:	6a 01                	push   $0x1
    2c6d:	e8 0e 0e 00 00       	call   3a80 <printf>
      exit();
    2c72:	e8 9c 0c 00 00       	call   3913 <exit>
      printf(1, "chdir irefd failed\n");
    2c77:	83 ec 08             	sub    $0x8,%esp
    2c7a:	68 70 4b 00 00       	push   $0x4b70
    2c7f:	6a 01                	push   $0x1
    2c81:	e8 fa 0d 00 00       	call   3a80 <printf>
      exit();
    2c86:	e8 88 0c 00 00       	call   3913 <exit>
    2c8b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00002c90 <forktest>:
{
    2c90:	55                   	push   %ebp
    2c91:	89 e5                	mov    %esp,%ebp
    2c93:	53                   	push   %ebx
  for(n=0; n<1000; n++){
    2c94:	31 db                	xor    %ebx,%ebx
{
    2c96:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "fork test\n");
    2c99:	68 98 4b 00 00       	push   $0x4b98
    2c9e:	6a 01                	push   $0x1
    2ca0:	e8 db 0d 00 00       	call   3a80 <printf>
    2ca5:	83 c4 10             	add    $0x10,%esp
    2ca8:	eb 13                	jmp    2cbd <forktest+0x2d>
    2caa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(pid == 0)
    2cb0:	74 4a                	je     2cfc <forktest+0x6c>
  for(n=0; n<1000; n++){
    2cb2:	83 c3 01             	add    $0x1,%ebx
    2cb5:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    2cbb:	74 6b                	je     2d28 <forktest+0x98>
    pid = fork();
    2cbd:	e8 49 0c 00 00       	call   390b <fork>
    if(pid < 0)
    2cc2:	85 c0                	test   %eax,%eax
    2cc4:	79 ea                	jns    2cb0 <forktest+0x20>
  for(; n > 0; n--){
    2cc6:	85 db                	test   %ebx,%ebx
    2cc8:	74 14                	je     2cde <forktest+0x4e>
    2cca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(wait() < 0){
    2cd0:	e8 46 0c 00 00       	call   391b <wait>
    2cd5:	85 c0                	test   %eax,%eax
    2cd7:	78 28                	js     2d01 <forktest+0x71>
  for(; n > 0; n--){
    2cd9:	83 eb 01             	sub    $0x1,%ebx
    2cdc:	75 f2                	jne    2cd0 <forktest+0x40>
  if(wait() != -1){
    2cde:	e8 38 0c 00 00       	call   391b <wait>
    2ce3:	83 f8 ff             	cmp    $0xffffffff,%eax
    2ce6:	75 2d                	jne    2d15 <forktest+0x85>
  printf(1, "fork test OK\n");
    2ce8:	83 ec 08             	sub    $0x8,%esp
    2ceb:	68 ca 4b 00 00       	push   $0x4bca
    2cf0:	6a 01                	push   $0x1
    2cf2:	e8 89 0d 00 00       	call   3a80 <printf>
}
    2cf7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2cfa:	c9                   	leave
    2cfb:	c3                   	ret
      exit();
    2cfc:	e8 12 0c 00 00       	call   3913 <exit>
      printf(1, "wait stopped early\n");
    2d01:	83 ec 08             	sub    $0x8,%esp
    2d04:	68 a3 4b 00 00       	push   $0x4ba3
    2d09:	6a 01                	push   $0x1
    2d0b:	e8 70 0d 00 00       	call   3a80 <printf>
      exit();
    2d10:	e8 fe 0b 00 00       	call   3913 <exit>
    printf(1, "wait got too many\n");
    2d15:	52                   	push   %edx
    2d16:	52                   	push   %edx
    2d17:	68 b7 4b 00 00       	push   $0x4bb7
    2d1c:	6a 01                	push   $0x1
    2d1e:	e8 5d 0d 00 00       	call   3a80 <printf>
    exit();
    2d23:	e8 eb 0b 00 00       	call   3913 <exit>
    printf(1, "fork claimed to work 1000 times!\n");
    2d28:	50                   	push   %eax
    2d29:	50                   	push   %eax
    2d2a:	68 40 53 00 00       	push   $0x5340
    2d2f:	6a 01                	push   $0x1
    2d31:	e8 4a 0d 00 00       	call   3a80 <printf>
    exit();
    2d36:	e8 d8 0b 00 00       	call   3913 <exit>
    2d3b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00002d40 <sbrktest>:
{
    2d40:	55                   	push   %ebp
    2d41:	89 e5                	mov    %esp,%ebp
    2d43:	57                   	push   %edi
  for(i = 0; i < 5000; i++){
    2d44:	31 ff                	xor    %edi,%edi
{
    2d46:	56                   	push   %esi
    2d47:	53                   	push   %ebx
    2d48:	83 ec 64             	sub    $0x64,%esp
  printf(stdout, "sbrk test\n");
    2d4b:	68 d8 4b 00 00       	push   $0x4bd8
    2d50:	ff 35 d8 5e 00 00    	push   0x5ed8
    2d56:	e8 25 0d 00 00       	call   3a80 <printf>
  oldbrk = sbrk(0);
    2d5b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d62:	e8 3c 0c 00 00       	call   39a3 <sbrk>
    2d67:	89 45 a4             	mov    %eax,-0x5c(%ebp)
  a = sbrk(0);
    2d6a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d71:	e8 2d 0c 00 00       	call   39a3 <sbrk>
    2d76:	83 c4 10             	add    $0x10,%esp
    2d79:	89 c3                	mov    %eax,%ebx
  for(i = 0; i < 5000; i++){
    2d7b:	eb 06                	jmp    2d83 <sbrktest+0x43>
    2d7d:	8d 76 00             	lea    0x0(%esi),%esi
    2d80:	83 c3 01             	add    $0x1,%ebx
    b = sbrk(1);
    2d83:	83 ec 0c             	sub    $0xc,%esp
    2d86:	6a 01                	push   $0x1
    2d88:	e8 16 0c 00 00       	call   39a3 <sbrk>
    if(b != a){
    2d8d:	83 c4 10             	add    $0x10,%esp
    2d90:	39 d8                	cmp    %ebx,%eax
    2d92:	0f 85 a9 02 00 00    	jne    3041 <sbrktest+0x301>
  for(i = 0; i < 5000; i++){
    2d98:	83 c7 01             	add    $0x1,%edi
    *b = 1;
    2d9b:	c6 03 01             	movb   $0x1,(%ebx)
  for(i = 0; i < 5000; i++){
    2d9e:	81 ff 88 13 00 00    	cmp    $0x1388,%edi
    2da4:	75 da                	jne    2d80 <sbrktest+0x40>
  pid = fork();
    2da6:	e8 60 0b 00 00       	call   390b <fork>
    2dab:	89 c7                	mov    %eax,%edi
  if(pid < 0){
    2dad:	85 c0                	test   %eax,%eax
    2daf:	0f 88 12 03 00 00    	js     30c7 <sbrktest+0x387>
  c = sbrk(1);
    2db5:	83 ec 0c             	sub    $0xc,%esp
  if(c != a + 1){
    2db8:	83 c3 02             	add    $0x2,%ebx
  c = sbrk(1);
    2dbb:	6a 01                	push   $0x1
    2dbd:	e8 e1 0b 00 00       	call   39a3 <sbrk>
  c = sbrk(1);
    2dc2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2dc9:	e8 d5 0b 00 00       	call   39a3 <sbrk>
  if(c != a + 1){
    2dce:	83 c4 10             	add    $0x10,%esp
    2dd1:	39 d8                	cmp    %ebx,%eax
    2dd3:	0f 85 4b 03 00 00    	jne    3124 <sbrktest+0x3e4>
  if(pid == 0)
    2dd9:	85 ff                	test   %edi,%edi
    2ddb:	0f 84 3e 03 00 00    	je     311f <sbrktest+0x3df>
  wait();
    2de1:	e8 35 0b 00 00       	call   391b <wait>
  a = sbrk(0);
    2de6:	83 ec 0c             	sub    $0xc,%esp
    2de9:	6a 00                	push   $0x0
    2deb:	e8 b3 0b 00 00       	call   39a3 <sbrk>
    2df0:	89 c3                	mov    %eax,%ebx
  amt = (BIG) - (uint)a;
    2df2:	b8 00 00 40 06       	mov    $0x6400000,%eax
    2df7:	29 d8                	sub    %ebx,%eax
  p = sbrk(amt);
    2df9:	89 04 24             	mov    %eax,(%esp)
    2dfc:	e8 a2 0b 00 00       	call   39a3 <sbrk>
  if (p != a) {
    2e01:	83 c4 10             	add    $0x10,%esp
    2e04:	39 c3                	cmp    %eax,%ebx
    2e06:	0f 85 a4 02 00 00    	jne    30b0 <sbrktest+0x370>
  a = sbrk(0);
    2e0c:	83 ec 0c             	sub    $0xc,%esp
  *lastaddr = 99;
    2e0f:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff
  a = sbrk(0);
    2e16:	6a 00                	push   $0x0
    2e18:	e8 86 0b 00 00       	call   39a3 <sbrk>
  c = sbrk(-4096);
    2e1d:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
  a = sbrk(0);
    2e24:	89 c3                	mov    %eax,%ebx
  c = sbrk(-4096);
    2e26:	e8 78 0b 00 00       	call   39a3 <sbrk>
  if(c == (char*)0xffffffff){
    2e2b:	83 c4 10             	add    $0x10,%esp
    2e2e:	83 f8 ff             	cmp    $0xffffffff,%eax
    2e31:	0f 84 32 03 00 00    	je     3169 <sbrktest+0x429>
  c = sbrk(0);
    2e37:	83 ec 0c             	sub    $0xc,%esp
    2e3a:	6a 00                	push   $0x0
    2e3c:	e8 62 0b 00 00       	call   39a3 <sbrk>
  if(c != a - 4096){
    2e41:	8d 93 00 f0 ff ff    	lea    -0x1000(%ebx),%edx
    2e47:	83 c4 10             	add    $0x10,%esp
    2e4a:	39 d0                	cmp    %edx,%eax
    2e4c:	0f 85 00 03 00 00    	jne    3152 <sbrktest+0x412>
  a = sbrk(0);
    2e52:	83 ec 0c             	sub    $0xc,%esp
    2e55:	6a 00                	push   $0x0
    2e57:	e8 47 0b 00 00       	call   39a3 <sbrk>
  c = sbrk(4096);
    2e5c:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
  a = sbrk(0);
    2e63:	89 c3                	mov    %eax,%ebx
  c = sbrk(4096);
    2e65:	e8 39 0b 00 00       	call   39a3 <sbrk>
  if(c != a || sbrk(0) != a + 4096){
    2e6a:	83 c4 10             	add    $0x10,%esp
  c = sbrk(4096);
    2e6d:	89 c7                	mov    %eax,%edi
  if(c != a || sbrk(0) != a + 4096){
    2e6f:	39 c3                	cmp    %eax,%ebx
    2e71:	0f 85 c4 02 00 00    	jne    313b <sbrktest+0x3fb>
    2e77:	83 ec 0c             	sub    $0xc,%esp
    2e7a:	6a 00                	push   $0x0
    2e7c:	e8 22 0b 00 00       	call   39a3 <sbrk>
    2e81:	83 c4 10             	add    $0x10,%esp
    2e84:	89 c2                	mov    %eax,%edx
    2e86:	8d 83 00 10 00 00    	lea    0x1000(%ebx),%eax
    2e8c:	39 c2                	cmp    %eax,%edx
    2e8e:	0f 85 a7 02 00 00    	jne    313b <sbrktest+0x3fb>
  if(*lastaddr == 99){
    2e94:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    2e9b:	0f 84 3d 02 00 00    	je     30de <sbrktest+0x39e>
  a = sbrk(0);
    2ea1:	83 ec 0c             	sub    $0xc,%esp
    2ea4:	6a 00                	push   $0x0
    2ea6:	e8 f8 0a 00 00       	call   39a3 <sbrk>
  c = sbrk(-(sbrk(0) - oldbrk));
    2eab:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  a = sbrk(0);
    2eb2:	89 c3                	mov    %eax,%ebx
  c = sbrk(-(sbrk(0) - oldbrk));
    2eb4:	e8 ea 0a 00 00       	call   39a3 <sbrk>
    2eb9:	89 c2                	mov    %eax,%edx
    2ebb:	8b 45 a4             	mov    -0x5c(%ebp),%eax
    2ebe:	29 d0                	sub    %edx,%eax
    2ec0:	89 04 24             	mov    %eax,(%esp)
    2ec3:	e8 db 0a 00 00       	call   39a3 <sbrk>
  if(c != a){
    2ec8:	83 c4 10             	add    $0x10,%esp
    2ecb:	39 c3                	cmp    %eax,%ebx
    2ecd:	0f 85 c6 01 00 00    	jne    3099 <sbrktest+0x359>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    2ed3:	bb 00 00 00 80       	mov    $0x80000000,%ebx
    2ed8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    2edf:	00 
    ppid = getpid();
    2ee0:	e8 ae 0a 00 00       	call   3993 <getpid>
    2ee5:	89 c7                	mov    %eax,%edi
    pid = fork();
    2ee7:	e8 1f 0a 00 00       	call   390b <fork>
    if(pid < 0){
    2eec:	85 c0                	test   %eax,%eax
    2eee:	0f 88 6b 01 00 00    	js     305f <sbrktest+0x31f>
    if(pid == 0){
    2ef4:	0f 84 7d 01 00 00    	je     3077 <sbrktest+0x337>
    wait();
    2efa:	e8 1c 0a 00 00       	call   391b <wait>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    2eff:	81 c3 50 c3 00 00    	add    $0xc350,%ebx
    2f05:	81 fb 80 84 1e 80    	cmp    $0x801e8480,%ebx
    2f0b:	75 d3                	jne    2ee0 <sbrktest+0x1a0>
  if(pipe(fds) != 0){
    2f0d:	83 ec 0c             	sub    $0xc,%esp
    2f10:	8d 45 b8             	lea    -0x48(%ebp),%eax
    2f13:	50                   	push   %eax
    2f14:	e8 0a 0a 00 00       	call   3923 <pipe>
    2f19:	83 c4 10             	add    $0x10,%esp
    2f1c:	85 c0                	test   %eax,%eax
    2f1e:	0f 85 e8 01 00 00    	jne    310c <sbrktest+0x3cc>
    2f24:	8d 5d c0             	lea    -0x40(%ebp),%ebx
      read(fds[0], &scratch, 1);
    2f27:	8d 7d b7             	lea    -0x49(%ebp),%edi
  if(pipe(fds) != 0){
    2f2a:	89 de                	mov    %ebx,%esi
    2f2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if((pids[i] = fork()) == 0){
    2f30:	e8 d6 09 00 00       	call   390b <fork>
    2f35:	89 06                	mov    %eax,(%esi)
    2f37:	85 c0                	test   %eax,%eax
    2f39:	0f 84 9c 00 00 00    	je     2fdb <sbrktest+0x29b>
    if(pids[i] != -1)
    2f3f:	83 f8 ff             	cmp    $0xffffffff,%eax
    2f42:	74 11                	je     2f55 <sbrktest+0x215>
      read(fds[0], &scratch, 1);
    2f44:	83 ec 04             	sub    $0x4,%esp
    2f47:	6a 01                	push   $0x1
    2f49:	57                   	push   %edi
    2f4a:	ff 75 b8             	push   -0x48(%ebp)
    2f4d:	e8 d9 09 00 00       	call   392b <read>
    2f52:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    2f55:	83 c6 04             	add    $0x4,%esi
    2f58:	8d 45 e8             	lea    -0x18(%ebp),%eax
    2f5b:	39 c6                	cmp    %eax,%esi
    2f5d:	75 d1                	jne    2f30 <sbrktest+0x1f0>
  c = sbrk(4096);
    2f5f:	83 ec 0c             	sub    $0xc,%esp
    2f62:	68 00 10 00 00       	push   $0x1000
    2f67:	e8 37 0a 00 00       	call   39a3 <sbrk>
    2f6c:	83 c4 10             	add    $0x10,%esp
    2f6f:	89 c7                	mov    %eax,%edi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    2f71:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2f78:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    2f7f:	00 
    if(pids[i] == -1)
    2f80:	8b 03                	mov    (%ebx),%eax
    2f82:	83 f8 ff             	cmp    $0xffffffff,%eax
    2f85:	74 11                	je     2f98 <sbrktest+0x258>
    kill(pids[i]);
    2f87:	83 ec 0c             	sub    $0xc,%esp
    2f8a:	50                   	push   %eax
    2f8b:	e8 b3 09 00 00       	call   3943 <kill>
    wait();
    2f90:	e8 86 09 00 00       	call   391b <wait>
    2f95:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    2f98:	83 c3 04             	add    $0x4,%ebx
    2f9b:	8d 45 e8             	lea    -0x18(%ebp),%eax
    2f9e:	39 c3                	cmp    %eax,%ebx
    2fa0:	75 de                	jne    2f80 <sbrktest+0x240>
  if(c == (char*)0xffffffff){
    2fa2:	83 ff ff             	cmp    $0xffffffff,%edi
    2fa5:	0f 84 4a 01 00 00    	je     30f5 <sbrktest+0x3b5>
  if(sbrk(0) > oldbrk)
    2fab:	83 ec 0c             	sub    $0xc,%esp
    2fae:	6a 00                	push   $0x0
    2fb0:	e8 ee 09 00 00       	call   39a3 <sbrk>
    2fb5:	83 c4 10             	add    $0x10,%esp
    2fb8:	39 45 a4             	cmp    %eax,-0x5c(%ebp)
    2fbb:	72 65                	jb     3022 <sbrktest+0x2e2>
  printf(stdout, "sbrk test OK\n");
    2fbd:	83 ec 08             	sub    $0x8,%esp
    2fc0:	68 80 4c 00 00       	push   $0x4c80
    2fc5:	ff 35 d8 5e 00 00    	push   0x5ed8
    2fcb:	e8 b0 0a 00 00       	call   3a80 <printf>
}
    2fd0:	83 c4 10             	add    $0x10,%esp
    2fd3:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2fd6:	5b                   	pop    %ebx
    2fd7:	5e                   	pop    %esi
    2fd8:	5f                   	pop    %edi
    2fd9:	5d                   	pop    %ebp
    2fda:	c3                   	ret
      sbrk(BIG - (uint)sbrk(0));
    2fdb:	83 ec 0c             	sub    $0xc,%esp
    2fde:	6a 00                	push   $0x0
    2fe0:	e8 be 09 00 00       	call   39a3 <sbrk>
    2fe5:	89 c2                	mov    %eax,%edx
    2fe7:	b8 00 00 40 06       	mov    $0x6400000,%eax
    2fec:	29 d0                	sub    %edx,%eax
    2fee:	89 04 24             	mov    %eax,(%esp)
    2ff1:	e8 ad 09 00 00       	call   39a3 <sbrk>
      write(fds[1], "x", 1);
    2ff6:	83 c4 0c             	add    $0xc,%esp
    2ff9:	6a 01                	push   $0x1
    2ffb:	68 41 47 00 00       	push   $0x4741
    3000:	ff 75 bc             	push   -0x44(%ebp)
    3003:	e8 2b 09 00 00       	call   3933 <write>
    3008:	83 c4 10             	add    $0x10,%esp
    300b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
      for(;;) sleep(1000);
    3010:	83 ec 0c             	sub    $0xc,%esp
    3013:	68 e8 03 00 00       	push   $0x3e8
    3018:	e8 8e 09 00 00       	call   39ab <sleep>
    301d:	83 c4 10             	add    $0x10,%esp
    3020:	eb ee                	jmp    3010 <sbrktest+0x2d0>
    sbrk(-(sbrk(0) - oldbrk));
    3022:	83 ec 0c             	sub    $0xc,%esp
    3025:	6a 00                	push   $0x0
    3027:	e8 77 09 00 00       	call   39a3 <sbrk>
    302c:	8b 75 a4             	mov    -0x5c(%ebp),%esi
    302f:	29 c6                	sub    %eax,%esi
    3031:	89 34 24             	mov    %esi,(%esp)
    3034:	e8 6a 09 00 00       	call   39a3 <sbrk>
    3039:	83 c4 10             	add    $0x10,%esp
    303c:	e9 7c ff ff ff       	jmp    2fbd <sbrktest+0x27d>
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
    3041:	83 ec 0c             	sub    $0xc,%esp
    3044:	50                   	push   %eax
    3045:	53                   	push   %ebx
    3046:	57                   	push   %edi
    3047:	68 e3 4b 00 00       	push   $0x4be3
    304c:	ff 35 d8 5e 00 00    	push   0x5ed8
    3052:	e8 29 0a 00 00       	call   3a80 <printf>
      exit();
    3057:	83 c4 20             	add    $0x20,%esp
    305a:	e8 b4 08 00 00       	call   3913 <exit>
      printf(stdout, "fork failed\n");
    305f:	83 ec 08             	sub    $0x8,%esp
    3062:	68 29 4d 00 00       	push   $0x4d29
    3067:	ff 35 d8 5e 00 00    	push   0x5ed8
    306d:	e8 0e 0a 00 00       	call   3a80 <printf>
      exit();
    3072:	e8 9c 08 00 00       	call   3913 <exit>
      printf(stdout, "oops could read %x = %x\n", a, *a);
    3077:	0f be 03             	movsbl (%ebx),%eax
    307a:	50                   	push   %eax
    307b:	53                   	push   %ebx
    307c:	68 4c 4c 00 00       	push   $0x4c4c
    3081:	ff 35 d8 5e 00 00    	push   0x5ed8
    3087:	e8 f4 09 00 00       	call   3a80 <printf>
      kill(ppid);
    308c:	89 3c 24             	mov    %edi,(%esp)
    308f:	e8 af 08 00 00       	call   3943 <kill>
      exit();
    3094:	e8 7a 08 00 00       	call   3913 <exit>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    3099:	50                   	push   %eax
    309a:	53                   	push   %ebx
    309b:	68 34 54 00 00       	push   $0x5434
    30a0:	ff 35 d8 5e 00 00    	push   0x5ed8
    30a6:	e8 d5 09 00 00       	call   3a80 <printf>
    exit();
    30ab:	e8 63 08 00 00       	call   3913 <exit>
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    30b0:	56                   	push   %esi
    30b1:	56                   	push   %esi
    30b2:	68 64 53 00 00       	push   $0x5364
    30b7:	ff 35 d8 5e 00 00    	push   0x5ed8
    30bd:	e8 be 09 00 00       	call   3a80 <printf>
    exit();
    30c2:	e8 4c 08 00 00       	call   3913 <exit>
    printf(stdout, "sbrk test fork failed\n");
    30c7:	50                   	push   %eax
    30c8:	50                   	push   %eax
    30c9:	68 fe 4b 00 00       	push   $0x4bfe
    30ce:	ff 35 d8 5e 00 00    	push   0x5ed8
    30d4:	e8 a7 09 00 00       	call   3a80 <printf>
    exit();
    30d9:	e8 35 08 00 00       	call   3913 <exit>
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    30de:	51                   	push   %ecx
    30df:	51                   	push   %ecx
    30e0:	68 04 54 00 00       	push   $0x5404
    30e5:	ff 35 d8 5e 00 00    	push   0x5ed8
    30eb:	e8 90 09 00 00       	call   3a80 <printf>
    exit();
    30f0:	e8 1e 08 00 00       	call   3913 <exit>
    printf(stdout, "failed sbrk leaked memory\n");
    30f5:	50                   	push   %eax
    30f6:	50                   	push   %eax
    30f7:	68 65 4c 00 00       	push   $0x4c65
    30fc:	ff 35 d8 5e 00 00    	push   0x5ed8
    3102:	e8 79 09 00 00       	call   3a80 <printf>
    exit();
    3107:	e8 07 08 00 00       	call   3913 <exit>
    printf(1, "pipe() failed\n");
    310c:	52                   	push   %edx
    310d:	52                   	push   %edx
    310e:	68 21 41 00 00       	push   $0x4121
    3113:	6a 01                	push   $0x1
    3115:	e8 66 09 00 00       	call   3a80 <printf>
    exit();
    311a:	e8 f4 07 00 00       	call   3913 <exit>
    exit();
    311f:	e8 ef 07 00 00       	call   3913 <exit>
    printf(stdout, "sbrk test failed post-fork\n");
    3124:	57                   	push   %edi
    3125:	57                   	push   %edi
    3126:	68 15 4c 00 00       	push   $0x4c15
    312b:	ff 35 d8 5e 00 00    	push   0x5ed8
    3131:	e8 4a 09 00 00       	call   3a80 <printf>
    exit();
    3136:	e8 d8 07 00 00       	call   3913 <exit>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    313b:	57                   	push   %edi
    313c:	53                   	push   %ebx
    313d:	68 dc 53 00 00       	push   $0x53dc
    3142:	ff 35 d8 5e 00 00    	push   0x5ed8
    3148:	e8 33 09 00 00       	call   3a80 <printf>
    exit();
    314d:	e8 c1 07 00 00       	call   3913 <exit>
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    3152:	50                   	push   %eax
    3153:	53                   	push   %ebx
    3154:	68 a4 53 00 00       	push   $0x53a4
    3159:	ff 35 d8 5e 00 00    	push   0x5ed8
    315f:	e8 1c 09 00 00       	call   3a80 <printf>
    exit();
    3164:	e8 aa 07 00 00       	call   3913 <exit>
    printf(stdout, "sbrk could not deallocate\n");
    3169:	53                   	push   %ebx
    316a:	53                   	push   %ebx
    316b:	68 31 4c 00 00       	push   $0x4c31
    3170:	ff 35 d8 5e 00 00    	push   0x5ed8
    3176:	e8 05 09 00 00       	call   3a80 <printf>
    exit();
    317b:	e8 93 07 00 00       	call   3913 <exit>

00003180 <validateint>:
}
    3180:	c3                   	ret
    3181:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3188:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    318f:	00 

00003190 <validatetest>:
{
    3190:	55                   	push   %ebp
    3191:	89 e5                	mov    %esp,%ebp
    3193:	56                   	push   %esi
  for(p = 0; p <= (uint)hi; p += 4096){
    3194:	31 f6                	xor    %esi,%esi
{
    3196:	53                   	push   %ebx
  printf(stdout, "validate test\n");
    3197:	83 ec 08             	sub    $0x8,%esp
    319a:	68 8e 4c 00 00       	push   $0x4c8e
    319f:	ff 35 d8 5e 00 00    	push   0x5ed8
    31a5:	e8 d6 08 00 00       	call   3a80 <printf>
    31aa:	83 c4 10             	add    $0x10,%esp
    31ad:	8d 76 00             	lea    0x0(%esi),%esi
    if((pid = fork()) == 0){
    31b0:	e8 56 07 00 00       	call   390b <fork>
    31b5:	89 c3                	mov    %eax,%ebx
    31b7:	85 c0                	test   %eax,%eax
    31b9:	74 63                	je     321e <validatetest+0x8e>
    sleep(0);
    31bb:	83 ec 0c             	sub    $0xc,%esp
    31be:	6a 00                	push   $0x0
    31c0:	e8 e6 07 00 00       	call   39ab <sleep>
    sleep(0);
    31c5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    31cc:	e8 da 07 00 00       	call   39ab <sleep>
    kill(pid);
    31d1:	89 1c 24             	mov    %ebx,(%esp)
    31d4:	e8 6a 07 00 00       	call   3943 <kill>
    wait();
    31d9:	e8 3d 07 00 00       	call   391b <wait>
    if(link("nosuchfile", (char*)p) != -1){
    31de:	58                   	pop    %eax
    31df:	5a                   	pop    %edx
    31e0:	56                   	push   %esi
    31e1:	68 9d 4c 00 00       	push   $0x4c9d
    31e6:	e8 88 07 00 00       	call   3973 <link>
    31eb:	83 c4 10             	add    $0x10,%esp
    31ee:	83 f8 ff             	cmp    $0xffffffff,%eax
    31f1:	75 30                	jne    3223 <validatetest+0x93>
  for(p = 0; p <= (uint)hi; p += 4096){
    31f3:	81 c6 00 10 00 00    	add    $0x1000,%esi
    31f9:	81 fe 00 40 11 00    	cmp    $0x114000,%esi
    31ff:	75 af                	jne    31b0 <validatetest+0x20>
  printf(stdout, "validate ok\n");
    3201:	83 ec 08             	sub    $0x8,%esp
    3204:	68 c1 4c 00 00       	push   $0x4cc1
    3209:	ff 35 d8 5e 00 00    	push   0x5ed8
    320f:	e8 6c 08 00 00       	call   3a80 <printf>
}
    3214:	83 c4 10             	add    $0x10,%esp
    3217:	8d 65 f8             	lea    -0x8(%ebp),%esp
    321a:	5b                   	pop    %ebx
    321b:	5e                   	pop    %esi
    321c:	5d                   	pop    %ebp
    321d:	c3                   	ret
      exit();
    321e:	e8 f0 06 00 00       	call   3913 <exit>
      printf(stdout, "link should not succeed\n");
    3223:	83 ec 08             	sub    $0x8,%esp
    3226:	68 a8 4c 00 00       	push   $0x4ca8
    322b:	ff 35 d8 5e 00 00    	push   0x5ed8
    3231:	e8 4a 08 00 00       	call   3a80 <printf>
      exit();
    3236:	e8 d8 06 00 00       	call   3913 <exit>
    323b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00003240 <bsstest>:
{
    3240:	55                   	push   %ebp
    3241:	89 e5                	mov    %esp,%ebp
    3243:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "bss test\n");
    3246:	68 ce 4c 00 00       	push   $0x4cce
    324b:	ff 35 d8 5e 00 00    	push   0x5ed8
    3251:	e8 2a 08 00 00       	call   3a80 <printf>
    3256:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(uninit); i++){
    3259:	31 c0                	xor    %eax,%eax
    325b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    if(uninit[i] != '\0'){
    3260:	80 b8 00 5f 00 00 00 	cmpb   $0x0,0x5f00(%eax)
    3267:	75 22                	jne    328b <bsstest+0x4b>
  for(i = 0; i < sizeof(uninit); i++){
    3269:	83 c0 01             	add    $0x1,%eax
    326c:	3d 10 27 00 00       	cmp    $0x2710,%eax
    3271:	75 ed                	jne    3260 <bsstest+0x20>
  printf(stdout, "bss test ok\n");
    3273:	83 ec 08             	sub    $0x8,%esp
    3276:	68 e9 4c 00 00       	push   $0x4ce9
    327b:	ff 35 d8 5e 00 00    	push   0x5ed8
    3281:	e8 fa 07 00 00       	call   3a80 <printf>
}
    3286:	83 c4 10             	add    $0x10,%esp
    3289:	c9                   	leave
    328a:	c3                   	ret
      printf(stdout, "bss test failed\n");
    328b:	83 ec 08             	sub    $0x8,%esp
    328e:	68 d8 4c 00 00       	push   $0x4cd8
    3293:	ff 35 d8 5e 00 00    	push   0x5ed8
    3299:	e8 e2 07 00 00       	call   3a80 <printf>
      exit();
    329e:	e8 70 06 00 00       	call   3913 <exit>
    32a3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    32a8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    32af:	00 

000032b0 <bigargtest>:
{
    32b0:	55                   	push   %ebp
    32b1:	89 e5                	mov    %esp,%ebp
    32b3:	83 ec 14             	sub    $0x14,%esp
  unlink("bigarg-ok");
    32b6:	68 f6 4c 00 00       	push   $0x4cf6
    32bb:	e8 a3 06 00 00       	call   3963 <unlink>
  pid = fork();
    32c0:	e8 46 06 00 00       	call   390b <fork>
  if(pid == 0){
    32c5:	83 c4 10             	add    $0x10,%esp
    32c8:	85 c0                	test   %eax,%eax
    32ca:	74 3f                	je     330b <bigargtest+0x5b>
  } else if(pid < 0){
    32cc:	0f 88 d9 00 00 00    	js     33ab <bigargtest+0xfb>
  wait();
    32d2:	e8 44 06 00 00       	call   391b <wait>
  fd = open("bigarg-ok", 0);
    32d7:	83 ec 08             	sub    $0x8,%esp
    32da:	6a 00                	push   $0x0
    32dc:	68 f6 4c 00 00       	push   $0x4cf6
    32e1:	e8 6d 06 00 00       	call   3953 <open>
  if(fd < 0){
    32e6:	83 c4 10             	add    $0x10,%esp
    32e9:	85 c0                	test   %eax,%eax
    32eb:	0f 88 a3 00 00 00    	js     3394 <bigargtest+0xe4>
  close(fd);
    32f1:	83 ec 0c             	sub    $0xc,%esp
    32f4:	50                   	push   %eax
    32f5:	e8 41 06 00 00       	call   393b <close>
  unlink("bigarg-ok");
    32fa:	c7 04 24 f6 4c 00 00 	movl   $0x4cf6,(%esp)
    3301:	e8 5d 06 00 00       	call   3963 <unlink>
}
    3306:	83 c4 10             	add    $0x10,%esp
    3309:	c9                   	leave
    330a:	c3                   	ret
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    330b:	c7 04 85 20 a6 00 00 	movl   $0x5458,0xa620(,%eax,4)
    3312:	58 54 00 00 
    for(i = 0; i < MAXARG-1; i++)
    3316:	b8 01 00 00 00       	mov    $0x1,%eax
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    331b:	c7 04 85 20 a6 00 00 	movl   $0x5458,0xa620(,%eax,4)
    3322:	58 54 00 00 
    3326:	c7 04 85 24 a6 00 00 	movl   $0x5458,0xa624(,%eax,4)
    332d:	58 54 00 00 
    for(i = 0; i < MAXARG-1; i++)
    3331:	83 c0 02             	add    $0x2,%eax
    3334:	83 f8 1f             	cmp    $0x1f,%eax
    3337:	75 e2                	jne    331b <bigargtest+0x6b>
    printf(stdout, "bigarg test\n");
    3339:	50                   	push   %eax
    args[MAXARG-1] = 0;
    333a:	31 c9                	xor    %ecx,%ecx
    printf(stdout, "bigarg test\n");
    333c:	50                   	push   %eax
    333d:	68 00 4d 00 00       	push   $0x4d00
    3342:	ff 35 d8 5e 00 00    	push   0x5ed8
    args[MAXARG-1] = 0;
    3348:	89 0d 9c a6 00 00    	mov    %ecx,0xa69c
    printf(stdout, "bigarg test\n");
    334e:	e8 2d 07 00 00       	call   3a80 <printf>
    exec("echo", args);
    3353:	58                   	pop    %eax
    3354:	5a                   	pop    %edx
    3355:	68 20 a6 00 00       	push   $0xa620
    335a:	68 cd 3e 00 00       	push   $0x3ecd
    335f:	e8 e7 05 00 00       	call   394b <exec>
    printf(stdout, "bigarg test ok\n");
    3364:	59                   	pop    %ecx
    3365:	58                   	pop    %eax
    3366:	68 0d 4d 00 00       	push   $0x4d0d
    336b:	ff 35 d8 5e 00 00    	push   0x5ed8
    3371:	e8 0a 07 00 00       	call   3a80 <printf>
    fd = open("bigarg-ok", O_CREATE);
    3376:	58                   	pop    %eax
    3377:	5a                   	pop    %edx
    3378:	68 00 02 00 00       	push   $0x200
    337d:	68 f6 4c 00 00       	push   $0x4cf6
    3382:	e8 cc 05 00 00       	call   3953 <open>
    close(fd);
    3387:	89 04 24             	mov    %eax,(%esp)
    338a:	e8 ac 05 00 00       	call   393b <close>
    exit();
    338f:	e8 7f 05 00 00       	call   3913 <exit>
    printf(stdout, "bigarg test failed!\n");
    3394:	50                   	push   %eax
    3395:	50                   	push   %eax
    3396:	68 36 4d 00 00       	push   $0x4d36
    339b:	ff 35 d8 5e 00 00    	push   0x5ed8
    33a1:	e8 da 06 00 00       	call   3a80 <printf>
    exit();
    33a6:	e8 68 05 00 00       	call   3913 <exit>
    printf(stdout, "bigargtest: fork failed\n");
    33ab:	52                   	push   %edx
    33ac:	52                   	push   %edx
    33ad:	68 1d 4d 00 00       	push   $0x4d1d
    33b2:	ff 35 d8 5e 00 00    	push   0x5ed8
    33b8:	e8 c3 06 00 00       	call   3a80 <printf>
    exit();
    33bd:	e8 51 05 00 00       	call   3913 <exit>
    33c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    33c8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    33cf:	00 

000033d0 <fsfull>:
{
    33d0:	55                   	push   %ebp
    33d1:	89 e5                	mov    %esp,%ebp
    33d3:	57                   	push   %edi
    33d4:	56                   	push   %esi
    33d5:	8d 7d a8             	lea    -0x58(%ebp),%edi
    33d8:	53                   	push   %ebx
  for(nfiles = 0; ; nfiles++){
    33d9:	31 db                	xor    %ebx,%ebx
{
    33db:	83 ec 64             	sub    $0x64,%esp
  printf(1, "fsfull test\n");
    33de:	68 4b 4d 00 00       	push   $0x4d4b
    33e3:	6a 01                	push   $0x1
    33e5:	e8 96 06 00 00       	call   3a80 <printf>
    33ea:	83 c4 10             	add    $0x10,%esp
    name[1] = '0' + nfiles / 1000;
    33ed:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    33f2:	b9 cd cc cc cc       	mov    $0xcccccccd,%ecx
    printf(1, "writing %s\n", name);
    33f7:	83 ec 04             	sub    $0x4,%esp
    name[0] = 'f';
    33fa:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[1] = '0' + nfiles / 1000;
    33fe:	f7 e3                	mul    %ebx
    name[5] = '\0';
    3400:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    3404:	c1 ea 06             	shr    $0x6,%edx
    3407:	8d 42 30             	lea    0x30(%edx),%eax
    340a:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    340d:	69 c2 e8 03 00 00    	imul   $0x3e8,%edx,%eax
    3413:	89 da                	mov    %ebx,%edx
    3415:	29 c2                	sub    %eax,%edx
    3417:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    341c:	f7 e2                	mul    %edx
    name[3] = '0' + (nfiles % 100) / 10;
    341e:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3423:	c1 ea 05             	shr    $0x5,%edx
    3426:	83 c2 30             	add    $0x30,%edx
    3429:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    342c:	f7 e3                	mul    %ebx
    342e:	c1 ea 05             	shr    $0x5,%edx
    3431:	6b c2 64             	imul   $0x64,%edx,%eax
    3434:	89 da                	mov    %ebx,%edx
    3436:	29 c2                	sub    %eax,%edx
    3438:	89 d0                	mov    %edx,%eax
    343a:	f7 e1                	mul    %ecx
    name[4] = '0' + (nfiles % 10);
    343c:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    343e:	c1 ea 03             	shr    $0x3,%edx
    3441:	83 c2 30             	add    $0x30,%edx
    3444:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    3447:	f7 e1                	mul    %ecx
    3449:	89 d8                	mov    %ebx,%eax
    344b:	c1 ea 03             	shr    $0x3,%edx
    344e:	8d 14 92             	lea    (%edx,%edx,4),%edx
    3451:	01 d2                	add    %edx,%edx
    3453:	29 d0                	sub    %edx,%eax
    3455:	83 c0 30             	add    $0x30,%eax
    3458:	88 45 ac             	mov    %al,-0x54(%ebp)
    printf(1, "writing %s\n", name);
    345b:	57                   	push   %edi
    345c:	68 58 4d 00 00       	push   $0x4d58
    3461:	6a 01                	push   $0x1
    3463:	e8 18 06 00 00       	call   3a80 <printf>
    int fd = open(name, O_CREATE|O_RDWR);
    3468:	58                   	pop    %eax
    3469:	5a                   	pop    %edx
    346a:	68 02 02 00 00       	push   $0x202
    346f:	57                   	push   %edi
    3470:	e8 de 04 00 00       	call   3953 <open>
    if(fd < 0){
    3475:	83 c4 10             	add    $0x10,%esp
    3478:	85 c0                	test   %eax,%eax
    347a:	0f 89 b8 00 00 00    	jns    3538 <fsfull+0x168>
      printf(1, "open %s failed\n", name);
    3480:	83 ec 04             	sub    $0x4,%esp
    3483:	57                   	push   %edi
    3484:	68 64 4d 00 00       	push   $0x4d64
    3489:	6a 01                	push   $0x1
    348b:	e8 f0 05 00 00       	call   3a80 <printf>
      break;
    3490:	83 c4 10             	add    $0x10,%esp
    name[2] = '0' + (nfiles % 1000) / 100;
    3493:	be 1f 85 eb 51       	mov    $0x51eb851f,%esi
    3498:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    349f:	00 
    name[1] = '0' + nfiles / 1000;
    34a0:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    unlink(name);
    34a5:	83 ec 0c             	sub    $0xc,%esp
    name[0] = 'f';
    34a8:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[1] = '0' + nfiles / 1000;
    34ac:	f7 e3                	mul    %ebx
    name[5] = '\0';
    34ae:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    34b2:	c1 ea 06             	shr    $0x6,%edx
    34b5:	8d 42 30             	lea    0x30(%edx),%eax
    34b8:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    34bb:	69 c2 e8 03 00 00    	imul   $0x3e8,%edx,%eax
    34c1:	89 da                	mov    %ebx,%edx
    34c3:	29 c2                	sub    %eax,%edx
    34c5:	89 d0                	mov    %edx,%eax
    34c7:	f7 e6                	mul    %esi
    name[3] = '0' + (nfiles % 100) / 10;
    34c9:	89 d8                	mov    %ebx,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    34cb:	c1 ea 05             	shr    $0x5,%edx
    34ce:	83 c2 30             	add    $0x30,%edx
    34d1:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    34d4:	f7 e6                	mul    %esi
    34d6:	c1 ea 05             	shr    $0x5,%edx
    34d9:	6b ca 64             	imul   $0x64,%edx,%ecx
    34dc:	89 da                	mov    %ebx,%edx
    34de:	29 ca                	sub    %ecx,%edx
    34e0:	b9 cd cc cc cc       	mov    $0xcccccccd,%ecx
    34e5:	89 d0                	mov    %edx,%eax
    34e7:	f7 e1                	mul    %ecx
    name[4] = '0' + (nfiles % 10);
    34e9:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    34eb:	c1 ea 03             	shr    $0x3,%edx
    34ee:	83 c2 30             	add    $0x30,%edx
    34f1:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    34f4:	f7 e1                	mul    %ecx
    34f6:	89 d8                	mov    %ebx,%eax
    nfiles--;
    34f8:	83 eb 01             	sub    $0x1,%ebx
    name[4] = '0' + (nfiles % 10);
    34fb:	c1 ea 03             	shr    $0x3,%edx
    34fe:	8d 14 92             	lea    (%edx,%edx,4),%edx
    3501:	01 d2                	add    %edx,%edx
    3503:	29 d0                	sub    %edx,%eax
    3505:	83 c0 30             	add    $0x30,%eax
    3508:	88 45 ac             	mov    %al,-0x54(%ebp)
    unlink(name);
    350b:	57                   	push   %edi
    350c:	e8 52 04 00 00       	call   3963 <unlink>
  while(nfiles >= 0){
    3511:	83 c4 10             	add    $0x10,%esp
    3514:	83 fb ff             	cmp    $0xffffffff,%ebx
    3517:	75 87                	jne    34a0 <fsfull+0xd0>
  printf(1, "fsfull test finished\n");
    3519:	83 ec 08             	sub    $0x8,%esp
    351c:	68 84 4d 00 00       	push   $0x4d84
    3521:	6a 01                	push   $0x1
    3523:	e8 58 05 00 00       	call   3a80 <printf>
}
    3528:	83 c4 10             	add    $0x10,%esp
    352b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    352e:	5b                   	pop    %ebx
    352f:	5e                   	pop    %esi
    3530:	5f                   	pop    %edi
    3531:	5d                   	pop    %ebp
    3532:	c3                   	ret
    3533:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    int total = 0;
    3538:	89 5d a4             	mov    %ebx,-0x5c(%ebp)
    353b:	31 f6                	xor    %esi,%esi
    353d:	89 c3                	mov    %eax,%ebx
    353f:	eb 09                	jmp    354a <fsfull+0x17a>
    3541:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      total += cc;
    3548:	01 c6                	add    %eax,%esi
      int cc = write(fd, buf, 512);
    354a:	83 ec 04             	sub    $0x4,%esp
    354d:	68 00 02 00 00       	push   $0x200
    3552:	68 20 86 00 00       	push   $0x8620
    3557:	53                   	push   %ebx
    3558:	e8 d6 03 00 00       	call   3933 <write>
      if(cc < 512)
    355d:	83 c4 10             	add    $0x10,%esp
    3560:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    3565:	7f e1                	jg     3548 <fsfull+0x178>
    printf(1, "wrote %d bytes\n", total);
    3567:	83 ec 04             	sub    $0x4,%esp
    356a:	89 5d a0             	mov    %ebx,-0x60(%ebp)
    356d:	8b 5d a4             	mov    -0x5c(%ebp),%ebx
    3570:	56                   	push   %esi
    3571:	68 74 4d 00 00       	push   $0x4d74
    3576:	6a 01                	push   $0x1
    3578:	e8 03 05 00 00       	call   3a80 <printf>
    close(fd);
    357d:	8b 55 a0             	mov    -0x60(%ebp),%edx
    3580:	89 14 24             	mov    %edx,(%esp)
    3583:	e8 b3 03 00 00       	call   393b <close>
    if(total == 0)
    3588:	83 c4 10             	add    $0x10,%esp
    358b:	85 f6                	test   %esi,%esi
    358d:	0f 84 00 ff ff ff    	je     3493 <fsfull+0xc3>
  for(nfiles = 0; ; nfiles++){
    3593:	83 c3 01             	add    $0x1,%ebx
    3596:	e9 52 fe ff ff       	jmp    33ed <fsfull+0x1d>
    359b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

000035a0 <uio>:
{
    35a0:	55                   	push   %ebp
    35a1:	89 e5                	mov    %esp,%ebp
    35a3:	83 ec 10             	sub    $0x10,%esp
  printf(1, "uio test\n");
    35a6:	68 9a 4d 00 00       	push   $0x4d9a
    35ab:	6a 01                	push   $0x1
    35ad:	e8 ce 04 00 00       	call   3a80 <printf>
  pid = fork();
    35b2:	e8 54 03 00 00       	call   390b <fork>
  if(pid == 0){
    35b7:	83 c4 10             	add    $0x10,%esp
    35ba:	85 c0                	test   %eax,%eax
    35bc:	74 1b                	je     35d9 <uio+0x39>
  } else if(pid < 0){
    35be:	78 3d                	js     35fd <uio+0x5d>
  wait();
    35c0:	e8 56 03 00 00       	call   391b <wait>
  printf(1, "uio test done\n");
    35c5:	83 ec 08             	sub    $0x8,%esp
    35c8:	68 a4 4d 00 00       	push   $0x4da4
    35cd:	6a 01                	push   $0x1
    35cf:	e8 ac 04 00 00       	call   3a80 <printf>
}
    35d4:	83 c4 10             	add    $0x10,%esp
    35d7:	c9                   	leave
    35d8:	c3                   	ret
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    35d9:	b8 09 00 00 00       	mov    $0x9,%eax
    35de:	ba 70 00 00 00       	mov    $0x70,%edx
    35e3:	ee                   	out    %al,(%dx)
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    35e4:	ba 71 00 00 00       	mov    $0x71,%edx
    35e9:	ec                   	in     (%dx),%al
    printf(1, "uio: uio succeeded; test FAILED\n");
    35ea:	52                   	push   %edx
    35eb:	52                   	push   %edx
    35ec:	68 38 55 00 00       	push   $0x5538
    35f1:	6a 01                	push   $0x1
    35f3:	e8 88 04 00 00       	call   3a80 <printf>
    exit();
    35f8:	e8 16 03 00 00       	call   3913 <exit>
    printf (1, "fork failed\n");
    35fd:	50                   	push   %eax
    35fe:	50                   	push   %eax
    35ff:	68 29 4d 00 00       	push   $0x4d29
    3604:	6a 01                	push   $0x1
    3606:	e8 75 04 00 00       	call   3a80 <printf>
    exit();
    360b:	e8 03 03 00 00       	call   3913 <exit>

00003610 <argptest>:
{
    3610:	55                   	push   %ebp
    3611:	89 e5                	mov    %esp,%ebp
    3613:	53                   	push   %ebx
    3614:	83 ec 0c             	sub    $0xc,%esp
  fd = open("init", O_RDONLY);
    3617:	6a 00                	push   $0x0
    3619:	68 b3 4d 00 00       	push   $0x4db3
    361e:	e8 30 03 00 00       	call   3953 <open>
  if (fd < 0) {
    3623:	83 c4 10             	add    $0x10,%esp
    3626:	85 c0                	test   %eax,%eax
    3628:	78 39                	js     3663 <argptest+0x53>
  read(fd, sbrk(0) - 1, -1);
    362a:	83 ec 0c             	sub    $0xc,%esp
    362d:	89 c3                	mov    %eax,%ebx
    362f:	6a 00                	push   $0x0
    3631:	e8 6d 03 00 00       	call   39a3 <sbrk>
    3636:	83 c4 0c             	add    $0xc,%esp
    3639:	83 e8 01             	sub    $0x1,%eax
    363c:	6a ff                	push   $0xffffffff
    363e:	50                   	push   %eax
    363f:	53                   	push   %ebx
    3640:	e8 e6 02 00 00       	call   392b <read>
  close(fd);
    3645:	89 1c 24             	mov    %ebx,(%esp)
    3648:	e8 ee 02 00 00       	call   393b <close>
  printf(1, "arg test passed\n");
    364d:	58                   	pop    %eax
    364e:	5a                   	pop    %edx
    364f:	68 c5 4d 00 00       	push   $0x4dc5
    3654:	6a 01                	push   $0x1
    3656:	e8 25 04 00 00       	call   3a80 <printf>
}
    365b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    365e:	83 c4 10             	add    $0x10,%esp
    3661:	c9                   	leave
    3662:	c3                   	ret
    printf(2, "open failed\n");
    3663:	51                   	push   %ecx
    3664:	51                   	push   %ecx
    3665:	68 b8 4d 00 00       	push   $0x4db8
    366a:	6a 02                	push   $0x2
    366c:	e8 0f 04 00 00       	call   3a80 <printf>
    exit();
    3671:	e8 9d 02 00 00       	call   3913 <exit>
    3676:	66 90                	xchg   %ax,%ax
    3678:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    367f:	00 

00003680 <rand>:
  randstate = randstate * 1664525 + 1013904223;
    3680:	69 05 d4 5e 00 00 0d 	imul   $0x19660d,0x5ed4,%eax
    3687:	66 19 00 
    368a:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    368f:	a3 d4 5e 00 00       	mov    %eax,0x5ed4
}
    3694:	c3                   	ret
    3695:	66 90                	xchg   %ax,%ax
    3697:	66 90                	xchg   %ax,%ax
    3699:	66 90                	xchg   %ax,%ax
    369b:	66 90                	xchg   %ax,%ax
    369d:	66 90                	xchg   %ax,%ax
    369f:	90                   	nop

000036a0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
    36a0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    36a1:	31 c0                	xor    %eax,%eax
{
    36a3:	89 e5                	mov    %esp,%ebp
    36a5:	53                   	push   %ebx
    36a6:	8b 4d 08             	mov    0x8(%ebp),%ecx
    36a9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
    36ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
    36b0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    36b4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    36b7:	83 c0 01             	add    $0x1,%eax
    36ba:	84 d2                	test   %dl,%dl
    36bc:	75 f2                	jne    36b0 <strcpy+0x10>
    ;
  return os;
}
    36be:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    36c1:	89 c8                	mov    %ecx,%eax
    36c3:	c9                   	leave
    36c4:	c3                   	ret
    36c5:	8d 76 00             	lea    0x0(%esi),%esi
    36c8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    36cf:	00 

000036d0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    36d0:	55                   	push   %ebp
    36d1:	89 e5                	mov    %esp,%ebp
    36d3:	53                   	push   %ebx
    36d4:	8b 55 08             	mov    0x8(%ebp),%edx
    36d7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    36da:	0f b6 02             	movzbl (%edx),%eax
    36dd:	84 c0                	test   %al,%al
    36df:	75 2d                	jne    370e <strcmp+0x3e>
    36e1:	eb 4a                	jmp    372d <strcmp+0x5d>
    36e3:	eb 1b                	jmp    3700 <strcmp+0x30>
    36e5:	8d 76 00             	lea    0x0(%esi),%esi
    36e8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    36ef:	00 
    36f0:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    36f7:	00 
    36f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    36ff:	00 
    3700:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
    3704:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    3707:	84 c0                	test   %al,%al
    3709:	74 15                	je     3720 <strcmp+0x50>
    370b:	83 c1 01             	add    $0x1,%ecx
    370e:	0f b6 19             	movzbl (%ecx),%ebx
    3711:	38 c3                	cmp    %al,%bl
    3713:	74 eb                	je     3700 <strcmp+0x30>
  return (uchar)*p - (uchar)*q;
    3715:	29 d8                	sub    %ebx,%eax
}
    3717:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    371a:	c9                   	leave
    371b:	c3                   	ret
    371c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  return (uchar)*p - (uchar)*q;
    3720:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
    3724:	31 c0                	xor    %eax,%eax
    3726:	29 d8                	sub    %ebx,%eax
}
    3728:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    372b:	c9                   	leave
    372c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
    372d:	0f b6 19             	movzbl (%ecx),%ebx
    3730:	31 c0                	xor    %eax,%eax
    3732:	eb e1                	jmp    3715 <strcmp+0x45>
    3734:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3738:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    373f:	00 

00003740 <strlen>:

uint
strlen(const char *s)
{
    3740:	55                   	push   %ebp
    3741:	89 e5                	mov    %esp,%ebp
    3743:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    3746:	80 3a 00             	cmpb   $0x0,(%edx)
    3749:	74 15                	je     3760 <strlen+0x20>
    374b:	31 c0                	xor    %eax,%eax
    374d:	8d 76 00             	lea    0x0(%esi),%esi
    3750:	83 c0 01             	add    $0x1,%eax
    3753:	89 c1                	mov    %eax,%ecx
    3755:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    3759:	75 f5                	jne    3750 <strlen+0x10>
    ;
  return n;
}
    375b:	89 c8                	mov    %ecx,%eax
    375d:	5d                   	pop    %ebp
    375e:	c3                   	ret
    375f:	90                   	nop
  for(n = 0; s[n]; n++)
    3760:	31 c9                	xor    %ecx,%ecx
}
    3762:	5d                   	pop    %ebp
    3763:	89 c8                	mov    %ecx,%eax
    3765:	c3                   	ret
    3766:	66 90                	xchg   %ax,%ax
    3768:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    376f:	00 

00003770 <memset>:

void*
memset(void *dst, int c, uint n)
{
    3770:	55                   	push   %ebp
    3771:	89 e5                	mov    %esp,%ebp
    3773:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    3774:	8b 4d 10             	mov    0x10(%ebp),%ecx
    3777:	8b 45 0c             	mov    0xc(%ebp),%eax
    377a:	8b 7d 08             	mov    0x8(%ebp),%edi
    377d:	fc                   	cld
    377e:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    3780:	8b 45 08             	mov    0x8(%ebp),%eax
    3783:	8b 7d fc             	mov    -0x4(%ebp),%edi
    3786:	c9                   	leave
    3787:	c3                   	ret
    3788:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    378f:	00 

00003790 <strchr>:

char*
strchr(const char *s, char c)
{
    3790:	55                   	push   %ebp
    3791:	89 e5                	mov    %esp,%ebp
    3793:	8b 45 08             	mov    0x8(%ebp),%eax
    3796:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    379a:	0f b6 10             	movzbl (%eax),%edx
    379d:	84 d2                	test   %dl,%dl
    379f:	75 1a                	jne    37bb <strchr+0x2b>
    37a1:	eb 25                	jmp    37c8 <strchr+0x38>
    37a3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    37a8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    37af:	00 
    37b0:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    37b4:	83 c0 01             	add    $0x1,%eax
    37b7:	84 d2                	test   %dl,%dl
    37b9:	74 0d                	je     37c8 <strchr+0x38>
    if(*s == c)
    37bb:	38 d1                	cmp    %dl,%cl
    37bd:	75 f1                	jne    37b0 <strchr+0x20>
      return (char*)s;
  return 0;
}
    37bf:	5d                   	pop    %ebp
    37c0:	c3                   	ret
    37c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    37c8:	31 c0                	xor    %eax,%eax
}
    37ca:	5d                   	pop    %ebp
    37cb:	c3                   	ret
    37cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000037d0 <gets>:

char*
gets(char *buf, int max)
{
    37d0:	55                   	push   %ebp
    37d1:	89 e5                	mov    %esp,%ebp
    37d3:	57                   	push   %edi
    37d4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    37d5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
    37d8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
    37d9:	31 db                	xor    %ebx,%ebx
{
    37db:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
    37de:	eb 27                	jmp    3807 <gets+0x37>
    cc = read(0, &c, 1);
    37e0:	83 ec 04             	sub    $0x4,%esp
    37e3:	6a 01                	push   $0x1
    37e5:	57                   	push   %edi
    37e6:	6a 00                	push   $0x0
    37e8:	e8 3e 01 00 00       	call   392b <read>
    if(cc < 1)
    37ed:	83 c4 10             	add    $0x10,%esp
    37f0:	85 c0                	test   %eax,%eax
    37f2:	7e 1d                	jle    3811 <gets+0x41>
      break;
    buf[i++] = c;
    37f4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    37f8:	8b 55 08             	mov    0x8(%ebp),%edx
    37fb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    37ff:	3c 0a                	cmp    $0xa,%al
    3801:	74 1d                	je     3820 <gets+0x50>
    3803:	3c 0d                	cmp    $0xd,%al
    3805:	74 19                	je     3820 <gets+0x50>
  for(i=0; i+1 < max; ){
    3807:	89 de                	mov    %ebx,%esi
    3809:	83 c3 01             	add    $0x1,%ebx
    380c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    380f:	7c cf                	jl     37e0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
    3811:	8b 45 08             	mov    0x8(%ebp),%eax
    3814:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    3818:	8d 65 f4             	lea    -0xc(%ebp),%esp
    381b:	5b                   	pop    %ebx
    381c:	5e                   	pop    %esi
    381d:	5f                   	pop    %edi
    381e:	5d                   	pop    %ebp
    381f:	c3                   	ret
  buf[i] = '\0';
    3820:	8b 45 08             	mov    0x8(%ebp),%eax
    buf[i++] = c;
    3823:	89 de                	mov    %ebx,%esi
  buf[i] = '\0';
    3825:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
    3829:	8d 65 f4             	lea    -0xc(%ebp),%esp
    382c:	5b                   	pop    %ebx
    382d:	5e                   	pop    %esi
    382e:	5f                   	pop    %edi
    382f:	5d                   	pop    %ebp
    3830:	c3                   	ret
    3831:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3838:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    383f:	00 

00003840 <stat>:

int
stat(const char *n, struct stat *st)
{
    3840:	55                   	push   %ebp
    3841:	89 e5                	mov    %esp,%ebp
    3843:	56                   	push   %esi
    3844:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    3845:	83 ec 08             	sub    $0x8,%esp
    3848:	6a 00                	push   $0x0
    384a:	ff 75 08             	push   0x8(%ebp)
    384d:	e8 01 01 00 00       	call   3953 <open>
  if(fd < 0)
    3852:	83 c4 10             	add    $0x10,%esp
    3855:	85 c0                	test   %eax,%eax
    3857:	78 27                	js     3880 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    3859:	83 ec 08             	sub    $0x8,%esp
    385c:	ff 75 0c             	push   0xc(%ebp)
    385f:	89 c3                	mov    %eax,%ebx
    3861:	50                   	push   %eax
    3862:	e8 04 01 00 00       	call   396b <fstat>
  close(fd);
    3867:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    386a:	89 c6                	mov    %eax,%esi
  close(fd);
    386c:	e8 ca 00 00 00       	call   393b <close>
  return r;
    3871:	83 c4 10             	add    $0x10,%esp
}
    3874:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3877:	89 f0                	mov    %esi,%eax
    3879:	5b                   	pop    %ebx
    387a:	5e                   	pop    %esi
    387b:	5d                   	pop    %ebp
    387c:	c3                   	ret
    387d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    3880:	be ff ff ff ff       	mov    $0xffffffff,%esi
    3885:	eb ed                	jmp    3874 <stat+0x34>
    3887:	90                   	nop
    3888:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    388f:	00 

00003890 <atoi>:

int
atoi(const char *s)
{
    3890:	55                   	push   %ebp
    3891:	89 e5                	mov    %esp,%ebp
    3893:	53                   	push   %ebx
    3894:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    3897:	0f be 02             	movsbl (%edx),%eax
    389a:	8d 48 d0             	lea    -0x30(%eax),%ecx
    389d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    38a0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    38a5:	77 2e                	ja     38d5 <atoi+0x45>
    38a7:	eb 17                	jmp    38c0 <atoi+0x30>
    38a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    38b0:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    38b7:	00 
    38b8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    38bf:	00 
    n = n*10 + *s++ - '0';
    38c0:	83 c2 01             	add    $0x1,%edx
    38c3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    38c6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    38ca:	0f be 02             	movsbl (%edx),%eax
    38cd:	8d 58 d0             	lea    -0x30(%eax),%ebx
    38d0:	80 fb 09             	cmp    $0x9,%bl
    38d3:	76 eb                	jbe    38c0 <atoi+0x30>
  return n;
}
    38d5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    38d8:	89 c8                	mov    %ecx,%eax
    38da:	c9                   	leave
    38db:	c3                   	ret
    38dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000038e0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    38e0:	55                   	push   %ebp
    38e1:	89 e5                	mov    %esp,%ebp
    38e3:	57                   	push   %edi
    38e4:	8b 45 10             	mov    0x10(%ebp),%eax
    38e7:	8b 55 08             	mov    0x8(%ebp),%edx
    38ea:	56                   	push   %esi
    38eb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    38ee:	85 c0                	test   %eax,%eax
    38f0:	7e 13                	jle    3905 <memmove+0x25>
    38f2:	01 d0                	add    %edx,%eax
  dst = vdst;
    38f4:	89 d7                	mov    %edx,%edi
    38f6:	66 90                	xchg   %ax,%ax
    38f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    38ff:	00 
    *dst++ = *src++;
    3900:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    3901:	39 f8                	cmp    %edi,%eax
    3903:	75 fb                	jne    3900 <memmove+0x20>
  return vdst;
}
    3905:	5e                   	pop    %esi
    3906:	89 d0                	mov    %edx,%eax
    3908:	5f                   	pop    %edi
    3909:	5d                   	pop    %ebp
    390a:	c3                   	ret

0000390b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    390b:	b8 01 00 00 00       	mov    $0x1,%eax
    3910:	cd 40                	int    $0x40
    3912:	c3                   	ret

00003913 <exit>:
SYSCALL(exit)
    3913:	b8 02 00 00 00       	mov    $0x2,%eax
    3918:	cd 40                	int    $0x40
    391a:	c3                   	ret

0000391b <wait>:
SYSCALL(wait)
    391b:	b8 03 00 00 00       	mov    $0x3,%eax
    3920:	cd 40                	int    $0x40
    3922:	c3                   	ret

00003923 <pipe>:
SYSCALL(pipe)
    3923:	b8 04 00 00 00       	mov    $0x4,%eax
    3928:	cd 40                	int    $0x40
    392a:	c3                   	ret

0000392b <read>:
SYSCALL(read)
    392b:	b8 05 00 00 00       	mov    $0x5,%eax
    3930:	cd 40                	int    $0x40
    3932:	c3                   	ret

00003933 <write>:
SYSCALL(write)
    3933:	b8 10 00 00 00       	mov    $0x10,%eax
    3938:	cd 40                	int    $0x40
    393a:	c3                   	ret

0000393b <close>:
SYSCALL(close)
    393b:	b8 15 00 00 00       	mov    $0x15,%eax
    3940:	cd 40                	int    $0x40
    3942:	c3                   	ret

00003943 <kill>:
SYSCALL(kill)
    3943:	b8 06 00 00 00       	mov    $0x6,%eax
    3948:	cd 40                	int    $0x40
    394a:	c3                   	ret

0000394b <exec>:
SYSCALL(exec)
    394b:	b8 07 00 00 00       	mov    $0x7,%eax
    3950:	cd 40                	int    $0x40
    3952:	c3                   	ret

00003953 <open>:
SYSCALL(open)
    3953:	b8 0f 00 00 00       	mov    $0xf,%eax
    3958:	cd 40                	int    $0x40
    395a:	c3                   	ret

0000395b <mknod>:
SYSCALL(mknod)
    395b:	b8 11 00 00 00       	mov    $0x11,%eax
    3960:	cd 40                	int    $0x40
    3962:	c3                   	ret

00003963 <unlink>:
SYSCALL(unlink)
    3963:	b8 12 00 00 00       	mov    $0x12,%eax
    3968:	cd 40                	int    $0x40
    396a:	c3                   	ret

0000396b <fstat>:
SYSCALL(fstat)
    396b:	b8 08 00 00 00       	mov    $0x8,%eax
    3970:	cd 40                	int    $0x40
    3972:	c3                   	ret

00003973 <link>:
SYSCALL(link)
    3973:	b8 13 00 00 00       	mov    $0x13,%eax
    3978:	cd 40                	int    $0x40
    397a:	c3                   	ret

0000397b <mkdir>:
SYSCALL(mkdir)
    397b:	b8 14 00 00 00       	mov    $0x14,%eax
    3980:	cd 40                	int    $0x40
    3982:	c3                   	ret

00003983 <chdir>:
SYSCALL(chdir)
    3983:	b8 09 00 00 00       	mov    $0x9,%eax
    3988:	cd 40                	int    $0x40
    398a:	c3                   	ret

0000398b <dup>:
SYSCALL(dup)
    398b:	b8 0a 00 00 00       	mov    $0xa,%eax
    3990:	cd 40                	int    $0x40
    3992:	c3                   	ret

00003993 <getpid>:
SYSCALL(getpid)
    3993:	b8 0b 00 00 00       	mov    $0xb,%eax
    3998:	cd 40                	int    $0x40
    399a:	c3                   	ret

0000399b <getreadcount>:
SYSCALL(getreadcount)
    399b:	b8 16 00 00 00       	mov    $0x16,%eax
    39a0:	cd 40                	int    $0x40
    39a2:	c3                   	ret

000039a3 <sbrk>:
SYSCALL(sbrk)
    39a3:	b8 0c 00 00 00       	mov    $0xc,%eax
    39a8:	cd 40                	int    $0x40
    39aa:	c3                   	ret

000039ab <sleep>:
SYSCALL(sleep)
    39ab:	b8 0d 00 00 00       	mov    $0xd,%eax
    39b0:	cd 40                	int    $0x40
    39b2:	c3                   	ret

000039b3 <uptime>:
SYSCALL(uptime)
    39b3:	b8 0e 00 00 00       	mov    $0xe,%eax
    39b8:	cd 40                	int    $0x40
    39ba:	c3                   	ret
    39bb:	66 90                	xchg   %ax,%ax
    39bd:	66 90                	xchg   %ax,%ax
    39bf:	90                   	nop

000039c0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    39c0:	55                   	push   %ebp
    39c1:	89 e5                	mov    %esp,%ebp
    39c3:	57                   	push   %edi
    39c4:	56                   	push   %esi
    39c5:	53                   	push   %ebx
    39c6:	89 cb                	mov    %ecx,%ebx
    39c8:	83 ec 3c             	sub    $0x3c,%esp
    39cb:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    39ce:	85 d2                	test   %edx,%edx
    39d0:	0f 89 9a 00 00 00    	jns    3a70 <printint+0xb0>
    39d6:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    39da:	0f 84 90 00 00 00    	je     3a70 <printint+0xb0>
    neg = 1;
    x = -xx;
    39e0:	f7 da                	neg    %edx
    neg = 1;
    39e2:	b8 01 00 00 00       	mov    $0x1,%eax
    39e7:	89 45 c0             	mov    %eax,-0x40(%ebp)
    39ea:	89 d1                	mov    %edx,%ecx
  } else {
    x = xx;
  }

  i = 0;
    39ec:	31 f6                	xor    %esi,%esi
    39ee:	66 90                	xchg   %ax,%ax
    39f0:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    39f7:	00 
    39f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    39ff:	00 
  do{
    buf[i++] = digits[x % base];
    3a00:	89 c8                	mov    %ecx,%eax
    3a02:	31 d2                	xor    %edx,%edx
    3a04:	89 f7                	mov    %esi,%edi
    3a06:	f7 f3                	div    %ebx
    3a08:	8d 76 01             	lea    0x1(%esi),%esi
  }while((x /= base) != 0);
    3a0b:	39 d9                	cmp    %ebx,%ecx
    buf[i++] = digits[x % base];
    3a0d:	0f b6 92 e0 55 00 00 	movzbl 0x55e0(%edx),%edx
  }while((x /= base) != 0);
    3a14:	89 c1                	mov    %eax,%ecx
    buf[i++] = digits[x % base];
    3a16:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
    3a1a:	73 e4                	jae    3a00 <printint+0x40>
  if(neg)
    3a1c:	8b 45 c0             	mov    -0x40(%ebp),%eax
    3a1f:	85 c0                	test   %eax,%eax
    3a21:	74 07                	je     3a2a <printint+0x6a>
    buf[i++] = '-';
    3a23:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
    3a28:	89 f7                	mov    %esi,%edi

  while(--i >= 0)
    3a2a:	8d 74 3d d8          	lea    -0x28(%ebp,%edi,1),%esi
    3a2e:	8b 7d c4             	mov    -0x3c(%ebp),%edi
    3a31:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    3a34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3a38:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3a3f:	00 
    putc(fd, buf[i]);
    3a40:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
    3a43:	83 ec 04             	sub    $0x4,%esp
  while(--i >= 0)
    3a46:	83 ee 01             	sub    $0x1,%esi
    3a49:	88 45 d7             	mov    %al,-0x29(%ebp)
  write(fd, &c, 1);
    3a4c:	8d 45 d7             	lea    -0x29(%ebp),%eax
    3a4f:	6a 01                	push   $0x1
    3a51:	50                   	push   %eax
    3a52:	57                   	push   %edi
    3a53:	e8 db fe ff ff       	call   3933 <write>
  while(--i >= 0)
    3a58:	83 c4 10             	add    $0x10,%esp
    3a5b:	39 f3                	cmp    %esi,%ebx
    3a5d:	75 e1                	jne    3a40 <printint+0x80>
}
    3a5f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3a62:	5b                   	pop    %ebx
    3a63:	5e                   	pop    %esi
    3a64:	5f                   	pop    %edi
    3a65:	5d                   	pop    %ebp
    3a66:	c3                   	ret
    3a67:	90                   	nop
    3a68:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3a6f:	00 
  neg = 0;
    3a70:	31 c0                	xor    %eax,%eax
    3a72:	e9 70 ff ff ff       	jmp    39e7 <printint+0x27>
    3a77:	90                   	nop
    3a78:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3a7f:	00 

00003a80 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    3a80:	55                   	push   %ebp
    3a81:	89 e5                	mov    %esp,%ebp
    3a83:	57                   	push   %edi
    3a84:	56                   	push   %esi
    3a85:	53                   	push   %ebx
    3a86:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    3a89:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
    3a8c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
    3a8f:	0f b6 13             	movzbl (%ebx),%edx
    3a92:	83 c3 01             	add    $0x1,%ebx
    3a95:	84 d2                	test   %dl,%dl
    3a97:	0f 84 a0 00 00 00    	je     3b3d <printf+0xbd>
    3a9d:	8d 45 10             	lea    0x10(%ebp),%eax
    3aa0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    3aa3:	8b 7d d4             	mov    -0x2c(%ebp),%edi
    3aa6:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
    3aa9:	eb 28                	jmp    3ad3 <printf+0x53>
    3aab:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
    3ab0:	83 ec 04             	sub    $0x4,%esp
    3ab3:	8d 45 e7             	lea    -0x19(%ebp),%eax
    3ab6:	88 55 e7             	mov    %dl,-0x19(%ebp)
  for(i = 0; fmt[i]; i++){
    3ab9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
    3abc:	6a 01                	push   $0x1
    3abe:	50                   	push   %eax
    3abf:	56                   	push   %esi
    3ac0:	e8 6e fe ff ff       	call   3933 <write>
  for(i = 0; fmt[i]; i++){
    3ac5:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    3ac9:	83 c4 10             	add    $0x10,%esp
    3acc:	84 d2                	test   %dl,%dl
    3ace:	74 6d                	je     3b3d <printf+0xbd>
    c = fmt[i] & 0xff;
    3ad0:	0f b6 c2             	movzbl %dl,%eax
      if(c == '%'){
    3ad3:	83 f8 25             	cmp    $0x25,%eax
    3ad6:	75 d8                	jne    3ab0 <printf+0x30>
  for(i = 0; fmt[i]; i++){
    3ad8:	0f b6 13             	movzbl (%ebx),%edx
    3adb:	84 d2                	test   %dl,%dl
    3add:	74 5e                	je     3b3d <printf+0xbd>
    c = fmt[i] & 0xff;
    3adf:	0f b6 c2             	movzbl %dl,%eax
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
    3ae2:	80 fa 25             	cmp    $0x25,%dl
    3ae5:	0f 84 25 01 00 00    	je     3c10 <printf+0x190>
    3aeb:	83 e8 63             	sub    $0x63,%eax
    3aee:	83 f8 15             	cmp    $0x15,%eax
    3af1:	77 0d                	ja     3b00 <printf+0x80>
    3af3:	ff 24 85 88 55 00 00 	jmp    *0x5588(,%eax,4)
    3afa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    3b00:	83 ec 04             	sub    $0x4,%esp
    3b03:	8d 4d e7             	lea    -0x19(%ebp),%ecx
    3b06:	88 55 d0             	mov    %dl,-0x30(%ebp)
        ap++;
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
    3b09:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
  write(fd, &c, 1);
    3b0d:	6a 01                	push   $0x1
    3b0f:	51                   	push   %ecx
    3b10:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    3b13:	56                   	push   %esi
    3b14:	e8 1a fe ff ff       	call   3933 <write>
        putc(fd, c);
    3b19:	0f b6 55 d0          	movzbl -0x30(%ebp),%edx
  write(fd, &c, 1);
    3b1d:	83 c4 0c             	add    $0xc,%esp
    3b20:	88 55 e7             	mov    %dl,-0x19(%ebp)
    3b23:	6a 01                	push   $0x1
    3b25:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
    3b28:	51                   	push   %ecx
  for(i = 0; fmt[i]; i++){
    3b29:	83 c3 02             	add    $0x2,%ebx
  write(fd, &c, 1);
    3b2c:	56                   	push   %esi
    3b2d:	e8 01 fe ff ff       	call   3933 <write>
  for(i = 0; fmt[i]; i++){
    3b32:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    3b36:	83 c4 10             	add    $0x10,%esp
    3b39:	84 d2                	test   %dl,%dl
    3b3b:	75 93                	jne    3ad0 <printf+0x50>
      }
      state = 0;
    }
  }
}
    3b3d:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3b40:	5b                   	pop    %ebx
    3b41:	5e                   	pop    %esi
    3b42:	5f                   	pop    %edi
    3b43:	5d                   	pop    %ebp
    3b44:	c3                   	ret
    3b45:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    3b48:	83 ec 0c             	sub    $0xc,%esp
    3b4b:	8b 17                	mov    (%edi),%edx
    3b4d:	b9 10 00 00 00       	mov    $0x10,%ecx
    3b52:	89 f0                	mov    %esi,%eax
    3b54:	6a 00                	push   $0x0
    3b56:	e8 65 fe ff ff       	call   39c0 <printint>
  for(i = 0; fmt[i]; i++){
    3b5b:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
    3b5f:	83 c3 02             	add    $0x2,%ebx
    3b62:	83 c4 10             	add    $0x10,%esp
    3b65:	84 d2                	test   %dl,%dl
    3b67:	74 d4                	je     3b3d <printf+0xbd>
        ap++;
    3b69:	83 c7 04             	add    $0x4,%edi
    3b6c:	e9 5f ff ff ff       	jmp    3ad0 <printf+0x50>
    3b71:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    3b78:	8b 07                	mov    (%edi),%eax
        ap++;
    3b7a:	83 c7 04             	add    $0x4,%edi
        if(s == 0)
    3b7d:	85 c0                	test   %eax,%eax
    3b7f:	0f 84 9b 00 00 00    	je     3c20 <printf+0x1a0>
        while(*s != 0){
    3b85:	0f b6 10             	movzbl (%eax),%edx
    3b88:	84 d2                	test   %dl,%dl
    3b8a:	0f 84 a2 00 00 00    	je     3c32 <printf+0x1b2>
    3b90:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    3b93:	89 c7                	mov    %eax,%edi
    3b95:	89 d0                	mov    %edx,%eax
    3b97:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    3b9a:	89 fb                	mov    %edi,%ebx
    3b9c:	8d 7d e7             	lea    -0x19(%ebp),%edi
    3b9f:	90                   	nop
  write(fd, &c, 1);
    3ba0:	83 ec 04             	sub    $0x4,%esp
    3ba3:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
    3ba6:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
    3ba9:	6a 01                	push   $0x1
    3bab:	57                   	push   %edi
    3bac:	56                   	push   %esi
    3bad:	e8 81 fd ff ff       	call   3933 <write>
        while(*s != 0){
    3bb2:	0f b6 03             	movzbl (%ebx),%eax
    3bb5:	83 c4 10             	add    $0x10,%esp
    3bb8:	84 c0                	test   %al,%al
    3bba:	75 e4                	jne    3ba0 <printf+0x120>
    3bbc:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  for(i = 0; fmt[i]; i++){
    3bbf:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
    3bc3:	83 c3 02             	add    $0x2,%ebx
    3bc6:	84 d2                	test   %dl,%dl
    3bc8:	0f 85 d5 fe ff ff    	jne    3aa3 <printf+0x23>
    3bce:	e9 6a ff ff ff       	jmp    3b3d <printf+0xbd>
    3bd3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    3bd8:	83 ec 0c             	sub    $0xc,%esp
    3bdb:	8b 17                	mov    (%edi),%edx
    3bdd:	b9 0a 00 00 00       	mov    $0xa,%ecx
    3be2:	89 f0                	mov    %esi,%eax
    3be4:	6a 01                	push   $0x1
    3be6:	e8 d5 fd ff ff       	call   39c0 <printint>
  for(i = 0; fmt[i]; i++){
    3beb:	e9 6b ff ff ff       	jmp    3b5b <printf+0xdb>
        putc(fd, *ap);
    3bf0:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
    3bf2:	83 ec 04             	sub    $0x4,%esp
    3bf5:	8d 4d e7             	lea    -0x19(%ebp),%ecx
        putc(fd, *ap);
    3bf8:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    3bfb:	6a 01                	push   $0x1
    3bfd:	51                   	push   %ecx
    3bfe:	56                   	push   %esi
    3bff:	e8 2f fd ff ff       	call   3933 <write>
    3c04:	e9 52 ff ff ff       	jmp    3b5b <printf+0xdb>
    3c09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3c10:	83 ec 04             	sub    $0x4,%esp
    3c13:	88 55 e7             	mov    %dl,-0x19(%ebp)
    3c16:	8d 4d e7             	lea    -0x19(%ebp),%ecx
    3c19:	6a 01                	push   $0x1
    3c1b:	e9 08 ff ff ff       	jmp    3b28 <printf+0xa8>
          s = "(null)";
    3c20:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    3c23:	b8 28 00 00 00       	mov    $0x28,%eax
    3c28:	bf 09 4e 00 00       	mov    $0x4e09,%edi
    3c2d:	e9 65 ff ff ff       	jmp    3b97 <printf+0x117>
  for(i = 0; fmt[i]; i++){
    3c32:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
    3c36:	83 c3 02             	add    $0x2,%ebx
    3c39:	84 d2                	test   %dl,%dl
    3c3b:	0f 85 8f fe ff ff    	jne    3ad0 <printf+0x50>
    3c41:	e9 f7 fe ff ff       	jmp    3b3d <printf+0xbd>
    3c46:	66 90                	xchg   %ax,%ax
    3c48:	66 90                	xchg   %ax,%ax
    3c4a:	66 90                	xchg   %ax,%ax
    3c4c:	66 90                	xchg   %ax,%ax
    3c4e:	66 90                	xchg   %ax,%ax
    3c50:	66 90                	xchg   %ax,%ax
    3c52:	66 90                	xchg   %ax,%ax
    3c54:	66 90                	xchg   %ax,%ax
    3c56:	66 90                	xchg   %ax,%ax
    3c58:	66 90                	xchg   %ax,%ax
    3c5a:	66 90                	xchg   %ax,%ax
    3c5c:	66 90                	xchg   %ax,%ax
    3c5e:	66 90                	xchg   %ax,%ax

00003c60 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    3c60:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3c61:	a1 a0 a6 00 00       	mov    0xa6a0,%eax
{
    3c66:	89 e5                	mov    %esp,%ebp
    3c68:	57                   	push   %edi
    3c69:	56                   	push   %esi
    3c6a:	53                   	push   %ebx
    3c6b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    3c6e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3c71:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3c78:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3c7f:	00 
    3c80:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3c82:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3c84:	39 ca                	cmp    %ecx,%edx
    3c86:	73 30                	jae    3cb8 <free+0x58>
    3c88:	39 c1                	cmp    %eax,%ecx
    3c8a:	72 04                	jb     3c90 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3c8c:	39 c2                	cmp    %eax,%edx
    3c8e:	72 f0                	jb     3c80 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
    3c90:	8b 73 fc             	mov    -0x4(%ebx),%esi
    3c93:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    3c96:	39 f8                	cmp    %edi,%eax
    3c98:	74 36                	je     3cd0 <free+0x70>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
    3c9a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    3c9d:	8b 42 04             	mov    0x4(%edx),%eax
    3ca0:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    3ca3:	39 f1                	cmp    %esi,%ecx
    3ca5:	74 40                	je     3ce7 <free+0x87>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
    3ca7:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
    3ca9:	5b                   	pop    %ebx
  freep = p;
    3caa:	89 15 a0 a6 00 00    	mov    %edx,0xa6a0
}
    3cb0:	5e                   	pop    %esi
    3cb1:	5f                   	pop    %edi
    3cb2:	5d                   	pop    %ebp
    3cb3:	c3                   	ret
    3cb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3cb8:	39 c2                	cmp    %eax,%edx
    3cba:	72 c4                	jb     3c80 <free+0x20>
    3cbc:	39 c1                	cmp    %eax,%ecx
    3cbe:	73 c0                	jae    3c80 <free+0x20>
  if(bp + bp->s.size == p->s.ptr){
    3cc0:	8b 73 fc             	mov    -0x4(%ebx),%esi
    3cc3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    3cc6:	39 f8                	cmp    %edi,%eax
    3cc8:	75 d0                	jne    3c9a <free+0x3a>
    3cca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
    3cd0:	03 70 04             	add    0x4(%eax),%esi
    3cd3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    3cd6:	8b 02                	mov    (%edx),%eax
    3cd8:	8b 00                	mov    (%eax),%eax
    3cda:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
    3cdd:	8b 42 04             	mov    0x4(%edx),%eax
    3ce0:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    3ce3:	39 f1                	cmp    %esi,%ecx
    3ce5:	75 c0                	jne    3ca7 <free+0x47>
    p->s.size += bp->s.size;
    3ce7:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
    3cea:	89 15 a0 a6 00 00    	mov    %edx,0xa6a0
    p->s.size += bp->s.size;
    3cf0:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
    3cf3:	8b 4b f8             	mov    -0x8(%ebx),%ecx
    3cf6:	89 0a                	mov    %ecx,(%edx)
}
    3cf8:	5b                   	pop    %ebx
    3cf9:	5e                   	pop    %esi
    3cfa:	5f                   	pop    %edi
    3cfb:	5d                   	pop    %ebp
    3cfc:	c3                   	ret
    3cfd:	8d 76 00             	lea    0x0(%esi),%esi

00003d00 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    3d00:	55                   	push   %ebp
    3d01:	89 e5                	mov    %esp,%ebp
    3d03:	57                   	push   %edi
    3d04:	56                   	push   %esi
    3d05:	53                   	push   %ebx
    3d06:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3d09:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    3d0c:	8b 15 a0 a6 00 00    	mov    0xa6a0,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3d12:	8d 78 07             	lea    0x7(%eax),%edi
    3d15:	c1 ef 03             	shr    $0x3,%edi
    3d18:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    3d1b:	85 d2                	test   %edx,%edx
    3d1d:	0f 84 8d 00 00 00    	je     3db0 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3d23:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    3d25:	8b 48 04             	mov    0x4(%eax),%ecx
    3d28:	39 f9                	cmp    %edi,%ecx
    3d2a:	73 64                	jae    3d90 <malloc+0x90>
  if(nu < 4096)
    3d2c:	bb 00 10 00 00       	mov    $0x1000,%ebx
    3d31:	39 df                	cmp    %ebx,%edi
    3d33:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    3d36:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    3d3d:	eb 0a                	jmp    3d49 <malloc+0x49>
    3d3f:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3d40:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    3d42:	8b 48 04             	mov    0x4(%eax),%ecx
    3d45:	39 f9                	cmp    %edi,%ecx
    3d47:	73 47                	jae    3d90 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    3d49:	89 c2                	mov    %eax,%edx
    3d4b:	39 05 a0 a6 00 00    	cmp    %eax,0xa6a0
    3d51:	75 ed                	jne    3d40 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
    3d53:	83 ec 0c             	sub    $0xc,%esp
    3d56:	56                   	push   %esi
    3d57:	e8 47 fc ff ff       	call   39a3 <sbrk>
  if(p == (char*)-1)
    3d5c:	83 c4 10             	add    $0x10,%esp
    3d5f:	83 f8 ff             	cmp    $0xffffffff,%eax
    3d62:	74 1c                	je     3d80 <malloc+0x80>
  hp->s.size = nu;
    3d64:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    3d67:	83 ec 0c             	sub    $0xc,%esp
    3d6a:	83 c0 08             	add    $0x8,%eax
    3d6d:	50                   	push   %eax
    3d6e:	e8 ed fe ff ff       	call   3c60 <free>
  return freep;
    3d73:	8b 15 a0 a6 00 00    	mov    0xa6a0,%edx
      if((p = morecore(nunits)) == 0)
    3d79:	83 c4 10             	add    $0x10,%esp
    3d7c:	85 d2                	test   %edx,%edx
    3d7e:	75 c0                	jne    3d40 <malloc+0x40>
        return 0;
  }
}
    3d80:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    3d83:	31 c0                	xor    %eax,%eax
}
    3d85:	5b                   	pop    %ebx
    3d86:	5e                   	pop    %esi
    3d87:	5f                   	pop    %edi
    3d88:	5d                   	pop    %ebp
    3d89:	c3                   	ret
    3d8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    3d90:	39 cf                	cmp    %ecx,%edi
    3d92:	74 4c                	je     3de0 <malloc+0xe0>
        p->s.size -= nunits;
    3d94:	29 f9                	sub    %edi,%ecx
    3d96:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    3d99:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    3d9c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    3d9f:	89 15 a0 a6 00 00    	mov    %edx,0xa6a0
}
    3da5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    3da8:	83 c0 08             	add    $0x8,%eax
}
    3dab:	5b                   	pop    %ebx
    3dac:	5e                   	pop    %esi
    3dad:	5f                   	pop    %edi
    3dae:	5d                   	pop    %ebp
    3daf:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
    3db0:	c7 05 a0 a6 00 00 a4 	movl   $0xa6a4,0xa6a0
    3db7:	a6 00 00 
    base.s.size = 0;
    3dba:	b8 a4 a6 00 00       	mov    $0xa6a4,%eax
    base.s.ptr = freep = prevp = &base;
    3dbf:	c7 05 a4 a6 00 00 a4 	movl   $0xa6a4,0xa6a4
    3dc6:	a6 00 00 
    base.s.size = 0;
    3dc9:	c7 05 a8 a6 00 00 00 	movl   $0x0,0xa6a8
    3dd0:	00 00 00 
    if(p->s.size >= nunits){
    3dd3:	e9 54 ff ff ff       	jmp    3d2c <malloc+0x2c>
    3dd8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    3ddf:	00 
        prevp->s.ptr = p->s.ptr;
    3de0:	8b 08                	mov    (%eax),%ecx
    3de2:	89 0a                	mov    %ecx,(%edx)
    3de4:	eb b9                	jmp    3d9f <malloc+0x9f>
