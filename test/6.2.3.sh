#!/bin/sh
# ** AUTO GENERATED **

# 6.2.3 Ensure root is the only UID 0 account (Automated)

if [[ $(cat /etc/passwd | awk -F: '($3 == 0) { print $1 }') -eq 'root' ]] ; then
   exit 0
else
   exit 1
fi
