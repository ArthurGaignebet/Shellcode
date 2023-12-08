To Create all asm_0*.o and asm_0*:
./build.sh 

To get shellcode from a exec: 
./create_shellcode.sh asm01


To exec a shellcode:
./wrapper $(echo -ne “shellcode here”)
