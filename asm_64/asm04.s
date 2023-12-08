section .text
    global _start

_start:	
	
	xor rax, rax 
	mov rsi, rsp
	xor rdi, rdi	
	xor rdx, rdx
	add rdx, 64
	syscall
	mov rdi, rsi 
	
	
string_to_int:
	xor rax, rax                
	xor rcx, rcx                

.next_digit:
	movzx rdx, byte [rdi + rcx] 
	cmp rdx, 10                  
	je .done                    

	sub rdx, '0'                
	imul rax, rax, 10           
	add rax, rdx                
	inc rcx                     
	jmp .next_digit             
.done:
	
	xor rbx, rbx
	add rbx, 2
	
	xor rdx, rdx
	div rbx
	
	cmp rdx, 0
	je paire
	
	xor rax, rax
	add rax, 60
	xor rdi, rdi
	add rdi,1 
	syscall 
	
	
paire:
	xor rax, rax
	add rax, 60
	xor rdi, rdi
	syscall 

