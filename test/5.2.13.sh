#!/bin/sh
# ** AUTO GENERATED **

# 5.2.13 Ensure only strong Ciphers are used (Automated)

ciphers=`sshd -T | grep ciphers| grep -E '3des-cbc|aes128-cbc|aes192-cbc|aes256-cbc|arcfour|arcfour128|arcfour256|blowfish-cbc|cast128-cbc|rijndael-cbc@lysator.liu.se'|wc -l`

if [ $ciphers -ne 0 ]; then
exit 1
fi
