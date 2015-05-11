SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo ">>>>>>>>> Running ${SCRIPT_NAME} ..."


# Execute base scripts in the following order:
sh install-00-base.sh
sh install-00-localepurge.sh