SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

cd /
apt-get clean
rm /var/lib/dbus/machine-id
rm -rf /tmp/*
umount /sys /dev/pts
umount -lf /proc

# Reinstate default debian repository
DEB_REPO_URL=http://http.debian.net/debian/
sed -i "s/ http:.*\/ / ${DEB_REPO_URL} /" /etc/apt/sources.list


# Log
echo "${GV_LOG} * Clean apt-get cache."
echo "${GV_LOG} * rm -rf /tmp/*."
echo "${GV_LOG} * Umount /sys, /dev/pts and /proc."
echo "${GV_LOG} * Add ${DEB_REPO_URL} in sources.list."

