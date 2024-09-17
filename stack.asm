global _start

section .data
	a db "yel",0x0a


section .text

_start:
	mov [a], byte 'a'
	mov [a+2], byte 'i'
	mov eax, 4
	mov ebx, 1
	mov ecx, a
	mov edx, 4
	int 0x80

	sub esp, 4
	mov [esp],byte "h"
	mov [esp+1],byte "e"
	mov [esp+2],byte "y"
	mov [esp+3],byte  0x0a

	mov ecx, esp
	mov edx, 4
	int 0x80

	mov eax, 1
	mov ebx, 0
	int 0x80
