section .text
    global _start

_start:
	xor rax, rax
	add rax, 60
	xor rdi, rdi 
	syscall 

