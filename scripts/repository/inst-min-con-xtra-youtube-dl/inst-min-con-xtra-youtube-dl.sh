#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install youtube-dl.
\cp -a youtube-dl /usr/local/bin/
chmod a+rx /usr/local/bin/youtube-dl 

# Install help.
chmod +x youtube-dl-list
\cp -a youtube-dl-list /usr/local/bin/

# Log
echo "${GV_LOG} * Install youtube-dl to download video from playlist."
echo "${GV_LOG} * https://github.com/rg3/youtube-dl/"
echo "${GV_LOG} * https://www.quora.com/What-is-the-best-and-quickest-way-to-download-the-whole-playlist-of-videos-from-YouTube-all-at-once"

# Install latest version:
#   curl -L https://yt-dl.org/downloads/latest/youtube-dl -o youtube-dl
#   chmod a+rx /usr/local/bin/youtube-dl