SECTIONS
{
    . = 0x7c00;
    .text :
    {
        __start = .;
        *(.text)
        . = 0x1fe;
        SHORT(0xaa55)
    }
}