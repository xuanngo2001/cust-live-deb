#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install apt-move to create debian local repository.
apt-get -y --force-yes install apt-move

apt-get -y --force-yes install patch
# Patch apt-move to support SHA256.
#yes | cp apt-move-patch/move4 /usr/share/apt-move/move4
#yes | cp apt-move-patch/apt-move /usr/bin/apt-move

patch -p1 /usr/bin/apt-move apt-move-sha256issue-20130821.diff || true
patch -p1 /usr/share/apt-move/move4 apt-move-sha256issue-20130821.diff || true


# Install apache 2 to turn apt-move into a webserver.
apt-get -y --force-yes install apache2

# Log
echo "${GV_LOG} * Install apt-move to create debian local repository."
echo "${GV_LOG} * Patch apt-move to support SHA256.."
echo "${GV_LOG} * Install apache 2 to turn apt-move into a webserver."

# REJECTION: Aptly is more powerful and versatile.
#  * Running inst-xtra-cld-dev-tools-apt-move.sh ...
#    * After this operation, 430 kB of additional disk space will be used.
#    * After this operation, 196 kB of additional disk space will be used.
#    * Install apt-move to create debian local repository.
#    * Patch apt-move to support SHA256..
#    * Install apache 2 to turn apt-move into a webserver.
#    * Disk size = 3209132K. Space Used = 1016K.
#  * Running inst-xtra-cld-dev-tools-aptly.sh ...
#    * After this operation, 16.9 MB of additional disk space will be used.
#    * Install aptly to create local debian repository.
#    * Add xz-utils package because aptly snapshot merge needs it.
#    * Disk size = 3230244K. Space Used = 21112K.