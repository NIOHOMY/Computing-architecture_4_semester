;???????????? ?????? 19 : b/a +10 ; 3425 ; (2a-5)/b
.model small
org 100h
.data
a dw -2
b dw -1
tempres1 dw 0
tempres2 dw 0
answer dw 0
.code
mov ax, [a]
mov bx, [b]
cmp ax, bx
jg jamp1
cmp ax, bx
jz jamp2
cmp ax, bx
jl jamp3
end_if:
jamp1:   
mov ax, b
cwd
idiv [a]
add ax, 10
mov [answer], ax
ret
jamp2:
mov ax, 3425
mov [answer], ax
ret
jamp3:
mov ax, a
mov bx, 2
imul bx
sub ax, 5
idiv [b]
mov [answer], ax
ret
ret