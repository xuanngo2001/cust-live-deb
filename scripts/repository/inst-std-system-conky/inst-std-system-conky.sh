#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install conky.
apt-get -y install conky

# Add conky config files and run script after JWM.
yes | cp -av ./cld/ /usr/local

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
# manpage of cal: http://linuxcommand.org/man_pages/cal1.html
# Use cal within conky: http://sethjust.com/2009/08/03/a-useful-calendar-in-conky/

