#!/bin/sh
# ** AUTO GENERATED **

# 4.1.2.2 Ensure audit logs are not automatically deleted (Automated)

cut -d\# -f2 /etc/audit/auditd.conf | grep 'max_log_file_action' | cut -d= -f2 | tr -d '[[:space:]]' | grep -q 'keep_logs' || exit 1
