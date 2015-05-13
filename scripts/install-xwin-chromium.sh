SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


apt-get -y --force-yes install chromium


# Resource:
# https://wiki.debian.org/Chromium
#   apt-get install chromium chromium-l10n
#   Viewing PDF: pdfium 
# https://wiki.debian.org/FlashPlayer