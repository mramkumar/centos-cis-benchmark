#!/bin/sh
# ** AUTO GENERATED **

# 6.2.9 Ensure no users have .forward files (Automated)

cat /etc/passwd | egrep -v '^(root|halt|sync|shutdown)' | awk -F: '($7 != "/sbin/nologin" && $7 != "/bin/false") { print $1 " " $6 }' | while read user dir; do
      if [ ! -h "$dir/.forward" -a -f "$dir/.forward" ]; then
         if [[ $1 -ne '' ]] ; then
            echo ".forward file $dir/.forward exists"
         fi
      exit 1
   fi
done
