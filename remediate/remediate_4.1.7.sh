#!/bin/sh
# ** AUTO GENERATED **

# 4.1.7 - Ensure login and logout events are collected (Automated)

echo "-w /var/log/lastlog -p wa -k logins" >> /etc/audit/rules.d/audit.rules
echo "-w /var/run/faillog -p wa -k logins" >> /etc/audit/rules.d/audit.rules
service auditd restart
