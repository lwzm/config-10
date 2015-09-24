#!/bin/sh

for i in 1 2 3 4 5 6; do
    scp nginx-default.conf  bb$i:/etc/nginx/conf.d/default.conf
    scp nginx-proxy.conf    bb$i:/etc/nginx/conf.d/proxy.conf
done
exit

for i in 1 2 3 4 5 6 7 8 9 10; do
    scp hosts             bb$i:/etc/hosts
done
exit

for i in $(seq 1 10); do
    scp ifcfg-bond0/r$i     bb$i:/etc/sysconfig/network-scripts/ifcfg-bond0
    scp ospfd.conf/r$i      bb$i:/etc/quagga/ospfd.conf
    scp ifcfg-em4/r$i       bb$i:/etc/sysconfig/network-scripts/ifcfg-em4

    scp ifcfg-em1           bb$i:/etc/sysconfig/network-scripts/ifcfg-em1
    scp ifcfg-em2           bb$i:/etc/sysconfig/network-scripts/ifcfg-em2
    scp zebra.conf          bb$i:/etc/quagga/zebra.conf
    scp bonding.conf        bb$i:/etc/modprobe.d/bonding.conf
    scp sysctl.conf         bb$i:/etc/sysctl.conf
    scp sshd_config         bb$i:/etc/ssh/sshd_config
    scp hosts               bb$i:/etc/hosts
    scp rc.local            bb$i:/etc/rc.local
    scp nginx.conf          bb$i:/etc/nginx
    scp nginx-default.conf  bb$i:/etc/nginx/conf.d/default.conf
    scp nginx-proxy.conf    bb$i:/etc/nginx/conf.d/proxy.conf
    scp dstat.sh            b$i:bin/
done
exit


for i in $(seq 1 6); do
    scp r1-r6-ifcfg-lo0   bb$i:/etc/sysconfig/network-scripts/ifcfg-lo0
    scp r1-r6.local.conf  bb$i:/etc/rsyslog.d/
    scp iptables          bb$i:/etc/sysconfig/
done
scp r7.hub.conf bb7:/etc/rsyslog.d/hub.conf
scp clean_log_tail.sh r7:log/
exit


chmod 755 .
ln -s /home/q/.dstat /usr/share/nginx/html/dstat
ln -s /home/q/log /usr/share/nginx/html/log
exit

crontab <<EOF
0 * * * * ./bin/dstat.sh >/dev/null
EOF
