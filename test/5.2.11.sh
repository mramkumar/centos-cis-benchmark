#!/bin/sh
# ** AUTO GENERATED **

# 5.2.11 Ensure SSH PermitEmptyPasswords is disabled (Automated)

grep "^\s*PermitEmptyPasswords" /etc/ssh/sshd_config | grep -q "PermitEmptyPasswords\s*no" || exit $?
