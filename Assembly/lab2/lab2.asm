

org 100h
;лабораторная работа №2 вариант 19?; (2*c - d/2 +1)(a*a + 7)
.model tiny

.data
    a dw 1
    b dw 2
    c dw 3
    result dw 0
    tmp1 dw 0
    tmp2 dw 0
.code
    ;denominator
    mov ax,[a]
    imul ax
    add ax, 7
    mov [tmp1], ax
    ;numenator 
    mov ax, [b]
    mov bx, 2
    idiv bx 
    mov [tmp2], ax  
    mov ax,[c]  
    mov bx,2
    imul bx
    sub ax, [tmp2]  
    add ax, 1
    ;result
    imul [tmp1]
    mov [result],ax
    ret
.exit




