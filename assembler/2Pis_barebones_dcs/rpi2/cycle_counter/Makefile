DEBUGFLAGS=-ggdb -g3
#DEBUGFLAGS=-ggdb -pg 
#DEBUGFLAGS=-ggdb -pg -a -Q 
OPTIMFLAGS=-O0

obj-m += enable-ccr.o

modules:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

test: test_ccr.c cpu_cycle_counter.c cpu_cycle_counter.h
	gcc -c cpu_cycle_counter.c
	gcc -c test_ccr.c
	gcc cpu_cycle_counter.o test_ccr.o -o test_ccr

clean:
	rm *.o
