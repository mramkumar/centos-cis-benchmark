#!/bin/sh
# ** AUTO GENERATED **

# 5.4.4 Ensure default user shell timeout is configured (Automated)

if [[ $TMOUT -eq "" || $TMOUT -gt 900 ]]; then
        exit 1
fi
