#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install pulseaudio
apt-get -y --force-yes install pulseaudio
apt-get -y --force-yes install pulseaudio-esound-compat
apt-get -y --force-yes install pulseaudio-module-bluetooth
apt-get -y --force-yes install pulseaudio-module-x11
apt-get -y --force-yes install pulseaudio-utils

# Startup pulseaudio from /root/.bashrc
ROOT_BASHRC=/root/.bashrc
echo "pulseaudio --start --log-target=syslog" >> ${ROOT_BASHRC}

# Log
echo "${GV_LOG} * Install PulseAudio."
echo "${GV_LOG} * As root, PulseAudio doesn't run automatically."
echo "${GV_LOG}   * pulseaudio --start --log-target=syslog"
echo "${GV_LOG} * Quick fix: Startup pulseaudio from /root/.bashrc."
echo "${GV_LOG} * When running alsamixer, it should show that it is using PulseAudio card."
echo "${GV_LOG} * Test sound: paplay /usr/share/sounds/alsa/*"
echo "${GV_LOG} * More settings at https://wiki.debian.org/PulseAudio."


# Notes:
# For surround sound, see https://wiki.debian.org/PulseAudio
# Run for all users: https://rudd-o.com/linux-and-free-software/how-to-make-pulseaudio-run-once-at-boot-for-all-your-users
# Utilities & configurations: https://wiki.archlinux.org/index.php/PulseAudio/Configuration

# REJECTION: Too big. Alsa is not as pretty as pulseaudio but it is enough.
#  * Running inst-min-con-snd-pulseaudio.sh ...
#    * After this operation, 37.8 MB of additional disk space will be used.
#    * After this operation, 146 kB of additional disk space will be used.
#    * After this operation, 5,587 kB of additional disk space will be used.
#    * After this operation, 90.1 kB of additional disk space will be used.
#    * Install PulseAudio.
#    * As root, PulseAudio doesn't run automatically.
#   * pulseaudio --start --log-target=syslog
#    * Quick fix: Startup pulseaudio from /root/.bashrc.
#    * When running alsamixer, it should show that it is using PulseAudio card.
#    * Test sound: paplay /usr/share/sounds/alsa/*
#    * More settings at https://wiki.debian.org/PulseAudio.
#    * Total size = 1279180K. Space Used = 55256K.
