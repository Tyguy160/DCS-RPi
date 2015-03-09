.section .init
.globl _start
_start:

/*set GPIO and Clock base locations

GPIO Base*/
#define gpio 0x20200000
#define signal 0x00000000

/*..................................................................................................*/
set GPIO inputs and outputs

/*GPIO 16 - OK LED  - output*/
lsl r0,#1,#18
str r0,[gpio,#4]

/*GPIO 17 - signal – input*/
lsl r0,#1,#21
str r0,[gpio,#4]

/*GPIO 22 - transfer – output*/
lsl r0,#1,#6
str r0,[gpio,#8]

/*GPIO 23 - rpi1 ready – input*/
lsl r0,#1,#9
str r0,[gpio,#8]

/*GPIO 24 - rpi2 ready – output*/ 
lsl r0,#1,#12
str r0,[gpio,#8]
/*..................................................................................................*/

/* Blink OK LED
OK LED is on when pin 16 is low*/

loop:
str #0,[gpio,#40]
mov r0, #1000000
wait1:
	sub r0,#1
	cmp r0, 0
bne wait1:
str #1,[gpio,#40]
mov r0, #1000000
wait1:
	sub r0,#1
	cmp r0, 0
bne wait1:
b loop

