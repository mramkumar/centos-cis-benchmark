#!/bin/sh
# ** AUTO GENERATED **

# 4.1.17 Ensure the audit configuration is immutable (Automated)

cut -d\# -f1 /etc/audit/audit.rules | egrep -q "^-e[[:space:]]+2" || exit 1
