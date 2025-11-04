; section .data
;     ; No data needed for this simple program

; section .text
;     global _start

; _start:
;     xor eax, eax        ; Initialize EAX (accumulator) to 0 for the sum
;     mov ecx, 15         ; Initialize ECX (counter/current number) to 15

; sum_loop:
;     add eax, ecx        ; Add the current number (ECX) to the sum (EAX)
;     inc ecx             ; Increment the current number (ECX)
;     cmp ecx, 26         ; Compare ECX with 26 (loop until ECX reaches 26)
;     jl sum_loop         ; Jump if Less (jump back to sum_loop if ECX < 26)

;     ; EAX now holds the sum (15 + 16 + ... + 25)

;     ; Exit the program (for Linux)
;     mov ebx, 0          ; Exit code 0
;     mov eax, 1          ; System call for exit (sys_exit)
;     int 0x80            ; Invoke kernel


;TEACHER'S ANSWER
; 15 to 25
; params: 15 = rdi, 25 = rsi
section .text
global sum ;so that you can access it in the c file
sum:
    mov rax, 0
    mov rcx, rdi ;get the first argument to rec

loop:
    add rax, rcx
    inc rcx
    cmp rcx, rsi ;is the next value (16) = 25? no, keep looping. yes, jump (exit) the loop
    jne loop
    ret
