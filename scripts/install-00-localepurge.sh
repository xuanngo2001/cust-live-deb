SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo ">>>>>>>>> Running ${SCRIPT_NAME} ..."


apt-get -y --force-yes install localepurge