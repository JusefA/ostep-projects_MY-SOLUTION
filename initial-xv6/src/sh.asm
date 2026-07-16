
_sh:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return 0;
}

int
main(void)
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	push   -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	51                   	push   %ecx
       e:	83 ec 04             	sub    $0x4,%esp
  static char buf[100];
  int fd;

  // Ensure that three file descriptors are open.
  while((fd = open("console", O_RDWR)) >= 0){
      11:	eb 0e                	jmp    21 <main+0x21>
      13:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    if(fd >= 3){
      18:	83 f8 02             	cmp    $0x2,%eax
      1b:	0f 8f 96 00 00 00    	jg     b7 <main+0xb7>
  while((fd = open("console", O_RDWR)) >= 0){
      21:	83 ec 08             	sub    $0x8,%esp
      24:	6a 02                	push   $0x2
      26:	68 a9 13 00 00       	push   $0x13a9
      2b:	e8 43 0e 00 00       	call   e73 <open>
      30:	83 c4 10             	add    $0x10,%esp
      33:	85 c0                	test   %eax,%eax
      35:	79 e1                	jns    18 <main+0x18>
      37:	eb 2e                	jmp    67 <main+0x67>
      39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
  }

  // Read and run input commands.
  while(getcmd(buf, sizeof(buf)) >= 0){
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      40:	80 3d 42 1a 00 00 20 	cmpb   $0x20,0x1a42
      47:	0f 84 8d 00 00 00    	je     da <main+0xda>
      4d:	8d 76 00             	lea    0x0(%esi),%esi
int
fork1(void)
{
  int pid;

  pid = fork();
      50:	e8 d6 0d 00 00       	call   e2b <fork>
  if(pid == -1)
      55:	83 f8 ff             	cmp    $0xffffffff,%eax
      58:	0f 84 c1 00 00 00    	je     11f <main+0x11f>
    if(fork1() == 0)
      5e:	85 c0                	test   %eax,%eax
      60:	74 63                	je     c5 <main+0xc5>
    wait();
      62:	e8 d4 0d 00 00       	call   e3b <wait>
  printf(2, "$ ");
      67:	83 ec 08             	sub    $0x8,%esp
      6a:	68 08 13 00 00       	push   $0x1308
      6f:	6a 02                	push   $0x2
      71:	e8 2a 0f 00 00       	call   fa0 <printf>
  memset(buf, 0, nbuf);
      76:	83 c4 0c             	add    $0xc,%esp
      79:	6a 64                	push   $0x64
      7b:	6a 00                	push   $0x0
      7d:	68 40 1a 00 00       	push   $0x1a40
      82:	e8 09 0c 00 00       	call   c90 <memset>
  gets(buf, nbuf);
      87:	58                   	pop    %eax
      88:	5a                   	pop    %edx
      89:	6a 64                	push   $0x64
      8b:	68 40 1a 00 00       	push   $0x1a40
      90:	e8 5b 0c 00 00       	call   cf0 <gets>
  if(buf[0] == 0) // EOF
      95:	0f b6 05 40 1a 00 00 	movzbl 0x1a40,%eax
      9c:	83 c4 10             	add    $0x10,%esp
      9f:	84 c0                	test   %al,%al
      a1:	74 0f                	je     b2 <main+0xb2>
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      a3:	3c 63                	cmp    $0x63,%al
      a5:	75 a9                	jne    50 <main+0x50>
      a7:	80 3d 41 1a 00 00 64 	cmpb   $0x64,0x1a41
      ae:	75 a0                	jne    50 <main+0x50>
      b0:	eb 8e                	jmp    40 <main+0x40>
  exit();
      b2:	e8 7c 0d 00 00       	call   e33 <exit>
      close(fd);
      b7:	83 ec 0c             	sub    $0xc,%esp
      ba:	50                   	push   %eax
      bb:	e8 9b 0d 00 00       	call   e5b <close>
      break;
      c0:	83 c4 10             	add    $0x10,%esp
      c3:	eb a2                	jmp    67 <main+0x67>
      runcmd(parsecmd(buf));
      c5:	83 ec 0c             	sub    $0xc,%esp
      c8:	68 40 1a 00 00       	push   $0x1a40
      cd:	e8 7e 0a 00 00       	call   b50 <parsecmd>
      d2:	89 04 24             	mov    %eax,(%esp)
      d5:	e8 d6 00 00 00       	call   1b0 <runcmd>
      buf[strlen(buf)-1] = 0;  // chop \n
      da:	83 ec 0c             	sub    $0xc,%esp
      dd:	68 40 1a 00 00       	push   $0x1a40
      e2:	e8 79 0b 00 00       	call   c60 <strlen>
      e7:	c6 80 3f 1a 00 00 00 	movb   $0x0,0x1a3f(%eax)
      if(chdir(buf+3) < 0)
      ee:	c7 04 24 43 1a 00 00 	movl   $0x1a43,(%esp)
      f5:	e8 a9 0d 00 00       	call   ea3 <chdir>
      fa:	83 c4 10             	add    $0x10,%esp
      fd:	85 c0                	test   %eax,%eax
      ff:	0f 89 62 ff ff ff    	jns    67 <main+0x67>
        printf(2, "cannot cd %s\n", buf+3);
     105:	51                   	push   %ecx
     106:	68 43 1a 00 00       	push   $0x1a43
     10b:	68 b1 13 00 00       	push   $0x13b1
     110:	6a 02                	push   $0x2
     112:	e8 89 0e 00 00       	call   fa0 <printf>
     117:	83 c4 10             	add    $0x10,%esp
     11a:	e9 48 ff ff ff       	jmp    67 <main+0x67>
    panic("fork");
     11f:	83 ec 0c             	sub    $0xc,%esp
     122:	68 0b 13 00 00       	push   $0x130b
     127:	e8 44 00 00 00       	call   170 <panic>
     12c:	66 90                	xchg   %ax,%ax
     12e:	66 90                	xchg   %ax,%ax

00000130 <getcmd>:
{
     130:	55                   	push   %ebp
     131:	89 e5                	mov    %esp,%ebp
     133:	53                   	push   %ebx
     134:	83 ec 0c             	sub    $0xc,%esp
     137:	8b 5d 08             	mov    0x8(%ebp),%ebx
  printf(2, "$ ");
     13a:	68 08 13 00 00       	push   $0x1308
     13f:	6a 02                	push   $0x2
     141:	e8 5a 0e 00 00       	call   fa0 <printf>
  memset(buf, 0, nbuf);
     146:	83 c4 0c             	add    $0xc,%esp
     149:	ff 75 0c             	push   0xc(%ebp)
     14c:	6a 00                	push   $0x0
     14e:	53                   	push   %ebx
     14f:	e8 3c 0b 00 00       	call   c90 <memset>
  gets(buf, nbuf);
     154:	58                   	pop    %eax
     155:	5a                   	pop    %edx
     156:	ff 75 0c             	push   0xc(%ebp)
     159:	53                   	push   %ebx
     15a:	e8 91 0b 00 00       	call   cf0 <gets>
  if(buf[0] == 0) // EOF
     15f:	83 c4 10             	add    $0x10,%esp
     162:	80 3b 01             	cmpb   $0x1,(%ebx)
}
     165:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     168:	c9                   	leave
  if(buf[0] == 0) // EOF
     169:	19 c0                	sbb    %eax,%eax
}
     16b:	c3                   	ret
     16c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000170 <panic>:
{
     170:	55                   	push   %ebp
     171:	89 e5                	mov    %esp,%ebp
     173:	83 ec 0c             	sub    $0xc,%esp
  printf(2, "%s\n", s);
     176:	ff 75 08             	push   0x8(%ebp)
     179:	68 a5 13 00 00       	push   $0x13a5
     17e:	6a 02                	push   $0x2
     180:	e8 1b 0e 00 00       	call   fa0 <printf>
  exit();
     185:	e8 a9 0c 00 00       	call   e33 <exit>
     18a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000190 <fork1>:
{
     190:	55                   	push   %ebp
     191:	89 e5                	mov    %esp,%ebp
     193:	83 ec 08             	sub    $0x8,%esp
  pid = fork();
     196:	e8 90 0c 00 00       	call   e2b <fork>
  if(pid == -1)
     19b:	83 f8 ff             	cmp    $0xffffffff,%eax
     19e:	74 02                	je     1a2 <fork1+0x12>
  return pid;
}
     1a0:	c9                   	leave
     1a1:	c3                   	ret
    panic("fork");
     1a2:	83 ec 0c             	sub    $0xc,%esp
     1a5:	68 0b 13 00 00       	push   $0x130b
     1aa:	e8 c1 ff ff ff       	call   170 <panic>
     1af:	90                   	nop

000001b0 <runcmd>:
{
     1b0:	55                   	push   %ebp
     1b1:	89 e5                	mov    %esp,%ebp
     1b3:	53                   	push   %ebx
     1b4:	83 ec 14             	sub    $0x14,%esp
     1b7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(cmd == 0)
     1ba:	85 db                	test   %ebx,%ebx
     1bc:	74 3a                	je     1f8 <runcmd+0x48>
  switch(cmd->type){
     1be:	83 3b 05             	cmpl   $0x5,(%ebx)
     1c1:	0f 87 db 00 00 00    	ja     2a2 <runcmd+0xf2>
     1c7:	8b 03                	mov    (%ebx),%eax
     1c9:	ff 24 85 c8 13 00 00 	jmp    *0x13c8(,%eax,4)
    if(ecmd->argv[0] == 0)
     1d0:	8b 43 04             	mov    0x4(%ebx),%eax
     1d3:	85 c0                	test   %eax,%eax
     1d5:	74 21                	je     1f8 <runcmd+0x48>
    exec(ecmd->argv[0], ecmd->argv);
     1d7:	8d 53 04             	lea    0x4(%ebx),%edx
     1da:	51                   	push   %ecx
     1db:	51                   	push   %ecx
     1dc:	52                   	push   %edx
     1dd:	50                   	push   %eax
     1de:	e8 88 0c 00 00       	call   e6b <exec>
    printf(2, "exec %s failed\n", ecmd->argv[0]);
     1e3:	83 c4 0c             	add    $0xc,%esp
     1e6:	ff 73 04             	push   0x4(%ebx)
     1e9:	68 17 13 00 00       	push   $0x1317
     1ee:	6a 02                	push   $0x2
     1f0:	e8 ab 0d 00 00       	call   fa0 <printf>
    break;
     1f5:	83 c4 10             	add    $0x10,%esp
    exit();
     1f8:	e8 36 0c 00 00       	call   e33 <exit>
    if(fork1() == 0)
     1fd:	e8 8e ff ff ff       	call   190 <fork1>
     202:	85 c0                	test   %eax,%eax
     204:	75 f2                	jne    1f8 <runcmd+0x48>
     206:	e9 8c 00 00 00       	jmp    297 <runcmd+0xe7>
    if(pipe(p) < 0)
     20b:	83 ec 0c             	sub    $0xc,%esp
     20e:	8d 45 f0             	lea    -0x10(%ebp),%eax
     211:	50                   	push   %eax
     212:	e8 2c 0c 00 00       	call   e43 <pipe>
     217:	83 c4 10             	add    $0x10,%esp
     21a:	85 c0                	test   %eax,%eax
     21c:	0f 88 a2 00 00 00    	js     2c4 <runcmd+0x114>
    if(fork1() == 0){
     222:	e8 69 ff ff ff       	call   190 <fork1>
     227:	85 c0                	test   %eax,%eax
     229:	0f 84 d0 00 00 00    	je     2ff <runcmd+0x14f>
    if(fork1() == 0){
     22f:	e8 5c ff ff ff       	call   190 <fork1>
     234:	85 c0                	test   %eax,%eax
     236:	0f 84 95 00 00 00    	je     2d1 <runcmd+0x121>
    close(p[0]);
     23c:	83 ec 0c             	sub    $0xc,%esp
     23f:	ff 75 f0             	push   -0x10(%ebp)
     242:	e8 14 0c 00 00       	call   e5b <close>
    close(p[1]);
     247:	58                   	pop    %eax
     248:	ff 75 f4             	push   -0xc(%ebp)
     24b:	e8 0b 0c 00 00       	call   e5b <close>
    wait();
     250:	e8 e6 0b 00 00       	call   e3b <wait>
    wait();
     255:	e8 e1 0b 00 00       	call   e3b <wait>
    break;
     25a:	83 c4 10             	add    $0x10,%esp
     25d:	eb 99                	jmp    1f8 <runcmd+0x48>
    if(fork1() == 0)
     25f:	e8 2c ff ff ff       	call   190 <fork1>
     264:	85 c0                	test   %eax,%eax
     266:	74 2f                	je     297 <runcmd+0xe7>
    wait();
     268:	e8 ce 0b 00 00       	call   e3b <wait>
    runcmd(lcmd->right);
     26d:	83 ec 0c             	sub    $0xc,%esp
     270:	ff 73 08             	push   0x8(%ebx)
     273:	e8 38 ff ff ff       	call   1b0 <runcmd>
    close(rcmd->fd);
     278:	83 ec 0c             	sub    $0xc,%esp
     27b:	ff 73 14             	push   0x14(%ebx)
     27e:	e8 d8 0b 00 00       	call   e5b <close>
    if(open(rcmd->file, rcmd->mode) < 0){
     283:	58                   	pop    %eax
     284:	5a                   	pop    %edx
     285:	ff 73 10             	push   0x10(%ebx)
     288:	ff 73 08             	push   0x8(%ebx)
     28b:	e8 e3 0b 00 00       	call   e73 <open>
     290:	83 c4 10             	add    $0x10,%esp
     293:	85 c0                	test   %eax,%eax
     295:	78 18                	js     2af <runcmd+0xff>
      runcmd(bcmd->cmd);
     297:	83 ec 0c             	sub    $0xc,%esp
     29a:	ff 73 04             	push   0x4(%ebx)
     29d:	e8 0e ff ff ff       	call   1b0 <runcmd>
    panic("runcmd");
     2a2:	83 ec 0c             	sub    $0xc,%esp
     2a5:	68 10 13 00 00       	push   $0x1310
     2aa:	e8 c1 fe ff ff       	call   170 <panic>
      printf(2, "open %s failed\n", rcmd->file);
     2af:	51                   	push   %ecx
     2b0:	ff 73 08             	push   0x8(%ebx)
     2b3:	68 27 13 00 00       	push   $0x1327
     2b8:	6a 02                	push   $0x2
     2ba:	e8 e1 0c 00 00       	call   fa0 <printf>
      exit();
     2bf:	e8 6f 0b 00 00       	call   e33 <exit>
      panic("pipe");
     2c4:	83 ec 0c             	sub    $0xc,%esp
     2c7:	68 37 13 00 00       	push   $0x1337
     2cc:	e8 9f fe ff ff       	call   170 <panic>
      close(0);
     2d1:	83 ec 0c             	sub    $0xc,%esp
     2d4:	6a 00                	push   $0x0
     2d6:	e8 80 0b 00 00       	call   e5b <close>
      dup(p[0]);
     2db:	5a                   	pop    %edx
     2dc:	ff 75 f0             	push   -0x10(%ebp)
     2df:	e8 c7 0b 00 00       	call   eab <dup>
      close(p[0]);
     2e4:	59                   	pop    %ecx
     2e5:	ff 75 f0             	push   -0x10(%ebp)
     2e8:	e8 6e 0b 00 00       	call   e5b <close>
      close(p[1]);
     2ed:	58                   	pop    %eax
     2ee:	ff 75 f4             	push   -0xc(%ebp)
     2f1:	e8 65 0b 00 00       	call   e5b <close>
      runcmd(pcmd->right);
     2f6:	58                   	pop    %eax
     2f7:	ff 73 08             	push   0x8(%ebx)
     2fa:	e8 b1 fe ff ff       	call   1b0 <runcmd>
      close(1);
     2ff:	83 ec 0c             	sub    $0xc,%esp
     302:	6a 01                	push   $0x1
     304:	e8 52 0b 00 00       	call   e5b <close>
      dup(p[1]);
     309:	58                   	pop    %eax
     30a:	ff 75 f4             	push   -0xc(%ebp)
     30d:	e8 99 0b 00 00       	call   eab <dup>
      close(p[0]);
     312:	58                   	pop    %eax
     313:	ff 75 f0             	push   -0x10(%ebp)
     316:	e8 40 0b 00 00       	call   e5b <close>
      close(p[1]);
     31b:	58                   	pop    %eax
     31c:	ff 75 f4             	push   -0xc(%ebp)
     31f:	e8 37 0b 00 00       	call   e5b <close>
      runcmd(pcmd->left);
     324:	5a                   	pop    %edx
     325:	ff 73 04             	push   0x4(%ebx)
     328:	e8 83 fe ff ff       	call   1b0 <runcmd>
     32d:	8d 76 00             	lea    0x0(%esi),%esi

00000330 <execcmd>:
//PAGEBREAK!
// Constructors

struct cmd*
execcmd(void)
{
     330:	55                   	push   %ebp
     331:	89 e5                	mov    %esp,%ebp
     333:	53                   	push   %ebx
     334:	83 ec 10             	sub    $0x10,%esp
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     337:	6a 54                	push   $0x54
     339:	e8 e2 0e 00 00       	call   1220 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     33e:	83 c4 0c             	add    $0xc,%esp
     341:	6a 54                	push   $0x54
  cmd = malloc(sizeof(*cmd));
     343:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     345:	6a 00                	push   $0x0
     347:	50                   	push   %eax
     348:	e8 43 09 00 00       	call   c90 <memset>
  cmd->type = EXEC;
     34d:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
  return (struct cmd*)cmd;
}
     353:	89 d8                	mov    %ebx,%eax
     355:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     358:	c9                   	leave
     359:	c3                   	ret
     35a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000360 <redircmd>:

struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
     360:	55                   	push   %ebp
     361:	89 e5                	mov    %esp,%ebp
     363:	53                   	push   %ebx
     364:	83 ec 10             	sub    $0x10,%esp
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
     367:	6a 18                	push   $0x18
     369:	e8 b2 0e 00 00       	call   1220 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     36e:	83 c4 0c             	add    $0xc,%esp
     371:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     373:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     375:	6a 00                	push   $0x0
     377:	50                   	push   %eax
     378:	e8 13 09 00 00       	call   c90 <memset>
  cmd->type = REDIR;
  cmd->cmd = subcmd;
     37d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = REDIR;
     380:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
  cmd->cmd = subcmd;
     386:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->file = file;
     389:	8b 45 0c             	mov    0xc(%ebp),%eax
     38c:	89 43 08             	mov    %eax,0x8(%ebx)
  cmd->efile = efile;
     38f:	8b 45 10             	mov    0x10(%ebp),%eax
     392:	89 43 0c             	mov    %eax,0xc(%ebx)
  cmd->mode = mode;
     395:	8b 45 14             	mov    0x14(%ebp),%eax
     398:	89 43 10             	mov    %eax,0x10(%ebx)
  cmd->fd = fd;
     39b:	8b 45 18             	mov    0x18(%ebp),%eax
     39e:	89 43 14             	mov    %eax,0x14(%ebx)
  return (struct cmd*)cmd;
}
     3a1:	89 d8                	mov    %ebx,%eax
     3a3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     3a6:	c9                   	leave
     3a7:	c3                   	ret
     3a8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     3af:	00 

000003b0 <pipecmd>:

struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
     3b0:	55                   	push   %ebp
     3b1:	89 e5                	mov    %esp,%ebp
     3b3:	53                   	push   %ebx
     3b4:	83 ec 10             	sub    $0x10,%esp
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
     3b7:	6a 0c                	push   $0xc
     3b9:	e8 62 0e 00 00       	call   1220 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     3be:	83 c4 0c             	add    $0xc,%esp
     3c1:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     3c3:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     3c5:	6a 00                	push   $0x0
     3c7:	50                   	push   %eax
     3c8:	e8 c3 08 00 00       	call   c90 <memset>
  cmd->type = PIPE;
  cmd->left = left;
     3cd:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = PIPE;
     3d0:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
  cmd->left = left;
     3d6:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     3d9:	8b 45 0c             	mov    0xc(%ebp),%eax
     3dc:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     3df:	89 d8                	mov    %ebx,%eax
     3e1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     3e4:	c9                   	leave
     3e5:	c3                   	ret
     3e6:	66 90                	xchg   %ax,%ax
     3e8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     3ef:	00 

000003f0 <listcmd>:

struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
     3f0:	55                   	push   %ebp
     3f1:	89 e5                	mov    %esp,%ebp
     3f3:	53                   	push   %ebx
     3f4:	83 ec 10             	sub    $0x10,%esp
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     3f7:	6a 0c                	push   $0xc
     3f9:	e8 22 0e 00 00       	call   1220 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     3fe:	83 c4 0c             	add    $0xc,%esp
     401:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     403:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     405:	6a 00                	push   $0x0
     407:	50                   	push   %eax
     408:	e8 83 08 00 00       	call   c90 <memset>
  cmd->type = LIST;
  cmd->left = left;
     40d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = LIST;
     410:	c7 03 04 00 00 00    	movl   $0x4,(%ebx)
  cmd->left = left;
     416:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     419:	8b 45 0c             	mov    0xc(%ebp),%eax
     41c:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     41f:	89 d8                	mov    %ebx,%eax
     421:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     424:	c9                   	leave
     425:	c3                   	ret
     426:	66 90                	xchg   %ax,%ax
     428:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     42f:	00 

00000430 <backcmd>:

struct cmd*
backcmd(struct cmd *subcmd)
{
     430:	55                   	push   %ebp
     431:	89 e5                	mov    %esp,%ebp
     433:	53                   	push   %ebx
     434:	83 ec 10             	sub    $0x10,%esp
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     437:	6a 08                	push   $0x8
     439:	e8 e2 0d 00 00       	call   1220 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     43e:	83 c4 0c             	add    $0xc,%esp
     441:	6a 08                	push   $0x8
  cmd = malloc(sizeof(*cmd));
     443:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     445:	6a 00                	push   $0x0
     447:	50                   	push   %eax
     448:	e8 43 08 00 00       	call   c90 <memset>
  cmd->type = BACK;
  cmd->cmd = subcmd;
     44d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = BACK;
     450:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
  cmd->cmd = subcmd;
     456:	89 43 04             	mov    %eax,0x4(%ebx)
  return (struct cmd*)cmd;
}
     459:	89 d8                	mov    %ebx,%eax
     45b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     45e:	c9                   	leave
     45f:	c3                   	ret

00000460 <gettoken>:
char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
     460:	55                   	push   %ebp
     461:	89 e5                	mov    %esp,%ebp
     463:	57                   	push   %edi
     464:	56                   	push   %esi
     465:	53                   	push   %ebx
     466:	83 ec 0c             	sub    $0xc,%esp
  char *s;
  int ret;

  s = *ps;
     469:	8b 45 08             	mov    0x8(%ebp),%eax
{
     46c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     46f:	8b 75 10             	mov    0x10(%ebp),%esi
  s = *ps;
     472:	8b 38                	mov    (%eax),%edi
  while(s < es && strchr(whitespace, *s))
     474:	39 df                	cmp    %ebx,%edi
     476:	72 0f                	jb     487 <gettoken+0x27>
     478:	eb 25                	jmp    49f <gettoken+0x3f>
     47a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    s++;
     480:	83 c7 01             	add    $0x1,%edi
  while(s < es && strchr(whitespace, *s))
     483:	39 fb                	cmp    %edi,%ebx
     485:	74 18                	je     49f <gettoken+0x3f>
     487:	0f be 07             	movsbl (%edi),%eax
     48a:	83 ec 08             	sub    $0x8,%esp
     48d:	50                   	push   %eax
     48e:	68 20 1a 00 00       	push   $0x1a20
     493:	e8 18 08 00 00       	call   cb0 <strchr>
     498:	83 c4 10             	add    $0x10,%esp
     49b:	85 c0                	test   %eax,%eax
     49d:	75 e1                	jne    480 <gettoken+0x20>
  if(q)
     49f:	85 f6                	test   %esi,%esi
     4a1:	74 02                	je     4a5 <gettoken+0x45>
    *q = s;
     4a3:	89 3e                	mov    %edi,(%esi)
  ret = *s;
     4a5:	0f b6 07             	movzbl (%edi),%eax
  switch(*s){
     4a8:	3c 3c                	cmp    $0x3c,%al
     4aa:	0f 8f c8 00 00 00    	jg     578 <gettoken+0x118>
     4b0:	3c 3a                	cmp    $0x3a,%al
     4b2:	7f 5a                	jg     50e <gettoken+0xae>
     4b4:	84 c0                	test   %al,%al
     4b6:	75 48                	jne    500 <gettoken+0xa0>
     4b8:	31 f6                	xor    %esi,%esi
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
      s++;
    break;
  }
  if(eq)
     4ba:	8b 4d 14             	mov    0x14(%ebp),%ecx
     4bd:	85 c9                	test   %ecx,%ecx
     4bf:	74 05                	je     4c6 <gettoken+0x66>
    *eq = s;
     4c1:	8b 45 14             	mov    0x14(%ebp),%eax
     4c4:	89 38                	mov    %edi,(%eax)

  while(s < es && strchr(whitespace, *s))
     4c6:	39 df                	cmp    %ebx,%edi
     4c8:	72 0d                	jb     4d7 <gettoken+0x77>
     4ca:	eb 23                	jmp    4ef <gettoken+0x8f>
     4cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    s++;
     4d0:	83 c7 01             	add    $0x1,%edi
  while(s < es && strchr(whitespace, *s))
     4d3:	39 fb                	cmp    %edi,%ebx
     4d5:	74 18                	je     4ef <gettoken+0x8f>
     4d7:	0f be 07             	movsbl (%edi),%eax
     4da:	83 ec 08             	sub    $0x8,%esp
     4dd:	50                   	push   %eax
     4de:	68 20 1a 00 00       	push   $0x1a20
     4e3:	e8 c8 07 00 00       	call   cb0 <strchr>
     4e8:	83 c4 10             	add    $0x10,%esp
     4eb:	85 c0                	test   %eax,%eax
     4ed:	75 e1                	jne    4d0 <gettoken+0x70>
  *ps = s;
     4ef:	8b 45 08             	mov    0x8(%ebp),%eax
     4f2:	89 38                	mov    %edi,(%eax)
  return ret;
}
     4f4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     4f7:	89 f0                	mov    %esi,%eax
     4f9:	5b                   	pop    %ebx
     4fa:	5e                   	pop    %esi
     4fb:	5f                   	pop    %edi
     4fc:	5d                   	pop    %ebp
     4fd:	c3                   	ret
     4fe:	66 90                	xchg   %ax,%ax
  switch(*s){
     500:	78 22                	js     524 <gettoken+0xc4>
     502:	3c 26                	cmp    $0x26,%al
     504:	74 08                	je     50e <gettoken+0xae>
     506:	8d 50 d8             	lea    -0x28(%eax),%edx
     509:	80 fa 01             	cmp    $0x1,%dl
     50c:	77 16                	ja     524 <gettoken+0xc4>
  ret = *s;
     50e:	0f be f0             	movsbl %al,%esi
    s++;
     511:	83 c7 01             	add    $0x1,%edi
    break;
     514:	eb a4                	jmp    4ba <gettoken+0x5a>
     516:	66 90                	xchg   %ax,%ax
     518:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     51f:	00 
  switch(*s){
     520:	3c 7c                	cmp    $0x7c,%al
     522:	74 ea                	je     50e <gettoken+0xae>
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     524:	39 df                	cmp    %ebx,%edi
     526:	72 27                	jb     54f <gettoken+0xef>
     528:	e9 87 00 00 00       	jmp    5b4 <gettoken+0x154>
     52d:	8d 76 00             	lea    0x0(%esi),%esi
     530:	0f be 07             	movsbl (%edi),%eax
     533:	83 ec 08             	sub    $0x8,%esp
     536:	50                   	push   %eax
     537:	68 18 1a 00 00       	push   $0x1a18
     53c:	e8 6f 07 00 00       	call   cb0 <strchr>
     541:	83 c4 10             	add    $0x10,%esp
     544:	85 c0                	test   %eax,%eax
     546:	75 1f                	jne    567 <gettoken+0x107>
      s++;
     548:	83 c7 01             	add    $0x1,%edi
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     54b:	39 fb                	cmp    %edi,%ebx
     54d:	74 4d                	je     59c <gettoken+0x13c>
     54f:	0f be 07             	movsbl (%edi),%eax
     552:	83 ec 08             	sub    $0x8,%esp
     555:	50                   	push   %eax
     556:	68 20 1a 00 00       	push   $0x1a20
     55b:	e8 50 07 00 00       	call   cb0 <strchr>
     560:	83 c4 10             	add    $0x10,%esp
     563:	85 c0                	test   %eax,%eax
     565:	74 c9                	je     530 <gettoken+0xd0>
    ret = 'a';
     567:	be 61 00 00 00       	mov    $0x61,%esi
     56c:	e9 49 ff ff ff       	jmp    4ba <gettoken+0x5a>
     571:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  switch(*s){
     578:	3c 3e                	cmp    $0x3e,%al
     57a:	75 a4                	jne    520 <gettoken+0xc0>
    if(*s == '>'){
     57c:	80 7f 01 3e          	cmpb   $0x3e,0x1(%edi)
     580:	74 0d                	je     58f <gettoken+0x12f>
    s++;
     582:	83 c7 01             	add    $0x1,%edi
  ret = *s;
     585:	be 3e 00 00 00       	mov    $0x3e,%esi
     58a:	e9 2b ff ff ff       	jmp    4ba <gettoken+0x5a>
      s++;
     58f:	83 c7 02             	add    $0x2,%edi
      ret = '+';
     592:	be 2b 00 00 00       	mov    $0x2b,%esi
     597:	e9 1e ff ff ff       	jmp    4ba <gettoken+0x5a>
  if(eq)
     59c:	8b 45 14             	mov    0x14(%ebp),%eax
     59f:	85 c0                	test   %eax,%eax
     5a1:	74 05                	je     5a8 <gettoken+0x148>
    *eq = s;
     5a3:	8b 45 14             	mov    0x14(%ebp),%eax
     5a6:	89 18                	mov    %ebx,(%eax)
  while(s < es && strchr(whitespace, *s))
     5a8:	89 df                	mov    %ebx,%edi
    ret = 'a';
     5aa:	be 61 00 00 00       	mov    $0x61,%esi
     5af:	e9 3b ff ff ff       	jmp    4ef <gettoken+0x8f>
  if(eq)
     5b4:	8b 55 14             	mov    0x14(%ebp),%edx
     5b7:	85 d2                	test   %edx,%edx
     5b9:	74 ef                	je     5aa <gettoken+0x14a>
    *eq = s;
     5bb:	8b 45 14             	mov    0x14(%ebp),%eax
     5be:	89 38                	mov    %edi,(%eax)
  while(s < es && strchr(whitespace, *s))
     5c0:	eb e8                	jmp    5aa <gettoken+0x14a>
     5c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     5c8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     5cf:	00 

000005d0 <peek>:

int
peek(char **ps, char *es, char *toks)
{
     5d0:	55                   	push   %ebp
     5d1:	89 e5                	mov    %esp,%ebp
     5d3:	56                   	push   %esi
     5d4:	53                   	push   %ebx
  char *s;

  s = *ps;
     5d5:	8b 45 08             	mov    0x8(%ebp),%eax
{
     5d8:	8b 75 0c             	mov    0xc(%ebp),%esi
  s = *ps;
     5db:	8b 18                	mov    (%eax),%ebx
  while(s < es && strchr(whitespace, *s))
     5dd:	39 f3                	cmp    %esi,%ebx
     5df:	72 0e                	jb     5ef <peek+0x1f>
     5e1:	eb 24                	jmp    607 <peek+0x37>
     5e3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
    s++;
     5e8:	83 c3 01             	add    $0x1,%ebx
  while(s < es && strchr(whitespace, *s))
     5eb:	39 de                	cmp    %ebx,%esi
     5ed:	74 18                	je     607 <peek+0x37>
     5ef:	0f be 03             	movsbl (%ebx),%eax
     5f2:	83 ec 08             	sub    $0x8,%esp
     5f5:	50                   	push   %eax
     5f6:	68 20 1a 00 00       	push   $0x1a20
     5fb:	e8 b0 06 00 00       	call   cb0 <strchr>
     600:	83 c4 10             	add    $0x10,%esp
     603:	85 c0                	test   %eax,%eax
     605:	75 e1                	jne    5e8 <peek+0x18>
  *ps = s;
     607:	8b 45 08             	mov    0x8(%ebp),%eax
  return *s && strchr(toks, *s);
     60a:	31 d2                	xor    %edx,%edx
  *ps = s;
     60c:	89 18                	mov    %ebx,(%eax)
  return *s && strchr(toks, *s);
     60e:	0f be 03             	movsbl (%ebx),%eax
     611:	84 c0                	test   %al,%al
     613:	75 0b                	jne    620 <peek+0x50>
}
     615:	8d 65 f8             	lea    -0x8(%ebp),%esp
     618:	89 d0                	mov    %edx,%eax
     61a:	5b                   	pop    %ebx
     61b:	5e                   	pop    %esi
     61c:	5d                   	pop    %ebp
     61d:	c3                   	ret
     61e:	66 90                	xchg   %ax,%ax
  return *s && strchr(toks, *s);
     620:	83 ec 08             	sub    $0x8,%esp
     623:	50                   	push   %eax
     624:	ff 75 10             	push   0x10(%ebp)
     627:	e8 84 06 00 00       	call   cb0 <strchr>
     62c:	83 c4 10             	add    $0x10,%esp
     62f:	31 d2                	xor    %edx,%edx
     631:	85 c0                	test   %eax,%eax
     633:	0f 95 c2             	setne  %dl
}
     636:	8d 65 f8             	lea    -0x8(%ebp),%esp
     639:	5b                   	pop    %ebx
     63a:	89 d0                	mov    %edx,%eax
     63c:	5e                   	pop    %esi
     63d:	5d                   	pop    %ebp
     63e:	c3                   	ret
     63f:	90                   	nop

00000640 <parseredirs>:
  return cmd;
}

struct cmd*
parseredirs(struct cmd *cmd, char **ps, char *es)
{
     640:	55                   	push   %ebp
     641:	89 e5                	mov    %esp,%ebp
     643:	57                   	push   %edi
     644:	56                   	push   %esi
     645:	53                   	push   %ebx
     646:	83 ec 2c             	sub    $0x2c,%esp
     649:	8b 75 0c             	mov    0xc(%ebp),%esi
     64c:	8b 5d 10             	mov    0x10(%ebp),%ebx
  int tok;
  char *q, *eq;

  while(peek(ps, es, "<>")){
     64f:	90                   	nop
     650:	83 ec 04             	sub    $0x4,%esp
     653:	68 59 13 00 00       	push   $0x1359
     658:	53                   	push   %ebx
     659:	56                   	push   %esi
     65a:	e8 71 ff ff ff       	call   5d0 <peek>
     65f:	83 c4 10             	add    $0x10,%esp
     662:	85 c0                	test   %eax,%eax
     664:	0f 84 f6 00 00 00    	je     760 <parseredirs+0x120>
    tok = gettoken(ps, es, 0, 0);
     66a:	6a 00                	push   $0x0
     66c:	6a 00                	push   $0x0
     66e:	53                   	push   %ebx
     66f:	56                   	push   %esi
     670:	e8 eb fd ff ff       	call   460 <gettoken>
     675:	89 c7                	mov    %eax,%edi
    if(gettoken(ps, es, &q, &eq) != 'a')
     677:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     67a:	50                   	push   %eax
     67b:	8d 45 e0             	lea    -0x20(%ebp),%eax
     67e:	50                   	push   %eax
     67f:	53                   	push   %ebx
     680:	56                   	push   %esi
     681:	e8 da fd ff ff       	call   460 <gettoken>
     686:	83 c4 20             	add    $0x20,%esp
     689:	83 f8 61             	cmp    $0x61,%eax
     68c:	0f 85 d9 00 00 00    	jne    76b <parseredirs+0x12b>
      panic("missing file for redirection");
    switch(tok){
     692:	83 ff 3c             	cmp    $0x3c,%edi
     695:	74 69                	je     700 <parseredirs+0xc0>
     697:	83 ff 3e             	cmp    $0x3e,%edi
     69a:	74 05                	je     6a1 <parseredirs+0x61>
     69c:	83 ff 2b             	cmp    $0x2b,%edi
     69f:	75 af                	jne    650 <parseredirs+0x10>
      break;
    case '>':
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    case '+':  // >>
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     6a1:	8b 55 e4             	mov    -0x1c(%ebp),%edx
     6a4:	8b 4d e0             	mov    -0x20(%ebp),%ecx
  cmd = malloc(sizeof(*cmd));
     6a7:	83 ec 0c             	sub    $0xc,%esp
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     6aa:	89 55 d0             	mov    %edx,-0x30(%ebp)
     6ad:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  cmd = malloc(sizeof(*cmd));
     6b0:	6a 18                	push   $0x18
     6b2:	e8 69 0b 00 00       	call   1220 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     6b7:	83 c4 0c             	add    $0xc,%esp
     6ba:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     6bc:	89 c7                	mov    %eax,%edi
  memset(cmd, 0, sizeof(*cmd));
     6be:	6a 00                	push   $0x0
     6c0:	50                   	push   %eax
     6c1:	e8 ca 05 00 00       	call   c90 <memset>
  cmd->type = REDIR;
     6c6:	c7 07 02 00 00 00    	movl   $0x2,(%edi)
  cmd->cmd = subcmd;
     6cc:	8b 45 08             	mov    0x8(%ebp),%eax
      break;
     6cf:	83 c4 10             	add    $0x10,%esp
  cmd->cmd = subcmd;
     6d2:	89 47 04             	mov    %eax,0x4(%edi)
  cmd->file = file;
     6d5:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
     6d8:	89 4f 08             	mov    %ecx,0x8(%edi)
  cmd->efile = efile;
     6db:	8b 55 d0             	mov    -0x30(%ebp),%edx
  cmd->mode = mode;
     6de:	c7 47 10 01 02 00 00 	movl   $0x201,0x10(%edi)
  cmd->efile = efile;
     6e5:	89 57 0c             	mov    %edx,0xc(%edi)
  cmd->fd = fd;
     6e8:	c7 47 14 01 00 00 00 	movl   $0x1,0x14(%edi)
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     6ef:	89 7d 08             	mov    %edi,0x8(%ebp)
      break;
     6f2:	e9 59 ff ff ff       	jmp    650 <parseredirs+0x10>
     6f7:	90                   	nop
     6f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     6ff:	00 
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     700:	8b 55 e4             	mov    -0x1c(%ebp),%edx
     703:	8b 4d e0             	mov    -0x20(%ebp),%ecx
  cmd = malloc(sizeof(*cmd));
     706:	83 ec 0c             	sub    $0xc,%esp
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     709:	89 55 d0             	mov    %edx,-0x30(%ebp)
     70c:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  cmd = malloc(sizeof(*cmd));
     70f:	6a 18                	push   $0x18
     711:	e8 0a 0b 00 00       	call   1220 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     716:	83 c4 0c             	add    $0xc,%esp
     719:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     71b:	89 c7                	mov    %eax,%edi
  memset(cmd, 0, sizeof(*cmd));
     71d:	6a 00                	push   $0x0
     71f:	50                   	push   %eax
     720:	e8 6b 05 00 00       	call   c90 <memset>
  cmd->cmd = subcmd;
     725:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->file = file;
     728:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      break;
     72b:	83 c4 10             	add    $0x10,%esp
  cmd->efile = efile;
     72e:	8b 55 d0             	mov    -0x30(%ebp),%edx
  cmd->type = REDIR;
     731:	c7 07 02 00 00 00    	movl   $0x2,(%edi)
  cmd->cmd = subcmd;
     737:	89 47 04             	mov    %eax,0x4(%edi)
  cmd->file = file;
     73a:	89 4f 08             	mov    %ecx,0x8(%edi)
  cmd->efile = efile;
     73d:	89 57 0c             	mov    %edx,0xc(%edi)
  cmd->mode = mode;
     740:	c7 47 10 00 00 00 00 	movl   $0x0,0x10(%edi)
  cmd->fd = fd;
     747:	c7 47 14 00 00 00 00 	movl   $0x0,0x14(%edi)
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     74e:	89 7d 08             	mov    %edi,0x8(%ebp)
      break;
     751:	e9 fa fe ff ff       	jmp    650 <parseredirs+0x10>
     756:	66 90                	xchg   %ax,%ax
     758:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     75f:	00 
    }
  }
  return cmd;
}
     760:	8b 45 08             	mov    0x8(%ebp),%eax
     763:	8d 65 f4             	lea    -0xc(%ebp),%esp
     766:	5b                   	pop    %ebx
     767:	5e                   	pop    %esi
     768:	5f                   	pop    %edi
     769:	5d                   	pop    %ebp
     76a:	c3                   	ret
      panic("missing file for redirection");
     76b:	83 ec 0c             	sub    $0xc,%esp
     76e:	68 3c 13 00 00       	push   $0x133c
     773:	e8 f8 f9 ff ff       	call   170 <panic>
     778:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     77f:	00 

00000780 <parseexec>:
  return cmd;
}

struct cmd*
parseexec(char **ps, char *es)
{
     780:	55                   	push   %ebp
     781:	89 e5                	mov    %esp,%ebp
     783:	57                   	push   %edi
     784:	56                   	push   %esi
     785:	53                   	push   %ebx
     786:	83 ec 30             	sub    $0x30,%esp
     789:	8b 5d 08             	mov    0x8(%ebp),%ebx
     78c:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *q, *eq;
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
     78f:	68 5c 13 00 00       	push   $0x135c
     794:	56                   	push   %esi
     795:	53                   	push   %ebx
     796:	e8 35 fe ff ff       	call   5d0 <peek>
     79b:	83 c4 10             	add    $0x10,%esp
     79e:	85 c0                	test   %eax,%eax
     7a0:	0f 85 aa 00 00 00    	jne    850 <parseexec+0xd0>
  cmd = malloc(sizeof(*cmd));
     7a6:	83 ec 0c             	sub    $0xc,%esp
     7a9:	89 c7                	mov    %eax,%edi
     7ab:	6a 54                	push   $0x54
     7ad:	e8 6e 0a 00 00       	call   1220 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     7b2:	83 c4 0c             	add    $0xc,%esp
     7b5:	6a 54                	push   $0x54
     7b7:	6a 00                	push   $0x0
     7b9:	89 45 d0             	mov    %eax,-0x30(%ebp)
     7bc:	50                   	push   %eax
     7bd:	e8 ce 04 00 00       	call   c90 <memset>
  cmd->type = EXEC;
     7c2:	8b 45 d0             	mov    -0x30(%ebp),%eax

  ret = execcmd();
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
     7c5:	83 c4 0c             	add    $0xc,%esp
  cmd->type = EXEC;
     7c8:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  ret = parseredirs(ret, ps, es);
     7ce:	56                   	push   %esi
     7cf:	53                   	push   %ebx
     7d0:	50                   	push   %eax
     7d1:	e8 6a fe ff ff       	call   640 <parseredirs>
  while(!peek(ps, es, "|)&;")){
     7d6:	83 c4 10             	add    $0x10,%esp
  ret = parseredirs(ret, ps, es);
     7d9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
     7dc:	eb 15                	jmp    7f3 <parseexec+0x73>
     7de:	66 90                	xchg   %ax,%ax
    cmd->argv[argc] = q;
    cmd->eargv[argc] = eq;
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
     7e0:	83 ec 04             	sub    $0x4,%esp
     7e3:	56                   	push   %esi
     7e4:	53                   	push   %ebx
     7e5:	ff 75 d4             	push   -0x2c(%ebp)
     7e8:	e8 53 fe ff ff       	call   640 <parseredirs>
     7ed:	83 c4 10             	add    $0x10,%esp
     7f0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
     7f3:	83 ec 04             	sub    $0x4,%esp
     7f6:	68 73 13 00 00       	push   $0x1373
     7fb:	56                   	push   %esi
     7fc:	53                   	push   %ebx
     7fd:	e8 ce fd ff ff       	call   5d0 <peek>
     802:	83 c4 10             	add    $0x10,%esp
     805:	85 c0                	test   %eax,%eax
     807:	75 5f                	jne    868 <parseexec+0xe8>
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
     809:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     80c:	50                   	push   %eax
     80d:	8d 45 e0             	lea    -0x20(%ebp),%eax
     810:	50                   	push   %eax
     811:	56                   	push   %esi
     812:	53                   	push   %ebx
     813:	e8 48 fc ff ff       	call   460 <gettoken>
     818:	83 c4 10             	add    $0x10,%esp
     81b:	85 c0                	test   %eax,%eax
     81d:	74 49                	je     868 <parseexec+0xe8>
    if(tok != 'a')
     81f:	83 f8 61             	cmp    $0x61,%eax
     822:	75 62                	jne    886 <parseexec+0x106>
    cmd->argv[argc] = q;
     824:	8b 45 e0             	mov    -0x20(%ebp),%eax
     827:	8b 55 d0             	mov    -0x30(%ebp),%edx
     82a:	89 44 ba 04          	mov    %eax,0x4(%edx,%edi,4)
    cmd->eargv[argc] = eq;
     82e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     831:	89 44 ba 2c          	mov    %eax,0x2c(%edx,%edi,4)
    argc++;
     835:	83 c7 01             	add    $0x1,%edi
    if(argc >= MAXARGS)
     838:	83 ff 0a             	cmp    $0xa,%edi
     83b:	75 a3                	jne    7e0 <parseexec+0x60>
      panic("too many args");
     83d:	83 ec 0c             	sub    $0xc,%esp
     840:	68 65 13 00 00       	push   $0x1365
     845:	e8 26 f9 ff ff       	call   170 <panic>
     84a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    return parseblock(ps, es);
     850:	89 75 0c             	mov    %esi,0xc(%ebp)
     853:	89 5d 08             	mov    %ebx,0x8(%ebp)
  }
  cmd->argv[argc] = 0;
  cmd->eargv[argc] = 0;
  return ret;
}
     856:	8d 65 f4             	lea    -0xc(%ebp),%esp
     859:	5b                   	pop    %ebx
     85a:	5e                   	pop    %esi
     85b:	5f                   	pop    %edi
     85c:	5d                   	pop    %ebp
    return parseblock(ps, es);
     85d:	e9 ae 01 00 00       	jmp    a10 <parseblock>
     862:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  cmd->argv[argc] = 0;
     868:	8b 45 d0             	mov    -0x30(%ebp),%eax
     86b:	c7 44 b8 04 00 00 00 	movl   $0x0,0x4(%eax,%edi,4)
     872:	00 
  cmd->eargv[argc] = 0;
     873:	c7 44 b8 2c 00 00 00 	movl   $0x0,0x2c(%eax,%edi,4)
     87a:	00 
}
     87b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     87e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     881:	5b                   	pop    %ebx
     882:	5e                   	pop    %esi
     883:	5f                   	pop    %edi
     884:	5d                   	pop    %ebp
     885:	c3                   	ret
      panic("syntax");
     886:	83 ec 0c             	sub    $0xc,%esp
     889:	68 5e 13 00 00       	push   $0x135e
     88e:	e8 dd f8 ff ff       	call   170 <panic>
     893:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
     898:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     89f:	00 

000008a0 <parsepipe>:
{
     8a0:	55                   	push   %ebp
     8a1:	89 e5                	mov    %esp,%ebp
     8a3:	57                   	push   %edi
     8a4:	56                   	push   %esi
     8a5:	53                   	push   %ebx
     8a6:	83 ec 14             	sub    $0x14,%esp
     8a9:	8b 75 08             	mov    0x8(%ebp),%esi
     8ac:	8b 7d 0c             	mov    0xc(%ebp),%edi
  cmd = parseexec(ps, es);
     8af:	57                   	push   %edi
     8b0:	56                   	push   %esi
     8b1:	e8 ca fe ff ff       	call   780 <parseexec>
  if(peek(ps, es, "|")){
     8b6:	83 c4 0c             	add    $0xc,%esp
     8b9:	68 78 13 00 00       	push   $0x1378
  cmd = parseexec(ps, es);
     8be:	89 c3                	mov    %eax,%ebx
  if(peek(ps, es, "|")){
     8c0:	57                   	push   %edi
     8c1:	56                   	push   %esi
     8c2:	e8 09 fd ff ff       	call   5d0 <peek>
     8c7:	83 c4 10             	add    $0x10,%esp
     8ca:	85 c0                	test   %eax,%eax
     8cc:	75 12                	jne    8e0 <parsepipe+0x40>
}
     8ce:	8d 65 f4             	lea    -0xc(%ebp),%esp
     8d1:	89 d8                	mov    %ebx,%eax
     8d3:	5b                   	pop    %ebx
     8d4:	5e                   	pop    %esi
     8d5:	5f                   	pop    %edi
     8d6:	5d                   	pop    %ebp
     8d7:	c3                   	ret
     8d8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     8df:	00 
    gettoken(ps, es, 0, 0);
     8e0:	6a 00                	push   $0x0
     8e2:	6a 00                	push   $0x0
     8e4:	57                   	push   %edi
     8e5:	56                   	push   %esi
     8e6:	e8 75 fb ff ff       	call   460 <gettoken>
    cmd = pipecmd(cmd, parsepipe(ps, es));
     8eb:	58                   	pop    %eax
     8ec:	5a                   	pop    %edx
     8ed:	57                   	push   %edi
     8ee:	56                   	push   %esi
     8ef:	e8 ac ff ff ff       	call   8a0 <parsepipe>
  cmd = malloc(sizeof(*cmd));
     8f4:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
    cmd = pipecmd(cmd, parsepipe(ps, es));
     8fb:	89 c7                	mov    %eax,%edi
  cmd = malloc(sizeof(*cmd));
     8fd:	e8 1e 09 00 00       	call   1220 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     902:	83 c4 0c             	add    $0xc,%esp
     905:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     907:	89 c6                	mov    %eax,%esi
  memset(cmd, 0, sizeof(*cmd));
     909:	6a 00                	push   $0x0
     90b:	50                   	push   %eax
     90c:	e8 7f 03 00 00       	call   c90 <memset>
  cmd->left = left;
     911:	89 5e 04             	mov    %ebx,0x4(%esi)
  cmd->right = right;
     914:	83 c4 10             	add    $0x10,%esp
    cmd = pipecmd(cmd, parsepipe(ps, es));
     917:	89 f3                	mov    %esi,%ebx
  cmd->type = PIPE;
     919:	c7 06 03 00 00 00    	movl   $0x3,(%esi)
}
     91f:	89 d8                	mov    %ebx,%eax
  cmd->right = right;
     921:	89 7e 08             	mov    %edi,0x8(%esi)
}
     924:	8d 65 f4             	lea    -0xc(%ebp),%esp
     927:	5b                   	pop    %ebx
     928:	5e                   	pop    %esi
     929:	5f                   	pop    %edi
     92a:	5d                   	pop    %ebp
     92b:	c3                   	ret
     92c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000930 <parseline>:
{
     930:	55                   	push   %ebp
     931:	89 e5                	mov    %esp,%ebp
     933:	57                   	push   %edi
     934:	56                   	push   %esi
     935:	53                   	push   %ebx
     936:	83 ec 24             	sub    $0x24,%esp
     939:	8b 75 08             	mov    0x8(%ebp),%esi
     93c:	8b 7d 0c             	mov    0xc(%ebp),%edi
  cmd = parsepipe(ps, es);
     93f:	57                   	push   %edi
     940:	56                   	push   %esi
     941:	e8 5a ff ff ff       	call   8a0 <parsepipe>
  while(peek(ps, es, "&")){
     946:	83 c4 10             	add    $0x10,%esp
  cmd = parsepipe(ps, es);
     949:	89 c3                	mov    %eax,%ebx
  while(peek(ps, es, "&")){
     94b:	eb 3b                	jmp    988 <parseline+0x58>
     94d:	8d 76 00             	lea    0x0(%esi),%esi
    gettoken(ps, es, 0, 0);
     950:	6a 00                	push   $0x0
     952:	6a 00                	push   $0x0
     954:	57                   	push   %edi
     955:	56                   	push   %esi
     956:	e8 05 fb ff ff       	call   460 <gettoken>
  cmd = malloc(sizeof(*cmd));
     95b:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
     962:	e8 b9 08 00 00       	call   1220 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     967:	83 c4 0c             	add    $0xc,%esp
     96a:	6a 08                	push   $0x8
     96c:	6a 00                	push   $0x0
     96e:	50                   	push   %eax
     96f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     972:	e8 19 03 00 00       	call   c90 <memset>
  cmd->type = BACK;
     977:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  cmd->cmd = subcmd;
     97a:	83 c4 10             	add    $0x10,%esp
  cmd->type = BACK;
     97d:	c7 02 05 00 00 00    	movl   $0x5,(%edx)
  cmd->cmd = subcmd;
     983:	89 5a 04             	mov    %ebx,0x4(%edx)
    cmd = backcmd(cmd);
     986:	89 d3                	mov    %edx,%ebx
  while(peek(ps, es, "&")){
     988:	83 ec 04             	sub    $0x4,%esp
     98b:	68 7a 13 00 00       	push   $0x137a
     990:	57                   	push   %edi
     991:	56                   	push   %esi
     992:	e8 39 fc ff ff       	call   5d0 <peek>
     997:	83 c4 10             	add    $0x10,%esp
     99a:	85 c0                	test   %eax,%eax
     99c:	75 b2                	jne    950 <parseline+0x20>
  if(peek(ps, es, ";")){
     99e:	83 ec 04             	sub    $0x4,%esp
     9a1:	68 76 13 00 00       	push   $0x1376
     9a6:	57                   	push   %edi
     9a7:	56                   	push   %esi
     9a8:	e8 23 fc ff ff       	call   5d0 <peek>
     9ad:	83 c4 10             	add    $0x10,%esp
     9b0:	85 c0                	test   %eax,%eax
     9b2:	75 0c                	jne    9c0 <parseline+0x90>
}
     9b4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     9b7:	89 d8                	mov    %ebx,%eax
     9b9:	5b                   	pop    %ebx
     9ba:	5e                   	pop    %esi
     9bb:	5f                   	pop    %edi
     9bc:	5d                   	pop    %ebp
     9bd:	c3                   	ret
     9be:	66 90                	xchg   %ax,%ax
    gettoken(ps, es, 0, 0);
     9c0:	6a 00                	push   $0x0
     9c2:	6a 00                	push   $0x0
     9c4:	57                   	push   %edi
     9c5:	56                   	push   %esi
     9c6:	e8 95 fa ff ff       	call   460 <gettoken>
    cmd = listcmd(cmd, parseline(ps, es));
     9cb:	58                   	pop    %eax
     9cc:	5a                   	pop    %edx
     9cd:	57                   	push   %edi
     9ce:	56                   	push   %esi
     9cf:	e8 5c ff ff ff       	call   930 <parseline>
  cmd = malloc(sizeof(*cmd));
     9d4:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
    cmd = listcmd(cmd, parseline(ps, es));
     9db:	89 c7                	mov    %eax,%edi
  cmd = malloc(sizeof(*cmd));
     9dd:	e8 3e 08 00 00       	call   1220 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     9e2:	83 c4 0c             	add    $0xc,%esp
     9e5:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     9e7:	89 c6                	mov    %eax,%esi
  memset(cmd, 0, sizeof(*cmd));
     9e9:	6a 00                	push   $0x0
     9eb:	50                   	push   %eax
     9ec:	e8 9f 02 00 00       	call   c90 <memset>
  cmd->left = left;
     9f1:	89 5e 04             	mov    %ebx,0x4(%esi)
  cmd->right = right;
     9f4:	83 c4 10             	add    $0x10,%esp
    cmd = listcmd(cmd, parseline(ps, es));
     9f7:	89 f3                	mov    %esi,%ebx
  cmd->type = LIST;
     9f9:	c7 06 04 00 00 00    	movl   $0x4,(%esi)
}
     9ff:	89 d8                	mov    %ebx,%eax
  cmd->right = right;
     a01:	89 7e 08             	mov    %edi,0x8(%esi)
}
     a04:	8d 65 f4             	lea    -0xc(%ebp),%esp
     a07:	5b                   	pop    %ebx
     a08:	5e                   	pop    %esi
     a09:	5f                   	pop    %edi
     a0a:	5d                   	pop    %ebp
     a0b:	c3                   	ret
     a0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000a10 <parseblock>:
{
     a10:	55                   	push   %ebp
     a11:	89 e5                	mov    %esp,%ebp
     a13:	57                   	push   %edi
     a14:	56                   	push   %esi
     a15:	53                   	push   %ebx
     a16:	83 ec 10             	sub    $0x10,%esp
     a19:	8b 5d 08             	mov    0x8(%ebp),%ebx
     a1c:	8b 75 0c             	mov    0xc(%ebp),%esi
  if(!peek(ps, es, "("))
     a1f:	68 5c 13 00 00       	push   $0x135c
     a24:	56                   	push   %esi
     a25:	53                   	push   %ebx
     a26:	e8 a5 fb ff ff       	call   5d0 <peek>
     a2b:	83 c4 10             	add    $0x10,%esp
     a2e:	85 c0                	test   %eax,%eax
     a30:	74 4a                	je     a7c <parseblock+0x6c>
  gettoken(ps, es, 0, 0);
     a32:	6a 00                	push   $0x0
     a34:	6a 00                	push   $0x0
     a36:	56                   	push   %esi
     a37:	53                   	push   %ebx
     a38:	e8 23 fa ff ff       	call   460 <gettoken>
  cmd = parseline(ps, es);
     a3d:	58                   	pop    %eax
     a3e:	5a                   	pop    %edx
     a3f:	56                   	push   %esi
     a40:	53                   	push   %ebx
     a41:	e8 ea fe ff ff       	call   930 <parseline>
  if(!peek(ps, es, ")"))
     a46:	83 c4 0c             	add    $0xc,%esp
     a49:	68 98 13 00 00       	push   $0x1398
  cmd = parseline(ps, es);
     a4e:	89 c7                	mov    %eax,%edi
  if(!peek(ps, es, ")"))
     a50:	56                   	push   %esi
     a51:	53                   	push   %ebx
     a52:	e8 79 fb ff ff       	call   5d0 <peek>
     a57:	83 c4 10             	add    $0x10,%esp
     a5a:	85 c0                	test   %eax,%eax
     a5c:	74 2b                	je     a89 <parseblock+0x79>
  gettoken(ps, es, 0, 0);
     a5e:	6a 00                	push   $0x0
     a60:	6a 00                	push   $0x0
     a62:	56                   	push   %esi
     a63:	53                   	push   %ebx
     a64:	e8 f7 f9 ff ff       	call   460 <gettoken>
  cmd = parseredirs(cmd, ps, es);
     a69:	83 c4 0c             	add    $0xc,%esp
     a6c:	56                   	push   %esi
     a6d:	53                   	push   %ebx
     a6e:	57                   	push   %edi
     a6f:	e8 cc fb ff ff       	call   640 <parseredirs>
}
     a74:	8d 65 f4             	lea    -0xc(%ebp),%esp
     a77:	5b                   	pop    %ebx
     a78:	5e                   	pop    %esi
     a79:	5f                   	pop    %edi
     a7a:	5d                   	pop    %ebp
     a7b:	c3                   	ret
    panic("parseblock");
     a7c:	83 ec 0c             	sub    $0xc,%esp
     a7f:	68 7c 13 00 00       	push   $0x137c
     a84:	e8 e7 f6 ff ff       	call   170 <panic>
    panic("syntax - missing )");
     a89:	83 ec 0c             	sub    $0xc,%esp
     a8c:	68 87 13 00 00       	push   $0x1387
     a91:	e8 da f6 ff ff       	call   170 <panic>
     a96:	66 90                	xchg   %ax,%ax
     a98:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     a9f:	00 

00000aa0 <nulterminate>:

// NUL-terminate all the counted strings.
struct cmd*
nulterminate(struct cmd *cmd)
{
     aa0:	55                   	push   %ebp
     aa1:	89 e5                	mov    %esp,%ebp
     aa3:	53                   	push   %ebx
     aa4:	83 ec 04             	sub    $0x4,%esp
     aa7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
     aaa:	85 db                	test   %ebx,%ebx
     aac:	74 29                	je     ad7 <nulterminate+0x37>
    return 0;

  switch(cmd->type){
     aae:	83 3b 05             	cmpl   $0x5,(%ebx)
     ab1:	77 24                	ja     ad7 <nulterminate+0x37>
     ab3:	8b 03                	mov    (%ebx),%eax
     ab5:	ff 24 85 e0 13 00 00 	jmp    *0x13e0(,%eax,4)
     abc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    nulterminate(pcmd->right);
    break;

  case LIST:
    lcmd = (struct listcmd*)cmd;
    nulterminate(lcmd->left);
     ac0:	83 ec 0c             	sub    $0xc,%esp
     ac3:	ff 73 04             	push   0x4(%ebx)
     ac6:	e8 d5 ff ff ff       	call   aa0 <nulterminate>
    nulterminate(lcmd->right);
     acb:	58                   	pop    %eax
     acc:	ff 73 08             	push   0x8(%ebx)
     acf:	e8 cc ff ff ff       	call   aa0 <nulterminate>
    break;
     ad4:	83 c4 10             	add    $0x10,%esp
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
     ad7:	89 d8                	mov    %ebx,%eax
     ad9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     adc:	c9                   	leave
     add:	c3                   	ret
     ade:	66 90                	xchg   %ax,%ax
    nulterminate(bcmd->cmd);
     ae0:	83 ec 0c             	sub    $0xc,%esp
     ae3:	ff 73 04             	push   0x4(%ebx)
     ae6:	e8 b5 ff ff ff       	call   aa0 <nulterminate>
}
     aeb:	89 d8                	mov    %ebx,%eax
    break;
     aed:	83 c4 10             	add    $0x10,%esp
}
     af0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     af3:	c9                   	leave
     af4:	c3                   	ret
     af5:	8d 76 00             	lea    0x0(%esi),%esi
    for(i=0; ecmd->argv[i]; i++)
     af8:	8b 4b 04             	mov    0x4(%ebx),%ecx
     afb:	85 c9                	test   %ecx,%ecx
     afd:	74 d8                	je     ad7 <nulterminate+0x37>
     aff:	8d 43 08             	lea    0x8(%ebx),%eax
     b02:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     b08:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     b0f:	00 
      *ecmd->eargv[i] = 0;
     b10:	8b 50 24             	mov    0x24(%eax),%edx
    for(i=0; ecmd->argv[i]; i++)
     b13:	83 c0 04             	add    $0x4,%eax
      *ecmd->eargv[i] = 0;
     b16:	c6 02 00             	movb   $0x0,(%edx)
    for(i=0; ecmd->argv[i]; i++)
     b19:	8b 50 fc             	mov    -0x4(%eax),%edx
     b1c:	85 d2                	test   %edx,%edx
     b1e:	75 f0                	jne    b10 <nulterminate+0x70>
}
     b20:	89 d8                	mov    %ebx,%eax
     b22:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     b25:	c9                   	leave
     b26:	c3                   	ret
     b27:	90                   	nop
     b28:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     b2f:	00 
    nulterminate(rcmd->cmd);
     b30:	83 ec 0c             	sub    $0xc,%esp
     b33:	ff 73 04             	push   0x4(%ebx)
     b36:	e8 65 ff ff ff       	call   aa0 <nulterminate>
    *rcmd->efile = 0;
     b3b:	8b 43 0c             	mov    0xc(%ebx),%eax
    break;
     b3e:	83 c4 10             	add    $0x10,%esp
    *rcmd->efile = 0;
     b41:	c6 00 00             	movb   $0x0,(%eax)
}
     b44:	89 d8                	mov    %ebx,%eax
     b46:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     b49:	c9                   	leave
     b4a:	c3                   	ret
     b4b:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi

00000b50 <parsecmd>:
{
     b50:	55                   	push   %ebp
     b51:	89 e5                	mov    %esp,%ebp
     b53:	57                   	push   %edi
     b54:	56                   	push   %esi
  cmd = parseline(&s, es);
     b55:	8d 7d 08             	lea    0x8(%ebp),%edi
{
     b58:	53                   	push   %ebx
     b59:	83 ec 18             	sub    $0x18,%esp
  es = s + strlen(s);
     b5c:	8b 5d 08             	mov    0x8(%ebp),%ebx
     b5f:	53                   	push   %ebx
     b60:	e8 fb 00 00 00       	call   c60 <strlen>
  cmd = parseline(&s, es);
     b65:	59                   	pop    %ecx
     b66:	5e                   	pop    %esi
  es = s + strlen(s);
     b67:	01 c3                	add    %eax,%ebx
  cmd = parseline(&s, es);
     b69:	53                   	push   %ebx
     b6a:	57                   	push   %edi
     b6b:	e8 c0 fd ff ff       	call   930 <parseline>
  peek(&s, es, "");
     b70:	83 c4 0c             	add    $0xc,%esp
     b73:	68 26 13 00 00       	push   $0x1326
  cmd = parseline(&s, es);
     b78:	89 c6                	mov    %eax,%esi
  peek(&s, es, "");
     b7a:	53                   	push   %ebx
     b7b:	57                   	push   %edi
     b7c:	e8 4f fa ff ff       	call   5d0 <peek>
  if(s != es){
     b81:	8b 45 08             	mov    0x8(%ebp),%eax
     b84:	83 c4 10             	add    $0x10,%esp
     b87:	39 d8                	cmp    %ebx,%eax
     b89:	75 13                	jne    b9e <parsecmd+0x4e>
  nulterminate(cmd);
     b8b:	83 ec 0c             	sub    $0xc,%esp
     b8e:	56                   	push   %esi
     b8f:	e8 0c ff ff ff       	call   aa0 <nulterminate>
}
     b94:	8d 65 f4             	lea    -0xc(%ebp),%esp
     b97:	89 f0                	mov    %esi,%eax
     b99:	5b                   	pop    %ebx
     b9a:	5e                   	pop    %esi
     b9b:	5f                   	pop    %edi
     b9c:	5d                   	pop    %ebp
     b9d:	c3                   	ret
    printf(2, "leftovers: %s\n", s);
     b9e:	52                   	push   %edx
     b9f:	50                   	push   %eax
     ba0:	68 9a 13 00 00       	push   $0x139a
     ba5:	6a 02                	push   $0x2
     ba7:	e8 f4 03 00 00       	call   fa0 <printf>
    panic("syntax");
     bac:	c7 04 24 5e 13 00 00 	movl   $0x135e,(%esp)
     bb3:	e8 b8 f5 ff ff       	call   170 <panic>
     bb8:	66 90                	xchg   %ax,%ax
     bba:	66 90                	xchg   %ax,%ax
     bbc:	66 90                	xchg   %ax,%ax
     bbe:	66 90                	xchg   %ax,%ax

00000bc0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
     bc0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     bc1:	31 c0                	xor    %eax,%eax
{
     bc3:	89 e5                	mov    %esp,%ebp
     bc5:	53                   	push   %ebx
     bc6:	8b 4d 08             	mov    0x8(%ebp),%ecx
     bc9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     bcc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
     bd0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
     bd4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
     bd7:	83 c0 01             	add    $0x1,%eax
     bda:	84 d2                	test   %dl,%dl
     bdc:	75 f2                	jne    bd0 <strcpy+0x10>
    ;
  return os;
}
     bde:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     be1:	89 c8                	mov    %ecx,%eax
     be3:	c9                   	leave
     be4:	c3                   	ret
     be5:	8d 76 00             	lea    0x0(%esi),%esi
     be8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     bef:	00 

00000bf0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     bf0:	55                   	push   %ebp
     bf1:	89 e5                	mov    %esp,%ebp
     bf3:	53                   	push   %ebx
     bf4:	8b 55 08             	mov    0x8(%ebp),%edx
     bf7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
     bfa:	0f b6 02             	movzbl (%edx),%eax
     bfd:	84 c0                	test   %al,%al
     bff:	75 2d                	jne    c2e <strcmp+0x3e>
     c01:	eb 4a                	jmp    c4d <strcmp+0x5d>
     c03:	eb 1b                	jmp    c20 <strcmp+0x30>
     c05:	8d 76 00             	lea    0x0(%esi),%esi
     c08:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     c0f:	00 
     c10:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     c17:	00 
     c18:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     c1f:	00 
     c20:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
     c24:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
     c27:	84 c0                	test   %al,%al
     c29:	74 15                	je     c40 <strcmp+0x50>
     c2b:	83 c1 01             	add    $0x1,%ecx
     c2e:	0f b6 19             	movzbl (%ecx),%ebx
     c31:	38 c3                	cmp    %al,%bl
     c33:	74 eb                	je     c20 <strcmp+0x30>
  return (uchar)*p - (uchar)*q;
     c35:	29 d8                	sub    %ebx,%eax
}
     c37:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     c3a:	c9                   	leave
     c3b:	c3                   	ret
     c3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  return (uchar)*p - (uchar)*q;
     c40:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
     c44:	31 c0                	xor    %eax,%eax
     c46:	29 d8                	sub    %ebx,%eax
}
     c48:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     c4b:	c9                   	leave
     c4c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
     c4d:	0f b6 19             	movzbl (%ecx),%ebx
     c50:	31 c0                	xor    %eax,%eax
     c52:	eb e1                	jmp    c35 <strcmp+0x45>
     c54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     c58:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     c5f:	00 

00000c60 <strlen>:

uint
strlen(const char *s)
{
     c60:	55                   	push   %ebp
     c61:	89 e5                	mov    %esp,%ebp
     c63:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
     c66:	80 3a 00             	cmpb   $0x0,(%edx)
     c69:	74 15                	je     c80 <strlen+0x20>
     c6b:	31 c0                	xor    %eax,%eax
     c6d:	8d 76 00             	lea    0x0(%esi),%esi
     c70:	83 c0 01             	add    $0x1,%eax
     c73:	89 c1                	mov    %eax,%ecx
     c75:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
     c79:	75 f5                	jne    c70 <strlen+0x10>
    ;
  return n;
}
     c7b:	89 c8                	mov    %ecx,%eax
     c7d:	5d                   	pop    %ebp
     c7e:	c3                   	ret
     c7f:	90                   	nop
  for(n = 0; s[n]; n++)
     c80:	31 c9                	xor    %ecx,%ecx
}
     c82:	5d                   	pop    %ebp
     c83:	89 c8                	mov    %ecx,%eax
     c85:	c3                   	ret
     c86:	66 90                	xchg   %ax,%ax
     c88:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     c8f:	00 

00000c90 <memset>:

void*
memset(void *dst, int c, uint n)
{
     c90:	55                   	push   %ebp
     c91:	89 e5                	mov    %esp,%ebp
     c93:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     c94:	8b 4d 10             	mov    0x10(%ebp),%ecx
     c97:	8b 45 0c             	mov    0xc(%ebp),%eax
     c9a:	8b 7d 08             	mov    0x8(%ebp),%edi
     c9d:	fc                   	cld
     c9e:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     ca0:	8b 45 08             	mov    0x8(%ebp),%eax
     ca3:	8b 7d fc             	mov    -0x4(%ebp),%edi
     ca6:	c9                   	leave
     ca7:	c3                   	ret
     ca8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     caf:	00 

00000cb0 <strchr>:

char*
strchr(const char *s, char c)
{
     cb0:	55                   	push   %ebp
     cb1:	89 e5                	mov    %esp,%ebp
     cb3:	8b 45 08             	mov    0x8(%ebp),%eax
     cb6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
     cba:	0f b6 10             	movzbl (%eax),%edx
     cbd:	84 d2                	test   %dl,%dl
     cbf:	75 1a                	jne    cdb <strchr+0x2b>
     cc1:	eb 25                	jmp    ce8 <strchr+0x38>
     cc3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
     cc8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     ccf:	00 
     cd0:	0f b6 50 01          	movzbl 0x1(%eax),%edx
     cd4:	83 c0 01             	add    $0x1,%eax
     cd7:	84 d2                	test   %dl,%dl
     cd9:	74 0d                	je     ce8 <strchr+0x38>
    if(*s == c)
     cdb:	38 d1                	cmp    %dl,%cl
     cdd:	75 f1                	jne    cd0 <strchr+0x20>
      return (char*)s;
  return 0;
}
     cdf:	5d                   	pop    %ebp
     ce0:	c3                   	ret
     ce1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
     ce8:	31 c0                	xor    %eax,%eax
}
     cea:	5d                   	pop    %ebp
     ceb:	c3                   	ret
     cec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000cf0 <gets>:

char*
gets(char *buf, int max)
{
     cf0:	55                   	push   %ebp
     cf1:	89 e5                	mov    %esp,%ebp
     cf3:	57                   	push   %edi
     cf4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
     cf5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
     cf8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
     cf9:	31 db                	xor    %ebx,%ebx
{
     cfb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
     cfe:	eb 27                	jmp    d27 <gets+0x37>
    cc = read(0, &c, 1);
     d00:	83 ec 04             	sub    $0x4,%esp
     d03:	6a 01                	push   $0x1
     d05:	57                   	push   %edi
     d06:	6a 00                	push   $0x0
     d08:	e8 3e 01 00 00       	call   e4b <read>
    if(cc < 1)
     d0d:	83 c4 10             	add    $0x10,%esp
     d10:	85 c0                	test   %eax,%eax
     d12:	7e 1d                	jle    d31 <gets+0x41>
      break;
    buf[i++] = c;
     d14:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
     d18:	8b 55 08             	mov    0x8(%ebp),%edx
     d1b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
     d1f:	3c 0a                	cmp    $0xa,%al
     d21:	74 1d                	je     d40 <gets+0x50>
     d23:	3c 0d                	cmp    $0xd,%al
     d25:	74 19                	je     d40 <gets+0x50>
  for(i=0; i+1 < max; ){
     d27:	89 de                	mov    %ebx,%esi
     d29:	83 c3 01             	add    $0x1,%ebx
     d2c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     d2f:	7c cf                	jl     d00 <gets+0x10>
      break;
  }
  buf[i] = '\0';
     d31:	8b 45 08             	mov    0x8(%ebp),%eax
     d34:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
     d38:	8d 65 f4             	lea    -0xc(%ebp),%esp
     d3b:	5b                   	pop    %ebx
     d3c:	5e                   	pop    %esi
     d3d:	5f                   	pop    %edi
     d3e:	5d                   	pop    %ebp
     d3f:	c3                   	ret
  buf[i] = '\0';
     d40:	8b 45 08             	mov    0x8(%ebp),%eax
    buf[i++] = c;
     d43:	89 de                	mov    %ebx,%esi
  buf[i] = '\0';
     d45:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
     d49:	8d 65 f4             	lea    -0xc(%ebp),%esp
     d4c:	5b                   	pop    %ebx
     d4d:	5e                   	pop    %esi
     d4e:	5f                   	pop    %edi
     d4f:	5d                   	pop    %ebp
     d50:	c3                   	ret
     d51:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d58:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     d5f:	00 

00000d60 <stat>:

int
stat(const char *n, struct stat *st)
{
     d60:	55                   	push   %ebp
     d61:	89 e5                	mov    %esp,%ebp
     d63:	56                   	push   %esi
     d64:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     d65:	83 ec 08             	sub    $0x8,%esp
     d68:	6a 00                	push   $0x0
     d6a:	ff 75 08             	push   0x8(%ebp)
     d6d:	e8 01 01 00 00       	call   e73 <open>
  if(fd < 0)
     d72:	83 c4 10             	add    $0x10,%esp
     d75:	85 c0                	test   %eax,%eax
     d77:	78 27                	js     da0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
     d79:	83 ec 08             	sub    $0x8,%esp
     d7c:	ff 75 0c             	push   0xc(%ebp)
     d7f:	89 c3                	mov    %eax,%ebx
     d81:	50                   	push   %eax
     d82:	e8 04 01 00 00       	call   e8b <fstat>
  close(fd);
     d87:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
     d8a:	89 c6                	mov    %eax,%esi
  close(fd);
     d8c:	e8 ca 00 00 00       	call   e5b <close>
  return r;
     d91:	83 c4 10             	add    $0x10,%esp
}
     d94:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d97:	89 f0                	mov    %esi,%eax
     d99:	5b                   	pop    %ebx
     d9a:	5e                   	pop    %esi
     d9b:	5d                   	pop    %ebp
     d9c:	c3                   	ret
     d9d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
     da0:	be ff ff ff ff       	mov    $0xffffffff,%esi
     da5:	eb ed                	jmp    d94 <stat+0x34>
     da7:	90                   	nop
     da8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     daf:	00 

00000db0 <atoi>:

int
atoi(const char *s)
{
     db0:	55                   	push   %ebp
     db1:	89 e5                	mov    %esp,%ebp
     db3:	53                   	push   %ebx
     db4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     db7:	0f be 02             	movsbl (%edx),%eax
     dba:	8d 48 d0             	lea    -0x30(%eax),%ecx
     dbd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
     dc0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
     dc5:	77 2e                	ja     df5 <atoi+0x45>
     dc7:	eb 17                	jmp    de0 <atoi+0x30>
     dc9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     dd0:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     dd7:	00 
     dd8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     ddf:	00 
    n = n*10 + *s++ - '0';
     de0:	83 c2 01             	add    $0x1,%edx
     de3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
     de6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
     dea:	0f be 02             	movsbl (%edx),%eax
     ded:	8d 58 d0             	lea    -0x30(%eax),%ebx
     df0:	80 fb 09             	cmp    $0x9,%bl
     df3:	76 eb                	jbe    de0 <atoi+0x30>
  return n;
}
     df5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     df8:	89 c8                	mov    %ecx,%eax
     dfa:	c9                   	leave
     dfb:	c3                   	ret
     dfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000e00 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
     e00:	55                   	push   %ebp
     e01:	89 e5                	mov    %esp,%ebp
     e03:	57                   	push   %edi
     e04:	8b 45 10             	mov    0x10(%ebp),%eax
     e07:	8b 55 08             	mov    0x8(%ebp),%edx
     e0a:	56                   	push   %esi
     e0b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     e0e:	85 c0                	test   %eax,%eax
     e10:	7e 13                	jle    e25 <memmove+0x25>
     e12:	01 d0                	add    %edx,%eax
  dst = vdst;
     e14:	89 d7                	mov    %edx,%edi
     e16:	66 90                	xchg   %ax,%ax
     e18:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     e1f:	00 
    *dst++ = *src++;
     e20:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
     e21:	39 f8                	cmp    %edi,%eax
     e23:	75 fb                	jne    e20 <memmove+0x20>
  return vdst;
}
     e25:	5e                   	pop    %esi
     e26:	89 d0                	mov    %edx,%eax
     e28:	5f                   	pop    %edi
     e29:	5d                   	pop    %ebp
     e2a:	c3                   	ret

00000e2b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
     e2b:	b8 01 00 00 00       	mov    $0x1,%eax
     e30:	cd 40                	int    $0x40
     e32:	c3                   	ret

00000e33 <exit>:
SYSCALL(exit)
     e33:	b8 02 00 00 00       	mov    $0x2,%eax
     e38:	cd 40                	int    $0x40
     e3a:	c3                   	ret

00000e3b <wait>:
SYSCALL(wait)
     e3b:	b8 03 00 00 00       	mov    $0x3,%eax
     e40:	cd 40                	int    $0x40
     e42:	c3                   	ret

00000e43 <pipe>:
SYSCALL(pipe)
     e43:	b8 04 00 00 00       	mov    $0x4,%eax
     e48:	cd 40                	int    $0x40
     e4a:	c3                   	ret

00000e4b <read>:
SYSCALL(read)
     e4b:	b8 05 00 00 00       	mov    $0x5,%eax
     e50:	cd 40                	int    $0x40
     e52:	c3                   	ret

00000e53 <write>:
SYSCALL(write)
     e53:	b8 10 00 00 00       	mov    $0x10,%eax
     e58:	cd 40                	int    $0x40
     e5a:	c3                   	ret

00000e5b <close>:
SYSCALL(close)
     e5b:	b8 15 00 00 00       	mov    $0x15,%eax
     e60:	cd 40                	int    $0x40
     e62:	c3                   	ret

00000e63 <kill>:
SYSCALL(kill)
     e63:	b8 06 00 00 00       	mov    $0x6,%eax
     e68:	cd 40                	int    $0x40
     e6a:	c3                   	ret

00000e6b <exec>:
SYSCALL(exec)
     e6b:	b8 07 00 00 00       	mov    $0x7,%eax
     e70:	cd 40                	int    $0x40
     e72:	c3                   	ret

00000e73 <open>:
SYSCALL(open)
     e73:	b8 0f 00 00 00       	mov    $0xf,%eax
     e78:	cd 40                	int    $0x40
     e7a:	c3                   	ret

00000e7b <mknod>:
SYSCALL(mknod)
     e7b:	b8 11 00 00 00       	mov    $0x11,%eax
     e80:	cd 40                	int    $0x40
     e82:	c3                   	ret

00000e83 <unlink>:
SYSCALL(unlink)
     e83:	b8 12 00 00 00       	mov    $0x12,%eax
     e88:	cd 40                	int    $0x40
     e8a:	c3                   	ret

00000e8b <fstat>:
SYSCALL(fstat)
     e8b:	b8 08 00 00 00       	mov    $0x8,%eax
     e90:	cd 40                	int    $0x40
     e92:	c3                   	ret

00000e93 <link>:
SYSCALL(link)
     e93:	b8 13 00 00 00       	mov    $0x13,%eax
     e98:	cd 40                	int    $0x40
     e9a:	c3                   	ret

00000e9b <mkdir>:
SYSCALL(mkdir)
     e9b:	b8 14 00 00 00       	mov    $0x14,%eax
     ea0:	cd 40                	int    $0x40
     ea2:	c3                   	ret

00000ea3 <chdir>:
SYSCALL(chdir)
     ea3:	b8 09 00 00 00       	mov    $0x9,%eax
     ea8:	cd 40                	int    $0x40
     eaa:	c3                   	ret

00000eab <dup>:
SYSCALL(dup)
     eab:	b8 0a 00 00 00       	mov    $0xa,%eax
     eb0:	cd 40                	int    $0x40
     eb2:	c3                   	ret

00000eb3 <getpid>:
SYSCALL(getpid)
     eb3:	b8 0b 00 00 00       	mov    $0xb,%eax
     eb8:	cd 40                	int    $0x40
     eba:	c3                   	ret

00000ebb <getreadcount>:
SYSCALL(getreadcount)
     ebb:	b8 16 00 00 00       	mov    $0x16,%eax
     ec0:	cd 40                	int    $0x40
     ec2:	c3                   	ret

00000ec3 <sbrk>:
SYSCALL(sbrk)
     ec3:	b8 0c 00 00 00       	mov    $0xc,%eax
     ec8:	cd 40                	int    $0x40
     eca:	c3                   	ret

00000ecb <sleep>:
SYSCALL(sleep)
     ecb:	b8 0d 00 00 00       	mov    $0xd,%eax
     ed0:	cd 40                	int    $0x40
     ed2:	c3                   	ret

00000ed3 <uptime>:
SYSCALL(uptime)
     ed3:	b8 0e 00 00 00       	mov    $0xe,%eax
     ed8:	cd 40                	int    $0x40
     eda:	c3                   	ret
     edb:	66 90                	xchg   %ax,%ax
     edd:	66 90                	xchg   %ax,%ax
     edf:	90                   	nop

00000ee0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
     ee0:	55                   	push   %ebp
     ee1:	89 e5                	mov    %esp,%ebp
     ee3:	57                   	push   %edi
     ee4:	56                   	push   %esi
     ee5:	53                   	push   %ebx
     ee6:	89 cb                	mov    %ecx,%ebx
     ee8:	83 ec 3c             	sub    $0x3c,%esp
     eeb:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
     eee:	85 d2                	test   %edx,%edx
     ef0:	0f 89 9a 00 00 00    	jns    f90 <printint+0xb0>
     ef6:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
     efa:	0f 84 90 00 00 00    	je     f90 <printint+0xb0>
    neg = 1;
    x = -xx;
     f00:	f7 da                	neg    %edx
    neg = 1;
     f02:	b8 01 00 00 00       	mov    $0x1,%eax
     f07:	89 45 c0             	mov    %eax,-0x40(%ebp)
     f0a:	89 d1                	mov    %edx,%ecx
  } else {
    x = xx;
  }

  i = 0;
     f0c:	31 f6                	xor    %esi,%esi
     f0e:	66 90                	xchg   %ax,%ax
     f10:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     f17:	00 
     f18:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     f1f:	00 
  do{
    buf[i++] = digits[x % base];
     f20:	89 c8                	mov    %ecx,%eax
     f22:	31 d2                	xor    %edx,%edx
     f24:	89 f7                	mov    %esi,%edi
     f26:	f7 f3                	div    %ebx
     f28:	8d 76 01             	lea    0x1(%esi),%esi
  }while((x /= base) != 0);
     f2b:	39 d9                	cmp    %ebx,%ecx
    buf[i++] = digits[x % base];
     f2d:	0f b6 92 50 14 00 00 	movzbl 0x1450(%edx),%edx
  }while((x /= base) != 0);
     f34:	89 c1                	mov    %eax,%ecx
    buf[i++] = digits[x % base];
     f36:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
     f3a:	73 e4                	jae    f20 <printint+0x40>
  if(neg)
     f3c:	8b 45 c0             	mov    -0x40(%ebp),%eax
     f3f:	85 c0                	test   %eax,%eax
     f41:	74 07                	je     f4a <printint+0x6a>
    buf[i++] = '-';
     f43:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
     f48:	89 f7                	mov    %esi,%edi

  while(--i >= 0)
     f4a:	8d 74 3d d8          	lea    -0x28(%ebp,%edi,1),%esi
     f4e:	8b 7d c4             	mov    -0x3c(%ebp),%edi
     f51:	8d 5d d7             	lea    -0x29(%ebp),%ebx
     f54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     f58:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     f5f:	00 
    putc(fd, buf[i]);
     f60:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
     f63:	83 ec 04             	sub    $0x4,%esp
  while(--i >= 0)
     f66:	83 ee 01             	sub    $0x1,%esi
     f69:	88 45 d7             	mov    %al,-0x29(%ebp)
  write(fd, &c, 1);
     f6c:	8d 45 d7             	lea    -0x29(%ebp),%eax
     f6f:	6a 01                	push   $0x1
     f71:	50                   	push   %eax
     f72:	57                   	push   %edi
     f73:	e8 db fe ff ff       	call   e53 <write>
  while(--i >= 0)
     f78:	83 c4 10             	add    $0x10,%esp
     f7b:	39 f3                	cmp    %esi,%ebx
     f7d:	75 e1                	jne    f60 <printint+0x80>
}
     f7f:	8d 65 f4             	lea    -0xc(%ebp),%esp
     f82:	5b                   	pop    %ebx
     f83:	5e                   	pop    %esi
     f84:	5f                   	pop    %edi
     f85:	5d                   	pop    %ebp
     f86:	c3                   	ret
     f87:	90                   	nop
     f88:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     f8f:	00 
  neg = 0;
     f90:	31 c0                	xor    %eax,%eax
     f92:	e9 70 ff ff ff       	jmp    f07 <printint+0x27>
     f97:	90                   	nop
     f98:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
     f9f:	00 

00000fa0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
     fa0:	55                   	push   %ebp
     fa1:	89 e5                	mov    %esp,%ebp
     fa3:	57                   	push   %edi
     fa4:	56                   	push   %esi
     fa5:	53                   	push   %ebx
     fa6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     fa9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
     fac:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
     faf:	0f b6 13             	movzbl (%ebx),%edx
     fb2:	83 c3 01             	add    $0x1,%ebx
     fb5:	84 d2                	test   %dl,%dl
     fb7:	0f 84 a0 00 00 00    	je     105d <printf+0xbd>
     fbd:	8d 45 10             	lea    0x10(%ebp),%eax
     fc0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    c = fmt[i] & 0xff;
     fc3:	8b 7d d4             	mov    -0x2c(%ebp),%edi
     fc6:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
     fc9:	eb 28                	jmp    ff3 <printf+0x53>
     fcb:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
     fd0:	83 ec 04             	sub    $0x4,%esp
     fd3:	8d 45 e7             	lea    -0x19(%ebp),%eax
     fd6:	88 55 e7             	mov    %dl,-0x19(%ebp)
  for(i = 0; fmt[i]; i++){
     fd9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
     fdc:	6a 01                	push   $0x1
     fde:	50                   	push   %eax
     fdf:	56                   	push   %esi
     fe0:	e8 6e fe ff ff       	call   e53 <write>
  for(i = 0; fmt[i]; i++){
     fe5:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
     fe9:	83 c4 10             	add    $0x10,%esp
     fec:	84 d2                	test   %dl,%dl
     fee:	74 6d                	je     105d <printf+0xbd>
    c = fmt[i] & 0xff;
     ff0:	0f b6 c2             	movzbl %dl,%eax
      if(c == '%'){
     ff3:	83 f8 25             	cmp    $0x25,%eax
     ff6:	75 d8                	jne    fd0 <printf+0x30>
  for(i = 0; fmt[i]; i++){
     ff8:	0f b6 13             	movzbl (%ebx),%edx
     ffb:	84 d2                	test   %dl,%dl
     ffd:	74 5e                	je     105d <printf+0xbd>
    c = fmt[i] & 0xff;
     fff:	0f b6 c2             	movzbl %dl,%eax
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
    1002:	80 fa 25             	cmp    $0x25,%dl
    1005:	0f 84 25 01 00 00    	je     1130 <printf+0x190>
    100b:	83 e8 63             	sub    $0x63,%eax
    100e:	83 f8 15             	cmp    $0x15,%eax
    1011:	77 0d                	ja     1020 <printf+0x80>
    1013:	ff 24 85 f8 13 00 00 	jmp    *0x13f8(,%eax,4)
    101a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    1020:	83 ec 04             	sub    $0x4,%esp
    1023:	8d 4d e7             	lea    -0x19(%ebp),%ecx
    1026:	88 55 d0             	mov    %dl,-0x30(%ebp)
        ap++;
      } else if(c == '%'){
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
    1029:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
  write(fd, &c, 1);
    102d:	6a 01                	push   $0x1
    102f:	51                   	push   %ecx
    1030:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    1033:	56                   	push   %esi
    1034:	e8 1a fe ff ff       	call   e53 <write>
        putc(fd, c);
    1039:	0f b6 55 d0          	movzbl -0x30(%ebp),%edx
  write(fd, &c, 1);
    103d:	83 c4 0c             	add    $0xc,%esp
    1040:	88 55 e7             	mov    %dl,-0x19(%ebp)
    1043:	6a 01                	push   $0x1
    1045:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
    1048:	51                   	push   %ecx
  for(i = 0; fmt[i]; i++){
    1049:	83 c3 02             	add    $0x2,%ebx
  write(fd, &c, 1);
    104c:	56                   	push   %esi
    104d:	e8 01 fe ff ff       	call   e53 <write>
  for(i = 0; fmt[i]; i++){
    1052:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    1056:	83 c4 10             	add    $0x10,%esp
    1059:	84 d2                	test   %dl,%dl
    105b:	75 93                	jne    ff0 <printf+0x50>
      }
      state = 0;
    }
  }
}
    105d:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1060:	5b                   	pop    %ebx
    1061:	5e                   	pop    %esi
    1062:	5f                   	pop    %edi
    1063:	5d                   	pop    %ebp
    1064:	c3                   	ret
    1065:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    1068:	83 ec 0c             	sub    $0xc,%esp
    106b:	8b 17                	mov    (%edi),%edx
    106d:	b9 10 00 00 00       	mov    $0x10,%ecx
    1072:	89 f0                	mov    %esi,%eax
    1074:	6a 00                	push   $0x0
    1076:	e8 65 fe ff ff       	call   ee0 <printint>
  for(i = 0; fmt[i]; i++){
    107b:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
    107f:	83 c3 02             	add    $0x2,%ebx
    1082:	83 c4 10             	add    $0x10,%esp
    1085:	84 d2                	test   %dl,%dl
    1087:	74 d4                	je     105d <printf+0xbd>
        ap++;
    1089:	83 c7 04             	add    $0x4,%edi
    108c:	e9 5f ff ff ff       	jmp    ff0 <printf+0x50>
    1091:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    1098:	8b 07                	mov    (%edi),%eax
        ap++;
    109a:	83 c7 04             	add    $0x4,%edi
        if(s == 0)
    109d:	85 c0                	test   %eax,%eax
    109f:	0f 84 9b 00 00 00    	je     1140 <printf+0x1a0>
        while(*s != 0){
    10a5:	0f b6 10             	movzbl (%eax),%edx
    10a8:	84 d2                	test   %dl,%dl
    10aa:	0f 84 a2 00 00 00    	je     1152 <printf+0x1b2>
    10b0:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    10b3:	89 c7                	mov    %eax,%edi
    10b5:	89 d0                	mov    %edx,%eax
    10b7:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    10ba:	89 fb                	mov    %edi,%ebx
    10bc:	8d 7d e7             	lea    -0x19(%ebp),%edi
    10bf:	90                   	nop
  write(fd, &c, 1);
    10c0:	83 ec 04             	sub    $0x4,%esp
    10c3:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
    10c6:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
    10c9:	6a 01                	push   $0x1
    10cb:	57                   	push   %edi
    10cc:	56                   	push   %esi
    10cd:	e8 81 fd ff ff       	call   e53 <write>
        while(*s != 0){
    10d2:	0f b6 03             	movzbl (%ebx),%eax
    10d5:	83 c4 10             	add    $0x10,%esp
    10d8:	84 c0                	test   %al,%al
    10da:	75 e4                	jne    10c0 <printf+0x120>
    10dc:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  for(i = 0; fmt[i]; i++){
    10df:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
    10e3:	83 c3 02             	add    $0x2,%ebx
    10e6:	84 d2                	test   %dl,%dl
    10e8:	0f 85 d5 fe ff ff    	jne    fc3 <printf+0x23>
    10ee:	e9 6a ff ff ff       	jmp    105d <printf+0xbd>
    10f3:	2e 8d 74 26 00       	lea    %cs:0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    10f8:	83 ec 0c             	sub    $0xc,%esp
    10fb:	8b 17                	mov    (%edi),%edx
    10fd:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1102:	89 f0                	mov    %esi,%eax
    1104:	6a 01                	push   $0x1
    1106:	e8 d5 fd ff ff       	call   ee0 <printint>
  for(i = 0; fmt[i]; i++){
    110b:	e9 6b ff ff ff       	jmp    107b <printf+0xdb>
        putc(fd, *ap);
    1110:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
    1112:	83 ec 04             	sub    $0x4,%esp
    1115:	8d 4d e7             	lea    -0x19(%ebp),%ecx
        putc(fd, *ap);
    1118:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    111b:	6a 01                	push   $0x1
    111d:	51                   	push   %ecx
    111e:	56                   	push   %esi
    111f:	e8 2f fd ff ff       	call   e53 <write>
    1124:	e9 52 ff ff ff       	jmp    107b <printf+0xdb>
    1129:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1130:	83 ec 04             	sub    $0x4,%esp
    1133:	88 55 e7             	mov    %dl,-0x19(%ebp)
    1136:	8d 4d e7             	lea    -0x19(%ebp),%ecx
    1139:	6a 01                	push   $0x1
    113b:	e9 08 ff ff ff       	jmp    1048 <printf+0xa8>
          s = "(null)";
    1140:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    1143:	b8 28 00 00 00       	mov    $0x28,%eax
    1148:	bf bf 13 00 00       	mov    $0x13bf,%edi
    114d:	e9 65 ff ff ff       	jmp    10b7 <printf+0x117>
  for(i = 0; fmt[i]; i++){
    1152:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
    1156:	83 c3 02             	add    $0x2,%ebx
    1159:	84 d2                	test   %dl,%dl
    115b:	0f 85 8f fe ff ff    	jne    ff0 <printf+0x50>
    1161:	e9 f7 fe ff ff       	jmp    105d <printf+0xbd>
    1166:	66 90                	xchg   %ax,%ax
    1168:	66 90                	xchg   %ax,%ax
    116a:	66 90                	xchg   %ax,%ax
    116c:	66 90                	xchg   %ax,%ax
    116e:	66 90                	xchg   %ax,%ax
    1170:	66 90                	xchg   %ax,%ax
    1172:	66 90                	xchg   %ax,%ax
    1174:	66 90                	xchg   %ax,%ax
    1176:	66 90                	xchg   %ax,%ax
    1178:	66 90                	xchg   %ax,%ax
    117a:	66 90                	xchg   %ax,%ax
    117c:	66 90                	xchg   %ax,%ax
    117e:	66 90                	xchg   %ax,%ax

00001180 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1180:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1181:	a1 a4 1a 00 00       	mov    0x1aa4,%eax
{
    1186:	89 e5                	mov    %esp,%ebp
    1188:	57                   	push   %edi
    1189:	56                   	push   %esi
    118a:	53                   	push   %ebx
    118b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    118e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1191:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1198:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    119f:	00 
    11a0:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    11a2:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    11a4:	39 ca                	cmp    %ecx,%edx
    11a6:	73 30                	jae    11d8 <free+0x58>
    11a8:	39 c1                	cmp    %eax,%ecx
    11aa:	72 04                	jb     11b0 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    11ac:	39 c2                	cmp    %eax,%edx
    11ae:	72 f0                	jb     11a0 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
    11b0:	8b 73 fc             	mov    -0x4(%ebx),%esi
    11b3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    11b6:	39 f8                	cmp    %edi,%eax
    11b8:	74 36                	je     11f0 <free+0x70>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
    11ba:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    11bd:	8b 42 04             	mov    0x4(%edx),%eax
    11c0:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    11c3:	39 f1                	cmp    %esi,%ecx
    11c5:	74 40                	je     1207 <free+0x87>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
    11c7:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
    11c9:	5b                   	pop    %ebx
  freep = p;
    11ca:	89 15 a4 1a 00 00    	mov    %edx,0x1aa4
}
    11d0:	5e                   	pop    %esi
    11d1:	5f                   	pop    %edi
    11d2:	5d                   	pop    %ebp
    11d3:	c3                   	ret
    11d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    11d8:	39 c2                	cmp    %eax,%edx
    11da:	72 c4                	jb     11a0 <free+0x20>
    11dc:	39 c1                	cmp    %eax,%ecx
    11de:	73 c0                	jae    11a0 <free+0x20>
  if(bp + bp->s.size == p->s.ptr){
    11e0:	8b 73 fc             	mov    -0x4(%ebx),%esi
    11e3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    11e6:	39 f8                	cmp    %edi,%eax
    11e8:	75 d0                	jne    11ba <free+0x3a>
    11ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
    11f0:	03 70 04             	add    0x4(%eax),%esi
    11f3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    11f6:	8b 02                	mov    (%edx),%eax
    11f8:	8b 00                	mov    (%eax),%eax
    11fa:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
    11fd:	8b 42 04             	mov    0x4(%edx),%eax
    1200:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    1203:	39 f1                	cmp    %esi,%ecx
    1205:	75 c0                	jne    11c7 <free+0x47>
    p->s.size += bp->s.size;
    1207:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
    120a:	89 15 a4 1a 00 00    	mov    %edx,0x1aa4
    p->s.size += bp->s.size;
    1210:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
    1213:	8b 4b f8             	mov    -0x8(%ebx),%ecx
    1216:	89 0a                	mov    %ecx,(%edx)
}
    1218:	5b                   	pop    %ebx
    1219:	5e                   	pop    %esi
    121a:	5f                   	pop    %edi
    121b:	5d                   	pop    %ebp
    121c:	c3                   	ret
    121d:	8d 76 00             	lea    0x0(%esi),%esi

00001220 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1220:	55                   	push   %ebp
    1221:	89 e5                	mov    %esp,%ebp
    1223:	57                   	push   %edi
    1224:	56                   	push   %esi
    1225:	53                   	push   %ebx
    1226:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1229:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    122c:	8b 15 a4 1a 00 00    	mov    0x1aa4,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1232:	8d 78 07             	lea    0x7(%eax),%edi
    1235:	c1 ef 03             	shr    $0x3,%edi
    1238:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    123b:	85 d2                	test   %edx,%edx
    123d:	0f 84 8d 00 00 00    	je     12d0 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1243:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    1245:	8b 48 04             	mov    0x4(%eax),%ecx
    1248:	39 f9                	cmp    %edi,%ecx
    124a:	73 64                	jae    12b0 <malloc+0x90>
  if(nu < 4096)
    124c:	bb 00 10 00 00       	mov    $0x1000,%ebx
    1251:	39 df                	cmp    %ebx,%edi
    1253:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    1256:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    125d:	eb 0a                	jmp    1269 <malloc+0x49>
    125f:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1260:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    1262:	8b 48 04             	mov    0x4(%eax),%ecx
    1265:	39 f9                	cmp    %edi,%ecx
    1267:	73 47                	jae    12b0 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1269:	89 c2                	mov    %eax,%edx
    126b:	39 05 a4 1a 00 00    	cmp    %eax,0x1aa4
    1271:	75 ed                	jne    1260 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
    1273:	83 ec 0c             	sub    $0xc,%esp
    1276:	56                   	push   %esi
    1277:	e8 47 fc ff ff       	call   ec3 <sbrk>
  if(p == (char*)-1)
    127c:	83 c4 10             	add    $0x10,%esp
    127f:	83 f8 ff             	cmp    $0xffffffff,%eax
    1282:	74 1c                	je     12a0 <malloc+0x80>
  hp->s.size = nu;
    1284:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    1287:	83 ec 0c             	sub    $0xc,%esp
    128a:	83 c0 08             	add    $0x8,%eax
    128d:	50                   	push   %eax
    128e:	e8 ed fe ff ff       	call   1180 <free>
  return freep;
    1293:	8b 15 a4 1a 00 00    	mov    0x1aa4,%edx
      if((p = morecore(nunits)) == 0)
    1299:	83 c4 10             	add    $0x10,%esp
    129c:	85 d2                	test   %edx,%edx
    129e:	75 c0                	jne    1260 <malloc+0x40>
        return 0;
  }
}
    12a0:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    12a3:	31 c0                	xor    %eax,%eax
}
    12a5:	5b                   	pop    %ebx
    12a6:	5e                   	pop    %esi
    12a7:	5f                   	pop    %edi
    12a8:	5d                   	pop    %ebp
    12a9:	c3                   	ret
    12aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    12b0:	39 cf                	cmp    %ecx,%edi
    12b2:	74 4c                	je     1300 <malloc+0xe0>
        p->s.size -= nunits;
    12b4:	29 f9                	sub    %edi,%ecx
    12b6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    12b9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    12bc:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    12bf:	89 15 a4 1a 00 00    	mov    %edx,0x1aa4
}
    12c5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    12c8:	83 c0 08             	add    $0x8,%eax
}
    12cb:	5b                   	pop    %ebx
    12cc:	5e                   	pop    %esi
    12cd:	5f                   	pop    %edi
    12ce:	5d                   	pop    %ebp
    12cf:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
    12d0:	c7 05 a4 1a 00 00 a8 	movl   $0x1aa8,0x1aa4
    12d7:	1a 00 00 
    base.s.size = 0;
    12da:	b8 a8 1a 00 00       	mov    $0x1aa8,%eax
    base.s.ptr = freep = prevp = &base;
    12df:	c7 05 a8 1a 00 00 a8 	movl   $0x1aa8,0x1aa8
    12e6:	1a 00 00 
    base.s.size = 0;
    12e9:	c7 05 ac 1a 00 00 00 	movl   $0x0,0x1aac
    12f0:	00 00 00 
    if(p->s.size >= nunits){
    12f3:	e9 54 ff ff ff       	jmp    124c <malloc+0x2c>
    12f8:	2e 8d b4 26 00 00 00 	lea    %cs:0x0(%esi,%eiz,1),%esi
    12ff:	00 
        prevp->s.ptr = p->s.ptr;
    1300:	8b 08                	mov    (%eax),%ecx
    1302:	89 0a                	mov    %ecx,(%edx)
    1304:	eb b9                	jmp    12bf <malloc+0x9f>
