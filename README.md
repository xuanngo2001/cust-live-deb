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

# Quickies
```
# Run these in 1 shot as ROOT to build ALL.
./build-live.sh
chroot chroot/ /bin/bash -c "cd /root/scripts; chmod +x install.sh; ./install.sh all"
./mkiso.sh

# OR
./build-live.sh && chroot chroot/ /bin/bash -c "cd /root/scripts; chmod +x install.sh; ./install.sh all" && ./mkiso.sh
```
http://stackoverflow.com/a/8157973

# Transferring the iso image to USB stick
```
dd if=remaster.iso of=/dev/sdX bs=4M
sync
```
The `sync` bit is important as `dd` can return before the write operation finishes.

# Requirements
* `apt-get -y --force-yes install live-build squashfs-tools syslinux`
* `apt-get -y --force-yes install xorriso` 

# Analyze package sizes
```
sort install-size-history.txt | uniq | grep <script-name>
```

# References
* http://live.debian.net/manual/git/html/live-manual.en.html (Manual)
* http://manpages.ubuntu.com/manpages/natty/de/man1/lb_config.1.html
* http://askubuntu.com/questions/551195/scripting-chroot-how-to
* https://help.ubuntu.com/community/LiveCDCustomizationFromScratch
* https://wiki.debian.org/Openbox/
* http://willhaley.com/willhaley/blog/create-a-custom-debian-live-environment/
* https://l3net.wordpress.com/2013/09/21/how-to-build-a-debian-livecd/
* http://www.opengeeks.me/2015/04/building-an-hybrid-debian-live-iso-with-xorriso/

# Release checklist
* Can you watch youtube video over wireless connection?

# Dump


