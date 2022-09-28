bits 16      ; BIOS works in 16 bit mode
org 0x7c00   ; MBR is loaded at 0x7c00 memory location

mov ax, 0x03
int 10h


mov si, msg
mov ah, 0Eh

.loop:
    lodsb
    or al, al
    jz halt
    int 10h
    jmp .loop

halt:
cli     ; disable further interrupts
hlt     ; halt

msg: db "Hack the world!!", 0

times 510-($-$$) db 0
dw 0xAA55
