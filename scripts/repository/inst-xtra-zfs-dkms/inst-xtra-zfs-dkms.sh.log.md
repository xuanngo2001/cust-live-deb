* >>>>>>>>> Running inst-xtra-zfs-dkms.sh ...
  * After this operation, 13.3 kB of additional disk space will be used.
  * After this operation, 400 kB of additional disk space will be used.
  * After this operation, 18.8 MB of additional disk space will be used.
  * After this operation, 7,674 kB of additional disk space will be used.
  * Install instructions: https://github.com/zfsonlinux/zfs/wiki/Debian
  * Install zfs-dkms: version: 2.3.2-2, DKMS style package. DKMS vs KMOD, see http://zfsonlinux.org/generic-deb.html
  * Install zfs-initramfs to be able to boot from ZFS.
  * Import existing ZFS partitions: zpool import -a
  * Disk size = 7651592K. Space Used = 45756K. Runtime = 00:00:03:24.
  * The following NEW packages will be installed:
  ```bash
build-essential* dkms* file libc6-dev* libelf-dev
libnvpair3linux libuutil3linux libzfs6linux libzpool6linux libzstd-dev
linux-headers-6.12.57+deb13-amd64* linux-headers-amd64 lsb-release* module-assistant zfs-dkms
zfs-initramfs zfsutils-linux
  ```
