#!/bin/sh
# ** AUTO GENERATED **

# 5.2.10 Ensure SSH root login is disabled (Automated)

grep "^\s*PermitRootLogin" /etc/ssh/sshd_config | grep -q "PermitRootLogin\s*no" || exit $?
