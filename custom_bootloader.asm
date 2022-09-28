mov ah, 0x03;
int 10h

times 510-($-$$) db 0
dw 0xAA55
