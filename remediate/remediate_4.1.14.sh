#!/bin/sh
# ** AUTO GENERATED **

# 4.1.14 - Ensure changes to system administration scope (sudoers) is collected (Automated)

echo "-w /etc/sudoers -p wa -k scope" >> /etc/audit/rules.d/audit.rules
echo "-w /etc/sudoers.d/ -p wa -k scope" >> /etc/audit/rules.d/audit.rules
service auditd restart
