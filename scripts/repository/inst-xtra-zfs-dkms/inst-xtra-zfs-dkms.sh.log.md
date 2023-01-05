* >>>>>>>>> Running inst-xtra-zfs-dkms.sh ...
  * After this operation, 13.3 kB of additional disk space will be used.
  * After this operation, 400 kB of additional disk space will be used.
<<<<<<< HEAD
  * Disk size = 6040344K. Space Used = 368K. Runtime = 00:00:00:02.
=======
  * After this operation, 18.2 MB of additional disk space will be used.
  * After this operation, 7,048 kB of additional disk space will be used.
  * Install instructions: https://github.com/zfsonlinux/zfs/wiki/Debian
  * Install zfs-dkms: version: 2.1.7-1~bpo11+1, DKMS style package. DKMS vs KMOD, see http://zfsonlinux.org/generic-deb.html
  * Install zfs-initramfs to be able to boot from ZFS.
  * Import existing ZFS partitions: zpool import -a
  * Disk size = 6221436K. Space Used = 59824K. Runtime = 00:00:04:18.
>>>>>>> refs/remotes/origin/bullseye
  * The following NEW packages will be installed:
  ```bash
<<<<<<< HEAD
build-essential* dkms* libc6-dev* libelf-dev linux-headers-6.0.0-0.deb11.6-amd64*
linux-headers-amd64 lsb-release* module-assistant
=======
build-essential* dkms* file libc6-dev* libelf-dev
libnvpair3linux libuutil3linux libzfs4linux libzpool5linux linux-headers-6.0.0-0.deb11.6-amd64*
linux-headers-amd64 lsb-release* module-assistant spl-dkms zfs-dkms
zfs-dkms* zfs-initramfs zfsutils-linux
>>>>>>> refs/remotes/origin/bullseye
  ```
