mov ah, 0x03
int 10h

mov ah, 0xE
mov al, 'H'
int 0x10

mov al, 'E'
int 0x10

mov al, 'Y'
int 0x10

times 510-($-$$) db 0
dw 0xAA55
