#!/bin/sh
# ** AUTO GENERATED **

# 1.1.21 Ensure nosuid option set on removable media partitions (Manual)

MEDIA=$(mount -l -t vfat,iso9660,ext)

if [[ -z $MEDIA ]]; then
        exit 0
else
        echo $MEDIA | grep "nosuid" || exit $?
fi
