#!/bin/bash

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Add common bashrc codes.
cat ${GV_SETTINGS_DIR}/bashrc-common-* >> /root/.bashrc

# Set dircolors
DIR_COLORS_FILE=dircolors-gnu-ls-colors.txt
cp ${GV_SETTINGS_DIR}/${DIR_COLORS_FILE} /root/.dircolors


# Log
echo "${GV_LOG} * Set common settings for /root/.bashrc."
echo "${GV_LOG} * Set dircolors to use ${DIR_COLORS_FILE} to make ls more beautiful."