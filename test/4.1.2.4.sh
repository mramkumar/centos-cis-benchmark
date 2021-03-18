#!/bin/sh
# ** AUTO GENERATED **

# 4.1.2.4 Ensure audit_backlog_limit is sufficient (Automated)

if [ -z $(grep "^\s*linux" /boot/grub2/grub.cfg | grep -v "audit_backlog_limit=") ]; then
  grep "audit_backlog_limit=" /boot/grub2/grub.cfg|head -n1|awk -F 'audit_backlog_limit=' '{print $2}'|awk '($1 < 8192) { exit 1 }' 
else
  exit 1
fi


