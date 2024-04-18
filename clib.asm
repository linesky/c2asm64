global writess
global putss
global fputss
global exitss
global prints
global fgetss
global creatss
global closess
global openss
global clearss
;nasm -felf32 -o hello.o hello.asm
;gcc hello.o -o hello.elf -nostdlib
section .text
openss:
    mov eax, 5       ; syswrite
    mov ebx, [esp+4]  ; stdout
    mov ecx, [esp+8] ; endereço da mensagem
    mov ecx, [esp+12] ; endereço da mensagem
    int 0x80          ; chama a interrupção do sistema
    ret
closess:
    mov eax, 6        ; syswrite
    mov ebx, [esp+4]  ; stdout
    int 0x80          ; chama a interrupção do sistema
    ret
creatss:
    mov eax, 8        ; syswrite
    mov ebx, [esp+4]  ; stdout
    mov ecx, [esp+8] ; endereço da mensagem
    int 0x80          ; chama a interrupção do sistema
    ret
writess:
    mov eax, 4        ; syswrite
    mov ebx, [esp+12]  ; stdout
    mov ecx, [esp+4] ; endereço da mensagem
    mov edx, [esp+8]  ; tamanho da mensagem
    int 0x80          ; chama a interrupção do sistema
    ret
fgetss:
    mov eax, 3        ; sysread
    mov ebx, [esp+12]  ; stdin
    mov ecx, [esp+4] ; endereço da mensagem
    mov edx, [esp+8]  ; tamanho da mensagem
    int 0x80          ; chama a interrupção do sistema
    ret
fputss:
    mov edi, [esp+4]  ; endereço da mensagem
    mov esi, [esp+4]  ; endereço da mensagem
    mov ecx,0xffff ; tamanho da mensagem
    cld
    mov eax,0
    fputss4:
        repnz
        scasb
    mov eax,0xffff
    clc
    sub eax,ecx
    mov edx,eax
    mov eax, 4        ; syswrite
    mov ebx, [esp+8]  ; stdout
    mov ecx, [esp+4] ; endereço da mensagem
    int 0x80          ; chama a interrupção do sistema
    ret
prints:
    mov edi, [esp+4]  ; endereço da mensagem
    mov esi, [esp+4]  ; endereço da mensagem
    mov ecx,0xffff ; tamanho da mensagem
    cld
    mov eax,0
    prints4:
        repnz
        scasb
    mov eax,0xffff
    clc
    sub eax,ecx
    mov edx,eax
    mov eax, 4        ; syswrite
    mov ebx, 1        ; stdout
    mov ecx, [esp+4] ; endereço da mensagem
    int 0x80          ; chama a interrupção do sistema
    mov eax, 4        ; syswrite
    mov ebx, 1        ; stdout
    mov ecx, enters ; endereço da mensagem
    mov edx, 1  ; tamanho da mensagem
    int 0x80          ; chama a interrupção do sistema
    ret
clearss:
    mov edx,2
    mov eax, 4        ; syswrite
    mov ebx, 1        ; stdout
    mov ecx, clearsss ; endereço da mensagem
    int 0x80          ; chama a interrupção do sistema
    ret
putss:
    mov edi, [esp+4]  ; endereço da mensagem
    mov esi, [esp+4]  ; endereço da mensagem
    mov ecx,0xffff ; tamanho da mensagem
    cld
    mov eax,0
    putss4:
        repnz
        scasb
    mov eax,0xffff
    clc
    sub eax,ecx
    mov edx,eax
    mov eax, 4        ; syswrite
    mov ebx, 1        ; stdout
    mov ecx, [esp+4] ; endereço da mensagem
    int 0x80          ; chama a interrupção do sistema
    ret
exitss:    ; Finalização do programa
    mov eax, 1        ; sys_exit
    mov ebx,[esp+4]      ; código de saída 0
    int 0x80          ; chama a interrupção do sistema
    ret

section .data
db 0
stdoutss: dd 1
stdinss: dd 2
readsss: dd 0
writesss: dd 1
readwritesss: dd 2
enters: db 10
clearsss: db 27,"c",0
