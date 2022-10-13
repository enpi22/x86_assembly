global fact
section .text
fact:
    	cmp rdi,$0;
 	jg call_fact;
	mov rax,$1;
	ret;

call_fact:
	push rdi;
	dec rdi;
	call fact;
	pop rbx;
	imul rbx;
	ret;