#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Fix dependency.
	apt-get install -d -y libmaxminddb0

# Install dependencies.
    debconf-set-selections -v wifite-wireshark.seed
    apt-get -y install tshark
    apt-get -y install aircrack-ng reaver 

# Update wifite to revision 87.
    yes | cp wifite87.py /usr/bin/wifite
    chmod +x /usr/bin/wifite

# Add to CLD/
    yes | cp -av ./cld  /usr/local

# Log
    echo "${GV_LOG} * Install wifite."


# Reference:
# http://bashbang.blogspot.ca/2013/04/wifiteinstaller-automation-script.html
