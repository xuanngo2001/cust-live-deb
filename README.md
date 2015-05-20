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
dd if=remaster.iso of=/dev/sdX
sync
```
The `sync` bit is important as `dd` can return before the write operation finishes.

# Requirements
* `apt-get -y --force-yes install live-build squashfs-tools syslinux`
* `apt-get -y --force-yes install xorriso` 

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
    * Total size = 320028K. Space Used = 320028K.
  * Running inst-min-con-00-linux-image.sh ...
    * Mount /proc, /sys and /dev/pts.
    * Generate dbus-uuidgen to /var/lib/dbus/machine-id.
    * Install Linux image.
    * Set APT to skip installing recommended packages.
    * Total size = 611180K. Space Used = 291152K.
  * Running inst-min-con-auto-log-root.sh ...
    * Total size = 611188K. Space Used = 8K.
  * Running inst-min-con-bashrc.sh ...
    * Total size = 611188K. Space Used = 0K.
  * Running inst-min-con-compressors.sh ...
    * Install bzip2 compressor.
    * Total size = 611404K. Space Used = 216K.
  * Running inst-min-con-locale.sh ...
    * Install locale and set it to use en_US.UTF-8.
    * Install localepurge to purge non-UTF-8.
    * Total size = 634940K. Space Used = 23536K.
  * Running inst-min-con-numlock.sh ...
    * Install numlockx to turn on NumLock on boot.
    * Total size = 641460K. Space Used = 6520K.
  * Running inst-min-con-pciutils.sh ...
    * Install pciutils to troubleshoot pci devices(i.e. lspci).
    * Total size = 643036K. Space Used = 1576K.
  * Running inst-min-con-snd-alsa.sh ...
    * Install ALSA sound.
    * Test sound: aplay /usr/share/sounds/alsa/*.
    * Total size = 650880K. Space Used = 7844K.
  * Running inst-min-con-xtra-fonts-asian.sh ...
    * Install fonts-hanazono to display Asian characters correctly.
    * Total size = 716852K. Space Used = 65972K.
  * Running inst-min-con-xtra-timezone.sh ...
    * Set time zone to EST (America/Montreal).
    * Total size = 716852K. Space Used = 0K.
  * Running inst-min-win-00-xorg.sh ...
    * Set keyboard to use US international.
    * Install minimum Xorg X server.
    * Install xinit so you can run startx.
    * Add auto start window manager(i.e startx).
    * Total size = 811364K. Space Used = 94512K.
  * Running inst-min-win-01-wm-jwm.sh ...
    * Total size = 821004K. Space Used = 9640K.
  * Running inst-min-win-menu.sh ...
    * Install menu, an easy way to get installed programs in the menu automatically.
    * Total size = 822288K. Space Used = 1284K.
  * Running inst-std-accessories-fileroller.sh ...
    * Install Archive Manager: File Roller.
    * Total size = 912464K. Space Used = 90176K.
  * Running inst-std-accessories-galculator.sh ...
    * Install Calculator: galculator.
    * Total size = 913988K. Space Used = 1524K.
  * Running inst-std-accessories-gpicview.sh ...
    * Install Image Viewer: gpicview.
    * Total size = 926708K. Space Used = 12720K.
  * Running inst-std-accessories-mupdf.sh ...
    * Install PDF reader: Mupdf.
    * Total size = 942056K. Space Used = 15348K.
  * Running inst-std-accessories-scite.sh ...
    * Install Text Editor: SciTE.
    * Total size = 948336K. Space Used = 6280K.
  * Running inst-std-accessories-thunar.sh ...
    * Install File Manger: thunar.
    * Total size = 957636K. Space Used = 9300K.
  * Running inst-std-accessories-xarchiver.sh ...
    * Install Archive Manager: xarchiver.
    * Total size = 958860K. Space Used = 1224K.
  * Running inst-std-accessories-xscreensaver.sh ...
    * Install Screensaver: xscreensaver.
    * Total size = 972552K. Space Used = 13692K.
  * Running inst-std-graphic-pinta.sh ...
    * Install Image Editor: Pinta.
    * Total size = 1034196K. Space Used = 61644K.
  * Running inst-std-internet-iceweseal.sh ...
    * Total size = 1147328K. Space Used = 113132K.
  * Running inst-std-multimedia-mpv.sh ...
    * Install Media Player: MPV.
    * Total size = 1195216K. Space Used = 47888K.
  * Running inst-std-office-libreoffice.sh ...
    * Install Office Suite: Word processor - libreoffice-writer.
    * Install Office Suite: Spreadsheet - libreoffice-calc.
    * Install Office Suite: Presentation - libreoffice-impress.
    * Install Office Suite: Drawing - libreoffice-draw.
    * NOT install Office Suite: Database - libreoffice-base.
    * NOT install Office Suite: Equation - libreoffice-math.
    * Total size = 1627856K. Space Used = 432640K.
  * Running inst-std-system-disk-manager.sh ...
    * Install Auto Mount Partition Manager: Disk Manager.
    * Total size = 1682248K. Space Used = 54392K.
  * Running inst-std-system-gnome-disk-utility.sh ...
    * Install Partition Manager: gnome-disk-utility.
    * Total size = 1689072K. Space Used = 6824K.
  * Running inst-std-system-gparted.sh ...
    * Install Partition Manager: gparted.
    * Total size = 1705012K. Space Used = 15940K.
  * Running inst-xtra-dev-tools.sh ...
    * Install debconf-utils to use debconf-set-selections.
    * Install xorriso to create isohybrid.
    * Install isolinux to get isohdpfx.bin and isolinux.bin in order to create isohybrid.
    * Note: boot.cat is automatically created.
    * Install debtree to view dependencies of packages. Better package selections.
    * Total size = 1706264K. Space Used = 1252K.
  * Running inst-xtra-fuse.sh ...
    * Install fuse(fusermount) to run TMSU.
    * Total size = 1707044K. Space Used = 780K.
  * Running inst-xtra-proxy.sh ...
    * Add proxy to /etc/environment and /etc/apt/apt.conf.d/proxy.
    * Total size = 1707052K. Space Used = 8K.
  * Running inst-xtra-sqlite.sh ...
    * Install Database: sqlite3.
    * Total size = 1707052K. Space Used = 0K.
  * Running inst-xtra-virtualbox-guest.sh ...
    * Install VirtualBox guest additions to Shared folder/clipboard, auto window scaling, etc.
    * Assumed packages installed: bzip2 & Xserver installed.
    * Install dkms,build-essential,linux-headers-3.16.0-4-amd64 to compile VirtualBox guest additions.
    * VirtualBox guest additions version:        4.3.20 installed.
    * Delete ./settings/binary/VBoxGuestAdditions.iso[56976K]. Space used could be negative due to this deletion.
    * Total size = 1854368K. Space Used = 147316K.
  * Running inst-xtra-zfs.sh ...
    * Install lsb-release.
    * Add zfsonlinux repository to /etc/apt/sources.list.d/zfsonlinux.list.
    * Add GPG key to /etc/apt/trusted.gpg.d/zfsonlinux.gpg.
    * Install debian-zfs.
    * Delete ./settings/binary/zfsonlinux_6_all.deb[1992K].
    * Total size = 1937296K. Space Used = 82928K.
  * Running inst-zclean-00-zerosizing-docs.sh ...
    * Zero size all documents in /usr/share/.
    * Total size = 1864124K. Space Used = -73172K.
  * Running inst-zclean-99-end-cleanup.sh ...
    * Clean apt-get cache.
    * rm -rf /tmp/*.
    * Umount /sys, /dev/pts and /proc.
    * Add http://http.debian.net/debian/ in sources.list.
    * Total size = 1435936K. Space Used = -428188K.
