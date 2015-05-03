#!/bin/sh

ping -c 1 -w 1 r0 | head -2
ping -c 1 -w 1 r07 | head -2
ping -c 1 -w 1 r08 | head -2
ping -c 1 -w 1 r09 | head -2
ping -c 1 -w 1 r | head -2

for i in $(seq 10); do
    ping -c 1 -w 1 r$i | head -2
done

for i in $(seq 10); do
    ping -c 1 -w 1 rr$i | head -2
done

exit
