# Custom Live Debian System
Set of scripts to create custom Live Debian System.

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
    * Total size = 260592K.
  * Running install-00-base.sh ...
    * Mount /proc, /sys and /dev/pts.
    * Generate dbus-uuidgen to /var/lib/dbus/machine-id.
    * Install Linux image.
    * Set APT to skip installing recommended packages.
    * Total size = 551284K. Space Used = 551284K.
  * Running install-00-locale.sh ...
    * Install locale and set it to use en_US.UTF-8.
    * Install localepurge to purge non-UTF-8.
    * Total size = 574836K. Space Used = 23552K.
  * Running install-auto-login-root.sh ...
    * Total size = 574844K. Space Used = 8K.
  * Running install-bashrc.sh ...
    * Total size = 574844K. Space Used = 0K.
  * Running install-dev-tools.sh ...
    * Total size = 574972K. Space Used = 128K.
  * Running install-proxy.sh ...
    * Add proxy to /etc/environment and /etc/apt/apt.conf.d/proxy.
    * Total size = 574980K. Space Used = 8K.
  * Running install-timezone.sh ...
    * Set time zone to EST (America/Montreal).
    * Total size = 574980K. Space Used = 0K.
  * Running install-xwin-00-xorg.sh ...
    * Set keyboard to use US international.
    * Install minimum Xorg X server.
    * Install xauth and xinit so you can run startx.
    * Add auto start window manager(i.e startx).
    * Total size = 675936K. Space Used = 100956K.
  * Running install-xwin-01-jwm.sh ...
    * Total size = 685600K. Space Used = 9664K.
  * Running install-xwin-iceweasel.sh ...
    * Total size = 831320K. Space Used = 145720K.
  * Running install-xwin-menu.sh ...
    * Install menu, an easy way to get installed programs in the menu quickly.
    * Total size = 832588K. Space Used = 1268K.
  * Running install-xwin-virtualbox-guest.sh ...
    * Total size = 929372K. Space Used = 96784K.
  * Running install-zz-00-zerosizing-docs.sh ...
    * Zero size all documents in /usr/share/.
    * Total size = 881192K. Space Used = -48180K.
  * Running install-zz-cleanup.sh ...
    * Clean apt-get cache.
    * rm -rf /tmp/*.
    * Umount /sys, /dev/pts and /proc.
    * Add http://http.debian.net/debian/ in sources.list.
    * Total size = 682656K. Space Used = -198536K.
