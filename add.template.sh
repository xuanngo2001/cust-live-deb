# By default, you are in live-default/
SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"