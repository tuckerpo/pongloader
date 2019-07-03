%include "constants.const"
org 0x7c00
bits 16
xor ax, ax
mov ds, ax

boot:
    cli
    mov si, hello
    mov ah, 0x0e
  .loop:
    lodsb
    or al, al
    jz halt
    int 0x10
    jmp .loop
halt:
    hlt
hello:
    db "tuck's bootloader", 0

times 510-($-$$) db 0
dw 0xAA55
