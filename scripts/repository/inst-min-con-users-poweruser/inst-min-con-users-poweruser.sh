#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Create power user.
username='poweruser'
adduser --disabled-password --gecos "" "${username}"
(echo "${username}";echo "${username}") | passwd "${username}"

# Add poweruser to sudo group(root).
usermod -aG sudo "${username}"

# Log
echo "${GV_LOG} * Created poweruser: Username/pwd = ${username}/${username}."

# Test
#   Log in as poweruser.
#   touch /a.txt