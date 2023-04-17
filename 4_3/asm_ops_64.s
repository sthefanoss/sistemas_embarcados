    .intel_syntax noprefix
    .text

    .global sum
    .global diff

sum:
    push rbp
    mov rbp, rsp
    mov rax, rdi
    add rax, rsi
    pop rbp
    ret

diff:
    push rbp
    mov rbp, rsp
    push rbx
    mov rax, [rdi]
    mov rbx, [rsi]
    sub rax, rbx
    pop rbx
    pop rbp
    ret
