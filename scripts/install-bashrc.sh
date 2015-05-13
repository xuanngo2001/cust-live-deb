SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

SETTINGS_DIR=settings
cp ${SETTINGS_DIR}/bashrc_root /root/.bashrc

