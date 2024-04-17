printf "\x1bc\x1b[43;37m\n"
nasm -f elf32 -o dlib.a dlib.asm
nasm -f elf32 -o libcs.o clib.asm
gcc -shared -o dlib.so.0.1 dlib.a -nostdlib
gcc -o my libcs.o duseit.c -ldl
