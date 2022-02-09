ORG 100h
    call encript   
    mov AX,arr[0*2]
    mov BX,arr[1*2]
    mov CX,arr[2*2]
    mov DX,arr[3*2]
    call decript
    mov AX,arr[0*2]
    mov BX,arr[1*2]
    mov CX,arr[2*2]
    mov DX,arr[3*2]
    ret

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
tmp dw 0 
i db 0
j db 0


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