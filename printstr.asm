global printstr

section .bss
  n resb 20

section .data
  a db 0          
  b db "Hello",0x0a

section .

section .text

printstr:
    push eax
    push ebx
    push ecx
    push edx
    mov edx, 0
    mov al, [ecx]
    mov edx, 0
check:
    cmp al, edx
    je yi
    cmp edx, 9
    jge len_str
    inc edx
    jmp lb

  
len_str:
    mov al, [ecx + edx] 
    cmp al, 0x0A       
    je print    
    inc edx    
    jmp len_str

print:
    mov eax, 4 
    mov ebx, 1
    inc edx
    int 0x80 

    pop edx
    pop ecx
    pop ebx
    pop eax
    ret


yi:
    mov ebx, 0
    mov eax, ecx
 nl:
    mov ecx, 10
    div ecx
    add edx, '0'
    mov [n+ebx], edx
    inc ebx
    cmp eax, x0a
    jg nl
    mov ecx, n
    jmp len_str






