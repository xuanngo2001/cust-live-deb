SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

SETTINGS_DIR=settings

apt-get -y --force-yes install openbox

# Auto startx
cat ${SETTINGS_DIR}/bash_profile_auto_startx >> /root/.bash_profile

# Log
echo "${GV_LOG} * Set keyboard to use US international."
echo "${GV_LOG} * Install xorg and openbox."
echo "${GV_LOG} * Add auto start openbox on boot."
