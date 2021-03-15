#!/bin/sh
# ** AUTO GENERATED **

# 6.2.16 Ensure no duplicate user names exist (Automated)

cat /etc/passwd | cut -f1 -d":" | sort -n | uniq -c | while read x ; do
   [ -z "${x}" ] && break
   set - $x
   if [ $1 -gt 1 ]; then
      if [[ $1 -ne '' ]] ; then
         echo "Duplicate User Name ($2): ${uids}"
      fi
      exit 1
   fi
done
