SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


apt-get -y --force-yes install chromium


# Resource:
# https://wiki.debian.org/Chromium
#   apt-get install chromium chromium-l10n
#   Viewing PDF: pdfium 
# https://wiki.debian.org/FlashPlayer

# REJECTION
#  * Running inst-std-internet-chromium.sh ...
#    * After this operation, 157 MB of additional disk space will be used.
#    * Disk size = 1306428K. Space Used = 193608K.
#  * Running inst-std-internet-iceweseal.sh ...
#    * After this operation, 78.2 MB of additional disk space will be used.
#    * Disk size = 1414228K. Space Used = 107800K.
