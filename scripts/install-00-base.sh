SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo ">>>>>>>>> Running ${SCRIPT_NAME} ..."


mount none -t proc /proc
mount none -t sysfs /sys
mount none -t devpts /dev/pts
export HOME=/root
export LC_ALL=C
export PS1="\e[01;31m(live):\W \$ \e[00m"

apt-get update
apt-get -y --force-yes install dialog dbus
dbus-uuidgen > /var/lib/dbus/machine-id
apt-get -y --force-yes install linux-image-amd64 live-boot