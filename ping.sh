#!/bin/sh

ping -c 1 -w 1 r0 | head -2
ping -c 1 -w 1 r | head -2

ping -c 1 -w 1 rr7 | head -2

for i in $(seq 10); do
    ping -c 1 -w 1 b$i | head -2
done


exit
