#!/bin/sh
# ** AUTO GENERATED **

# 5.4.5 Ensure default user umask is configured (Automated)

[[ "$(umask)" =~ [0-7][2-7]7$ ]] || exit;
