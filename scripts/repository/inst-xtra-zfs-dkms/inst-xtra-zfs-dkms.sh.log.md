* >>>>>>>>> Running inst-xtra-zfs-dkms.sh ...
  * After this operation, 13.3 kB of additional disk space will be used.
  * After this operation, 416 kB of additional disk space will be used.
  * After this operation, 19.0 MB of additional disk space will be used.
  * After this operation, 7,343 kB of additional disk space will be used.
  * Install instructions: https://github.com/zfsonlinux/zfs/wiki/Debian
  * Install zfs-dkms: version: 2.2.3-1~bpo12+1, DKMS style package. DKMS vs KMOD, see http://zfsonlinux.org/generic-deb.html
  * Install zfs-initramfs to be able to boot from ZFS.
  * Import existing ZFS partitions: zpool import -a
  * Disk size = 6219432K. Space Used = 46980K. Runtime = 00:00:07:01.
  * The following NEW packages will be installed:
  ```bash
build-essential* dkms* file libc6-dev* libelf-dev
libnvpair3linux libuutil3linux libzfs4linux libzpool5linux linux-headers-6.6.13+bpo-amd64*
linux-headers-amd64 lsb-release* module-assistant zfs-dkms zfs-initramfs
zfsutils-linux
  ```
