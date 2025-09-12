* >>>>>>>>> Running inst-xtra-zfs-dkms.sh ...
  * After this operation, 13.3 kB of additional disk space will be used.
  * After this operation, 416 kB of additional disk space will be used.
  * After this operation, 18.7 MB of additional disk space will be used.
  * After this operation, 7,605 kB of additional disk space will be used.
  * Install instructions: https://github.com/zfsonlinux/zfs/wiki/Debian
  * Install zfs-dkms: version: 2.3.2-2~bpo12+2, DKMS style package. DKMS vs KMOD, see http://zfsonlinux.org/generic-deb.html
  * Install zfs-initramfs to be able to boot from ZFS.
  * Import existing ZFS partitions: zpool import -a
  * Disk size = 7724712K. Space Used = 48456K. Runtime = 00:00:06:01.
  * The following NEW packages will be installed:
  ```bash
build-essential* dkms* file libc6-dev* libelf-dev
libnvpair3linux libuutil3linux libzfs6linux libzpool6linux libzstd-dev
linux-headers-6.12.38+deb12-amd64* linux-headers-amd64 lsb-release* module-assistant zfs-dkms
zfs-initramfs zfsutils-linux
  ```
