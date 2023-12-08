section .text
    global _start

_start:
	mov rbx, 0x68732F6E622F
	push rbx
	push rsp
	pop rdi
	xor rsi, rsi ;const char *const *argv 
	xor rdx, rdx ;const char *const *envp
	xor rax, rax
	add rax, 59
	syscall 

