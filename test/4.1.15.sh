#!/bin/sh
# ** AUTO GENERATED **

# 4.1.15 Ensure system administrator actions (sudolog) are collected (Automated)

cut -d\# -f1 /etc/audit/audit.rules | egrep "\-k[[:space:]]+actions" | egrep "\-p[[:space:]]+wa" \
  | egrep -q "\-w[[:space:]]+\/var\/log\/sudo.log" || exit 1
