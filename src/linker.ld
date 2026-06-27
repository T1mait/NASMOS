ENTRY(kmain)

SECTIONS
{
  .multiboot :{
    *(.multiboot)
  }

  . = 0x10000;
  .text : {
    *(.text)
  }

  .rodata : {
    *(.rodata*)
  }

  .data : {
    *(.data)
  }

  .bss : {
    *(.bss)
    *(COMMON)
  }

}
