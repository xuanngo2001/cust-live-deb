# By default, you are in live-default/
SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"

echo "virtualbox-guest-dkms virtualbox-guest-x11" >> config/package-lists/my.list.chroot

lb config --linux-packages "linux-image linux-headers"