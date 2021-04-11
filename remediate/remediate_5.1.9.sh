#!/bin/sh
# ** AUTO GENERATED **

# 5.1.9 - Ensure at is restricted to authorized users (Automated)

rm /etc/at.deny
touch /etc/at.allow
chown root:root /etc/at.allow
chmod 600 /etc/at.allow
