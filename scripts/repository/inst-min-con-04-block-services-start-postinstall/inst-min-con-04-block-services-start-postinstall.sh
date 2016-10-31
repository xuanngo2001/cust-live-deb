#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Block services from starting after they are being installed
echo exit 101 > /usr/sbin/policy-rc.d
chmod +x /usr/sbin/policy-rc.d

# Log
echo "${GV_LOG} * Block services from starting after they are being installed."


# Reference: 
#   - https://jpetazzo.github.io/2013/10/06/policy-rc-d-do-not-start-services-automatically/
#   - http://serverfault.com/questions/681588/prevent-apache-from-starting-after-apt-get-install
#   - http://askubuntu.com/questions/74061/install-packages-without-starting-background-processes-and-services
#   - https://wiki.debian.org/chroot