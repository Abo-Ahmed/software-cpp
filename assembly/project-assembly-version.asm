   
name "string"



org     100h

jmp start  ; skip over the declarations and data

;intialize all varialbes
k0L dw 0007h
k1L dw 0008h      
k2L dw 0000h       
k3L dw 0020h
k0R dw 0007h
k1R dw 0008h      
k2R dw 0000h       
k3R dw 0020h
deltaL dw 9e37h
deltaR dw 79b9h
sumL dw 0000h
sumR dw 0000h    
arr dw 1994h,2200h,1111h,0004h
i db 0
j db 0

buffer db "empty buffer --- empty buffer"
buffer2 db "empty buffer --- empty buffer"

size = $ - offset buffer  ; declare constant
size2 = $ - offset buffer2  ; declare constant


start:

;to print any string we but its pointer in si
print "you shouldn't enter any message more than 4 characters" 
call newLine
print "Enter first number: "
    
    

; get the first message
lea     di, buffer      ; buffer offset.
mov     dx, size        ; buffer size.
call    get_string



call newLine


; print "Enter second number"
print "Enter second number: "

;get the second message
lea     di, buffer2      ; buffer offset.
mov     dx, size2        ; buffer size.
call    get_string
            
            
call newLine           
    
    
    lea di , buffer
    mov AX , [di]    
    mov arr[0*2] , AX
    add di , 2
    mov AX , [di]    
    mov arr[1*2] , AX
    add di  , 2    
    mov     [di], 0  ;terminate input by null
    lea di , buffer2
    mov AX , [di]    
    mov arr[2*2] , AX
    add di , 2
    mov AX , [di]    
    mov arr[3*2] , AX
    add di  , 2
    mov     [di], 0     ; terinate input by null
          
    call encript  
    
    
    
    lea di , buffer
    mov  AX , arr[0*2]
    mov [di] , AX
    add di , 2
    mov  AX , arr[1*2]
    mov [di] , AX 
    lea di , buffer2
    mov  AX , arr[2*2]
    mov [di] , AX
    add di , 2
    mov  AX , arr[3*2]
    mov [di] , AX

; print using macro:
print "first encrypted number: "

; print string in ds:si using procedure:
lea     si, buffer
call    print_string


call newLine
print "second encrypted number: "

; print string in ds:si using procedure:
lea     si, buffer2
call    print_string
    
  lea di , buffer
    mov AX , [di]    
    mov arr[0*2] , AX
    add di , 2
    mov AX , [di]    
    mov arr[1*2] , AX
    lea di , buffer2
    mov AX , [di]    
    mov arr[2*2] , AX
    add di , 2
    mov AX , [di]    
    mov arr[3*2] , AX 
    
call decript
        
        
    
    lea di , buffer
    mov  AX , arr[0*2]
    mov [di] , AX
    add di , 2
    mov  AX , arr[1*2]
    mov [di] , AX 
    lea di , buffer2
    mov  AX , arr[2*2]
    mov [di] , AX
    add di , 2
    mov  AX , arr[3*2]
    mov [di] , AX
    
    

call newLine
print "first decrypted number: "

; print string in ds:si using procedure:
lea     si, buffer
call    print_string

call newLine
print "second decrypted number: "

; print string in ds:si using procedure:
lea     si, buffer2
call    print_string


call newLine


; wait for any key...
mov     ax, 0
int     16h

ret

;End main program 


;next all procedure definations


        
        
        
        
        
        
        
        
        
        
        
        

;prints any string sent to it as an argument
print   macro   sdat
local   next_char, s_dcl, printed, skip_dcl
push    ax      ; store registers...
push    si      ;
jmp     skip_dcl        ; skip declaration.
        s_dcl db sdat, 0
skip_dcl:
        lea     si, s_dcl
next_char:      
        mov     al, cs:[si]
        cmp     al, 0
        jz      printed
        inc     si
        mov     ah, 0eh ; teletype function.
        int     10h
        jmp     next_char
printed:
pop     si      ; re-store registers...
pop     ax      ;
print   endm


        
        
        
        
        
        
        
        
        
        
        
        
        
        



;prints any character sent to it
; we use it in to bread line '\n'
putc    macro   char
        push    ax
        mov     al, char
        mov     ah, 0eh
        int     10h     
        pop     ax
putc    endm
        
        
        
        
        
        
        
        
        
        
        
        


newLine proc near

;print break line
putc    0Dh
putc    10 ; next line.

ret
newLine endp







      
      
      
      
      
      
      
      
      
      
      



; get a null terminated string from keyboard,
; write it to buffer at ds:di, maximum buffer size is set in dx.
; 'enter' stops the input.
get_string      proc    near
push    ax
push    cx
push    di
push    dx

mov     cx, 0                   ; char counter.

cmp     dx, 1                   ; buffer too small?
jbe     empty_buffer            ;

dec     dx                      ; reserve space for last zero.


;============================
; eternal loop to get
; and processes key presses:

wait_for_key:

mov     ah, 0                   ; get pressed key.
int     16h

cmp     al, 0Dh                  ; 'return' pressed?
jz      exit


cmp     al, 8                   ; 'backspace' pressed?
jne     add_to_buffer
jcxz    wait_for_key            ; nothing to remove!
dec     cx
dec     di
putc    8                       ; backspace.
putc    ' '                     ; clear position.
putc    8                       ; backspace again.
jmp     wait_for_key

