SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

SETTINGS_DIR=settings

#export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true DEBCONF_DEBUG=developer
export DEBCONF_DEBUG=developer

# Install X-Windows=xorg, Window Manager=openbox
debconf-set-selections ${SETTINGS_DIR}/keyboard.seed
apt-get -y --force-yes install xorg openbox

# Auto startx
cat ${SETTINGS_DIR}/bash_profile_auto_startx >> /root/.bash_profile


# Log
echo "${GV_LOG} * Set keyboard to use US international."
echo "${GV_LOG} * Install xorg and openbox."
echo "${GV_LOG} * Add auto start openbox on boot."
