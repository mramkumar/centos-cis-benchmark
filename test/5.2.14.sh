#!/bin/sh
# ** AUTO GENERATED **

# 5.2.14 Ensure only strong MAC algorithms are used (Automated)

MACs=$(grep "MACs" /etc/ssh/sshd_config  | awk {'print $2'})

if [[ -z $MACs ]]; then
        exit 1
fi

for MAC in $(echo $MACs | sed "s/,/ /g")
do
        echo MAC = $MAC
        echo "hmac-sha2-512-etm@openssh.com,hmac-sha2-256-etm@openssh.com,umac-128etm@openssh.com,hmac-sha2-512,hmac-sha2-256,umac-128@openssh.com" | grep "$MAC" || exit $?
done
