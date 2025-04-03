#! /vendor/bin/sh
# Automatically set the vendor.usb.controller property from
# /sys/class/udc at the boot time.
#
# This script will get rid of the static/hardcoded property name
# which we set in init.<hw>.usb.rc and set it to the available
# on-board USB controller from /sys/class/udc instead.

UDC=`/vendor/bin/ls /sys/class/udc/ | /vendor/bin/head -n 1`
setprop vendor.usb.controller $UDC
