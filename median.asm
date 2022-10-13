global median
section .text
median:
      mov rax,rsi;
      AND rax, 1;
      cmp rax,1;
      je odd;
      jne even;
even:
      mov rax,rsi;
      mov rbx,$2;
      idiv rbx;
      mov rcx, $8;
      imul rcx;
      add rdi,rax;
      mov rax,[rdi-8];
      mov rbx, [rdi];
      add rax,rbx;
      mov rbx,$2;
      idiv rbx;
      jmp finish;
odd:
     mov rax,rsi;
     mov rbx,$2;
     idiv rbx;
     mov rcx,$8;
     imul rcx;
     add rdi, rax;
    
     mov rax, [rdi];
     jmp finish;
      
finish:
      ret