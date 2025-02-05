#!/bin/sh
# ** AUTO GENERATED **

# 4.1.6 Ensure events that modify the system's Mandatory Access Controls are collected (Automated)

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+MAC-policy" | egrep "\-p[[:space:]]+wa" \
  | egrep -q "\-w[[:space:]]+\/etc\/selinux\/" || exit 1
