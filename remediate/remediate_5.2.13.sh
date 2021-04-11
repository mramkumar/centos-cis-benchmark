#!/bin/sh
# ** AUTO GENERATED **

#  5.2.13 - Ensure only strong Ciphers are used (Automated)

cat /etc/ssh/sshd_config | grep -v 'Ciphers' > /etc/ssh/sshd_config.new
echo "Ciphers chacha20-poly1305@openssh.com,aes256-gcm@openssh.com,aes128-gcm@openssh.com,aes256-ctr,aes192-ctr,aes128-ctr" >> /etc/ssh/sshd_config.new

cp /etc/ssh/sshd_config.new /etc/ssh/sshd_config
rm /etc/ssh/sshd_config.new
