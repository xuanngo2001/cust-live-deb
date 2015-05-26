#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install pulseaudio
apt-get -y --force-yes install pulseaudio-esound-compat
apt-get -y --force-yes install pulseaudio-module-bluetooth
apt-get -y --force-yes install pulseaudio-module-x11
apt-get -y --force-yes install pulseaudio-utils

# Log
echo "${GV_LOG} * Install PulseAudio."


# Notes:
# http://superuser.com/questions/713387/enabling-5-1-with-a-xonar-ds-soundcard-on-debian-jessie