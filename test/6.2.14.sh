#!/bin/sh
# ** AUTO GENERATED **

# 6.2.14 Ensure no duplicate UIDs exist (Automated)

cat /etc/passwd | cut -f3 -d":" | sort -n | uniq -c | while read x ; do 
   [ -z "${x}" ] && break
   set - $x
   if [ $1 -gt 1 ]; then 
      if [[ $1 -ne '' ]] ; then
         echo "Duplicate UID ($2): ${users}"
      fi
      exit 1
   fi
done
