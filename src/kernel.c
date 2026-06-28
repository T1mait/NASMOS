__attribute__((section(".multiboot"))) struct
{
	int magic_number;
	int flags;
	int checksum;
} multiboot_header = {
	0x1BADB002,
	0x0,
	-(0x1BADB002)
};


int kmain()
{
	while (1)
	{

	}
}
