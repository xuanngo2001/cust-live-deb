# Linux image
mkinitramfs & dpkg-reconfigure are needed.

    # Manually create /boot/initrd.img-* for a specific kernel.
    # Get _installed_ kernel version.
    KERNEL_INSTALLED=$(dpkg-query -W -f='${binary:Package}; ${Status}\n' linux-image-* | grep 'install ok installed' | sed 's/;.*//' | head -n 1 | sed 's/linux-image-//')
    KERNEL_VERSION=$(echo "${KERNEL_INSTALLED}" | sed 's/-unsigned//')
    mkinitramfs -d /etc/initramfs-tools -o /boot/initrd.img-${KERNEL_VERSION} ${KERNEL_VERSION} -r /
    #update-initramfs -u -t -k ${KERNEL_VERSION}
    
    echo "${GV_LOG} * Reconfigure linux-image-${KERNEL_INSTALLED}."
    dpkg-reconfigure linux-image-${KERNEL_INSTALLED}

# Wait for virtualbox guest addition package to be updated for the new Linux image


# Virtualbox guest addition log

When virtualbox guest addition is installed correctly, the log will likely looks like the following:

    Loading new virtualbox-guest-5.0.20 DKMS files...
    First Installation: checking all kernels...
    It is likely that 3.16.0-4-amd64 belongs to a chroot's host
    Building initial module for 4.5.0-0.bpo.2-amd64
    Done.
    
    vboxguest:
    Running module version sanity check.
     - Original module
       - No original module exists within this kernel
     - Installation
       - Installing to /lib/modules/4.5.0-0.bpo.2-amd64/updates/
    
    vboxsf.ko:
    Running module version sanity check.
     - Original module
       - No original module exists within this kernel
     - Installation
       - Installing to /lib/modules/4.5.0-0.bpo.2-amd64/updates/
    
    vboxvideo.ko:
    Running module version sanity check.
     - Original module
       - No original module exists within this kernel
     - Installation
       - Installing to /lib/modules/4.5.0-0.bpo.2-amd64/updates/
    
    depmod....
    
    DKMS: install completed.
    
Get the version number doesn't always work: `modinfo vboxguest | grep ^version | tr -s ' '`

===================

virtualbox guest addition is installed correctly even with error:

    Loading new virtualbox-guest-5.1.8 DKMS files...
    It is likely that 4.6.0-0.bpo.1-amd64 belongs to a chroot's host
    Building for 4.7.0-0.bpo.1-amd64
    Building initial module for 4.7.0-0.bpo.1-amd64
    Done.
    
    vboxguest:
    Running module version sanity check.
     - Original module
       - No original module exists within this kernel
     - Installation
       - Installing to /lib/modules/4.7.0-0.bpo.1-amd64/updates/
    
    vboxsf.ko:
    Running module version sanity check.
     - Original module
       - No original module exists within this kernel
     - Installation
       - Installing to /lib/modules/4.7.0-0.bpo.1-amd64/updates/
    
    vboxvideo.ko:
    Running module version sanity check.
     - Original module
       - No original module exists within this kernel
     - Installation
       - Installing to /lib/modules/4.7.0-0.bpo.1-amd64/updates/
    
    depmod...
    
    DKMS: install completed.
    Processing triggers for systemd (215-17+deb8u5) ...
    libkmod: ERROR ../libkmod/libkmod.c:557 kmod_search_moddep: could not open moddep file '/lib/modules/4.6.0-0.bpo.1-amd64/modules.dep.bin'
    modinfo: ERROR: Module alias vboxguest not found.    