; section .data
;     ; No data needed for this simple sum calculation

; section .text
;     global _start

; _start:
;     ; Initialize sum to 0
;     xor eax, eax    ; EAX will store the sum

;     ; Initialize counter to 25
;     mov ecx, 25     ; ECX will be the loop counter, starting at 25

; loop_start:
;     ; Add the current number (in ECX) to the sum (in EAX)
;     add eax, ecx

;     ; Decrement the counter
;     dec ecx         ; Decrement ECX by 1

;     ; Check if the counter is still greater than or equal to 15
;     cmp ecx, 14     ; Compare ECX with 14 (we want to include 15)
;     jg loop_start   ; Jump to loop_start if ECX > 14 (i.e., ECX >= 15)

;     ; Exit the program
;     mov ebx, 0      ; Exit code 0
;     mov eax, 1      ; Syscall for exit
;     int 0x80        ; Call kernel


;TEACHER'S ANSWER
section .text
global sum ;so that you can access it in the c file
sum:
    mov rax, 0
    mov rcx, rsi ;get the first argument to rec

loop:
    add rax, rcx
    dec rcx
    cmp rcx, rdi ;is the next value (16) = 25? no, keep looping. yes, jump (exit) the loop
    jne loop
    ret
; or alternatively you can just change the order of the values in the c file
; use the loop_addition.c file to call this one as well