#!/bin/sh
# ** AUTO GENERATED **

# 5.2.6 Ensure SSH X11 forwarding is disabled (Automated)

grep "^\s*X11Forwarding" /etc/ssh/sshd_config | grep -q "X11Forwarding\s*no" || exit $?
