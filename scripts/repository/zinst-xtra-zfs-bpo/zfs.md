# Test
    # Destroy current zfs partition
    zpool destroy zfs-dkms-bpo
    
    # Create partition.
    zpool create -f zfs-dkms-bpo /dev/sdX
    
    # Create file in partition.
    echo "ZFS $(modinfo zfs | grep ^version | tr -s ' ') -> $(date)" > /zfs-dkms-bpo/file-in-zfs.txt
    
    # Mount zfs partition
    zpool import -a
    
    # View file
    modinfo zfs | grep ^version | tr -s ' '
    cat /zfs-dkms-bpo/file-in-zfs.txt
    
# Upgrade to new kernel
As long as you get:

    zavl:
    Running module version sanity check.
     - Original module
       - No original module exists within this kernel
     - Installation
       - Installing to /lib/modules/4.7.0-0.bpo.1-amd64/updates/dkms/
    
    zcommon.ko:
    Running module version sanity check.
     - Original module
       - No original module exists within this kernel
     - Installation
       - Installing to /lib/modules/4.7.0-0.bpo.1-amd64/updates/dkms/
    
    znvpair.ko:
    Running module version sanity check.
     - Original module
       - No original module exists within this kernel
     - Installation
       - Installing to /lib/modules/4.7.0-0.bpo.1-amd64/updates/dkms/
    
    zpios.ko:
    Running module version sanity check.
     - Original module
       - No original module exists within this kernel
     - Installation
       - Installing to /lib/modules/4.7.0-0.bpo.1-amd64/updates/dkms/
    
    zunicode.ko:
    Running module version sanity check.
     - Original module
       - No original module exists within this kernel
     - Installation
       - Installing to /lib/modules/4.7.0-0.bpo.1-amd64/updates/dkms/
    
    zfs.ko:
    Running module version sanity check.
     - Original module
       - No original module exists within this kernel
     - Installation
       - Installing to /lib/modules/4.7.0-0.bpo.1-amd64/updates/dkms/
    
    depmod...
    
    DKMS: install completed.
    
Even you get these error, zfs might work:

    update-initramfs: Generating /boot/initrd.img-4.7.0-0.bpo.1-amd64
    live-boot: core filesystems devices utils udev wget blockdev dns.
    libkmod: ERROR ../libkmod/libkmod.c:557 kmod_search_moddep: could not open moddep file '/lib/modules/3.16.0-4-amd64/modules.dep.bin'
    modinfo: ERROR: Module alias zfs not found.    