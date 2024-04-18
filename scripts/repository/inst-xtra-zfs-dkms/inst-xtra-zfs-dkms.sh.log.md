* >>>>>>>>> Running inst-xtra-zfs-dkms.sh ...
  * After this operation, 65.7 MB of additional disk space will be used.
  * After this operation, 62.9 MB of additional disk space will be used.
  * After this operation, 416 kB of additional disk space will be used.
  * After this operation, 19.0 MB of additional disk space will be used.
  * After this operation, 7,343 kB of additional disk space will be used.
  * Install instructions: https://github.com/zfsonlinux/zfs/wiki/Debian
  * Install zfs-dkms: version: 2.2.3-1~bpo12+1, DKMS style package. DKMS vs KMOD, see http://zfsonlinux.org/generic-deb.html
  * Install zfs-initramfs to be able to boot from ZFS.
  * Import existing ZFS partitions: zpool import -a
  * Disk size = 6506188K. Space Used = 222648K. Runtime = 00:00:08:25.
  * The following NEW packages will be installed:
  ```bash
build-essential build-essential* dkms dpkg-dev file
g++ g++-12 libc6-dev* libdpkg-perl libelf-dev
libnvpair3linux libstdc++-12-dev libuutil3linux libzfs4linux libzpool5linux
linux-headers-6.6.13+bpo-amd64 linux-headers-6.6.13+bpo-amd64* linux-headers-6.6.13+bpo-common linux-headers-amd64 linux-kbuild-6.6.13+bpo
lsb-release make module-assistant patch zfs-dkms
zfs-initramfs zfsutils-linux
  ```
