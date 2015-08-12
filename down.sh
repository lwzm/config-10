#!/bin/sh
for i in $(seq 1 10); do
    scp bb$i:/etc/sysconfig/network-scripts/ifcfg-bond0     ifcfg-bond0/r$i   
    scp bb$i:/etc/quagga/ospfd.conf                         ospfd.conf/r$i    
    scp bb$i:/etc/sysconfig/network-scripts/ifcfg-em4       ifcfg-em4/r$i     
done
exit
