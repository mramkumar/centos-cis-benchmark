#!/bin/sh
# ** AUTO GENERATED **

# 4.1.15 - Ensure system administrator actions (sudolog) are collected (Automated)

echo "-w /var/log/sudo.log -p wa -k actions" >> /etc/audit/rules.d/audit.rules
service auditd restart
