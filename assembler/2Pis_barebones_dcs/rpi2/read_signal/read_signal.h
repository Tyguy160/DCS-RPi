#ifndef AUTO_CORR_HEADER_FILE
#define AUTO_CORR_HEADER_FILE

#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <math.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>

#include"/home/pi/cycle_counter/cpu_cycle_counter.c"

/* GPIO related things */
#define BCM2708_PERI_BASE        0x20000000
#define GPIO_BASE                (BCM2708_PERI_BASE + 0x200000) /* GPIO controller */
#define BLOCK_SIZE (4*1024)
#define GPIO_PIN 17 // update if this needs to be changed

//declare all functions here

void setup_gpio();

#endif
