#!/bin/sh
# ** AUTO GENERATED **

#  4.1.11 - Ensure use of privileged commands is collected (Automated)

find / -xdev \( -perm -4000 -o -perm -2000 \) -type f | awk '{print "-a always,exit -F path=" $1 " -F perm=x -F auid>=500 -F auid!=4294967295 -k privileged" }' >> /etc/audit/rules.d/audit.rules

service auditd restart
