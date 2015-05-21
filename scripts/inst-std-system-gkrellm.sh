#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install gkrellm

# Log
echo "${GV_LOG} * Install System Monitor: gkrellm."

# REJECTION
#  * Running inst-std-system-conky.sh ...
#    * After this operation, 967 kB of additional disk space will be used.
#    * Install System Monitor: conky.
#    * Total size = 1609364K. Space Used = 1308K.
#  * Running inst-std-system-gkrellm.sh ...
#    * After this operation, 2,319 kB of additional disk space will be used.
#    * Install System Monitor: gkrellm.
#    * Total size = 1666160K. Space Used = 2124K.
#  * Running inst-std-system-screenlets.sh ...
#    * After this operation, 75.3 MB of additional disk space will be used.
#    * Install System Monitor: screenlets.
#    * Total size = 1779700K. Space Used = 77848K.