#!/bin/sh
# ** AUTO GENERATED **

# 1.7.1.4 Ensure the SELinux mode is enforcing or permissive (Automated)

grep -Ei '^\s*SELINUX=(enforcing|permissive)' /etc/selinux/config || exit $1

getenforce |grep -E "Enforcing|Permissive" || exit $1
