.model small 


.data 
msg0 db 0Dh, 0Ah,'Ingresa 8 caracteres: $'
msg1 db 0Dh, 0Ah,'Cadena invertida: $'
cadena db 8 dup (?) 

.code
mov ax, @data 
mov ds, ax 

mov ah, 09h
lea dx, msg0
int 21h 

lea si, cadena
mov cx, 8

leer:
mov ah, 01h
int 21h 

mov [si], al
inc si 
loop leer 

mov ah, 09h
lea dx, msg1
int 21h 
dec SI
mov cx, 8

invertida:
mov dl, [si]
mov ah, 02h
int 21h 
dec si 
loop invertida

mov ah, 4Ch
int 21h
