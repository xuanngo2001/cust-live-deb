#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install IMDbPY.
apt-get -y --force-yes install python-imdbpy


# Log
echo "${GV_LOG} * Install IMDbPY."

#   * Running inst-xtra-imdb-python-imdbpy.sh ...
#     * After this operation, 990 kB of additional disk space will be used.
#     * Install IMDbPY.
#     * Disk size = 4163692K. Space Used = 2152K.