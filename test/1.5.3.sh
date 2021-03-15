#!/bin/sh
# ** AUTO GENERATED **

# 1.5.3 Ensure authentication required for single user mode (Automated)

grep /sbin/sulogin /usr/lib/systemd/system/rescue.service | grep -E 'ExecStart=-/bin/sh -c "(/usr)?/sbin/sulogin; /usr/bin/systemctl --fail --no-block default"' || exit $?

grep /sbin/sulogin /usr/lib/systemd/system/emergency.service | grep -E 'ExecStart=-/bin/sh -c "(/usr)?/sbin/sulogin; /usr/bin/systemctl --fail --no-block default"' || exit $?
