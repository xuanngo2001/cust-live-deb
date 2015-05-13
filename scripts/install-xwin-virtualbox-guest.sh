# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# These packages are in contrib repository.
# Size = 50 MB
apt-get -y --force-yes install virtualbox-guest-dkms virtualbox-guest-x11
