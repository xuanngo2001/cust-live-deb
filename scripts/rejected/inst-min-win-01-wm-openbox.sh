#!/bin/bash

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


apt-get -y --force-yes install openbox


# Log
echo "${GV_LOG} * Install Openbox window manager."


# Note:
# Openbox does not come with a panel of any sort, a system tray, a dock, window icons, etc.
# Most distributions choose to bundle tint2 or other similar, lightweight panel with Openbox to fill that role.

# REJECTION
#  * Running inst-min-win-01-wm-jwm.sh ...
#    * After this operation, 6,665 kB of additional disk space will be used.
#    * Disk size = 821092K. Space Used = 9640K.
#  * Running inst-min-win-01-wm-openbox.sh ...
#    * After this operation, 13.1 MB of additional disk space will be used.
#    * Install Openbox window manager.
#    * Disk size = 836776K. Space Used = 15684K.
