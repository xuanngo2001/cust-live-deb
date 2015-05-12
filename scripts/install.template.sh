# Note:
#   - CLDS stands for Custom Live Debian System.
#   - echo with 'CLDS:' if you want to log the echo string. Good for logging feature of each script.
#   - For feature, prefix echo with 'CLDS: * ' 

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "CLDS:>>>>>>>>> Running ${SCRIPT_NAME} ..."


# SETTINGS_DIR=settings
# echo with 'CLDS: * Installing ...' 