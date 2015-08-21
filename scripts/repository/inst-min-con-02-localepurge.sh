#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Disable interactive mode
export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true

# Preseed localepurge to purge all, except en, en_US, en_US.UTF-8.
debconf-set-selections ${GV_SETTINGS_DIR}/localepurge-config.seed


# Install localepurge to keep documentation small.
apt-get -y --force-yes install localepurge

# Log
echo "${GV_LOG} * Install localepurge to purge documentation of all languages, except en, en_US, en_US.UTF-8."


### Test
# cat /etc/locale.nopurge
