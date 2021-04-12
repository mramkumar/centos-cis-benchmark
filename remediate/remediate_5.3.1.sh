#!/bin/sh
# ** AUTO GENERATED **

# 5.3.1 - Ensure password creation requirements are configured (Automated)

sed -i '/^# minlen =/ c minlen = 14' /etc/security/pwquality.conf
sed -i '/^# dcredit =/ c dcredit = -1' /etc/security/pwquality.conf
sed -i '/^# ucredit =/ c ucredit = -1' /etc/security/pwquality.conf
sed -i '/^# ocredit =/ c ocredit = -1' /etc/security/pwquality.conf
sed -i '/^# lcredit =/ c lcredit = -1' /etc/security/pwquality.conf
