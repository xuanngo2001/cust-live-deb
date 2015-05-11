# Custom Live Debian System
Set of scripts to create custom Live Debian System.
* Auto log in as root.
* UTC time zone.

# Requirements
* `apt-get -y --force-yes install live-build squashfs-tools syslinux`
* `apt-get -y --force-yes install genisoimage` 

# References
* http://live.debian.net/manual/git/html/live-manual.en.html (Manual)
* http://manpages.ubuntu.com/manpages/natty/de/man1/lb_config.1.html
* http://askubuntu.com/questions/551195/scripting-chroot-how-to
* https://help.ubuntu.com/community/LiveCDCustomizationFromScratch


# Dump
* Add proxy settings in  `/etc/apt/apt.conf.d/08proxy`
* Add `deb http://ftp.debian.org/debian/ jessie main` in sources.list
