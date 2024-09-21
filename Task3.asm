.model small
.stack 100h
.data
n dw ?  
n2 dw ?  
sum dw ?

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

;n2
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

mov n2,bx


mov ax,0
mov bx,0

mov ax,n
mov bx,n2

add ax,bx

mov sum,ax











mov cx,0
mov cx,4 
mov ax,sum 
l1:      
          

mov bx,10h 
mov dx, 0
div bx
cmp dx,9
jg when_greater


add dx,30h 
jmp else 
when_greater:
add dx,55

else:
push dx
 loop l1    
 mov cx,4
 l2:
         
         mov ah,2
         pop dx
         int 21h
         
         loop l2


mov ah,0x4c
int 0x21


