#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install network manager: WICD.
#  Note: network-manager needs to be removed before install wicd.
apt-get -y --force-yes install wicd

# Set wicd to run on JWM startup.
cat ${GV_SETTINGS_DIR}/jwmrc-startup-wicd.sh >> /root/jwmrc-startup.sh

# Log
echo "${GV_LOG} * Install Network Manager: wicd."
echo "${GV_LOG} * For wireless, you have to type in the wireless interface(e.g. wlan0) in the Preferences."
echo "${GV_LOG} * Set wicd to run on JWM startup."

# TODO:
#   -How to run wicd in MIN system and in STD system?

# Note:
# wicd-client: virtual package provided by wicd-cli, wicd-curses, wicd-gtk, wicd-kde
# Command Line:
#   ip link set wlan0 up
#   iwlist wlan0 scan


#  ifup wlan0
#  #!/bin/bash
#  for i in /sys/class/net/*; do
#    i="${i##*/}"
#    case "$i" in
#      lo|wlan0) ;;
#      *) sudo ifconfig "$i" down;; # take down every hardware interface
#    esac
#  done
#  sudo modprobe -r iwl4965 # unload your wifi driver
#  sleep 5
#  sudo modprobe iwl4965  # reload wifi driver