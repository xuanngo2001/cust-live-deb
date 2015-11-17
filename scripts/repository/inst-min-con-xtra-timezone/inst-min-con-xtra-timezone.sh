#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Manually write timezone string to /etc/timezone because 'dpkg-reconfigure tzdata' non-interactive doesn't work. But interactive does.
# https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=510908: tzdata should use data from debconf if neither /etc/localtime nor
#     /etc/timezone, otherwise it should default to the value read from these files
echo "America/Montreal"> /etc/timezone

# Need to trigger this so that timezone in /etc/timezone is set correctly. 
dpkg-reconfigure -f noninteractive tzdata

# Log
echo "${GV_LOG} * Set time zone to EST (America/Montreal) in /etc/timezone."

# Debug
# cat /etc/timezone
# ls /etc/localtime

# Reference
# http://unix.stackexchange.com/a/16197
# Preseed doesn't work: https://lists.debian.org/debian-user/2007/10/msg00480.html
#                       https://lists.debian.org/debian-boot/2007/12/msg00506.html