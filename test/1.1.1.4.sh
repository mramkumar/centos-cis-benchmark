#!/bin/sh
# ** AUTO GENERATED **

# 1.1.1.4 Ensure mounting of FAT filesystems is limited (Manual)


[[ -z "$(grep -E -i '\svfat\s' /etc/fstab)" ]] || exit 1

modprobe -n -v fat | grep -E '(fat|install)'     || exit $?
[[ -z "$(lsmod | grep fat)" ]]   || exit 1

modprobe -n -v vfat | grep -E '(vfat|install)'   || exit $?
[[ -z "$(lsmod | grep vfat)" ]]  || exit 1

modprobe -n -v msdos | grep -E '(msdos|install)' || exit $?
[[ -z "$(lsmod | grep msdos)" ]] || exit 1
