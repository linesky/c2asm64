.intel_syntax noprefix
.global writess
.global putss
.global fputss
.global exitss
.global strlens
.global strcps
.global strcats
.global strncps
.global memcps
.global prints
.global memfills
.global getout
.global getin
.global fgetss
.global creatss
.global closess
.global strchrreplace
.global openss
.global getreadss
.global getwritess
.global getreadswritess
.global clearss
.global getesp
.global strs
#nasm -felf32 -o hello.o hello.asm
#gcc hello.o -o hello.elf -nostdlib
.text
openss:
    mov eax, 5       
    mov ebx, [esp+4]  
    mov ecx, [esp+8] 
    mov ecx, [esp+12]
    int 0x80          
    ret
closess:
    mov eax, 6        
    mov ebx, [esp+4]  
    int 0x80         
    ret
creatss:
    mov eax, 8        
    mov ebx, [esp+4]  
    mov ecx, [esp+8] 
    int 0x80          
    ret
getesp:
    
    mov eax,esp
    ret
getin:
    mov ebx,stdinss
    mov eax,[ebx]
    ret
getout:
    mov ebx,stdoutss
    mov eax,[ebx]
    ret
getreadss:
    mov ebx,readsss
    mov eax,[ebx]
    ret
getwritess:
    mov ebx,writesss
    mov eax,[ebx]
    ret
getreadswritess:
    mov ebx,readwritesss
    mov eax,[ebx]
    ret
strchrreplace:
    
    mov edi, [esp+4]  
    mov ah, [esp+8] 
    mov bl, [esp+12] 

    strchrreplace2:
        mov al,[edi]
        cmp al,ah
        jnz strchrreplace3
        mov [edi],bl
        strchrreplace3:
        inc edi
        dec ecx
        cmp al,0
        jnz strchrreplace2
    
    ret    
memfills:
    
    mov edi, [esp+4]  
    mov ecx, [esp+8] 
    mov al, [esp+12] 
    cmp ecx,0
    jz memfills3
    cld
    memfills2:
        rep
        stosb
    memfills3:
    ret
memcps:
    mov esi, [esp+8]  
    mov edi, [esp+4]  
    mov ecx, [esp+12] 
    
    cmp ecx,0
    jz strncps3
    memcps2:
        rep
        movsb
    memcps3:
    ret
strncps:
    mov esi, [esp+8]  
    mov edi, [esp+4]  
    mov ecx, [esp+12] 
    cmp ecx,0
    jz strncps3
    cld
    strncps2:
    
        rep
        movsb
    strncps3:
    mov al,0
    mov [edi],al
    ret
strcats:
    mov edi, [esp+4]  
    mov esi, [esp+4]  
    mov ecx,0xffff 
    cld
    mov eax,0
    strcats4:
        repnz
        scasb
    mov eax,0xffff
    clc
    sub eax,ecx
    
    mov ebx,[esp+4]
    add eax,ebx
    dec eax
    mov [esp+4],eax 
    
    mov edi, [esp+8]  
    mov esi, [esp+8]  
    mov ecx,0xffff 
    cld
    mov eax,0
    strcats5:
        repnz
        scasb
    mov eax,0xffff
    clc
    sub eax,ecx
    mov ecx,eax
    cmp ecx,0
    jz strcats3
    mov esi, [esp+8]  
    mov edi, [esp+4]  
    cld
    strcats2:
       rep
       movsb
    strcats3:
    ret
    
strcps:
    mov edi, [esp+8]  
    mov esi, [esp+8]  
    mov ecx,0xffff 
    cld
    mov eax,0
    strcps4:
        repnz
        scasb
    mov eax,0xffff
    clc
    sub eax,ecx
    mov ecx,eax
    cmp ecx,0
    jz strcps3
    mov esi, [esp+8]  
    mov edi, [esp+4]  
    cld
    strcps2:
       rep
       movsb
    strcps3:
    ret
strlens:
    mov edi, [esp+4]  
    mov esi, [esp+4]  
    mov ecx,0xffff 
    cld
    mov eax,0
    strlens2:
        repnz
        scasb
    mov eax,0xffff
    clc
    sub eax,ecx
    dec eax
    ret
    
writess:
    mov eax, 4        
    mov ebx, [esp+12] 
    mov ecx, [esp+4]
    mov edx, [esp+8]  
    int 0x80          
    ret
fgetss:
    mov eax, 3        
    mov ebx, [esp+12]  
    mov ecx, [esp+4]
    mov edx, [esp+8]  
    int 0x80          
    ret
fputss:
    mov edi, [esp+4]  
    mov esi, [esp+4]  
    mov ecx,0xffff 
    cld
    mov eax,0
    fputss4:
        repnz
        scasb
    mov eax,0xffff
    clc
    sub eax,ecx
    mov edx,eax
    mov eax, 4        
    mov ebx, [esp+8]  
    mov ecx, [esp+4] 
    int 0x80          
    ret
prints:
    mov edi, [esp+4]  
    mov esi, [esp+4]  
    mov ecx,0xffff 
    cld
    mov eax,0
    prints4:
        repnz
        scasb
    mov eax,0xffff
    clc
    sub eax,ecx
    mov edx,eax
    mov eax, 4        
    mov ebx, 1        
    mov ecx, [esp+4] 
    int 0x80          
    mov eax, 4        
    mov ebx, 1       
    mov ecx, enters 
    mov edx, 1  
    int 0x80          
    ret
clearss:
    mov edx,2
    mov eax, 4        
    mov ebx, 1        
    mov ecx, clearsss 
    int 0x80          
    ret
putss:
    mov edi, [esp+4]  
    mov esi, [esp+4]  
    mov ecx,0xffff 
    cld
    mov eax,0
    putss4:
        repnz
        scasb
    mov eax,0xffff
    clc
    sub eax,ecx
    mov edx,eax
    mov eax, 4       
    mov ebx, 1       
    mov ecx, [esp+4] 
    int 0x80          
    ret
exitss:    
    mov eax, 1        
    mov ebx,[esp+4]      
    int 0x80          
    ret
strs:
          mov eax,[esp+4]
          mov edi,[esp+8]
          push ebp
          mov ebp,1000000000
          STR321:                
                    xor edx,edx
                    xor ecx,ecx
                    mov ebx,ebp
                    clc                 
                    div ebx                
                    mov esi,edx
                    mov ah,'0'
                    clc                
                    add al,ah
                    mov [edi],al
                    inc edi                
                    mov eax,ebp
                    xor edx,edx
                    xor ecx,ecx
                    mov ebx,10
                    clc                
                    div ebx                
                    mov ebp,eax
                    mov eax,esi
                    cmp ebp,0
                    JNZ STR321
             mov al,0
             mov [edi],al       
             pop ebp
             ret
.data

.word 0
stdoutss: 
.word 1
stdinss: 
.word 2
readsss: 
.word 0
writesss:
.word 1
readwritesss: 
.word 2
enters: 
.word  10
clearsss:
.byte 27
.ascii "c"
.word 0
