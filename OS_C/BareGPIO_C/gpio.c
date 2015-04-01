//
//  Flags used to configure the GPIO port.
//
#define FLAG_GPIO_RESET     ((7 << 18) | (7 << 24))
#define FLAG_GPIO_CONFIG    ((1 << 18) | (1 << 24))
//
//  Bits which will allow control of GPIO0 pins for the status
//  LED and the header on the Pi.
//
#define GPIO_PINS           ((1 << 16) | (1 << 18))
//
//  The following register definitions are used to access the GPIO
//  pins on the BCM2835.  The register definitions are taken from
//  section 6 of the BCM manual and the mapping is described in
//  section 1 of the same.
//
//  Address of the register which will configure the GPIO pins.
//
volatile unsigned int *gpsel1 = (unsigned int *) 0x20200004;
//
//  Address of the register which will set the GPIO pins.
//
volatile unsigned int *gpset0 = (unsigned int *) 0x2020001C;
//
//  Address of the register which will clear the GPIO pins.
//
volatile unsigned int *gpclr0 = (unsigned int *) 0x20200028;
//
//  Contents of the GPIO configuration register.
//
unsigned int gpioConfig;
//
//  Main program loop.
//
int main()
{
    //
    //  Reconfigure GPIO 16 and 18 to be outputs.  Clear any
    //  previous GPIO configuration for these pins.
    //
    gpioConfig = *gpsel1;
    //
    //  Firstly, remove any configuration for GPIO 16 & 18.
    //
    gpioConfig &= ~FLAG_GPIO_RESET;
    //
    //  Now configure GPIO 16 & 18 to be plain GPIO outputs.
    //
    gpioConfig |= FLAG_GPIO_CONFIG;
    *gpsel1 = gpioConfig;
    //
    //  Toggle GPIO 16 and 18 forever.
    //
    while (1) { *gpclr0 = GPIO_PINS; *gpset0 = GPIO_PINS; }
    return(0);
}
