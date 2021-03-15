#!/bin/sh
# ** AUTO GENERATED **

# 5.4.3 Ensure default group for the root account is GID 0 (Automated)

grep "^root:" /etc/passwd | cut -f4 -d: | grep -qE "^0$" || exit $?
