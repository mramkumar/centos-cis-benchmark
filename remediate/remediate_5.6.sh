#!/bin/sh
# ** AUTO GENERATED **

# 5.6 - Ensure access to the su command is restricted (Automated)

echo "auth required pam_wheel.so use_uid" >> /etc/pam.d/su
