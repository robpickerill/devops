#include<stdio.h>
#include<stdlib.h>
#include<inttypes.h>

uint16_t val = 0x400;
uint8_t* ptr = (uint8_t*) &val;

int main()
{
if (ptr[0] == 0x40)
{
	printf("big endian");
}
else if (ptr[1] == 0x40)
{
	printf("little endian");
}
else
{
	printf("unknown endian");
}
}
