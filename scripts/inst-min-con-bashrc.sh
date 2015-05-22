#!/bin/bash

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

cp ${GV_SETTINGS_DIR}/bashrc_root /root/.bashrc

cp ${GV_SETTINGS_DIR}/dircolors.256dark /root/.dircolors.256dark


# Log
echo "${GV_LOG} * Set common settings for /root/.bashrc."
echo "${GV_LOG} * Set to use dircolors-solarized(i.e dircolors.256dark) to make ls more beautiful."