bits 16
org 0xfc00

halt1:
    nop
    hlt
    jmp halt1
halt2:
    nop
    hlt
    jmp halt1
