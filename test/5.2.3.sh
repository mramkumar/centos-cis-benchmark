#!/bin/sh
# ** AUTO GENERATED **

# 5.2.3 Ensure permissions on SSH public host key files are configured (Automated)

find /etc/ssh -xdev -type f -name 'ssh_host_*_key.pub' -exec ls -1 {} \; | while read file 
do
   stat -L -c "%a %u %g" $file | grep -q "644 0 0$" || exit $?
done
