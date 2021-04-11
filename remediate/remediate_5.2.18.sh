#!/bin/sh
# ** AUTO GENERATED **

#  5.2.18 - Ensure SSH warning banner is configured (Automated)

cat /etc/ssh/sshd_config | grep -v 'Banner' > /etc/ssh/sshd_config.new
echo "Banner /etc/issue.net" >> /etc/ssh/sshd_config.new

cp /etc/ssh/sshd_config.new /etc/ssh/sshd_config
rm /etc/ssh/sshd_config.new
