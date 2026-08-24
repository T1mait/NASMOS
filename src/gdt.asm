gdt:
    dq 0 ; GDT[0] - null

    dw 0xFFFF ; GDT[1] - kernel code
    dw 0x0000
    db 0x00
    db 0x9A
    db 0xCF
    db 0x00

    dw 0xFFFF ; GDT[2] - kernel data
    dw 0x0000
    db 0x00
    db 0x92
    db 0xCF
    db 0x00

gdt_end:

gdt_descriptor:
    dw gdt_end - gdt - 1
    dd gdt

lgdt [gdt_descriptor]

jmp 0x08:reload

reload:
    mov ax, 0x10
    mov ds, ax
    mov gs, ax
    mov fs, ax
    mov es, ax
    mov ss, ax
