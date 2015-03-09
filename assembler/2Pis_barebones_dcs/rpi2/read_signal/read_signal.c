#include "gpio.c"
#include "cpu_cycle_counter.c"

unsigned PIN_17 = 1 << 17;
unsigned PIN_22 = 1 << 22;

int main(int argc, char **argv)
{
    const int syncLength = 25000;
    const int n = atoi(argv[1]) + syncLength;
    int i;
    unsigned t1, t2, time;
    unsigned short t[n];
    FILE* signal_file = fopen("signal", "w+");
    FILE* time_file = fopen("time","w+");

    if(map_peripheral(&gpio) == -1) {
    	printf("Failed to map the physical GPIO registers into the virtual memory space.\n");
    	return -1;
      }  
    ccnt_init(1);
    INP_GPIO(17);
    INP_GPIO(22);

    while (!(GPIO_READ(PIN_22))){};

    t2 = ccnt_read();

    for (i=0; i<syncLength; i++){
        t1 = ccnt_read();
        t[i] = GPIO_READ(PIN_22) ? (t1 -t2) | 1 : (t1-t2) & 4294967294;
        t2 = t1;
        }

    for(i=syncLength; i<n; i++){
        //while(ccnt_read()-t1<100){};
        t1 = ccnt_read();
        t[i] = GPIO_READ(PIN_17) ? (t1 -t2) | 1 : (t1-t2) & 4294967294;
        t2 = t1;
        }

    time = 0;

    for(i=0; i<n; i++){
        time += (unsigned)t[i];
        //printf("%u\n",t[i]);
        fprintf(signal_file,"%u ", t[i] & 1 ? 1 : 0);
        fprintf(time_file, "%u ", time);
    }

    fclose(signal_file);
    fclose(time_file);

    return 0;

}
