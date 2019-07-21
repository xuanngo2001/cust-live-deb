#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Add repository key.
#apt-key add aptly-master-key.pub
yes | cp -av trustedkeys.gpg /etc/apt/trusted.gpg.d/


# Add temporary local repository at the beginning of the sources.list file.
source sourceslist-temporary.sh


# Add default sources list
source sourceslist-live.sh

# Update source.list
apt-get update