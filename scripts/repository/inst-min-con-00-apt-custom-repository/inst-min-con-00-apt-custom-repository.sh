#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Add CLD aptly repository key.
    # Legacy way: trusted.gpg
    \cp -av trusted.gpg /etc/apt/

    # New way: keyrings/trusted.gpg
    \cp -av trusted.gpg /etc/apt/keyrings/

# Copy keyrings
    \cp -av ./keys/etc/keyrings/     /etc/apt/
    \cp -av ./keys/usr/keyrings/     /usr/share/

# Add temporary local repository at the beginning of the sources.list file.
    source sourceslist-temporary.sh

# Add default sources list
    source sourceslist-live.sh

# Update source.list
    apt-get update
