#include "cpu_cycle_counter.h"

inline void ccnt_init (int val)
{
	asm volatile ("mcr p15, 0, %0, c15, c12, 0" : : "r" (val));
}

inline unsigned long ccnt_read (void)
{
  unsigned long cc;
 asm volatile ("mrc p15, 0, %0, c15, c12, 1":"=r" (cc));
  return cc;
}
