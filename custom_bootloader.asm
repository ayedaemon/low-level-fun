	

; Setup TTY mode
mov ax, 0x03
int 10h


mov si, msg      ; si register now points to msg
mov ah, 0Eh      ; Use write function from 10h interrupt

.loop:
    lodsb          ; load first char from msg and point to next char
    or al, al      ; Check if end of string
    jz halt        ; if end of string, jump to halt
    int 10h        ; else, print char via interrupt
    jmp .loop      ; loop

halt:

msg: db "Hack the world", 0

times 510-($-$$) db 0
dw 0xAA55

