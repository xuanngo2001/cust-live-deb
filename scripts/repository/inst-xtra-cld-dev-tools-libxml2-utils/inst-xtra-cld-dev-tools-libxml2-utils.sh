#!/bin/bash
set -e
set -o pipefail

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install libxml2-utils to validate xml file.
apt-get -y --force-yes install libxml2-utils


# Log
echo "${GV_LOG} * Install libxml2-utils to validate xml file."

# REJECTION:
#  * Running inst-xtra-cld-dev-tools-libxml2-utils.sh ...
#    * After this operation, 152 kB of additional disk space will be used.
#    * Install libxml2-utils to validate xml file.
#    * Disk size = 3253404K. Space Used = 280K.