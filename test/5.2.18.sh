#!/bin/sh
# ** AUTO GENERATED **

# 5.2.18 Ensure SSH warning banner is configured (Automated)

grep -qE "^Banner\s+" /etc/ssh/sshd_config || exit $?
