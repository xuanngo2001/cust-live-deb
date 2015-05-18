# Custom Live Debian System
Set of scripts to create custom Live Debian System.
* Automatically calculate space used of each script. 

# Usage
1. Change `DEB_REPO_URL` variable in `build-live.sh` to point to the Debian repository URL.
1. Run `./build-live.sh`
1. Run `chroot chroot`
1. You are now in the live system(chroot), run the followings:
1. `cd /root/scripts`
1. `chmod +x install.sh`
1. `./install.sh`
1. `exit`
1. You are now out of the live system, run `./mkiso.sh` to create ISO image.

# Transferring the iso image to USB stick
```
dd if=remaster.iso of=/dev/sdg
```

# Requirements
* `apt-get -y --force-yes install live-build squashfs-tools syslinux`
* `apt-get -y --force-yes install genisoimage` 

# References
* http://live.debian.net/manual/git/html/live-manual.en.html (Manual)
* http://manpages.ubuntu.com/manpages/natty/de/man1/lb_config.1.html
* http://askubuntu.com/questions/551195/scripting-chroot-how-to
* https://help.ubuntu.com/community/LiveCDCustomizationFromScratch
* https://wiki.debian.org/Openbox/
* http://willhaley.com/willhaley/blog/create-a-custom-debian-live-environment/
* https://l3net.wordpress.com/2013/09/21/how-to-build-a-debian-livecd/

# Release checklist
* Can you watch youtube video over wireless connection?

# Dump


# Customizations Performed
  * Running install.sh ...
    * Running on SHELL=/bin/bash VER=4.3.30(1)-release
    * Total size = 319740K. Space Used = 319740K.
  * Running inst-min-con-00-linux-image.sh ...
    * Mount /proc, /sys and /dev/pts.
    * Generate dbus-uuidgen to /var/lib/dbus/machine-id.
    * Install Linux image.
    * Set APT to skip installing recommended packages.
    * Total size = 610560K. Space Used = 290820K.
  * Running inst-min-con-auto-log-root.sh ...
    * Total size = 610568K. Space Used = 8K.
  * Running inst-min-con-bashrc.sh ...
    * Total size = 610568K. Space Used = 0K.
  * Running inst-min-con-compressors.sh ...
    * Install bzip2 compressor.
    * Total size = 610784K. Space Used = 216K.
  * Running inst-min-con-locale.sh ...
    * Install locale and set it to use en_US.UTF-8.
    * Install localepurge to purge non-UTF-8.
    * Total size = 634320K. Space Used = 23536K.
  * Running inst-min-con-snd-alsa.sh ...
    * Install ALSA sound.
    * Test sound: aplay /usr/share/sounds/alsa/*.
    * Total size = 642164K. Space Used = 7844K.
  * Running inst-min-con-timezone.sh ...
    * Set time zone to EST (America/Montreal).
    * Total size = 642164K. Space Used = 0K.
  * Running inst-min-win-00-xorg.sh ...
    * Set keyboard to use US international.
    * Install minimum Xorg X server.
    * Install xinit so you can run startx.
    * Add auto start window manager(i.e startx).
    * Total size = 743128K. Space Used = 100964K.
  * Running inst-min-win-01-wm-jwm.sh ...
    * Total size = 752792K. Space Used = 9664K.
  * Running inst-min-win-menu.sh ...
    * Install menu, an easy way to get installed programs in the menu automatically.
    * Total size = 754064K. Space Used = 1272K.
  * Running inst-std-accessories-evince.sh ...
    * Install PDF reader: Evince.
    * Total size = 921036K. Space Used = 166972K.
  * Running inst-std-accessories-fileroller.sh ...
    * Install Archive Manager: File Roller.
    * Total size = 937120K. Space Used = 16084K.
  * Running inst-std-accessories-galculator.sh ...
    * Install Calculator: galculator.
    * Total size = 938644K. Space Used = 1524K.
  * Running inst-std-accessories-gpicview.sh ...
    * Install Image Viewer: gpicview.
    * Total size = 951356K. Space Used = 12712K.
  * Running inst-std-accessories-scite.sh ...
    * Install Text Editor: SCite.
    * Total size = 957616K. Space Used = 6260K.
  * Running inst-std-accessories-thunar.sh ...
    * Install File Manger: thunar.
    * Total size = 966924K. Space Used = 9308K.
  * Running inst-std-accessories-xscreensaver.sh ...
    * Install Screensaver: xscreensaver.
    * Total size = 980600K. Space Used = 13676K.
  * Running inst-std-internet-iceweseal.sh ...
    * Total size = 1093736K. Space Used = 113136K.
  * Running inst-xtra-dev-tools.sh ...
    * Install debconf-utils so you can use debconf-set-selections.
    * Total size = 1093852K. Space Used = 116K.
  * Running inst-xtra-proxy.sh ...
    * Add proxy to /etc/environment and /etc/apt/apt.conf.d/proxy.
    * Total size = 1093860K. Space Used = 8K.
  * Running inst-xtra-virtualbox-guest.sh ...
    * Install VirtualBox guest additions to Shared folder/clipboard, auto window scaling, etc.
    * Assumed packages installed: bzip2 & Xserver installed.
    * Install dkms build-essential linux-headers-3.16.0-4-amd64 to compile VirtualBox guest additions.
    * VirtualBox guest additions version:        4.3.20 installed.
    * Delete ./settings/binary/VBoxGuestAdditions.iso[56976K]. Space used could be negative due to this deletion.
    * Total size = 1241136K. Space Used = 147276K.
  * Running inst-xtra-zfs.sh ...
    * Install lsb-release.
    * Add zfsonlinux repository to /etc/apt/sources.list.d/zfsonlinux.list.
    * Add GPG key to /etc/apt/trusted.gpg.d/zfsonlinux.gpg.
    * Install debian-zfs.
    * Delete ./settings/binary/zfsonlinux_6_all.deb[1992K].
    * Total size = 1354176K. Space Used = 113040K.
  * Running inst-zclean-00-zerosizing-docs.sh ...
    * Zero size all documents in /usr/share/.
...............................CLDS: * Total size = 1289252K. Space Used = -64924K.
  * Running inst-zclean-99-end-cleanup.sh ...
    * Clean apt-get cache.
    * rm -rf /tmp/*.
    * Umount /sys, /dev/pts and /proc.
    * Add http://http.debian.net/debian/ in sources.list.
    * Total size = 987984K. Space Used = -301268K.
