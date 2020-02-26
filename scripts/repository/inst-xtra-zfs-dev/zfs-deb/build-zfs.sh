apt-get update
apt-get -y install build-essential autoconf automake libtool gawk alien 
apt-get -y install fakeroot || true
apt-get -y install dkms libblkid-dev uuid-dev libudev-dev libssl-dev
apt-get -y install zlib1g-dev libaio-dev libattr1-dev libelf-dev 
apt-get -y install linux-headers-$(uname -r) 
apt-get -y install python3 python3-dev python3-setuptools python3-cffi libffi-dev

#apt-get -y install kbd

wget https://github.com/openzfs/zfs/releases/download/zfs-0.8.3/zfs-0.8.3.tar.gz
tar -vxzf zfs-0.8.3.tar.gz
cd zfs-0.8.3

#./configure

./configure --with-config=srpm
make -j1 pkg-utils deb-dkms
for file in *.deb; do dpkg -i $file; done