# Customizations Performed
  * Running install.sh ...
    * Running on SHELL=/bin/bash VER=4.3.30(1)-release
    * Total size = 320132K. Space Used = 320132K.
  * Running inst-min-con-00-linux-image.sh ...
    * After this operation, 3145 kB of additional disk space will be used.
    * After this operation, 224 MB of additional disk space will be used.
    * Mount /proc, /sys and /dev/pts.
    * Generate dbus-uuidgen to /var/lib/dbus/machine-id.
    * Install Linux image.
    * Set APT to skip installing recommended packages.
    * Total size = 611340K. Space Used = 291208K.
  * Running inst-min-con-auto-log-root.sh ...
    * Total size = 611348K. Space Used = 8K.
  * Running inst-min-con-bashrc.sh ...
    * Total size = 611348K. Space Used = 0K.
  * Running inst-min-con-compressors.sh ...
    * After this operation, 122 kB of additional disk space will be used.
    * Install bzip2 compressor.
    * Total size = 611560K. Space Used = 212K.
  * Running inst-min-con-locale.sh ...
    * After this operation, 16.3 MB of additional disk space will be used.
    * After this operation, 334 kB of additional disk space will be used.
    * Install locale and set it to use en_US.UTF-8.
    * Install localepurge to purge non-UTF-8.
    * Total size = 635096K. Space Used = 23536K.
  * Running inst-min-con-numlock.sh ...
    * After this operation, 4,381 kB of additional disk space will be used.
    * Install numlockx to turn on NumLock on boot.
    * Total size = 641616K. Space Used = 6520K.
  * Running inst-min-con-pciutils.sh ...
    * After this operation, 1,181 kB of additional disk space will be used.
    * Install pciutils to troubleshoot pci devices(i.e. lspci).
    * Total size = 643192K. Space Used = 1576K.
  * Running inst-min-con-snd-alsa.sh ...
    * After this operation, 5,270 kB of additional disk space will be used.
    * Install ALSA sound.
    * Test sound: aplay /usr/share/sounds/alsa/*.
    * Total size = 651040K. Space Used = 7848K.
  * Running inst-min-con-usbmount.sh ...
    * Install usbmount to auto mount USB devices.
    * Total size = 651040K. Space Used = 0K.
  * Running inst-min-con-xtra-fonts-asian.sh ...
    * After this operation, 48.2 MB of additional disk space will be used.
    * Install fonts-hanazono to display Asian characters correctly.
    * Test it by opening website http://ctext.org/zh.
    * Total size = 717012K. Space Used = 65972K.
  * Running inst-min-con-xtra-timezone.sh ...
    * Set time zone to EST (America/Montreal).
    * Total size = 717012K. Space Used = 0K.
  * Running inst-min-win-00-xorg.sh ...
    * After this operation, 73.0 MB of additional disk space will be used.
    * Set keyboard to use US international.
    * Install minimum Xorg X server.
    * Install xinit so you can run startx.
    * Add auto start window manager(i.e startx).
    * Total size = 811524K. Space Used = 94512K.
  * Running inst-min-win-01-wm-jwm.sh ...
    * After this operation, 6,665 kB of additional disk space will be used.
    * Total size = 821164K. Space Used = 9640K.
  * Running inst-min-win-menu.sh ...
    * After this operation, 1,829 kB of additional disk space will be used.
    * Install menu, an easy way to get installed programs in the menu automatically.
    * Total size = 822448K. Space Used = 1284K.
  * Running inst-std-accessories-fileroller.sh ...
    * After this operation, 103 MB of additional disk space will be used.
    * Install Archive Manager: File Roller.
    * Total size = 912628K. Space Used = 90180K.
  * Running inst-std-accessories-galculator.sh ...
    * After this operation, 1,424 kB of additional disk space will be used.
    * Install Calculator: galculator.
    * Total size = 914152K. Space Used = 1524K.
  * Running inst-std-accessories-geeqie.sh ...
    * After this operation, 35.1 MB of additional disk space will be used.
    * Install Image Viewer: geeqie.
    * Total size = 935268K. Space Used = 21116K.
  * Running inst-std-accessories-gpicview.sh ...
    * After this operation, 876 kB of additional disk space will be used.
    * Install Image Viewer: gpicview.
    * Total size = 935612K. Space Used = 344K.
  * Running inst-std-accessories-mupdf.sh ...
    * After this operation, 12.0 MB of additional disk space will be used.
    * Install PDF reader: Mupdf.
    * Total size = 950956K. Space Used = 15344K.
  * Running inst-std-accessories-scite.sh ...
    * After this operation, 4,829 kB of additional disk space will be used.
    * Install Text Editor: SciTE.
    * Total size = 957236K. Space Used = 6280K.
  * Running inst-std-accessories-thunar.sh ...
    * After this operation, 15.2 MB of additional disk space will be used.
    * Install File Manger: thunar.
    * Total size = 966524K. Space Used = 9288K.
  * Running inst-std-graphic-pinta.sh ...
    * After this operation, 36.5 MB of additional disk space will be used.
    * Install Image Editor: Pinta.
    * Total size = 1028172K. Space Used = 61648K.
  * Running inst-std-internet-iceweseal.sh ...
    * After this operation, 82.4 MB of additional disk space will be used.
    * Total size = 1141308K. Space Used = 113136K.
  * Running inst-std-multimedia-mpv.sh ...
    * After this operation, 35.3 MB of additional disk space will be used.
    * Install Media Player: MPV.
    * Total size = 1189088K. Space Used = 47780K.
  * Running inst-std-office-libreoffice.sh ...
    * After this operation, 272 MB of additional disk space will be used.
    * After this operation, 42.3 MB of additional disk space will be used.
    * After this operation, 17.8 MB of additional disk space will be used.
    * Install Office Suite: Word processor - libreoffice-writer.
    * Install Office Suite: Spreadsheet - libreoffice-calc.
    * Install Office Suite: Presentation - libreoffice-impress.
    * Install Office Suite: Drawing - libreoffice-draw.
    * NOT install Office Suite: Database - libreoffice-base.
    * NOT install Office Suite: Equation - libreoffice-math.
    * Total size = 1607964K. Space Used = 418876K.
  * Running inst-std-system-conky.sh ...
    * After this operation, 967 kB of additional disk space will be used.
    * Install System Monitor: conky.
    * Total size = 1609272K. Space Used = 1308K.
  * Running inst-std-system-disk-manager.sh ...
    * After this operation, 30.6 MB of additional disk space will be used.
    * Install Auto Mount Partition Manager: Disk Manager.
    * Total size = 1663948K. Space Used = 54676K.
  * Running inst-std-system-gkrellm.sh ...
    * After this operation, 2,319 kB of additional disk space will be used.
    * Install System Monitor: gkrellm.
    * Total size = 1666072K. Space Used = 2124K.
  * Running inst-std-system-gnome-disk-utility.sh ...
    * After this operation, 11.4 MB of additional disk space will be used.
    * Install Partition Manager: gnome-disk-utility.
    * Total size = 1672884K. Space Used = 6812K.
  * Running inst-std-system-gparted.sh ...
    * After this operation, 17.3 MB of additional disk space will be used.
    * Install Partition Manager: gparted.
    * Total size = 1688816K. Space Used = 15932K.
  * Running inst-std-system-network-wicd.sh ...
    * After this operation, 8,474 kB of additional disk space will be used.
    * Install Network Manager: wicd.
    * Total size = 1701768K. Space Used = 12952K.
  * Running inst-xtra-dev-tools.sh ...
    * After this operation, 157 kB of additional disk space will be used.
    * After this operation, 151 kB of additional disk space will be used.
    * After this operation, 884 kB of additional disk space will be used.
    * Install debconf-utils to use debconf-set-selections.
    * Install xorriso to create isohybrid.
    * Install isolinux to get isohdpfx.bin and isolinux.bin in order to create isohybrid.
    * Note: boot.cat is automatically created.
    * Install debtree to view dependencies of packages. Better package selections.
    * Total size = 1703028K. Space Used = 1260K.
  * Running inst-xtra-fuse.sh ...
    * After this operation, 567 kB of additional disk space will be used.
    * Install fuse(fusermount) to run TMSU.
    * Total size = 1703820K. Space Used = 792K.
  * Running inst-xtra-proxy.sh ...
    * Add proxy to /etc/environment and /etc/apt/apt.conf.d/proxy.
    * Total size = 1703828K. Space Used = 8K.
  * Running inst-xtra-sqlite.sh ...
    * After this operation, 143 kB of additional disk space will be used.
    * Install Database: sqlite3.
    * Total size = 1704092K. Space Used = 264K.
  * Running inst-xtra-virtualbox-guest.sh ...
    * After this operation, 201 MB of additional disk space will be used.
    * After this operation, 2,696 kB disk space will be freed.
    * After this operation, 69.3 MB disk space will be freed.
    * Install VirtualBox guest additions to Shared folder/clipboard, auto window scaling, etc.
    * Assumed packages installed: bzip2 & Xserver installed.
    * Install dkms,build-essential,linux-headers-3.16.0-4-amd64 to compile VirtualBox guest additions.
    * VirtualBox guest additions version:        4.3.20 installed.
    * Delete ./settings/binary/VBoxGuestAdditions.iso[56976K]. Space used could be negative due to this deletion.
    * Total size = 1851672K. Space Used = 147580K.
  * Running inst-xtra-zfs.sh ...
    * After this operation, 99.3 kB of additional disk space will be used.
    * After this operation, 39.7 MB of additional disk space will be used.
    * Install lsb-release.
    * Add zfsonlinux repository to /etc/apt/sources.list.d/zfsonlinux.list.
    * Add GPG key to /etc/apt/trusted.gpg.d/zfsonlinux.gpg.
    * Install debian-zfs.
    * Delete ./settings/binary/zfsonlinux_6_all.deb[1992K].
    * Total size = 1934600K. Space Used = 82928K.
  * Running inst-zclean-00-zerosizing-docs.sh ...
    * Zero size all documents in /usr/share/.
    * Total size = 1859876K. Space Used = -74724K.
  * Running inst-zclean-99-end-cleanup.sh ...
    * Clean apt-get cache.
    * rm -rf /tmp/*.
    * Umount /sys, /dev/pts and /proc.
    * Add http://http.debian.net/debian/ in sources.list.
    * Total size = 1431536K. Space Used = -428340K.
