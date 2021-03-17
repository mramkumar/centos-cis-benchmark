#!/bin/sh
# ** AUTO GENERATED **

# 5.2.19 Ensure SSH PAM is enabled (Automated)

sshd -T | grep -i usepam| grep "usepam\s*yes" || exit $?
