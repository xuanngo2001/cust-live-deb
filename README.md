# Custom Live Debian System
Set of scripts to create Custom Live Debian System:
* Automatically calculate space used of each script.
* It can remaster itself while running.

# Screenshots
![](https://github.com/limelime/cust-live-deb/blob/master/docs/screenshots/cld_screenshot_01.jpg)

# Download( TODO )
It comes in 2 flavors:
* min: Strict minimum system with JWM light-weight window manager. From there, you can add your desired applications.
* std: Standard system includes minimum system + common applications.

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


# Analyze package sizes
```
sort install-size-history.txt | uniq | grep <script-name>
```

# Packages
* LinuxMint: http://paste.debian.net/182062/

# TODO
## Regenerate initrd
* https://kernel-handbook.alioth.debian.org/ch-initramfs.html#s-initramfs-regen

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
    * Disk size = 795404K. Space Used = 795404K.
  * Running inst-min-con-00-linux-image.sh ...
    * After this operation, 3147 kB of additional disk space will be used.
    * After this operation, 224 MB of additional disk space will be used.
    * Mount /proc, /sys and /dev/pts.
    * Generate dbus-uuidgen to /var/lib/dbus/machine-id.
    * Install Linux image.
    * Set APT to skip installing recommended packages.
    * Disk size = 1115404K. Space Used = 320000K.
  * Running inst-min-con-01-debconf-utils.sh ...
    * After this operation, 157 kB of additional disk space will be used.
    * Install debconf-utils to use debconf-set-selections.
    * Disk size = 1115624K. Space Used = 220K.
  * Running inst-min-con-02-locale.sh ...
    * After this operation, 16.3 MB of additional disk space will be used.
    * Install locale and set it to use en_US.UTF-8.
    * Disk size = 1138400K. Space Used = 22776K.
  * Running inst-min-con-02-localepurge.sh ...
    * After this operation, 334 kB of additional disk space will be used.
    * Install localepurge to purge documentation of all languages, except en, en_US, en_US.UTF-8.
    * Disk size = 1139148K. Space Used = 748K.
  * Running inst-min-con-03-startup-script.sh ...
    * Copy startup.sh to /etc/init.d/.
    * Make it executable.
    * Register it in the boot sequence.
    * Disk size = 1139152K. Space Used = 4K.
  * Running inst-min-con-auto-log-root.sh ...
    * Disk size = 1139160K. Space Used = 8K.
  * Running inst-min-con-bashrc.sh ...
    * Set common settings for /root/.bashrc.
    * Set dircolors to use dircolors-gnu-ls-colors.txt to make ls more beautiful.
    * Disk size = 1139168K. Space Used = 8K.
  * Running inst-min-con-cld-dev-tools-debootstrap.sh ...
    * After this operation, 234 kB of additional disk space will be used.
    * Install debootstrap allows the creation of a Debian base system int a directory.
    * Disk size = 1139492K. Space Used = 324K.
  * Running inst-min-con-cld-tools.sh ...
    * Copied tools/cld-bash-color-meaning.sh to /usr/local/bin/.
    * Copied tools/cld-dd-usb.sh to /usr/local/bin/.
    * Copied tools/cld-dependency-graph.sh to /usr/local/bin/.
    * Copied tools/cld-lsmod.sh to /usr/local/bin/.
    * Copied tools/cld-mkiso.sh to /usr/local/bin/.
    * Copied tools/cld-persistence.sh to /usr/local/bin/.
    * Copied tools/cld-remaster.sh to /usr/local/bin/.
    * Copied tools/feh-ss.sh to /usr/local/bin/.
    * Disk size = 1139524K. Space Used = 32K.
  * Running inst-min-con-compressors.sh ...
    * After this operation, 122 kB of additional disk space will be used.
    * After this operation, 812 kB of additional disk space will be used.
    * After this operation, 395 kB of additional disk space will be used.
    * Install de/compressor: bzip2.
    * Install de/compressor: rar.
    * Install de/compressor: unzip.
    * Disk size = 1141332K. Space Used = 1808K.
  * Running inst-min-con-deb-multimedia.sh ...
    * Install ./settings/binary/deb-multimedia-keyring_2015.6.1_all.deb.
    * Add deb-multimedia sources list.
    * Delete ./settings/binary/deb-multimedia-keyring_2015.6.1_all.deb[12K].
    * apt-get update
    * Disk size = 1142588K. Space Used = 1256K.
  * Running inst-min-con-filesystem-ntfs-3g.sh ...
    * After this operation, 2,087 kB of additional disk space will be used.
    * Install support for NTFS: ntfs-3g.
    * Disk size = 1145556K. Space Used = 2968K.
  * Running inst-min-con-firmware-cpu.sh ...
    * After this operation, 47.1 kB of additional disk space will be used.
    * After this operation, 655 kB of additional disk space will be used.
    * Install CPU firmware: amd64-microcode.
    * Install CPU firmware: intel-microcode.
    * Disk size = 1146888K. Space Used = 1332K.
  * Running inst-min-con-firmware.sh ...
    * After this operation, 41.8 MB of additional disk space will be used.
    * Install firmwares: atmel-firmware, bluez-firmware, firmware-atheros, firmware-bnx2, firmware-bnx2x, firmware-brcm80211, firmware-b43-installer, firmware-intelwimax, firmware-ipw2x00, firmware-ivtv, firmware-iwlwifi, firmware-libertas, firmware-linux, firmware-linux-free, firmware-linux-nonfree, firmware-qlogic, firmware-ralink, firmware-realtek, zd1211-firmware.
    * Install b43 for Dell Wireless 1397 WLAN Mini-Card Driver.
    * Disk size = 1201888K. Space Used = 55000K.
  * Running inst-min-con-live-build-tools.sh ...
    * After this operation, 151 kB of additional disk space will be used.
    * After this operation, 1,789 kB of additional disk space will be used.
    * After this operation, 392 kB of additional disk space will be used.
    * Install xorriso to create isohybrid.
    * Install isolinux to get isohdpfx.bin and isolinux.bin in order to create isohybrid.
    * Note: boot.cat is automatically created.
    * Install rsync to copy directories.
    * Install squashfs-tools to create new squashfs.
    * Disk size = 1205468K. Space Used = 3580K.
  * Running inst-min-con-ntp.sh ...
    * After this operation, 1,871 kB of additional disk space will be used.
    * Install Network Time Protocol: ntp.
    * Disk size = 1207976K. Space Used = 2508K.
  * Running inst-min-con-numlock.sh ...
    * After this operation, 4,381 kB of additional disk space will be used.
    * Install numlockx to turn on NumLock on boot.
    * Disk size = 1214492K. Space Used = 6516K.
  * Running inst-min-con-pciutils.sh ...
    * After this operation, 1,181 kB of additional disk space will be used.
    * Install pciutils to troubleshoot pci devices(i.e. lspci).
    * Disk size = 1216064K. Space Used = 1572K.
  * Running inst-min-con-snd-alsa.sh ...
    * After this operation, 5,270 kB of additional disk space will be used.
    * Install ALSA sound.
    * Test sound: aplay /usr/share/sounds/alsa/*.
    * Add key bindings.
    * Disk size = 1223908K. Space Used = 7844K.
  * Running inst-min-con-udevil.sh ...
    * After this operation, 500 kB of additional disk space will be used.
    * Install udevil to auto mount USB devices.
    * Set devmon to auto start on startup.
    * You need ntfs-3g driver to be able to write on ntfs partition.
    * Disk size = 1224244K. Space Used = 336K.
  * Running inst-min-win-00-xorg.sh ...
    * After this operation, 72.6 MB of additional disk space will be used.
    * Set keyboard to use US international.
    * Install minimum Xorg X server.
    * Install xinit so you can run startx.
    * Add auto start window manager(i.e startx).
    * Disk size = 1318140K. Space Used = 93896K.
  * Running inst-min-win-01-wm-jwm.sh ...
    * After this operation, 6,665 kB of additional disk space will be used.
    * Install Window Manager: JWM.
    * Set jwmrc.
    * Add alsa key binding.
    * Disk size = 1327812K. Space Used = 9672K.
  * Running inst-min-win-cld-dev-tools-pandoc.sh ...
    * After this operation, 39.0 MB of additional disk space will be used.
    * Install pandoc to generate user manual.
    * Add documentation: user manual.
    * Add documentation: developer manual.
    * Disk size = 1370868K. Space Used = 43056K.
  * Running inst-min-win-menu.sh ...
    * After this operation, 1,829 kB of additional disk space will be used.
    * Install menu, an easy way to get installed programs in the menu automatically.
    * Disk size = 1372132K. Space Used = 1264K.
  * Running inst-min-win-systray-volumeicon-alsa.sh ...
    * After this operation, 41.8 MB of additional disk space will be used.
    * Install volume controller in system tray.
    * Set left-click to display volume slider: lmb_slider=true.
    * Set volumeicon to run on JWN startup.
    * Disk size = 1400828K. Space Used = 28696K.
  * Running inst-std-accessories-feh.sh ...
    * After this operation, 5,201 kB of additional disk space will be used.
    * Install command line image viewer: feh.
    * Disk size = 1406008K. Space Used = 5180K.
  * Running inst-std-accessories-galculator.sh ...
    * After this operation, 60.2 MB of additional disk space will be used.
    * Install Calculator: galculator.
    * Insert galculator in Accessories menu.
    * Disk size = 1464232K. Space Used = 58224K.
  * Running inst-std-accessories-gpicview.sh ...
    * After this operation, 876 kB of additional disk space will be used.
    * Install Image Viewer: gpicview.
    * Insert gpicview in Accessories menu.
    * Disk size = 1464584K. Space Used = 352K.
  * Running inst-std-accessories-mupdf.sh ...
    * After this operation, 12.0 MB of additional disk space will be used.
    * Install PDF reader: Mupdf.
    * Disk size = 1479928K. Space Used = 15344K.
  * Running inst-std-accessories-prtscr-gnome-screenshot.sh ...
    * After this operation, 1,576 kB of additional disk space will be used.
    * Install gnome-screenshot to be used for PrintScreen key.
    * Insert PrintScreen key binding.
    * By default, screenshots are saved under ~/Pictures/.
    * Disk size = 1481384K. Space Used = 1456K.
  * Running inst-std-accessories-scite.sh ...
    * After this operation, 4,829 kB of additional disk space will be used.
    * After this operation, 221 kB of additional disk space will be used.
    * Install Text Editor: SciTE.
    * Install at-spi2-core to shut up Accessibility warning message.
    * Insert SciTE in Accessories menu.
    * Disk size = 1487920K. Space Used = 6536K.
  * Running inst-std-accessories-terminal-xfce.sh ...
    * After this operation, 11.1 MB of additional disk space will be used.
    * Install terminal: xfce4-terminal.
    * Disk size = 1497252K. Space Used = 9332K.
  * Running inst-std-accessories-thunar.sh ...
    * After this operation, 10.0 MB of additional disk space will be used.
    * Install File Manger: thunar, thunar-media-tags-plugin, thunar-archive-plugin, thunar-volman.
    * Insert Thunar in Accessories menu.
    * Disk size = 1503604K. Space Used = 6352K.
  * Running inst-std-accessories-xarchiver.sh ...
    * After this operation, 1,211 kB of additional disk space will be used.
    * Install Archive Manager: xarchiver.
    * Disk size = 1504836K. Space Used = 1232K.
  * Running inst-std-graphic-pinta.sh ...
    * After this operation, 45.0 MB of additional disk space will be used.
    * Install Image Editor: Pinta.
    * Disk size = 1576372K. Space Used = 71536K.
  * Running inst-std-internet-iceweseal.sh ...
    * After this operation, 82.4 MB of additional disk space will be used.
    * Install web browser: iceweasel.
    * Disk size = 1689524K. Space Used = 113152K.
  * Running inst-std-multimedia-mpv.sh ...
    * After this operation, 86.8 MB of additional disk space will be used.
    * Install Media Player: MPV.
    * Add multiple aliases for MPV.
    * Add useful mpv keybindings settings.
    * Disk size = 1810908K. Space Used = 121384K.
  * Running inst-std-office-libreoffice.sh ...
    * After this operation, 273 MB of additional disk space will be used.
    * After this operation, 42.4 MB of additional disk space will be used.
    * After this operation, 18.0 MB of additional disk space will be used.
    * Install Office Suite: Word processor - libreoffice-writer.
    * Install Office Suite: Spreadsheet - libreoffice-calc.
    * Install Office Suite: Presentation - libreoffice-impress.
    * Install Office Suite: Drawing - libreoffice-draw.
    * NOT install Office Suite: Database - libreoffice-base.
    * NOT install Office Suite: Equation - libreoffice-math.
    * Disk size = 2231176K. Space Used = 420268K.
  * Running inst-std-system-alsamixer.sh ...
    * Insert Alsa Mixer menu in Administration.
    * Disk size = 2231176K. Space Used = 0K.
  * Running inst-std-system-conky.sh ...
    * After this operation, 967 kB of additional disk space will be used.
    * Install System Monitor: conky.
    * Add conky config file: conkyrc.
    * Set conky to run on JWM startup.
    * Add on the fly settings to Conky.
    * Disk size = 2232488K. Space Used = 1312K.
  * Running inst-std-system-disk-manager.sh ...
    * After this operation, 14.3 MB of additional disk space will be used.
    * Install Auto Mount Partition Manager: Disk Manager.
    * Insert disk-manager menu in Administration.
    * Disk size = 2257044K. Space Used = 24556K.
  * Running inst-std-system-gnome-disk-utility.sh ...
    * After this operation, 11.0 MB of additional disk space will be used.
    * Install Partition Manager: gnome-disk-utility.
    * Disk size = 2263308K. Space Used = 6264K.
  * Running inst-std-system-gparted.sh ...
    * After this operation, 17.3 MB of additional disk space will be used.
    * Install Partition Manager: gparted.
    * Insert gparted menu in Administration.
    * Disk size = 2279240K. Space Used = 15932K.
  * Running inst-std-system-keyboard.sh ...
    * Insert keyboard menu in Administration.
    * Disk size = 2279240K. Space Used = 0K.
  * Running inst-std-system-monitor-switcher-lxrandr.sh ...
    * After this operation, 19.9 MB of additional disk space will be used.
    * After this operation, 779 kB of additional disk space will be used.
    * Install Monitor Switcher: lxrandr.
    * Add lxrandr key binding.
    * Disk size = 2305228K. Space Used = 25988K.
  * Running inst-std-system-network-wicd.sh ...
    * After this operation, 8,474 kB of additional disk space will be used.
    * Install Network Manager: wicd.
    * For wireless, you have to type in the wireless interface(e.g. wlan0) in the Preferences.
    * Set wicd to run on JWM startup.
    * Log at /var/log/wicd/wicd.log.
    * Disk size = 2318160K. Space Used = 12932K.
  * Running inst-std-system-time-zone.sh ...
    * Insert Time Zone menu in Administration.
    * Disk size = 2318160K. Space Used = 0K.
  * Running inst-zclean-00-zerosizing-docs.sh ...
    * Zero size all documents in /usr/share/.
    * Disk size = 2246240K. Space Used = -71920K.
  * Running inst-zclean-99-end-cleanup.sh ...
    * Clean apt-get cache.
    * rm -rf /tmp/*.
    * Umount /sys, /dev/pts and /proc.
    * Add Debian main repositories in sources.list.
    * Delete local Debian repository from sources.list.
    * Disk size = 1864644K. Space Used = -381596K.
