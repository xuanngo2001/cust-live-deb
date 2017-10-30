#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Add power user.
username='poweruser'
adduser --disabled-password --gecos "" "${username}"
(echo "${username}";echo "${username}") | passwd "${username}"



# Log
echo "${GV_LOG} * Created user: ${username}/${username}."