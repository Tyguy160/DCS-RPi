.section .init
.globl _start
_start:

@set GPIO and Clock base locations
@GPIO Base
ldr r12,=0x20200000
@DATA Base
ldr r11,=data_array

@..................................................................................................
@set GPIO inputs and outputs


@GPIO 16 - OK LED  - output
ldr r4,=1
lsl r4,#18

@GPIO 17 - signal - input

str r4,[r12,#4]

@GPIO 22 - transfer -  output
ldr r4,=1
lsl r4,#6

@GPIO 23 - rpi1 ready - input

@GPIO 24 - rpi2 ready - output
ldr r5,=1
lsl r5,#12
orr r4,r4,r5

@GPIO 25 - kill transfer - input

str r4,[r12,#8]

ldr r4,=1
mcr p15,0,r4,c15,c12,0


@..................................................................................................

main:


	wait1_for_rpi1:
		mov r4,#1			@ r4 = 1
		lsl r4,#23			@ r4 = 1<<23
		ldr r5,[r12,#52]		@ r5 = read_gpio()
		and r5,r4,r5			@ r5 = r4 & r5
		cmp r4,r5			@ if r5 == r4, continue,
	bne wait1_for_rpi1			@ else loop

	wait2_for_rpi1:
		mov r4,#1			@ r4 = 1
		lsl r4,#23			@ r4 = 1<<23
		ldr r5,[r12,#52]		@ r5 = read_gpio()
		and r5,r4,r5			@ r5 = r4 & r5
		cmp r5,#0			@ if r5 == r4, continue,
	bne wait2_for_rpi1			@ else loop



	mov r4,r11			@ r4 = loop counter = 0

	ldr r5,=10000000		@ r5 = n = 10000

	add r5,r11,r5

	add r4,r4,#4

	mrc p15, 0, r0, c15,c12,1	@ r8 = ccnt_read()


	read_signal:

		ldr r2, [r12, #52]		@ r9 = gpio_read()

		str r2, [r4],#4

		cmp r4, r5

	bne read_signal				@else loop

	mrc p15, 0, r1, c15, c12 ,1

	mov r4,r11				@ r4 = loop counter = 0

	sub r2,r1,r0
	str r2,[r4]

	ldr r6,=0				@ r6 = time_bit_mask = 1

	transfer:

		ldr r8,[r4]

		cmp r6,#32

		lsrne r8,r6
		addne r6,r6,#1

		addeq r4,#4
		lsreq r8,#17

		and r8,#1
		cmp r8,#1

		ldr r7,=1
		lsl r7,#22
		streq r7,[r12, #28]		@ 	*(r12 + 28) = r7

		@ set pin 24 - rpi2 ready
		ldr r7,=1			@ r7 = 1
		lsl r7,#24			@ r7 = 1<<23
		str r7,[r12,#28]		@ *(r12 +28) = r7

		ldr r7,=1 			@ r7 = 1
		lsl r7,#23			@ r7 = 1<<23

		@ wait for pin 23 high - rpi1 has data
		handshake1:
			ldr r8,[r12, #52]		@ r8 = gpio_read()
			and r8,r8,r7			@ r8 = r8 & r7
			cmp r7,r8			@ if r8 == r7 continue
		bne handshake1

		@ clear pin 24 - rpi2  ready to continue

		ldr r7,=1			@ r7 = 1
		lsl r7,#24			@ r7 = 1<<24
		str r7,[r12,#40]		@*(r12 + 40) = r7

		ldr r7,=1			@ r7 = 1
		lsl r7,#22			@ r7 = 1<<22
		str r7,[r12,#40]		@ *(r12 + 40) = r7

		ldr r7,=1			@ r7 = 1
		lsl r7,#23			@ r7 = 1<<23

		@ wait for pin 23 low - rpi1 ready to continue
		handshake2:
			ldr r8,[r12, #52]		@ r8 = gpio_read()
			and r8,r7,r8			@ r8 = r8 & r7
			cmp r8,r7			@ if r8 == 0 continue
		beq handshake2



		ldr r7,=1
		lsl r7,#25
		ldr r8,[r12,#52]
		and r8,r7,r8
		cmp r7,r8			@ if r4 == r5 continue


	bne transfer				@else loop




	ldr r4,=10			@ r4 = number of blinks = 10

	ldr r5,=1			@ r5 = 1
	lsl r5,#16			@ r5 = pin_16_mask = 1<<16


	blink:


		str r5, [r12,#40]	@ set pin 16 low (act led on)


		ldr r6,=1000000		@ r6 = arbitrary wait time = 1000000
		wait1:
			sub r6,#1	@ r6 = r6-1
			cmp r6,#0	@ if r6 == 0, continue
		bne wait1		@ else, loop


		str r5, [r12,#28]	@ set pin 16 high (act led off)


		ldr r6,=1000000		@ r6 = arbitrary wait time = 1000000
		wait2:
			sub r6,#1	@ r6 = r6-1
			cmp r6,#0	@ if r6 == 0, continue
		bne wait2		@ else, loop

		sub r4,#1		@ r4 = r4 -1
		cmp r4,#0		@ if r4 == 0, continue

	bne blink			@ else, loop




b main

/*

.bss
.align 3
data_array:
.space 20000 * 4

*/

.data
data_array:
.space 20000000 * 4
