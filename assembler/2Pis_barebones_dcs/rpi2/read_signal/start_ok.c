#include "gpio.c"
#include "cpu_cycle_counter.c"

unsigned PIN_17 = 1 << 17;
unsigned PIN_22 = 1 << 22;

int main(int argc, char **argv)
{
    if(map_peripheral(&gpio) == -1) {
    	printf("Failed to map the physical GPIO registers into the virtual memory space.\n");
    	return -1;
      }  

    OUT_GPIO(23);

    GPIO_SET(1<<23);
    usleep(1000000);
    GPIO_CLR(1<<23);

    return 0;

}
