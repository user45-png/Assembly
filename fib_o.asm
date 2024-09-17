section .text
	global _start

_start:
	mov eax, 15
	mov ebx, 1
lb:
	imul eax, ebx
	inc ebx
	cmp ebx,15
	jl lb
	mov ecx, eax
	int 80h
	mov ebx, 0
l:
	mov ecx, ecx / 10
	inc ebx
	cmp ecx, 0
	jg l

	sub esp, 4
	mov [esp], eax

	mov eax, 4
	mov edx, ebx
	mov ebx, 1
	mov ecx, esp
	int 80h
	

	mov ebx, 0
	mov eax, 1
	int 80h

