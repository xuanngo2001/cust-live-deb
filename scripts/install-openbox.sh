SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "CLDS:>>>>>>>>> Running ${SCRIPT_NAME} ..."

SETTINGS_DIR=settings

#export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true DEBCONF_DEBUG=developer
export DEBCONF_DEBUG=developer

# Install X-Windows=xorg, Window Manager=openbox
debconf-set-selections ${SETTINGS_DIR}/keyboard.seed
apt-get -y --force-yes install xorg openbox

# Auto startx
cat ${SETTINGS_DIR}/bash_profile_auto_startx >> /root/.bash_profile


# Log
echo "CLDS: * Setup keyboard to use US international."
echo "CLDS: * Install xorg and openbox."
echo "CLDS: * Add auto login in openbox."