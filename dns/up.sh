#!/bin/sh
for i in 26 30 34; do
#ssh dns$i 'rm /etc/quagga/ospf??'
  #scp zebra.conf dns$i:/etc/quagga/
  #scp ifcfg-lo0 dns$i:net/
  #scp /tmp/sshd_config dns$i:/etc/ssh/
  scp dnsmasq.conf dns$i:/etc
  #ssh dns$i service sshd restart
  #scp ospf$i dns$i:/etc/quagga/ospfd.conf
  #scp hosts 172.16.8.$i:
  #scp domains2 172.16.8.$i:
done
exit
