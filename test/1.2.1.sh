#!/bin/sh
# ** AUTO GENERATED **

# 1.2.1 Ensure GPG keys are configured (Manual)

rpm -q gpg-pubkey --qf '%{name}-%{version}-%{release}' |grep 'gpg-pubkey-f4a80eb5-53a7ff4b' || exit 1
