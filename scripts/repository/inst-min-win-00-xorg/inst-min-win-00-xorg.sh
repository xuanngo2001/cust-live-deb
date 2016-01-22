#!/bin/bash
set -e
set -o pipefail
SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install X-Windows=xorg, Window Manager=openbox
debconf-set-selections -v keyboard.seed
apt-get -y --force-yes install xinit xserver-xorg

# Auto startx
cat bash_profile-auto-startx >> /root/.bash_profile

# Log
echo "${GV_LOG} * Set keyboard to use US international."
echo "${GV_LOG} * Install minimum Xorg X server."
echo "${GV_LOG} * Install xinit so you can run startx."
echo "${GV_LOG} * Add auto start window manager(i.e startx)."

# Note:
# "apt-get -y --force-yes install xorg" uses too much space(~200MB).
# xinit & xauth are needed for startx to run.
