#
#   Root directory/name of the ARM tools used to build the application.
#
ARMTOOLSROOT = /usr/bin/arm-none-eabi

#
#   C Compiler options.
#
OPTIONS = -nostdlib -ffreestanding -O1 

#
#   What do we need to make to build everything?
#
all: kernel.img
    copy /y /d kernel.img j:\

gpio.o : gpio.c
	$(ARMTOOLSROOT)-gcc $(OPTIONS) -c gpio.c -o gpio.o

gpio.elf : gpio.o 
	$(ARMTOOLSROOT)-ld gpio.o -o gpio.elf
	$(ARMTOOLSROOT)-objdump -D gpio.elf > gpio.list

kernel.img : gpio.elf
	$(ARMTOOLSROOT)-objcopy gpio.elf -O binary kernel.img

#
#   Delete any previously built files.
#
clean :
	del -f gpio.o
	del -f gpio.elf
	del -f gpio.list
	del -f kernel.img
