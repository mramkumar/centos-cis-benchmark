#!/bin/sh
# ** AUTO GENERATED **

# 2.3.1 Ensure NIS Client is not installed (Automated)

rpm -q ypbind | grep -E "package ypbind is not installed" || exit $1
