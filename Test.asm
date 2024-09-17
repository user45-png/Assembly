section .data
	a dd 3

global _start
_start:
	sub esp, 2
	mov [esp], dd 1
	mov [esp+1], dd 2
	mov eax, 4
	mov ebx, 1
	mov ecx, esp
	mov edx, 2
	int 80h

	mov eax, 1
	mov ebx, 0
	int 80h
