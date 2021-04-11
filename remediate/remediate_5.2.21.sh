#!/bin/sh
# ** AUTO GENERATED **

#  5.2.21 - Ensure SSH MaxStartups is configured (Automated)

cat /etc/ssh/sshd_config | grep -v 'MaxStartups' > /etc/ssh/sshd_config.new
echo "MaxStartups 10:30:60" >> /etc/ssh/sshd_config.new

cp /etc/ssh/sshd_config.new /etc/ssh/sshd_config
rm /etc/ssh/sshd_config.new
