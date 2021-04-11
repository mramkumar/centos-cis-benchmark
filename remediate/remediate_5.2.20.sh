#!/bin/sh
# ** AUTO GENERATED **

#  5.2.20 - Ensure SSH AllowTcpForwarding is disabled (Automated)

cat /etc/ssh/sshd_config | grep -v 'AllowTcpForwarding' > /etc/ssh/sshd_config.new
echo "AllowTcpForwarding no" >> /etc/ssh/sshd_config.new

cp /etc/ssh/sshd_config.new /etc/ssh/sshd_config
rm /etc/ssh/sshd_config.new
