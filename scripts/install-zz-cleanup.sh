SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
LOG="CLDS:" 
echo "${LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

cd /
apt-get clean
rm /var/lib/dbus/machine-id
rm -rf /tmp/*
umount /sys /dev/pts
umount -lf /proc

# Reinstate default debian repository
DEB_REPO_URL=http://http.debian.net/debian/
echo "deb ${DEB_REPO_URL} jessie main" > /etc/apt/sources.list


# Log
echo "${LOG} * Clean apt-get cache."
echo "${LOG} * rm -rf /tmp/*."
echo "${LOG} * Umount /sys, /dev/pts and /proc."
echo "${LOG} * Add ${DEB_REPO_URL} in sources.list."



exit