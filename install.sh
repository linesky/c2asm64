printf "\x1bc\x1b[43;37m\n"
nasm -f elf32 -o dlib.a dlib.asm
gcc -shared -o dlib.so.0.1 dlib.a
gcc -o my duseit.c -ldl
