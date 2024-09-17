section .text
  global _start
  extern printstr

section .data
  a db "yellow",0x0a
_start:
  mov eax, 1
  mov ecx, a
  call printstr
  mov ebx, edx 
  int 80h
