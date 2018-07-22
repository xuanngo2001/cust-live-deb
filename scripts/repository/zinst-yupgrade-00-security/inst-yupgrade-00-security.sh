#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Add Security repository URLs.
  GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/master_stretch-security-contrib stretch-updates contrib"
  GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/master_stretch-security-main stretch-updates main"
  GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/master_stretch-security-non-free stretch-updates non-free"
  
  GF_ADD_SOURCE_LIST live "deb http://security.debian.org/ stretch/updates main contrib non-free"

# dist-upgrade
  apt-get update
  #apt-get dist-upgrade -y
  apt-get -s dist-upgrade | grep "^Inst" | grep -i securi | awk -F " " {'print $2'} | xargs apt-get install -y
  #     https://askubuntu.com/questions/194/how-can-i-install-just-security-updates-from-the-command-line

# Log
  echo "${GV_LOG} * Add Security repository URLs."
  echo "${GV_LOG} * Dist-upgrade."

