To encrypt shellcode:
msfvenom -p - -a x64 --platform linux -e x86/shikata_ga_nai -f raw < asm0*_shellcode.txt > asm0*_x86.shikata_ga_nai
