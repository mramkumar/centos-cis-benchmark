#!/bin/sh
# ** AUTO GENERATED **

# 1.1.23 Disable Automounting (Automated)

out=$(systemctl is-enabled autofs | grep 'enabled')
[[ -z "${out}" ]] || exit 1

