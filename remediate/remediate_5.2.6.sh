#!/bin/sh
# ** AUTO GENERATED **

# 5.2.6 - Ensure SSH X11 forwarding is disabled (Automated)

cat /etc/ssh/sshd_config | grep -v X11Forwarding > /etc/ssh/sshd_config.new
echo "X11Forwarding no">>/etc/ssh/sshd_config.new

cp /etc/ssh/sshd_config.new /etc/ssh/sshd_config
rm /etc/ssh/sshd_config.new
