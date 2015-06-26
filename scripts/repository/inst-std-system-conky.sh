#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install conky.
apt-get -y --force-yes install conky

# Add conky config file.
CONKYRC=conkyrc
yes | cp ${GV_SETTINGS_DIR}/${CONKYRC} /root/.${CONKYRC}

# Set conky to run on JWM startup.
cat ${GV_SETTINGS_DIR}/jwmrc-startup-conky.sh >> /root/jwmrc-startup.sh

# Add on the fly settings to Conky.
yes | cp ${GV_SETTINGS_DIR}/startup-conky.sh /root/
chmod +x /root/startup-conky.sh
sed -i "/## Insert your script files here ##/a /root/startup-conky.sh&" /etc/init.d/startup.sh

# Log
echo "${GV_LOG} * Install System Monitor: conky."
echo "${GV_LOG} * Add conky config file: ${CONKYRC}."
echo "${GV_LOG} * Set conky to run on JWM startup."
echo "${GV_LOG} * Add on the fly settings to Conky."

# Reference
# http://www.techdrivein.com/2010/12/13-breathtaking-conky-configurations.html
# http://custom-linux.deviantart.com/gallery/39357745/Conky-Themes
# http://conky.sourceforge.net/variables.html
# (HDD) https://www.kubuntuforums.net/showthread.php?62493-How-can-I-summarize-free-used-disk-space-in-Conky&s=a7f2cef65f87565cfde045ae0be22bf5&p=345208&viewfull=1#post345208


