printf "\x1c\x1b[44;30m"
gcc -m64 -o $1.asm $1.c -S -masm=intel


