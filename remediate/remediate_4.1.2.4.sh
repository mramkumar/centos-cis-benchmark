#!/bin/sh
# ** AUTO GENERATED **

# 4.1.2.4 - Ensure audit_backlog_limit is sufficient (Automated)


echo 'GRUB_CMDLINE_LINUX="audit_backlog_limit=8192"' >> /etc/default/grub
grub2-mkconfig -o /boot/grub2/grub.cfg

