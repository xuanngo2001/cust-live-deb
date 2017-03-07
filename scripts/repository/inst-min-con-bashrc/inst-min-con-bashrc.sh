#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Add common bashrc codes.
cat bashrc-common-* >> ${HOME}/.bashrc

# Set dircolors
DIR_COLORS_FILE=dircolors-gnu-ls-colors.txt
yes | cp -av ${DIR_COLORS_FILE} ${HOME}/.dircolors


# Log
echo "${GV_LOG} * Set common settings for ${HOME}/.bashrc."
echo "${GV_LOG} * Set dircolors to use ${DIR_COLORS_FILE} to make ls more beautiful."