section .text
    global _start

_start:
	mov rbx, 0x01010131306D7361
	push rbx
	
	dec byte[rsp+5]
	dec byte[rsp+6]
	dec byte[rsp+7]

	push rsp
	pop rdi
	xor rsi, rsi ;const char *const *argv 
	xor rdx, rdx ;const char *const *envp
	xor rax, rax
	add rax, 59
	syscall 

