section .text
    global _start

_start:
	push 0x37333331
	xor rax , rax
	add rax, 1
	xor rdi, rdi
	add rdi, 1
	mov rsi, rsp ;esp pour du 32 bits
	xor rdx, rdx
	add rdx, 4
	syscall
	
	
	push 0x0a
	xor rax , rax
	add rax, 1
	mov rsi, rsp ;esp pour du 32 bits
	xor rdx, rdx
	add rdx, 1
	syscall	
	
	xor rax, rax
	add rax, 60
	xor rdi, rdi
	syscall 

