global min
section .text
min:
      cmp rsi,$0; //base case to end the recursion
 	jg call_expr;
	mov rax,[rdi];
	ret;

call_expr:
	mov rdx,[rdi];
	push rdx;
	add rdi,$8;
	dec rsi;
	call min;
	pop rbx;
	
compare:
	cmp rax,rbx;
	jle ans;
	ret;
ans:
	mov rax,rbx;
	ret;