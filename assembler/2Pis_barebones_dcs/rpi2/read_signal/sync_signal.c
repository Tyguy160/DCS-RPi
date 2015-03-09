#include "gpio.c"

unsigned PIN_27 = 1 << 27;

int main()
{
  int i;

  if(map_peripheral(&gpio) == -1) 
  {
    printf("Failed to map the physical GPIO registers into the virtual memory space.\n");
    return -1;
  }

  OUT_GPIO(27);

  for(i=0; i<10;i++)
  {
    GPIO_SET(PIN_27);
    usleep(100-10*i);

    GPIO_CLR(PIN_27);
    usleep(100-10*i);
  }

  return 0; 
}



