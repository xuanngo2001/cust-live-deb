#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#   apt-get install -s -y <your-package> 
    apt-get install -s -y  qt6-svg-plugins
    apt-get install -s -y  libkdsingleapplication-qt6-1.0
    apt-get install -s -y  libkf6guiaddons6
    apt-get install -s -y  libqt-color-widgets2
    apt-get install -s -y  libqt6widgets6
    apt-get install -s -y  libkdsingleapplication-qt6-1.0

# Install qt6-svg-plugins.
    # apt-get -y install qt6-svg-plugins
    # apt-get -y install libkdsingleapplication-qt6-1.0
    # apt-get -y install libkf6guiaddons6
    # apt-get -y install libqt-color-widgets2
    # apt-get -y install libqt6widgets6
    # apt-get -y install libkdsingleapplication-qt6-1.0

# Log
    echo "${GV_LOG} * Install qt6-svg-plugins."
