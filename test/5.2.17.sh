#!/bin/sh
# ** AUTO GENERATED **

# 5.2.17 Ensure SSH LoginGraceTime is set to one minute or less (Automated)

LGT=$(grep "^LoginGraceTime" /etc/ssh/sshd_config | awk {'print $2'})
if [[ $LGT -eq '' || $LGT -gt 60 || $LGT -lt 1 ]]; then
        echo LoginGraceTime is $LGT
        exit 1
fi
