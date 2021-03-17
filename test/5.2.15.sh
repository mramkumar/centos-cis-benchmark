#!/bin/sh
# ** AUTO GENERATED **

# 5.2.15 Ensure only strong Key Exchange algorithms are used (Automated)

algorithm=`sshd -T | grep kexalgorithms|grep -E 'diffie-hellman-group1-sha1|diffie-hellman-group14-sha1|diffie-hellman-group-exchange-sha1'|wc -l`

if [ $algorithm -ne 0 ]; then
   exit 1
fi
