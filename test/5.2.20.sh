#!/bin/sh
# ** AUTO GENERATED **

# 5.2.20 Ensure SSH AllowTcpForwarding is disabled (Automated)

sshd -T | grep -i allowtcpforwarding| grep "allowtcpforwarding\s*no" || exit $?
