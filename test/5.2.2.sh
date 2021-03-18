#!/bin/sh
# ** AUTO GENERATED **

# 5.2.2 Ensure permissions on SSH private host key files are configured (Automated)

find /etc/ssh -xdev -type f -name 'ssh_host_*_key' -exec ls -1 {} \; | while read file 
do
   stat -L -c "%a %u %G" $file | grep -qE "640 0 ssh_keys$|600 0 root$" || exit $?
done
