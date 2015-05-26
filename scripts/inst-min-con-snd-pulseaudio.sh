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
echo "pulseaudio --start --log-target=syslog >> ${ROOT_BASHRC}"

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