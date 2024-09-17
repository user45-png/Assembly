section .bss
	n resb 10



section .text
	global _start



_start:
	mov eax, 11
	mov ebx, 1
lb:
	imul eax, ebx
	inc ebx
	cmp ebx,11
	jl lb
	mov ecx, 0
	mov ebx, 10
pop:
	div ebx
	mov [n+ecx], edx
	inc ecx
	cmp eax, 0
	jg pop

	mov eax, 4
	mov ebx, 1
	mov edx, ecx
	mov ecx, n
	int 80h

	mov ebx, 0
	mov eax, 1
	int 80h

