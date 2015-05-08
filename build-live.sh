# https://l3net.wordpress.com/2013/09/21/how-to-build-a-debian-livecd/
# http://willhaley.com/blog/create-a-custom-debian-live-environment/



LIVE_SYSTEM_DIR=chroot
DEB_REPO_URL=http://localhost/debian-repo/

rm -rf ${LIVE_SYSTEM_DIR}
debootstrap --no-check-gpg --arch=amd64 jessie ${LIVE_SYSTEM_DIR} ${DEB_REPO_URL}

echo "deb ${DEB_REPO_URL} jessie main" >> ${LIVE_SYSTEM_DIR}/etc/apt/sources.list

cp -R scripts ${LIVE_SYSTEM_DIR}/root

echo " \
chroot chroot \
mount none -t proc /proc \ 
mount none -t sysfs /sys \
mount none -t devpts /dev/pts \
export HOME=/root \
export LC_ALL=C \
export PS1="\e[01;31m(live):\W \$ \e[00m" \
"

