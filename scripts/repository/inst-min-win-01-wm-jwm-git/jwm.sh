SOURCES_LINE="deb-src http://ftp.us.debian.org/debian/ jessie main"
SOURCES_LIST=/etc/apt/sources.list
if ! grep -F "${SOURCES_LINE}" "${SOURCES_LIST}"; then
  echo "${SOURCES_LINE}" >> "${SOURCES_LIST}"
fi

apt-get update
apt-get -y --force-yes install fakeroot
apt-get build-dep jwm

tar -xvzf jwm-2.3.4.tar.gz 
cd jwm-2.3.4
apt-get source jwm

cd jwm-2.1.0+svn579/
apt-get -y --force-yes install devscripts
debchange -b -v 2.3.4~bpo50+1
apt-get install checkinstall


apt-get install automake