add_to_buffer:

        cmp     cx, dx          ; buffer is full?
        jae     wait_for_key    ; if so wait for 'backspace' or 'return'...

        mov     [di], al
        inc     di
        inc     cx
        
        ; print the key:
        mov     ah, 0eh
        int     10h

jmp     wait_for_key
;============================

exit:

; terminate by null:
mov     [di], 0

empty_buffer:

pop     dx
pop     di
pop     cx
pop     ax
ret
get_string      endp

             
             
             
             
             
             
             
             
             
             
             
             
             
             
             
             
             
             
             
             
             

; print null terminated string at current cursor position,
; raddress of string in ds:si
print_string proc near
push    ax      ; store registers...
push    si      ;

next_char:      
        mov     al, [si]
        cmp     al, 0
        jz      printed
        inc     si
        mov     ah, 0eh ; teletype function.
        int     10h
        jmp     next_char
printed:

pop     si      ; re-store registers...
pop     ax      ;

ret
print_string endp







       
       
       
       
       
       
       







proc encript   
    ; initialize
    mov deltaL , 9e37h
    mov deltaR , 79b9h
    mov i,0020h
    mov sumL,0
    mov sumR,0   
    f:  
        ; update sum 
        ; sum = sum + delta 
        mov AX,deltaR
        add sumR,AX
        mov AX,deltaL
        adc sumL,AX
        
        ; update L   
        ;L = L+(((R << 4)+K[0])^(R+sum)^((R >> 5)+K[1])) 
        mov AX,arr[2*2]
        mov BX,arr[3*2]
        mov j,4
        call shl32
        add BX,k0R
        adc AX,k0L
        mov CX,AX
        mov DX,BX
        
        mov AX,arr[2*2]
        mov BX,arr[3*2]
        add BX,sumR
        adc AX,sumL
        xor CX,AX
        xor DX,BX
        
        mov AX,arr[2*2]
        mov BX,arr[3*2]
        mov j,5h
        call shr32          
        add BX,k1R
        adc AX,k1L
        xor CX,AX
        xor DX,BX
        
        add arr[1*2],DX
        adc arr[0*2],CX
        
        ; update R
        ;R = R+(((L << 4)+K[2])^(L+sum)^((L >> 5)+K[3]))
        mov AX,arr[0*2]
        mov BX,arr[1*2]
        mov j,4
        call shl32
        add BX,k2R
        add AX,k2L
        mov CX,AX
        mov DX,BX
        
        mov AX,arr[0*2]
        mov BX,arr[1*2]
        add BX,sumR
        adc AX,sumL
        xor CX,AX
        xor DX,BX
        
        mov AX,arr[0*2]
        mov BX,arr[1*2]
        mov j,5h
        call shr32
        add BX,k3R
        adc AX,k3L
        xor CX,AX
        xor DX,BX
                     
                    
        add arr[3*2],DX
        adc arr[2*2],CX
        
        dec i
        cmp i,0                       
    jne f
    ret
endp  
     
     
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
     
     
     
proc decript  
    ; initialize
    mov deltaL , 9e37h
    mov deltaR , 79b9h
    mov i,0020h
    mov AX,deltaL
    mov BX,deltaR
    mov j,5
    call shl32  
    mov sumR,BX
    mov sumL,AX
  
    ff:  
        ; update R
        ;R -= (((L << 4)+K[2])^(L+sum)^((L >> 5)+K[3]))
        mov AX,arr[0*2]
        mov BX,arr[1*2]
        mov j,4
        call shl32
        add BX,k2R
        add AX,k2L
        mov CX,AX
        mov DX,BX
        
        mov AX,arr[0*2]
        mov BX,arr[1*2]
        add BX,sumR
        adc AX,sumL
        xor CX,AX
        xor DX,BX
        
        mov AX,arr[0*2]
        mov BX,arr[1*2]
        mov j,5h
        call shr32
        add BX,k3R
        adc AX,k3L
        xor CX,AX
        xor DX,BX
        
        
        sub arr[3*2],DX
        sbb arr[2*2],CX
        
        ; update L   
        ;L -= (((R << 4)+K[0])^(R+sum)^((R >> 5)+K[1])) 
        mov AX,arr[2*2]
        mov BX,arr[3*2]
        mov j,4
        call shl32
        add BX,k0R
        adc AX,k0L
        mov CX,AX
        mov DX,BX
        
        mov AX,arr[2*2]
        mov BX,arr[3*2]
        add BX,sumR
        adc AX,sumL
        xor CX,AX
        xor DX,BX
        
        mov AX,arr[2*2]
        mov BX,arr[3*2]
        mov j,5h
        call shr32          
        add BX,k1R
        adc AX,k1L
        xor CX,AX
        xor DX,BX
        
        sub arr[1*2],DX
        sbb arr[0*2],CX
        
        
        ; update sum
        ; sum = sum - delta  
        mov AX,deltaR
        sub sumR,AX
        mov AX,deltaL
        sbb sumL,AX
        
        
        dec i
        cmp i,0                       
    jne ff
    ret
endp   
       
       
       
   
   
   
   
   
   
   
   
   
   
       
       
       
       
proc shl32   
    shl32loop:     
        shl AX,1  
        test BX,8000h
        jz continue
        or AX,0001h
        continue:
        shl BX,1
        dec j
        CMP j,0
    jne shl32loop
    ret
endp       
     
     
     
     
     
     
     
     
     
     
     
     
     
proc shr32
    shr32loop:
        shr BX,1
        test AX,1h
        jz cont
        or BX,8000h
        cont:
        shr AX,1
        dec j
        CMP j,0
    jne shr32loop
    ret
endp