#!/bin/sh
# ** AUTO GENERATED **

# 6.2.2 Ensure /etc/shadow password fields are not empty (Automated)

if [[ -r /etc/shadow ]]; then

   export result=$(cat /etc/shadow | awk -F: '($2 == "" ) { print $1}')

   if [[ -z $result ]]; then
      exit 0
   else
      exit 1
   fi
else
   exit 1
fi
