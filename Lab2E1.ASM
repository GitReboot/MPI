.model small
.stack 20
.data
org 1000H
num dw 2        

.code
start:
mov ax,@data
mov ds,ax
mov ax,num
mov cx,num
dec cx

repeat:
dec num
mul num
dec cx
jnz repeat

mov ah,4ch
int 3
end start



