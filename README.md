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

# Packages
* LinuxMint: http://paste.debian.net/182062/

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
    * Total size = 320400K. Space Used = 320400K.
  * Running inst-min-con-00-linux-image.sh ...
    * After this operation, 3145 kB of additional disk space will be used.
    * After this operation, 224 MB of additional disk space will be used.
    * Mount /proc, /sys and /dev/pts.
    * Generate dbus-uuidgen to /var/lib/dbus/machine-id.
    * Install Linux image.
    * Set APT to skip installing recommended packages.
    * Total size = 611904K. Space Used = 291504K.
  * Running inst-min-con-01-locale.sh ...
    * After this operation, 16.3 MB of additional disk space will be used.
    * After this operation, 334 kB of additional disk space will be used.
    * Install locale and set it to use en_US.UTF-8.
    * Install localepurge to purge non-UTF-8.
    * Total size = 635460K. Space Used = 23556K.
  * Running inst-min-con-auto-log-root.sh ...
    * Total size = 635468K. Space Used = 8K.
  * Running inst-min-con-automount-udev.sh ...
    * Install udev to auto mount all devices.
    * Total size = 635472K. Space Used = 4K.
  * Running inst-min-con-bashrc.sh ...
    * Set common settings for /root/.bashrc.
    * Set to use dircolors-solarized(i.e dircolors.256dark) to make ls more beautiful.
    * Total size = 635480K. Space Used = 8K.
  * Running inst-min-con-compressors.sh ...
    * After this operation, 122 kB of additional disk space will be used.
    * Install bzip2 compressor.
    * Total size = 635676K. Space Used = 196K.
  * Running inst-min-con-firmware.sh ...
    * After this operation, 41.7 MB of additional disk space will be used.
    * Install firmwares: atmel-firmware, bluez-firmware, firmware-atheros, firmware-bnx2, firmware-bnx2x, firmware-brcm80211, firmware-intelwimax, firmware-ipw2x00, firmware-ivtv, firmware-iwlwifi, firmware-libertas, firmware-linux, firmware-linux-free, firmware-linux-nonfree, firmware-qlogic, firmware-ralink, firmware-realtek, zd1211-firmware.
    * Total size = 689376K. Space Used = 53700K.
  * Running inst-min-con-getpackages.sh ...
    * Total size = 689376K. Space Used = 0K.
  * Running inst-min-con-numlock.sh ...
    * After this operation, 4,381 kB of additional disk space will be used.
    * Install numlockx to turn on NumLock on boot.
    * Total size = 695896K. Space Used = 6520K.
  * Running inst-min-con-pciutils.sh ...
    * After this operation, 1,181 kB of additional disk space will be used.
    * Install pciutils to troubleshoot pci devices(i.e. lspci).
    * Total size = 697468K. Space Used = 1572K.
  * Running inst-min-con-snd-alsa.sh ...
    * After this operation, 5,270 kB of additional disk space will be used.
    * Install ALSA sound.
    * Test sound: aplay /usr/share/sounds/alsa/*.
    * Total size = 705312K. Space Used = 7844K.
  * Running inst-min-con-xtra-fonts-asian.sh ...
    * After this operation, 48.2 MB of additional disk space will be used.
    * Install fonts-hanazono to display Asian characters correctly.
    * Test it by opening website http://ctext.org/zh.
    * Total size = 771284K. Space Used = 65972K.
  * Running inst-min-con-xtra-timezone.sh ...
    * Set time zone to EST (America/Montreal).
    * Total size = 771288K. Space Used = 4K.
  * Running inst-min-win-00-xorg.sh ...
    * After this operation, 73.0 MB of additional disk space will be used.
    * Set keyboard to use US international.
    * Install minimum Xorg X server.
    * Install xinit so you can run startx.
    * Add auto start window manager(i.e startx).
    * Total size = 865792K. Space Used = 94504K.
  * Running inst-min-win-01-wm-jwm.sh ...
    * After this operation, 6,665 kB of additional disk space will be used.
    * Total size = 875444K. Space Used = 9652K.
  * Running inst-min-win-menu.sh ...
    * After this operation, 1,829 kB of additional disk space will be used.
    * Install menu, an easy way to get installed programs in the menu automatically.
    * Total size = 876716K. Space Used = 1272K.
  * Running inst-std-accessories-fileroller.sh ...
    * After this operation, 103 MB of additional disk space will be used.
    * Install Archive Manager: File Roller.
    * Total size = 966904K. Space Used = 90188K.
  * Running inst-std-accessories-galculator.sh ...
    * After this operation, 1,424 kB of additional disk space will be used.
    * Install Calculator: galculator.
    * Total size = 968420K. Space Used = 1516K.
  * Running inst-std-accessories-geeqie.sh ...
    * After this operation, 35.1 MB of additional disk space will be used.
    * Install Image Viewer: geeqie.
    * Total size = 989536K. Space Used = 21116K.
  * Running inst-std-accessories-gpicview.sh ...
    * After this operation, 876 kB of additional disk space will be used.
    * Install Image Viewer: gpicview.
    * Total size = 989876K. Space Used = 340K.
  * Running inst-std-accessories-mupdf.sh ...
    * After this operation, 12.0 MB of additional disk space will be used.
    * Install PDF reader: Mupdf.
    * Total size = 1005216K. Space Used = 15340K.
  * Running inst-std-accessories-scite.sh ...
    * After this operation, 4,829 kB of additional disk space will be used.
    * Install Text Editor: SciTE.
    * Total size = 1011500K. Space Used = 6284K.
  * Running inst-std-accessories-thunar.sh ...
    * After this operation, 15.2 MB of additional disk space will be used.
    * Install File Manger: thunar.
    * Total size = 1020792K. Space Used = 9292K.
  * Running inst-std-accessories-xfce-terminal.sh ...
    * After this operation, 4,570 kB of additional disk space will be used.
    * Install terminal: xfce4-terminal.
    * Total size = 1025556K. Space Used = 4764K.
  * Running inst-std-graphic-pinta.sh ...
    * After this operation, 36.5 MB of additional disk space will be used.
    * Install Image Editor: Pinta.
    * Total size = 1087200K. Space Used = 61644K.
  * Running inst-std-internet-iceweseal.sh ...
    * After this operation, 82.4 MB of additional disk space will be used.
    * Total size = 1200336K. Space Used = 113136K.
  * Running inst-std-multimedia-mpv.sh ...
    * After this operation, 35.3 MB of additional disk space will be used.
    * Install Media Player: MPV.
    * Total size = 1248108K. Space Used = 47772K.
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
    * Total size = 1666980K. Space Used = 418872K.
  * Running inst-std-system-conky.sh ...
    * After this operation, 967 kB of additional disk space will be used.
    * Install System Monitor: conky.
    * Total size = 1668292K. Space Used = 1312K.
  * Running inst-std-system-disk-manager.sh ...
    * After this operation, 30.6 MB of additional disk space will be used.
    * Install Auto Mount Partition Manager: Disk Manager.
    * Total size = 1722972K. Space Used = 54680K.
  * Running inst-std-system-gnome-disk-utility.sh ...
    * After this operation, 11.4 MB of additional disk space will be used.
    * Install Partition Manager: gnome-disk-utility.
    * Total size = 1729780K. Space Used = 6808K.
  * Running inst-std-system-gparted.sh ...
    * After this operation, 17.3 MB of additional disk space will be used.
    * Install Partition Manager: gparted.
    * Total size = 1745716K. Space Used = 15936K.
  * Running inst-std-system-network-wicd.sh ...
    * After this operation, 8,474 kB of additional disk space will be used.
    * Install Network Manager: wicd.
    * Total size = 1758676K. Space Used = 12960K.
  * Running inst-xtra-dev-tools.sh ...
    * After this operation, 157 kB of additional disk space will be used.
    * After this operation, 151 kB of additional disk space will be used.
    * After this operation, 884 kB of additional disk space will be used.
    * Install debconf-utils to use debconf-set-selections.
    * Install xorriso to create isohybrid.
    * Install isolinux to get isohdpfx.bin and isolinux.bin in order to create isohybrid.
    * Note: boot.cat is automatically created.
    * Install debtree to view dependencies of packages. Better package selections.
    * Total size = 1759952K. Space Used = 1276K.
  * Running inst-xtra-fuse.sh ...
    * After this operation, 567 kB of additional disk space will be used.
    * Install fuse(fusermount) to run TMSU.
    * Total size = 1760728K. Space Used = 776K.
  * Running inst-xtra-proxy.sh ...
    * Add proxy to /etc/environment and /etc/apt/apt.conf.d/proxy.
    * Total size = 1760736K. Space Used = 8K.
  * Running inst-xtra-sqlite.sh ...
    * After this operation, 143 kB of additional disk space will be used.
    * Install Database: sqlite3.
    * Total size = 1761012K. Space Used = 276K.
  * Running inst-xtra-virtualbox-guest-from-scratch.sh ...
    * After this operation, 201 MB of additional disk space will be used.
    * After this operation, 2,696 kB disk space will be freed.
    * After this operation, 69.3 MB disk space will be freed.
    * Install VirtualBox guest additions to Shared folder/clipboard, auto window scaling, etc.
    * Assumed packages installed: bzip2 & Xserver installed.
    * Install dkms,build-essential,linux-headers-3.16.0-4-amd64 to compile VirtualBox guest additions.
    * VirtualBox guest additions version:        4.3.20 installed.
    * Delete ./settings/binary/VBoxGuestAdditions.iso[56976K]. Space used could be negative due to this deletion.
    * Total size = 1908576K. Space Used = 147564K.
  * Running inst-xtra-wifite.sh ...
    * After this operation, 80.3 MB of additional disk space will be used.
    * Install wifite.
    * Total size = 2001900K. Space Used = 93324K.
  * Running inst-xtra-zfs.sh ...
    * After this operation, 99.3 kB of additional disk space will be used.
    * After this operation, 39.7 MB of additional disk space will be used.
    * Install lsb-release.
    * Add zfsonlinux repository to /etc/apt/sources.list.d/zfsonlinux.list.
    * Add GPG key to /etc/apt/trusted.gpg.d/zfsonlinux.gpg.
    * Install debian-zfs.
    * Delete ./settings/binary/zfsonlinux_6_all.deb[1992K].
    * Total size = 2084828K. Space Used = 82928K.
  * Running inst-zclean-00-zerosizing-docs.sh ...
    * Zero size all documents in /usr/share/.
    * Total size = 2007644K. Space Used = -77184K.
  * Running inst-zclean-99-end-cleanup.sh ...
    * Clean apt-get cache.
    * rm -rf /tmp/*.
    * Umount /sys, /dev/pts and /proc.
    * Add http://http.debian.net/debian/ in sources.list.
    * Total size = 1551764K. Space Used = -455880K.
