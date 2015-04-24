#!/bin/sh
for i in $(seq 1 10); do
    scp r$i-ifcfg-em1     r$i:/etc/sysconfig/network-scripts/ifcfg-em1
    scp r$i-ifcfg-em2     r$i:/etc/sysconfig/network-scripts/ifcfg-em2
    scp r$i-ifcfg-lo0     r$i:/etc/sysconfig/network-scripts/ifcfg-lo0
    scp r$i-ospfd.conf    r$i:/etc/quagga/ospfd.conf

    scp zebra.conf        r$i:/etc/quagga/zebra.conf
    scp rc.local          r$i:/etc/rc.local
    scp sysctl.conf       r$i:/etc/sysctl.conf
    scp hosts             r$i:/etc/hosts
done

exit
