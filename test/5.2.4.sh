#!/bin/sh
# ** AUTO GENERATED **

# 5.2.4 Ensure SSH access is limited (Automated)

grep -qE "^AllowUsers|^AllowGroups|^DenyUsers|^DenyGroups" /etc/ssh/sshd_config || exit $?
