# Note:
#   - CLDS stands for Custom Live Debian System.
#   - echo with '${LOG}' prefix if you want to log the echo string. Good for logging feature of each script.
#   - For feature, prefix echo with '${LOG} * ' 

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
LOG="CLDS:" 
echo "${LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# SETTINGS_DIR=settings
# echo with 'CLDS: * Installing ...' 