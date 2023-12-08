To crypt shellcode:
msfvenom -p - -a x64 --platform linux -e x86/shikata_ga_nai -f sh < asm05_shellcode.txt > asm05_x86.shikata_ga_nai 
