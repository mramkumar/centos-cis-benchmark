#!/bin/sh
# ** AUTO GENERATED **

# 6.2.1 Ensure accounts in /etc/passwd use shadowed passwords (Automated)

if [[ -r /etc/passwd ]]; then

   export result=$(awk -F: '($2 != "x" ) { print $1 " is not set to shadowed passwords "}' /etc/passwd)

   if [[ -z $result ]]; then
      exit 0
   else
      exit 1
   fi
else
   exit 1
fi
