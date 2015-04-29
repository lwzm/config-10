#!/bin/sh

for i in $(seq 1 10); do
    scp r$i-ifcfg-em1     rr$i:/etc/sysconfig/network-scripts/ifcfg-em1
    scp r$i-ifcfg-em2     rr$i:/etc/sysconfig/network-scripts/ifcfg-em2
    scp r$i-ifcfg-lo0     rr$i:/etc/sysconfig/network-scripts/ifcfg-lo0
    scp r$i-ospfd.conf    rr$i:/etc/quagga/ospfd.conf

    scp zebra.conf        rr$i:/etc/quagga/zebra.conf
    scp rc.local          rr$i:/etc/rc.local
    scp sysctl.conf       rr$i:/etc/sysctl.conf
    scp hosts             rr$i:/etc/hosts
done

exit


for i in $(seq 1 6); do
    scp r1-r6.local.conf  rr$i:/etc/rsyslog.d/
done
scp r7.hub.conf rr7:/etc/rsyslog.d/hub.conf

exit
