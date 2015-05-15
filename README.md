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
    * Total size = 260608K. Space Used = 260608K.
  * Running install-00-base.sh ...
    * Mount /proc, /sys and /dev/pts.
    * Generate dbus-uuidgen to /var/lib/dbus/machine-id.
    * Install Linux image.
    * Set APT to skip installing recommended packages.
    * Total size = 551280K. Space Used = 290672K.
  * Running install-00-locale.sh ...
    * Install locale and set it to use en_US.UTF-8.
    * Install localepurge to purge non-UTF-8.
    * Total size = 574840K. Space Used = 23560K.
  * Running install-auto-login-root.sh ...
    * Total size = 574848K. Space Used = 8K.
  * Running install-bashrc.sh ...
    * Total size = 574848K. Space Used = 0K.
  * Running install-dev-tools.sh ...
    * Total size = 574976K. Space Used = 128K.
  * Running install-proxy.sh ...
    * Add proxy to /etc/environment and /etc/apt/apt.conf.d/proxy.
    * Total size = 574984K. Space Used = 8K.
  * Running install-snd-alsa.sh ...
    * Install ALSA sound.
    * Total size = 582828K. Space Used = 7844K.
  * Running install-timezone.sh ...
    * Set time zone to EST (America/Montreal).
    * Total size = 582828K. Space Used = 0K.
  * Running install-xwin-00-xorg.sh ...
    * Set keyboard to use US international.
    * Install minimum Xorg X server.
    * Install xinit so you can run startx.
    * Add auto start window manager(i.e startx).
    * Total size = 683796K. Space Used = 100968K.
  * Running install-xwin-01-jwm.sh ...
    * Total size = 693456K. Space Used = 9660K.
  * Running install-xwin-iceweasel.sh ...
    * Total size = 836848K. Space Used = 143392K.
  * Running install-xwin-menu.sh ...
    * Install menu, an easy way to get installed programs in the menu automatically.
    * Total size = 838136K. Space Used = 1288K.
  * Running install-xwin-virtualbox-guest.sh ...
    * Total size = 934912K. Space Used = 96776K.
  * Running install-zz-00-zerosizing-docs.sh ...
    * Zero size all documents in /usr/share/.
    * Total size = 886552K. Space Used = -48360K.
  * Running install-zz-cleanup.sh ...
    * Clean apt-get cache.
    * rm -rf /tmp/*.
    * Umount /sys, /dev/pts and /proc.
    * Add http://http.debian.net/debian/ in sources.list.
    * Total size = 686076K. Space Used = -200476K.
