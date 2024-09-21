.model small
.stack 100h
.data
n dw ?  


.code
Mov ax,@data
Mov ds,ax  

mov ax,0
mov ah,0x1 
int 0x21   
sub ax,0x30
mov bx,0


mov bl,al
ror bx,4



mov ax,0h 
mov ah,0x1 
int 0x21
sub ax,0x30
mov cx,0 


   
mov cl,al
ror cx,8


 mov ax,0h

mov ah,0x1 
int 0x21
sub ax,0x30
mov dx,0  
mov dl,al
ror dx,12




  mov ax,0h
mov ah,0x1 
int 0x21
sub ax,0x30
;ror ax,16
          
mov ah,0          
      
or bx,cx
or dx,ax
or bx,dx

mov n,bx      
          




mov ah,0x4c
int 0x21
