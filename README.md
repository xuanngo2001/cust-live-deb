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
* https://wiki.ubuntu.com/BootToRAM

# Release checklist
* Can you watch youtube video over wireless connection?

# Dump


# Customizations Performed
  * Running install.sh ...
    * Running on SHELL=/bin/bash VER=4.3.30(1)-release
    * Total size = 321044K. Space Used = 321044K.
  * Running inst-min-con-00-linux-image.sh ...
    * After this operation, 3145 kB of additional disk space will be used.
    * After this operation, 224 MB of additional disk space will be used.
    * Mount /proc, /sys and /dev/pts.
    * Generate dbus-uuidgen to /var/lib/dbus/machine-id.
    * Install Linux image.
    * Set APT to skip installing recommended packages.
    * Total size = 614880K. Space Used = 293836K.
  * Running inst-min-con-01-debconf-utils.sh ...
    * After this operation, 157 kB of additional disk space will be used.
    * Install debconf-utils to use debconf-set-selections.
    * Total size = 615108K. Space Used = 228K.
  * Running inst-min-con-02-locale.sh ...
    * After this operation, 16.3 MB of additional disk space will be used.
    * After this operation, 334 kB of additional disk space will be used.
    * Install locale and set it to use en_US.UTF-8.
    * Install localepurge to purge non-UTF-8.
    * Total size = 638648K. Space Used = 23540K.
  * Running inst-min-con-03-startup-script.sh ...
    * Copy startup.sh to /etc/init.d/.
    * Make it executable.
    * Register it in the boot sequence.
    * Total size = 638652K. Space Used = 4K.
  * Running inst-min-con-auto-log-root.sh ...
    * Total size = 638660K. Space Used = 8K.
  * Running inst-min-con-bashrc.sh ...
    * Set common settings for /root/.bashrc.
    * Set dircolors to use dircolors-gnu-ls-colors.txt to make ls more beautiful.
    * Total size = 638668K. Space Used = 8K.
  * Running inst-min-con-compressors.sh ...
    * After this operation, 122 kB of additional disk space will be used.
    * Install bzip2 compressor.
    * Total size = 638852K. Space Used = 184K.
  * Running inst-min-con-deb-multimedia.sh ...
    * Install ./settings/binary/deb-multimedia-keyring_2014.2_all.deb.
    * Add deb-multimedia sources list.
    * Delete ./settings/binary/deb-multimedia-keyring_2014.2_all.deb[28K].
    * apt-get update
    * Total size = 639388K. Space Used = 536K.
  * Running inst-min-con-filesystem-ntfs-3g.sh ...
    * After this operation, 2,200 kB of additional disk space will be used.
    * Install support for NTFS: ntfs-3g.
    * Total size = 642372K. Space Used = 2984K.
  * Running inst-min-con-firmware-cpu.sh ...
    * Total size = 642372K. Space Used = 0K.
  * Running inst-min-con-firmware.sh ...
    * Install firmwares: atmel-firmware, bluez-firmware, firmware-atheros, firmware-bnx2, firmware-bnx2x, firmware-brcm80211, firmware-intelwimax, firmware-ipw2x00, firmware-ivtv, firmware-iwlwifi, firmware-libertas, firmware-linux, firmware-linux-free, firmware-linux-nonfree, firmware-qlogic, firmware-ralink, firmware-realtek, zd1211-firmware.
    * Total size = 642376K. Space Used = 4K.
  * Running inst-min-con-live-build-tools.sh ...
    * After this operation, 151 kB of additional disk space will be used.
    * After this operation, 1,789 kB of additional disk space will be used.
    * After this operation, 392 kB of additional disk space will be used.
    * Install xorriso to create isohybrid.
    * Install isolinux to get isohdpfx.bin and isolinux.bin in order to create isohybrid.
    * Note: boot.cat is automatically created.
    * Install rsync to copy directories.
    * Install squashfs-tools to create new squashfs.
    * Total size = 645940K. Space Used = 3564K.
  * Running inst-min-con-numlock.sh ...
    * After this operation, 4,381 kB of additional disk space will be used.
    * Install numlockx to turn on NumLock on boot.
    * Total size = 652468K. Space Used = 6528K.
  * Running inst-min-con-pciutils.sh ...
    * After this operation, 1,181 kB of additional disk space will be used.
    * Install pciutils to troubleshoot pci devices(i.e. lspci).
    * Total size = 654032K. Space Used = 1564K.
  * Running inst-min-con-snd-alsa.sh ...
    * After this operation, 5,270 kB of additional disk space will be used.
    * Install ALSA sound.
    * Test sound: aplay /usr/share/sounds/alsa/*.
    * Total size = 661884K. Space Used = 7852K.
  * Running inst-min-con-snd-pulseaudio.sh ...
    * After this operation, 37.7 MB of additional disk space will be used.
    * After this operation, 146 kB of additional disk space will be used.
    * After this operation, 5,587 kB of additional disk space will be used.
    * After this operation, 90.1 kB of additional disk space will be used.
    * Install PulseAudio.
    * As root, PulseAudio doesn't run automatically.
   * pulseaudio --start --log-target=syslog
    * Quick fix: Startup pulseaudio from /root/.bashrc.
    * When running alsamixer, it should show that it is using PulseAudio card.
    * Test sound: paplay /usr/share/sounds/alsa/*
    * More settings at https://wiki.debian.org/PulseAudio.
    * Total size = 717096K. Space Used = 55212K.
  * Running inst-min-con-udevil.sh ...
    * After this operation, 500 kB of additional disk space will be used.
    * Install udevil to auto mount USB devices.
    * Set devmon to auto start on startup.
    * You need ntfs-3g driver to be able to write on ntfs partition.
    * Total size = 717420K. Space Used = 324K.
  * Running inst-min-win-00-xorg.sh ...
    * After this operation, 72.3 MB of additional disk space will be used.
    * Set keyboard to use US international.
    * Install minimum Xorg X server.
    * Install xinit so you can run startx.
    * Add auto start window manager(i.e startx).
    * Total size = 810712K. Space Used = 93292K.
  * Running inst-min-win-01-wm-jwm.sh ...
    * After this operation, 6,665 kB of additional disk space will be used.
    * Install Window Manager: JWM.
    * Set jwmrc.
    * Total size = 820404K. Space Used = 9692K.
  * Running inst-min-win-menu.sh ...
    * After this operation, 1,829 kB of additional disk space will be used.
    * Install menu, an easy way to get installed programs in the menu automatically.
    * Total size = 821668K. Space Used = 1264K.
  * Running inst-min-win-systray-volumeicon-alsa.sh ...
    * After this operation, 41.8 MB of additional disk space will be used.
    * Install volume controller in system tray.
    * Set left-click to display volume slider: lmb_slider=true.
    * Set volumeicon to run on JWN startup.
    * Total size = 850344K. Space Used = 28676K.
  * Running inst-zclean-00-zerosizing-docs.sh ...
    * Zero size all documents in /usr/share/.
    * Total size = 801308K. Space Used = -49036K.
  * Running inst-zclean-99-end-cleanup.sh ...
    * Clean apt-get cache.
    * rm -rf /tmp/*.
    * Umount /sys, /dev/pts and /proc.
    * Add http://http.debian.net/debian/ in sources.list.
    * Total size = 637648K. Space Used = -163660K.
