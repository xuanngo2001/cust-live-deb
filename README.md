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
    * Total size = 319632K. Space Used = 319632K.
  * Running inst-min-con-00-linux-image.sh ...
    * Mount /proc, /sys and /dev/pts.
    * Generate dbus-uuidgen to /var/lib/dbus/machine-id.
    * Install Linux image.
    * Set APT to skip installing recommended packages.
    * Total size = 610400K. Space Used = 290768K.
  * Running inst-min-con-auto-log-root.sh ...
    * Total size = 610408K. Space Used = 8K.
  * Running inst-min-con-bashrc.sh ...
    * Total size = 610408K. Space Used = 0K.
  * Running inst-min-con-compressors.sh ...
    * Install bzip2 compressor.
    * Total size = 610624K. Space Used = 216K.
  * Running inst-min-con-locale.sh ...
    * Install locale and set it to use en_US.UTF-8.
    * Install localepurge to purge non-UTF-8.
    * Total size = 634160K. Space Used = 23536K.
  * Running inst-min-con-snd-alsa.sh ...
    * Install ALSA sound.
    * Test sound: aplay /usr/share/sounds/alsa/*.
    * Total size = 642000K. Space Used = 7840K.
  * Running inst-min-con-timezone.sh ...
    * Set time zone to EST (America/Montreal).
    * Total size = 642000K. Space Used = 0K.
  * Running inst-min-win-00-xorg.sh ...
    * Set keyboard to use US international.
    * Install minimum Xorg X server.
    * Install xinit so you can run startx.
    * Add auto start window manager(i.e startx).
    * Total size = 742960K. Space Used = 100960K.
  * Running inst-min-win-01-wm-jwm.sh ...
    * Total size = 752624K. Space Used = 9664K.
  * Running inst-min-win-menu.sh ...
    * Install menu, an easy way to get installed programs in the menu automatically.
    * Total size = 753896K. Space Used = 1272K.
  * Running inst-std-internet-iceweseal.sh ...
    * Total size = 897304K. Space Used = 143408K.
  * Running inst-xtra-dev-tools.sh ...
    * Install debconf-utils so you can use debconf-set-selections.
    * Total size = 897416K. Space Used = 112K.
  * Running inst-xtra-proxy.sh ...
    * Add proxy to /etc/environment and /etc/apt/apt.conf.d/proxy.
    * Total size = 897424K. Space Used = 8K.
  * Running inst-xtra-virtualbox-guest.sh ...
    * Install VirtualBox guest additions to Shared folder/clipboard, auto window scaling, etc.
    * Assumed packages installed: bzip2 & Xserver installed.
    * Install dkms build-essential linux-headers-3.16.0-4-amd64 to compile VirtualBox guest additions.
    * VirtualBox guest additions version:        4.3.20 installed.
    * Delete ./settings/binary/VBoxGuestAdditions.iso[56976K]. Space used could be negative due to this deletion.
    * Total size = 1045400K. Space Used = 147976K.
  * Running inst-xtra-zfs.sh ...
    * Install lsb-release.
    * Add zfsonlinux repository to /etc/apt/sources.list.d/zfsonlinux.list.
    * Add GPG key to /etc/apt/trusted.gpg.d/zfsonlinux.gpg.
    * Install debian-zfs.
    * Delete ./settings/binary/zfsonlinux_6_all.deb[1992K].
    * Total size = 1161904K. Space Used = 116504K.
  * Running inst-zclean-00-zerosizing-docs.sh ...
    * Zero size all documents in /usr/share/.
    * Total size = 1108028K. Space Used = -53876K.
  * Running inst-zclean-99-end-cleanup.sh ...
    * Clean apt-get cache.
    * rm -rf /tmp/*.
    * Umount /sys, /dev/pts and /proc.
    * Add http://http.debian.net/debian/ in sources.list.
    * Total size = 858768K. Space Used = -249260K.
