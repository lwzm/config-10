#!/bin/sh
for i in $(seq 1 10); do
    #scp r$i:/etc/sysconfig/network-scripts/ifcfg-em1 r$i-ifcfg-em1
    #scp r$i:/etc/sysconfig/network-scripts/ifcfg-em2 r$i-ifcfg-em2
    scp r$i:/etc/sysconfig/network-scripts/ifcfg-lo0 r$i-ifcfg-lo0
    #scp r$i:/etc/quagga/ospfd.conf r$i-ospfd.conf
done
