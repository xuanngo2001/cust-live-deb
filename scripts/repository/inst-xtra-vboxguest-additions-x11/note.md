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