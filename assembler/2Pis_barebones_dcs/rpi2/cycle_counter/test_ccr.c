#include <stdio.h>
#include <sys/time.h>
#include <stdlib.h>
#include <unistd.h>
#include "cpu_cycle_counter.h"

int main ()
{
	unsigned long cc1, cc2;
	long double ccavg = 0;
	long i, j;
	struct timespec req, rem;
	struct timeval tv1, tv2, tvmean;
	struct timezone tz;

	ccnt_init(1); // make a call to this once - actually it's only needed once after module is loaded
	
	req.tv_sec = 0;
	req.tv_nsec = 5000000;
	
	gettimeofday(&tv1, &tz);
	for (i=0; i<50; i++) {
		//sleep(50);
		//usleep(500);
		//nanosleep(&req, &rem);
		cc1 = ccnt_read();
		ccnt_read();
		cc2 = ccnt_read();
		ccavg += cc2-cc1;
		//cc1=cc2;
	}
	gettimeofday(&tv2, &tz);

	//printf("cc1=%lld, cc2=%lld\n", cc1, cc2);
	//printf("Elapsed cycles = %lld \n", cc2-cc1);
	printf("Total cycels = %0.2g; Mean cycles = %e \n", ccavg, ccavg/i);
	//printf("tv1 (sec, usec) = (%ld, %ld)\n", tv1.tv_sec, tv1.tv_usec);
	//printf("tv2 (sec, usec) = (%ld, %ld)\n", tv2.tv_sec, tv2.tv_usec);
	timersub(&tv2, &tv1, &tvmean);

	printf("Elapsed time (sec.usec) = (%ld.%ld)\n", tvmean.tv_sec, tvmean.tv_usec);
	printf("%g/(%ld.%ld)\n", ccavg, tvmean.tv_sec, tvmean.tv_usec);
	return(0);
}

