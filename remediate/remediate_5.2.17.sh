#!/bin/sh
# ** AUTO GENERATED **

#  5.2.17 - Ensure SSH LoginGraceTime is set to one minute or less (Automated)

cat /etc/ssh/sshd_config | grep -v LoginGraceTime  > /etc/ssh/sshd_config.new
echo "LoginGraceTime 60">>/etc/ssh/sshd_config.new

cp /etc/ssh/sshd_config.new /etc/ssh/sshd_config
rm /etc/ssh/sshd_config.new
