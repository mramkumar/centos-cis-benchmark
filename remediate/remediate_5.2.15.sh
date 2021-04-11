#!/bin/sh
# ** AUTO GENERATED **

#  5.2.15 - Ensure only strong Key Exchange algorithms are used (Automated)

cat /etc/ssh/sshd_config | grep -v 'KexAlgorithms' > /etc/ssh/sshd_config.new
echo "KexAlgorithms curve25519-sha256,curve25519-sha256@libssh.org,diffie-hellman-group14-sha256,diffie-hellman-group16-sha512,diffie-hellman-group18-sha512,ecdh-sha2-nistp521,ecdh-sha2-nistp384,ecdh-sha2-nistp256,diffie-hellman-group-exchange-sha256" >> /etc/ssh/sshd_config.new

cp /etc/ssh/sshd_config.new /etc/ssh/sshd_config
rm /etc/ssh/sshd_config.new
