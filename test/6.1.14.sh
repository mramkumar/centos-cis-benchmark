#!/bin/sh
# ** AUTO GENERATED **

# 6.1.14 Audit SGID executables (Manual)

df --local -P | awk {'if (NR!=1) print $6'} | xargs -I '{}' find '{}' -xdev -type f -perm -2000 || exit $?
