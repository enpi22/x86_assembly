global expres

section .text
 
expres:
      
      cmp rdi,0; //base condition for termination
	jg call_expr;
	mov rax,$0;
	ret;

call_expr:
	push rdi;
	dec rdi;
	call expres;
	pop rbx;
	add rax,rbx;
	ret;
	
