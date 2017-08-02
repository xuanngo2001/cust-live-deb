#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install alsa-utils

# Log
echo "${GV_LOG} * Install ALSA sound."
echo "${GV_LOG} * Test sound: aplay /usr/share/sounds/alsa/*."
echo "${GV_LOG} * Add key bindings."

# Notes:
# http://superuser.com/questions/713387/enabling-5-1-with-a-xonar-ds-soundcard-on-debian-jessie
# https://help.ubuntu.com/community/SurroundSound
# speaker-test -Dplug:surround40 -c4 -l1 -twav
# speaker-test -Dplug:surround51 -c6 -l1 -twav
# speaker-test -Dplug:surround71 -c8 -l1 -twav
# http://ubuntuforums.org/showthread.php?t=795525
# https://www.mythtv.org/wiki/Using_ALSA's_speaker-test_utility
