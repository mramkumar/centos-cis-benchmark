#!/bin/sh
# ** AUTO GENERATED **

# 6.2.18 Ensure shadow group is empty (Automated)

if [[ -r /etc/group ]]; then

   export result=$(grep ^shadow:[^:]*:[^:]*:[^:]+ /etc/group)

   if [[ -z $result ]]; then
      exit 0
   else
      exit 1
   fi
else
   exit 1
fi
