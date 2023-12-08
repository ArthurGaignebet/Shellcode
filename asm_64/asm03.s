section .text
    global _start

_start:	
	
	xor rax, rax 
	mov rsi, rsp
	xor rdi, rdi	
	xor rdx, rdx
	add rdx, 16
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
	
	cmp rax, 42
	je egal_42
	
	xor rax, rax
	add rax, 60
	xor rdi, rdi
	add rdi,1 
	syscall 
	
	
egal_42:
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

