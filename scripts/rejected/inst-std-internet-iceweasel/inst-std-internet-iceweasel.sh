#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install web browser: iceweasel.
apt-get -y --force-yes install iceweasel
apt-get -y --force-yes install flashplugin-nonfree

# Log
echo "${GV_LOG} * Install web browser: iceweasel."
echo "${GV_LOG} * To update Adobe Flash Player: update-flashplugin-nonfree --install."
echo "${GV_LOG} * To test Adobe Flash Player: http://www.adobe.com/software/flash/about/."


# Resource:
#   https://wiki.debian.org/Iceweasel
#   https://fpdownload.adobe.com/get/flashplayer/pdc/11.2.202.548/install_flash_player_11_linux.x86_64.tar.gz

# REJECTION: Too old. Jessie Version: 38.5.0
# * >>>>>>>>> Running inst-std-internet-iceweasel.sh ...
#   * After this operation, 91.5 MB of additional disk space will be used.
#   * After this operation, 21.8 MB of additional disk space will be used.
#   * Install web browser: iceweasel.
#   * To update Adobe Flash Player: update-flashplugin-nonfree --install.
#   * To test Adobe Flash Player: http://www.adobe.com/software/flash/about/.
#   * Disk size = 3069652K. Space Used = 171148K.
#   * The following NEW packages will be installed:
#   ```bash
#   iceweasel libevent-2.0-5 libhunspell-1.3-0
#   binutils flashplugin-nonfree libcurl3-gnutls
#   ```