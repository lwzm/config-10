#!/bin/sh

function gen() {
    n=$((200 + $1))

    echo -n "\
DEVICE=em4
IPADDR=192.168.0.$n
NETMASK=255.255.255.0
"

}

for i in $(seq 10); do
    gen $i >ifcfg-em4/r$i
done
