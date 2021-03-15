#!/bin/sh
# ** AUTO GENERATED **

# 1.1.22 Ensure sticky bit is set on all world-writable directories (Automated)

dirs="$(df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -type d \( -perm -0002 -a ! -perm -1000 \))"
[[ -z "${dirs}" ]] || exit 1
