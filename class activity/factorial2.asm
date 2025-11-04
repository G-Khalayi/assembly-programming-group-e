; factorial_func.asm
; Defines a function: unsigned long long factorial(int n)

section .text
    global factorial       ; make visible to C

factorial:
    push rbp
    mov rbp, rsp

    mov eax, edi           ; get argument n (passed in edi)
    cmp eax, 0
    jl .negative           ; if n < 0 → return 0 (error)
    
    mov rcx, 1             ; i = 1
    mov rax, 1             ; fact = 1

.loop:
    cmp ecx, eax
    jg .done
    imul rax, rcx
    inc rcx
    jmp .loop

.done:
    jmp .exit

.negative:
    mov rax, 0             ; return 0 if negative

.exit:
    pop rbp
    ret



