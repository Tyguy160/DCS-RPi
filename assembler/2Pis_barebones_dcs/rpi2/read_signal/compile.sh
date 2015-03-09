#!/bin/bash

sudo rm read_signal sync_signal signal time
sudo gcc -Wall read_signal.c -o read_signal -lrt -Ofast
sudo gcc -Wall sync_signal.c -o sync_signal -Ofast
