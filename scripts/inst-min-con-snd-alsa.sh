#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install alsa-base alsa-utils

# Log
echo "${GV_LOG} * Install ALSA sound."
echo "${GV_LOG} * Test sound: aplay /usr/share/sounds/alsa/*."

# Notes:
# http://superuser.com/questions/713387/enabling-5-1-with-a-xonar-ds-soundcard-on-debian-jessie
# https://help.ubuntu.com/community/SurroundSound
# speaker-test -Dplug:surround40 -c4 -l1 -twav
# speaker-test -Dplug:surround51 -c6 -l1 -twav
# speaker-test -Dplug:surround71 -c8 -l1 -twav
