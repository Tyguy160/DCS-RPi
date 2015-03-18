#include "rpi-gpio.h"
 
/** GPIO Register set */
volatile unsigned int* gpio = (unsigned int*)GPIO_BASE;
 
/** Simple loop variable */
volatile unsigned int tim;
 
/** Main function - we'll never return from here */
int main(void)
{
    /* Write 1 to the GPIO16 init nibble in the Function Select 1 GPIO
       peripheral register to enable GPIO16 as an output */
    gpio[GPIO_GPFSEL1] |= (1 << 18);
 
    /* Never exit as there is no OS to exit to! */
    while(1)
    {
 
        /* Set the GPIO16 output high ( Turn OK LED off )*/
        gpio[GPIO_GPSET0] = (1 << 16);
 
        for(tim = 0; tim < 500000; tim++)
            ;
 
        /* Set the GPIO16 output low ( Turn OK LED on )*/
        gpio[GPIO_GPCLR0] = (1 << 16);
 
        for(tim = 0; tim < 500000; tim++)
            ;
 
        /* Set the GPIO16 output high ( Turn OK LED off )*/
        gpio[GPIO_GPSET0] = (1 << 16);
    }
}
