#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Add CLD aptly repository key.
    # Legacy way: trusted.gpg
    yes | cp -av trusted.gpg /etc/apt/

    # New way: keyrings/trusted.gpg
    yes | cp -av trusted.gpg /etc/apt/keyrings/

echo "${GV_LOG} * ===================== DONE XUAN iiiiiiii ====================="
echo "${GV_LOG} * ===================== DONE XUAN ====================="

# Add temporary local repository at the beginning of the sources.list file.
source sourceslist-temporary.sh


# Add default sources list
source sourceslist-live.sh

# Update source.list
#   Commented out this for distro upgrade. Because host still using old distro.
#apt-get update

# Log
echo "${GV_LOG} * ===================== DONE XUAN ====================="
echo "${GV_LOG} * ===================== DONE XUAN ====================="
