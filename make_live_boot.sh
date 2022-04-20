# This script is for making an
# image file (.iso) bootable
# through a media drive. It
# requires root or sudo to
# run. The first argument
# accepts a path to the iso
# file. The second Argument
# accepts a path to the media
# drive, (example: '/dev/sda').
# I have tried it on
# multiple usb, and sd drives.
# tweaks and changes may be
# needed for other systems
# and/or media drives.
# Good luck!!

#!/bin/sh

# Unmount the media
echo "umount $2*"
umount $2*
echo ""

# Give media fat32 file system
echo "mkfs.vfat $2"
mkfs.vfat -I $2
echo ""

# Install .iso file to media
echo "dd if=$1 of=$2 status=progress"
dd if=$1 of=$2 status=progress
echo ""

