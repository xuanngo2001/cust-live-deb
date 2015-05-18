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
    * Total size = 317612K. Space Used = 317612K.
  * Running inst-min-con-00-linux-image.sh ...
    * Mount /proc, /sys and /dev/pts.
    * Generate dbus-uuidgen to /var/lib/dbus/machine-id.
    * Install Linux image.
    * Set APT to skip installing recommended packages.
    * Total size = 608308K. Space Used = 290696K.
  * Running inst-min-con-auto-log-root.sh ...
    * Total size = 608316K. Space Used = 8K.
  * Running inst-min-con-bashrc.sh ...
    * Total size = 608316K. Space Used = 0K.
  * Running inst-min-con-compressors.sh ...
    * Install bzip2 compressor.
    * Total size = 608532K. Space Used = 216K.
  * Running inst-min-con-locale.sh ...
    * Install locale and set it to use en_US.UTF-8.
    * Install localepurge to purge non-UTF-8.
    * Total size = 632068K. Space Used = 23536K.
  * Running inst-min-con-snd-alsa.sh ...
    * Install ALSA sound.
    * Test sound: aplay /usr/share/sounds/alsa/*.
    * Total size = 639912K. Space Used = 7844K.
  * Running inst-min-con-timezone.sh ...
    * Set time zone to EST (America/Montreal).
    * Total size = 639912K. Space Used = 0K.
  * Running inst-min-win-00-xorg.sh ...
    * Set keyboard to use US international.
    * Install minimum Xorg X server.
    * Install xinit so you can run startx.
    * Add auto start window manager(i.e startx).
    * Total size = 740880K. Space Used = 100968K.
  * Running inst-min-win-01-wm-jwm.sh ...
    * Total size = 750540K. Space Used = 9660K.
  * Running inst-min-win-menu.sh ...
    * Install menu, an easy way to get installed programs in the menu automatically.
    * Total size = 751812K. Space Used = 1272K.
  * Running inst-std-internet-iceweseal.sh ...
    * Total size = 895220K. Space Used = 143408K.
  * Running inst-xtra-dev-tools.sh ...
    * Install debconf-utils so you can use debconf-set-selections.
    * Total size = 895332K. Space Used = 112K.
  * Running inst-xtra-proxy.sh ...
    * Add proxy to /etc/environment and /etc/apt/apt.conf.d/proxy.
    * Total size = 895340K. Space Used = 8K.
  * Running inst-xtra-virtualbox-guest.sh ...
    * Install VirtualBox guest additions to Shared folder/clipboard, auto window scaling, etc.
    * Assumed packages installed: bzip2 & Xserver installed.
    * Install dkms build-essential linux-headers-3.16.0-4-amd64 to compile VirtualBox guest additions.
    * VirtualBox guest additions version:        4.3.20 installed.
    * Delete ./settings/VBoxGuestAdditions.iso. Space used could be negative due to this deletion.
    * Total size = 1043308K. Space Used = 147968K.
  * Running inst-zclean-00-zerosizing-docs.sh ...
    * Zero size all documents in /usr/share/.
    * Total size = 992140K. Space Used = -51168K.
  * Running inst-zclean-99-end-cleanup.sh ...
    * Clean apt-get cache.
    * rm -rf /tmp/*.
    * Umount /sys, /dev/pts and /proc.
    * Add http://http.debian.net/debian/ in sources.list.
    * Total size = 749676K. Space Used = -242464K.
