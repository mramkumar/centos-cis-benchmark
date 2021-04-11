#!/bin/sh
# ** AUTO GENERATED **

#  5.2.14 - Ensure only strong MAC algorithms are used (Automated)

cat /etc/ssh/sshd_config | grep -v MACs > /etc/ssh/sshd_config.new
echo "MACs hmac-sha2-512-etm@openssh.com,hmac-sha2-256-etm@openssh.com,hmac-sha2-512,hmac-sha2-256" >> /etc/ssh/sshd_config.new

cp /etc/ssh/sshd_config.new /etc/ssh/sshd_config
rm /etc/ssh/sshd_config.new
