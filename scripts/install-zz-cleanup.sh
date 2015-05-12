SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "CLDS:>>>>>>>>> Running ${SCRIPT_NAME} ..."

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
echo "CLDS: * Clean apt-get cache."
echo "CLDS: * rm -rf /tmp/*."
echo "CLDS: * Umount /sys /dev/pts /proc."
echo "CLDS: * Add ${DEB_REPO_URL} in sources.list."



exit