#!/bin/sh
# ** AUTO GENERATED **

# 5.2.11 - Ensure SSH PermitEmptyPasswords is disabled (Automated)

cat /etc/ssh/sshd_config | grep -v PermitEmptyPasswords > /etc/ssh/sshd_config.new
echo "PermitEmptyPasswords no">>/etc/ssh/sshd_config.new

cp /etc/ssh/sshd_config.new /etc/ssh/sshd_config
rm /etc/ssh/sshd_config.new
