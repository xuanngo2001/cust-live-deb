#!/bin/bash

# https://l3net.wordpress.com/2013/09/21/how-to-build-a-debian-livecd/
# http://willhaley.com/blog/create-a-custom-debian-live-environment/


# Build live system.
LIVE_SYSTEM_DIR=chroot
DEB_REPO_URL=http://localhost/debian-repo/
#DEB_REPO_URL=http://http.debian.net/debian/

rm -rf ${LIVE_SYSTEM_DIR}
debootstrap --no-check-gpg --arch=amd64 jessie ${LIVE_SYSTEM_DIR} ${DEB_REPO_URL}

# Add repository components(i.e. contrib, non-free)
sed -i 's/ main/ main contrib/' ${LIVE_SYSTEM_DIR}/etc/apt/sources.list


# Copy all scripts to live system.
cp -R scripts ${LIVE_SYSTEM_DIR}/root

# Add temporary default coloring of live command prompt.
echo 'export PS1="\e[01;31m(live):\W \$ \e[00m"' > ${LIVE_SYSTEM_DIR}/root/.bashrc

# What to do next.
echo "============================================"
echo "What to do next?"
echo "Run the following tolog in the live system:"
echo "    chroot chroot"
echo "Then, run"
echo "    cd /root/scripts"
echo "    chmod +x install.sh"
echo "    ./install.sh"
echo "    exit"


