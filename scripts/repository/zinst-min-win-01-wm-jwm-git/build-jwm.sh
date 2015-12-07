#!/bin/bash
set -e

# Insert local repository at the beginning of the sources.list file.
yes | cp /etc/apt/sources.list /etc/apt/sources.list.org
echo "deb http://localhost/aptly-repo/ jessie main" > /etc/apt/sources.list
cat /etc/apt/sources.list.org | sort | uniq >> /etc/apt/sources.list
apt-get update

# Install dependencies: dh-autoreconf.
apt-get -y --force-yes install dh-autoreconf
apt-get -y --force-yes install libx11-dev

INITIAL_LOCATION=$(readlink -e .)

# Create working folder.
JWM_WORK_DIR=jwm
rm -rf "${JWM_WORK_DIR}"
mkdir -p "${JWM_WORK_DIR}"

# Decompress.
JWM_GZ=tarball/jwm-2.3.4.tar.gz
tar -xvzf "${JWM_GZ}" --strip-components=1 -C "${JWM_WORK_DIR}"

# Build JWM
cd ${JWM_WORK_DIR}
autoreconf || true
automake -a || true
./configure
make
make install

cd ${INITIAL_LOCATION}


# Reference:
#   -https://wiki.archlinux.org/index.php/JWM#Minimal_PKGBUILD_example
# xsltproc templet.xsl inputfile.xml

