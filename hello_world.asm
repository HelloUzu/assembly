section .data
	hello_world: db "Hello World!", 0xA
	tam equ $-hello_world

section .bss

section .text

global _start

_start:
	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, hello_world 
	mov edx, tam
	int      0x80

	mov eax, 0x1
	mov ebx, 0x0
	int      0x80
