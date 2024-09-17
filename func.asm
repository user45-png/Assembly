global _start
_start:
	mov eax, 10
	mov ecx, 3
	div ecx

	int 80h
