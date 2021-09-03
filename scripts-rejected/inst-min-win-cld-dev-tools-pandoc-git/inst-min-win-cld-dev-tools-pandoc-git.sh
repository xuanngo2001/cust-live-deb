#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Ensure that dependent packages are downloaded.
  #apt-get install -d -y pandoc

# Install the latest version from Git
  PANDOC_DEB=$(find . -name 'pandoc*.deb' | sort -r | head -n1 )
  dpkg -i "${PANDOC_DEB}"

# Get the version number.
  PANDOC_VER=$(pandoc --version | head -n1)

# Log
echo "${GV_LOG} * Install ${PANDOC_VER} from git."

# REJECTED:
#   Bigger than standard package. Standard package=80MB, Git package=111MB.