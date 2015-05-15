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

# Release checklist
* Can you watch youtube video over wireless connection?

# Dump


# Customizations Performed
  * Running install-00-00.sh ...
    * Total size = 317604K. Space Used = 317604K.
  * Running install-00-base.sh ...
    * Mount /proc, /sys and /dev/pts.
    * Generate dbus-uuidgen to /var/lib/dbus/machine-id.
    * Install Linux image.
    * Set APT to skip installing recommended packages.
    * Total size = 608292K. Space Used = 290688K.
  * Running install-00-locale.sh ...
    * Install locale and set it to use en_US.UTF-8.
    * Install localepurge to purge non-UTF-8.
    * Total size = 631852K. Space Used = 23560K.
  * Running install-00-compressors.sh ...
    * Install bzip2 compressor.
    * Total size = 632048K. Space Used = 196K.
  * Running install-auto-login-root.sh ...
    * Total size = 632056K. Space Used = 8K.
  * Running install-bashrc.sh ...
    * Total size = 632056K. Space Used = 0K.
  * Running install-dev-tools.sh ...
    * Install debconf-utils so you can use debconf-set-selections.
    * Total size = 632168K. Space Used = 112K.
  * Running install-proxy.sh ...
    * Add proxy to /etc/environment and /etc/apt/apt.conf.d/proxy.
    * Total size = 632176K. Space Used = 8K.
  * Running install-snd-alsa.sh ...
    * Install ALSA sound.
    * Test sound: aplay /usr/share/sounds/alsa/*.
    * Total size = 640020K. Space Used = 7844K.
  * Running install-timezone.sh ...
    * Set time zone to EST (America/Montreal).
    * Total size = 640024K. Space Used = 4K.
  * Running install-xwin-00-xorg.sh ...
    * Set keyboard to use US international.
    * Install minimum Xorg X server.
    * Install xinit so you can run startx.
    * Add auto start window manager(i.e startx).
    * Total size = 740988K. Space Used = 100964K.
  * Running install-xwin-01-jwm.sh ...
    * Total size = 750656K. Space Used = 9668K.
  * Running install-xwin-iceweasel.sh ...
    * Total size = 894064K. Space Used = 143408K.
  * Running install-xwin-menu.sh ...
    * Install menu, an easy way to get installed programs in the menu automatically.
    * Total size = 895328K. Space Used = 1264K.
  * Running install-xwin-virtualbox-guest.sh ...
    * Install VirtualBox guest additions to Shared folder, Shared Clipboard, Auto window scaling, etc.
    * Assumed packages installed: bzip2 & Xserver installed.
    * Install dkms, build-essential and linux-headers to compile VirtualBox guest additions.
    * VirtualBox guest additions version:        4.3.20 installed.
    * Delete ./settings/VBoxGuestAdditions.iso. Used space could be negative due to this deletion.
    * Total size = 1135404K. Space Used = 240076K.
  * Running install-zz-00-zerosizing-docs.sh ...
    * Zero size all documents in /usr/share/.
    * Total size = 1067844K. Space Used = -67560K.
  * Running install-zz-cleanup.sh ...
    * Clean apt-get cache.
    * rm -rf /tmp/*.
    * Umount /sys, /dev/pts and /proc.
    * Add http://http.debian.net/debian/ in sources.list.
    * Total size = 825380K. Space Used = -242464K.
