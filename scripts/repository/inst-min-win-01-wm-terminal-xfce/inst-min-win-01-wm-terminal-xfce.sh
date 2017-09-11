#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

####
## This script should be inst-std-accessories-terminal-xfce.sh.
##  Bc it is required by jwm. Don't know why.
####

# Explicitly download dependent packages
apt-get install -d -y libxfce4ui-2-0
apt-get install -d -y exo-utils

# Install xfce4-terminal.
apt-get -y install xfce4-terminal

# Log
echo "${GV_LOG} * Install terminal: xfce4-terminal."

#  * Running inst-std-accessories-terminal-xfce.sh ...
#    * After this operation, 11.1 MB of additional disk space will be used.
#    * Install terminal: xfce4-terminal.
#    * Disk size = 1007124K. Space Used = 9328K.