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
    * Total size = 320424K. Space Used = 320424K.
  * Running inst-min-con-00-linux-image.sh ...
    * After this operation, 3145 kB of additional disk space will be used.
    * After this operation, 224 MB of additional disk space will be used.
    * Mount /proc, /sys and /dev/pts.
    * Generate dbus-uuidgen to /var/lib/dbus/machine-id.
    * Install Linux image.
    * Set APT to skip installing recommended packages.
    * Total size = 611968K. Space Used = 291544K.
  * Running inst-min-con-01-locale.sh ...
    * After this operation, 16.3 MB of additional disk space will be used.
    * After this operation, 334 kB of additional disk space will be used.
    * Install locale and set it to use en_US.UTF-8.
    * Install localepurge to purge non-UTF-8.
    * Total size = 635524K. Space Used = 23556K.
  * Running inst-min-con-auto-log-root.sh ...
    * Total size = 635532K. Space Used = 8K.
  * Running inst-min-con-automount-udev.sh ...
    * Install udev to auto mount all devices.
    * Total size = 635536K. Space Used = 4K.
  * Running inst-min-con-bashrc.sh ...
    * Set common settings for /root/.bashrc.
    * Set to use dircolors-solarized(i.e dircolors.256dark) to make ls more beautiful.
    * Total size = 635544K. Space Used = 8K.
  * Running inst-min-con-compressors.sh ...
    * After this operation, 122 kB of additional disk space will be used.
    * Install bzip2 compressor.
    * Total size = 635740K. Space Used = 196K.
  * Running inst-min-con-firmware.sh ...
    * After this operation, 41.7 MB of additional disk space will be used.
    * Install firmwares: atmel-firmware, bluez-firmware, firmware-atheros, firmware-bnx2, firmware-bnx2x, firmware-brcm80211, firmware-intelwimax, firmware-ipw2x00, firmware-ivtv, firmware-iwlwifi, firmware-libertas, firmware-linux, firmware-linux-free, firmware-linux-nonfree, firmware-qlogic, firmware-ralink, firmware-realtek, zd1211-firmware.
    * Total size = 689440K. Space Used = 53700K.
  * Running inst-min-con-numlock.sh ...
    * After this operation, 4,381 kB of additional disk space will be used.
    * Install numlockx to turn on NumLock on boot.
    * Total size = 695960K. Space Used = 6520K.
  * Running inst-min-con-pciutils.sh ...
    * After this operation, 1,181 kB of additional disk space will be used.
    * Install pciutils to troubleshoot pci devices(i.e. lspci).
    * Total size = 697532K. Space Used = 1572K.
  * Running inst-min-con-snd-alsa.sh ...
    * After this operation, 5,270 kB of additional disk space will be used.
    * Install ALSA sound.
    * Test sound: aplay /usr/share/sounds/alsa/*.
    * Total size = 705384K. Space Used = 7852K.
  * Running inst-min-con-terminal-mlterm.sh ...
    * Total size = 705384K. Space Used = 0K.
  * Running inst-min-con-xtra-fonts-unifont.sh ...
    * After this operation, 44.5 MB of additional disk space will be used.
    * Install font: unifont.
    * Total size = 759644K. Space Used = 54260K.
  * Running inst-min-con-xtra-timezone.sh ...
    * Set time zone to EST (America/Montreal).
    * Total size = 759644K. Space Used = 0K.
  * Running inst-min-win-00-xorg.sh ...
    * After this operation, 71.5 MB of additional disk space will be used.
    * Set keyboard to use US international.
    * Install minimum Xorg X server.
    * Install xinit so you can run startx.
    * Add auto start window manager(i.e startx).
    * Total size = 851732K. Space Used = 92088K.
  * Running inst-min-win-01-wm-jwm.sh ...
    * After this operation, 6,665 kB of additional disk space will be used.
    * Total size = 861380K. Space Used = 9648K.
  * Running inst-min-win-menu.sh ...
    * After this operation, 1,829 kB of additional disk space will be used.
    * Install menu, an easy way to get installed programs in the menu automatically.
    * Total size = 862648K. Space Used = 1268K.
  * Running inst-min-win-systray-volumeicon-alsa.sh ...
    * After this operation, 41.8 MB of additional disk space will be used.
    * Install volume controller in system tray.
    * Total size = 891388K. Space Used = 28740K.
  * Running inst-std-accessories-fileroller.sh ...
    * After this operation, 87.9 MB of additional disk space will be used.
    * Install Archive Manager: File Roller.
    * Total size = 965580K. Space Used = 74192K.
  * Running inst-std-accessories-galculator.sh ...
    * After this operation, 1,424 kB of additional disk space will be used.
    * Install Calculator: galculator.
    * Total size = 967100K. Space Used = 1520K.
  * Running inst-std-accessories-geeqie.sh ...
    * After this operation, 8,414 kB of additional disk space will be used.
    * Install Image Viewer: geeqie.
    * Total size = 975832K. Space Used = 8732K.
  * Running inst-std-accessories-gpicview.sh ...
    * After this operation, 876 kB of additional disk space will be used.
    * Install Image Viewer: gpicview.
    * Total size = 976176K. Space Used = 344K.
  * Running inst-std-accessories-mupdf.sh ...
    * After this operation, 12.0 MB of additional disk space will be used.
    * Install PDF reader: Mupdf.
    * Total size = 991520K. Space Used = 15344K.
  * Running inst-std-accessories-scite.sh ...
    * After this operation, 4,829 kB of additional disk space will be used.
    * Install Text Editor: SciTE.
    * Total size = 997796K. Space Used = 6276K.
  * Running inst-std-accessories-terminal-xfce.sh ...
    * After this operation, 11.1 MB of additional disk space will be used.
    * Install terminal: xfce4-terminal.
    * Total size = 1007124K. Space Used = 9328K.
  * Running inst-std-accessories-thunar.sh ...
    * After this operation, 8,675 kB of additional disk space will be used.
    * Install File Manger: thunar.
    * Total size = 1011856K. Space Used = 4732K.
  * Running inst-std-graphic-pinta.sh ...
    * After this operation, 36.5 MB of additional disk space will be used.
    * Install Image Editor: Pinta.
    * Total size = 1073504K. Space Used = 61648K.
  * Running inst-std-internet-iceweseal.sh ...
    * After this operation, 82.4 MB of additional disk space will be used.
    * Total size = 1186632K. Space Used = 113128K.
  * Running inst-std-multimedia-mpv.sh ...
    * After this operation, 35.3 MB of additional disk space will be used.
    * Install Media Player: MPV.
    * Total size = 1234416K. Space Used = 47784K.
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
    * Total size = 1653292K. Space Used = 418876K.
  * Running inst-std-system-conky.sh ...
    * After this operation, 967 kB of additional disk space will be used.
    * Install System Monitor: conky.
    * Total size = 1654596K. Space Used = 1304K.
  * Running inst-std-system-disk-manager.sh ...
    * After this operation, 30.6 MB of additional disk space will be used.
    * Install Auto Mount Partition Manager: Disk Manager.
    * Total size = 1709284K. Space Used = 54688K.
  * Running inst-std-system-gnome-disk-utility.sh ...
    * After this operation, 11.4 MB of additional disk space will be used.
    * Install Partition Manager: gnome-disk-utility.
    * Total size = 1716108K. Space Used = 6824K.
  * Running inst-std-system-gparted.sh ...
    * After this operation, 17.3 MB of additional disk space will be used.
    * Install Partition Manager: gparted.
    * Total size = 1732028K. Space Used = 15920K.
  * Running inst-std-system-network-wicd.sh ...
    * After this operation, 8,474 kB of additional disk space will be used.
    * Install Network Manager: wicd.
    * For wireless, you have to type in the wireless interface(e.g. wlan0) in the Preferences.
    * Total size = 1744988K. Space Used = 12960K.
  * Running inst-xtra-dev-tools.sh ...
    * After this operation, 157 kB of additional disk space will be used.
    * After this operation, 151 kB of additional disk space will be used.
    * After this operation, 884 kB of additional disk space will be used.
    * Install debconf-utils to use debconf-set-selections.
    * Install xorriso to create isohybrid.
    * Install isolinux to get isohdpfx.bin and isolinux.bin in order to create isohybrid.
    * Note: boot.cat is automatically created.
    * Install debtree to view dependencies of packages. Better package selections.
    * Total size = 1746256K. Space Used = 1268K.
  * Running inst-xtra-fuse.sh ...
    * After this operation, 567 kB of additional disk space will be used.
    * Install fuse(fusermount) to run TMSU.
    * Total size = 1747032K. Space Used = 776K.
  * Running inst-xtra-sqlite.sh ...
    * After this operation, 143 kB of additional disk space will be used.
    * Install Database: sqlite3.
    * Total size = 1747312K. Space Used = 280K.
  * Running inst-xtra-virtualbox-guest-from-scratch.sh ...
    * After this operation, 201 MB of additional disk space will be used.
    * After this operation, 2,696 kB disk space will be freed.
    * After this operation, 69.3 MB disk space will be freed.
    * Install VirtualBox guest additions to Shared folder/clipboard, auto window scaling, etc.
    * Assumed packages installed: bzip2 & Xserver installed.
    * Install dkms,build-essential,linux-headers-3.16.0-4-amd64 to compile VirtualBox guest additions.
    * VirtualBox guest additions version:        4.3.20 installed.
    * Delete ./settings/binary/VBoxGuestAdditions.iso[56976K]. Space used could be negative due to this deletion.
    * Total size = 1894868K. Space Used = 147556K.
  * Running inst-xtra-wifite.sh ...
    * After this operation, 80.3 MB of additional disk space will be used.
    * Install wifite.
    * Total size = 1988188K. Space Used = 93320K.
  * Running inst-xtra-zfs.sh ...
    * After this operation, 99.3 kB of additional disk space will be used.
    * After this operation, 39.7 MB of additional disk space will be used.
    * Install lsb-release.
    * Add zfsonlinux repository to /etc/apt/sources.list.d/zfsonlinux.list.
    * Add GPG key to /etc/apt/trusted.gpg.d/zfsonlinux.gpg.
    * Install debian-zfs.
    * Delete ./settings/binary/zfsonlinux_6_all.deb[1992K].
    * Total size = 2071120K. Space Used = 82932K.
  * Running inst-zclean-00-zerosizing-docs.sh ...
    * Zero size all documents in /usr/share/.
    * Total size = 1993688K. Space Used = -77432K.
  * Running inst-zclean-99-end-cleanup.sh ...
    * Clean apt-get cache.
    * rm -rf /tmp/*.
    * Umount /sys, /dev/pts and /proc.
    * Add http://http.debian.net/debian/ in sources.list.
    * Total size = 1546992K. Space Used = -446696K.
