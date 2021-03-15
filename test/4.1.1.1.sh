#!/bin/sh
# ** AUTO GENERATED **

rpm -q audit | grep -E "package audit is not installed" || exit $1

rpm -q audit-libs | grep -E "package audit-libs is not installed" || exit $1
