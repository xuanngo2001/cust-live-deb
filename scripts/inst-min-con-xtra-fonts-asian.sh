#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

### Install Chinese fonts so that it display correctly in Iceweseal/Firefox and in the console.
apt-get -y install fonts-hanazono 
# fonts-arphic-ukai fonts-arphic-uming
# fonts-hanazono


# Log
echo "${GV_LOG} * Install fonts-hanazono to display Asian characters correctly."

### Test
# Open http://ctext.org/zh
# Open http://ctext.org/font-test-page


### Varia
# http://fonts.jp/hanazono/
# Other languages: http://meta.wikimedia.org/wiki/List_of_Wikipedias

