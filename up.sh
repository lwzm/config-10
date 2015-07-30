#!/bin/sh

for i in $(seq 1 10); do
    scp r$i-ifcfg-bond0   rr$i:/etc/sysconfig/network-scripts/ifcfg-bond0
    scp r$i-ospfd.conf    rr$i:/etc/quagga/ospfd.conf
    scp ifcfg-em4/r$i     rr$i:/etc/sysconfig/network-scripts/ifcfg-em4

    scp ifcfg-em1         rr$i:/etc/sysconfig/network-scripts/ifcfg-em1
    scp ifcfg-em2         rr$i:/etc/sysconfig/network-scripts/ifcfg-em2
    scp zebra.conf        rr$i:/etc/quagga/zebra.conf
    scp bonding.conf      rr$i:/etc/modprobe.d/bonding.conf
    scp sysctl.conf       rr$i:/etc/sysctl.conf
    scp hosts             rr$i:/etc/hosts
    scp rc.local          rr$i:/etc/rc.local
    scp nginx.conf        rr$i:/etc/nginx
    scp dstat.sh          r$i:bin/
done
exit


for i in $(seq 1 6); do
    scp r1-r6-ifcfg-lo0   rr$i:/etc/sysconfig/network-scripts/ifcfg-lo0
    scp r1-r6.local.conf  rr$i:/etc/rsyslog.d/
done
scp r7.hub.conf rr7:/etc/rsyslog.d/hub.conf
scp clean_log_tail.sh r7:log/
exit


chmod 755 .
ln -s /home/q/.dstat /usr/share/nginx/html/dstat
ln -s /home/q/log /usr/share/nginx/html/log
exit
