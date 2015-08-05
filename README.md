# Custom Live Debian System
Set of scripts to create Custom Live Debian System:
* Automatically calculate space used of each script.
* It can remaster itself while running.

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
    * Total size = 322564K. Space Used = 322564K.
  * Running inst-min-con-00-linux-image.sh ...
    * After this operation, 3147 kB of additional disk space will be used.
    * After this operation, 224 MB of additional disk space will be used.
    * Mount /proc, /sys and /dev/pts.
    * Generate dbus-uuidgen to /var/lib/dbus/machine-id.
    * Install Linux image.
    * Set APT to skip installing recommended packages.
    * Total size = 642428K. Space Used = 319864K.
  * Running inst-min-con-01-debconf-utils.sh ...
    * After this operation, 157 kB of additional disk space will be used.
    * Install debconf-utils to use debconf-set-selections.
    * Total size = 642660K. Space Used = 232K.
  * Running inst-min-con-02-locale.sh ...
    * After this operation, 16.3 MB of additional disk space will be used.
    * After this operation, 334 kB of additional disk space will be used.
    * Install locale and set it to use en_US.UTF-8.
    * Install localepurge to purge non-UTF-8.
    * Total size = 666212K. Space Used = 23552K.
  * Running inst-min-con-03-proxy.sh ...
    * Total size = 666220K. Space Used = 8K.
  * Running inst-min-con-03-startup-script.sh ...
    * Copy startup.sh to /etc/init.d/.
    * Make it executable.
    * Register it in the boot sequence.
    * Total size = 666224K. Space Used = 4K.
  * Running inst-min-con-auto-log-root.sh ...
    * Total size = 666232K. Space Used = 8K.
  * Running inst-min-con-bashrc.sh ...
    * Set common settings for /root/.bashrc.
    * Set dircolors to use dircolors-gnu-ls-colors.txt to make ls more beautiful.
    * Total size = 666240K. Space Used = 8K.
  * Running inst-min-con-cld-tools.sh ...
    * Copied tools/cld-bash-color-meaning.sh to /usr/local/bin/.
    * Copied tools/cld-dd-usb.sh to /usr/local/bin/.
    * Copied tools/cld-dependency-graph.sh to /usr/local/bin/.
    * Copied tools/cld-lsmod.sh to /usr/local/bin/.
    * Copied tools/cld-mkiso.sh to /usr/local/bin/.
    * Copied tools/cld-persistence.sh to /usr/local/bin/.
    * Copied tools/cld-remaster.sh to /usr/local/bin/.
    * Copied tools/feh-ss.sh to /usr/local/bin/.
    * Total size = 666276K. Space Used = 36K.
  * Running inst-min-con-compressors.sh ...
    * After this operation, 122 kB of additional disk space will be used.
    * After this operation, 812 kB of additional disk space will be used.
    * After this operation, 395 kB of additional disk space will be used.
    * Install de/compressor: bzip2.
    * Install de/compressor: rar.
    * Install de/compressor: unzip.
    * Total size = 668080K. Space Used = 1804K.
  * Running inst-min-con-deb-multimedia.sh ...
    * Install ./settings/binary/deb-multimedia-keyring_2015.6.1_all.deb.
    * Add deb-multimedia sources list.
    * Delete ./settings/binary/deb-multimedia-keyring_2015.6.1_all.deb[12K].
    * apt-get update
    * Total size = 669404K. Space Used = 1324K.
  * Running inst-min-con-filesystem-ntfs-3g.sh ...
    * After this operation, 2,087 kB of additional disk space will be used.
    * Install support for NTFS: ntfs-3g.
    * Total size = 672356K. Space Used = 2952K.
  * Running inst-min-con-firmware-cpu.sh ...
    * After this operation, 47.1 kB of additional disk space will be used.
    * After this operation, 655 kB of additional disk space will be used.
    * Install CPU firmware: amd64-microcode.
    * Install CPU firmware: intel-microcode.
    * Total size = 673684K. Space Used = 1328K.
  * Running inst-min-con-firmware.sh ...
    * After this operation, 41.8 MB of additional disk space will be used.
    * Install firmwares: atmel-firmware, bluez-firmware, firmware-atheros, firmware-bnx2, firmware-bnx2x, firmware-brcm80211, firmware-b43-installer, firmware-intelwimax, firmware-ipw2x00, firmware-ivtv, firmware-iwlwifi, firmware-libertas, firmware-linux, firmware-linux-free, firmware-linux-nonfree, firmware-qlogic, firmware-ralink, firmware-realtek, zd1211-firmware.
    * Install b43 for Dell Wireless 1397 WLAN Mini-Card Driver.
    * Total size = 728696K. Space Used = 55012K.
  * Running inst-min-con-live-build-tools.sh ...
    * After this operation, 151 kB of additional disk space will be used.
    * After this operation, 1,789 kB of additional disk space will be used.
    * After this operation, 392 kB of additional disk space will be used.
    * Install xorriso to create isohybrid.
    * Install isolinux to get isohdpfx.bin and isolinux.bin in order to create isohybrid.
    * Note: boot.cat is automatically created.
    * Install rsync to copy directories.
    * Install squashfs-tools to create new squashfs.
    * Total size = 732268K. Space Used = 3572K.
  * Running inst-min-con-ntp.sh ...
    * After this operation, 1,871 kB of additional disk space will be used.
    * Install Network Time Protocol: ntp.
    * Total size = 734776K. Space Used = 2508K.
  * Running inst-min-con-numlock.sh ...
    * After this operation, 4,381 kB of additional disk space will be used.
    * Install numlockx to turn on NumLock on boot.
    * Total size = 741292K. Space Used = 6516K.
  * Running inst-min-con-pciutils.sh ...
    * After this operation, 1,181 kB of additional disk space will be used.
    * Install pciutils to troubleshoot pci devices(i.e. lspci).
    * Total size = 742860K. Space Used = 1568K.
  * Running inst-min-con-snd-alsa.sh ...
    * After this operation, 5,270 kB of additional disk space will be used.
    * Install ALSA sound.
    * Test sound: aplay /usr/share/sounds/alsa/*.
    * Add key bindings.
    * Total size = 750708K. Space Used = 7848K.
  * Running inst-min-con-snd-pulseaudio.sh ...
    * After this operation, 37.8 MB of additional disk space will be used.
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
    * Total size = 805968K. Space Used = 55260K.
  * Running inst-min-con-udevil.sh ...
    * After this operation, 500 kB of additional disk space will be used.
    * Install udevil to auto mount USB devices.
    * Set devmon to auto start on startup.
    * You need ntfs-3g driver to be able to write on ntfs partition.
    * Total size = 806300K. Space Used = 332K.
  * Running inst-min-con-xtra-mariadb-server.sh ...
    * After this operation, 131 MB of additional disk space will be used.
    * Install mariadb-server.
    * Set root password to password.
    * Total size = 1058916K. Space Used = 252616K.
  * Running inst-min-win-00-xorg.sh ...
    * After this operation, 71.9 MB of additional disk space will be used.
    * Set keyboard to use US international.
    * Install minimum Xorg X server.
    * Install xinit so you can run startx.
    * Add auto start window manager(i.e startx).
    * Total size = 1151600K. Space Used = 92684K.
  * Running inst-min-win-01-wm-jwm.sh ...
    * After this operation, 6,665 kB of additional disk space will be used.
    * Install Window Manager: JWM.
    * Set jwmrc.
    * Add alsa key binding.
    * Total size = 1161280K. Space Used = 9680K.
  * Running inst-min-win-menu.sh ...
    * After this operation, 1,829 kB of additional disk space will be used.
    * Install menu, an easy way to get installed programs in the menu automatically.
    * Total size = 1162552K. Space Used = 1272K.
  * Running inst-min-win-systray-volumeicon-alsa.sh ...
    * After this operation, 41.8 MB of additional disk space will be used.
    * Install volume controller in system tray.
    * Set left-click to display volume slider: lmb_slider=true.
    * Set volumeicon to run on JWN startup.
    * Total size = 1191240K. Space Used = 28688K.
  * Running inst-min-xtra-fonts-asian.sh ...
    * After this operation, 48.2 MB of additional disk space will be used.
    * Install fonts-hanazono to display Asian characters correctly.
    * Test it by opening website http://ctext.org/zh.
    * Total size = 1257232K. Space Used = 65992K.
  * Running inst-min-xtra-gnuplot.sh ...
    * After this operation, 32.0 MB of additional disk space will be used.
    * Install gnuplot.
    * Total size = 1298560K. Space Used = 41328K.
  * Running inst-min-xtra-java-jre.sh ...
    * After this operation, 66.5 MB of additional disk space will be used.
    * Install JAVA JRE: default-jre.
    * Total size = 1433852K. Space Used = 135292K.
  * Running inst-min-xtra-locate.sh ...
    * After this operation, 324 kB of additional disk space will be used.
    * Install locate to generate an index of files and directories.
    * You can updatedb and then locate files faster.
    * Total size = 1434432K. Space Used = 580K.
  * Running inst-min-xtra-php5.sh ...
    * After this operation, 32.0 MB of additional disk space will be used.
    * Install php5.
    * Total size = 1476188K. Space Used = 41756K.
  * Running inst-min-xtra-timezone.sh ...
    * Set time zone to EST (America/Montreal).
    * Total size = 1476188K. Space Used = 0K.
  * Running inst-std-accessories-feh.sh ...
    * After this operation, 4,308 kB of additional disk space will be used.
    * Install command line image viewer: feh.
    * Total size = 1479996K. Space Used = 3808K.
  * Running inst-std-accessories-galculator.sh ...
    * After this operation, 58.9 MB of additional disk space will be used.
    * Install Calculator: galculator.
    * Insert galculator in Accessories menu.
    * Total size = 1536284K. Space Used = 56288K.
  * Running inst-std-accessories-gpicview.sh ...
    * After this operation, 876 kB of additional disk space will be used.
    * Install Image Viewer: gpicview.
    * Insert gpicview in Accessories menu.
    * Total size = 1536628K. Space Used = 344K.
  * Running inst-std-accessories-mupdf.sh ...
    * After this operation, 12.0 MB of additional disk space will be used.
    * Install PDF reader: Mupdf.
    * Total size = 1551980K. Space Used = 15352K.
  * Running inst-std-accessories-prtscr-gnome-screenshot.sh ...
    * After this operation, 1,027 kB of additional disk space will be used.
    * Install gnome-screenshot to be used for PrintScreen key.
    * Insert PrintScreen key binding.
    * By default, screenshots are saved under ~/Pictures/.
    * Total size = 1552676K. Space Used = 696K.
  * Running inst-std-accessories-scite.sh ...
    * After this operation, 4,829 kB of additional disk space will be used.
    * After this operation, 221 kB of additional disk space will be used.
    * Install Text Editor: SciTE.
    * Install at-spi2-core to shut up Accessibility warning message.
    * Insert SciTE in Accessories menu.
    * Total size = 1559212K. Space Used = 6536K.
  * Running inst-std-accessories-terminal-xfce.sh ...
    * After this operation, 11.1 MB of additional disk space will be used.
    * Install terminal: xfce4-terminal.
    * Total size = 1568536K. Space Used = 9324K.
  * Running inst-std-accessories-thunar.sh ...
    * After this operation, 10.0 MB of additional disk space will be used.
    * Install File Manger: thunar, thunar-media-tags-plugin, thunar-archive-plugin, thunar-volman.
    * Insert Thunar in Accessories menu.
    * Total size = 1574884K. Space Used = 6348K.
  * Running inst-std-accessories-xarchiver.sh ...
    * After this operation, 1,211 kB of additional disk space will be used.
    * Install Archive Manager: xarchiver.
    * Total size = 1576120K. Space Used = 1236K.
  * Running inst-std-graphic-pinta.sh ...
    * After this operation, 36.4 MB of additional disk space will be used.
    * Install Image Editor: Pinta.
    * Total size = 1637632K. Space Used = 61512K.
  * Running inst-std-internet-iceweseal.sh ...
    * After this operation, 76.4 MB of additional disk space will be used.
    * Install web browser: iceweasel.
    * Total size = 1743056K. Space Used = 105424K.
  * Running inst-std-multimedia-mpv.sh ...
    * After this operation, 60.4 MB of additional disk space will be used.
    * Install Media Player: MPV.
    * Add multiple aliases for MPV.
    * Add useful mpv keybindings settings.
    * Total size = 1829536K. Space Used = 86480K.
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
    * Total size = 2249800K. Space Used = 420264K.
  * Running inst-std-system-conky.sh ...
    * After this operation, 967 kB of additional disk space will be used.
    * Install System Monitor: conky.
    * Add conky config file: conkyrc.
    * Set conky to run on JWM startup.
    * Add on the fly settings to Conky.
    * Total size = 2251116K. Space Used = 1316K.
  * Running inst-std-system-disk-manager.sh ...
    * After this operation, 14.3 MB of additional disk space will be used.
    * Install Auto Mount Partition Manager: Disk Manager.
    * Insert disk-manager menu in Administration.
    * Total size = 2275656K. Space Used = 24540K.
  * Running inst-std-system-gnome-disk-utility.sh ...
    * After this operation, 11.0 MB of additional disk space will be used.
    * Install Partition Manager: gnome-disk-utility.
    * Total size = 2281940K. Space Used = 6284K.
  * Running inst-std-system-gparted.sh ...
    * After this operation, 17.3 MB of additional disk space will be used.
    * Install Partition Manager: gparted.
    * Insert gparted menu in Administration.
    * Total size = 2297864K. Space Used = 15924K.
  * Running inst-std-system-keyboard.sh ...
    * Insert keyboard menu in Administration.
    * Total size = 2297864K. Space Used = 0K.
  * Running inst-std-system-monitor-switcher-lxrandr.sh ...
    * After this operation, 779 kB of additional disk space will be used.
    * Install Monitor Switcher: lxrandr.
    * Add lxrandr key binding.
    * Total size = 2298004K. Space Used = 140K.
  * Running inst-std-system-network-wicd.sh ...
    * After this operation, 7,574 kB of additional disk space will be used.
    * Install Network Manager: wicd.
    * For wireless, you have to type in the wireless interface(e.g. wlan0) in the Preferences.
    * Set wicd to run on JWM startup.
    * Log at /var/log/wicd/wicd.log.
    * Total size = 2310452K. Space Used = 12448K.
  * Running inst-std-system-pavucontrol.sh ...
    * After this operation, 7,067 kB of additional disk space will be used.
    * Install PulseAudio Volume Controller: pavucontrol.
    * Insert pavucontrol menu in Administration.
    * Total size = 2317956K. Space Used = 7504K.
  * Running inst-std-system-time-zone.sh ...
    * Insert Time Zone menu in Administration.
    * Total size = 2317956K. Space Used = 0K.
  * Running inst-std-system-xtra-hardinfo.sh ...
    * After this operation, 467 kB of additional disk space will be used.
    * Install hardware info apps: hardinfo.
    * Insert System Information menu in Administration.
    * Total size = 2318876K. Space Used = 920K.
  * Running inst-std-system-xtra-webcam-camorama.sh ...
    * After this operation, 41.1 MB of additional disk space will be used.
    * Install webcam: camorama.
    * Total size = 2350292K. Space Used = 31416K.
  * Running inst-std-system-xtra-webcam-cheese.sh ...
    * After this operation, 8,686 kB of additional disk space will be used.
    * After this operation, 102 MB of additional disk space will be used.
    * Install webcam: cheese.
    * Total size = 2479632K. Space Used = 129340K.
  * Running inst-std-xtra-blender.sh ...
    * After this operation, 13.8 MB of additional disk space will be used.
    * After this operation, 178 MB of additional disk space will be used.
    * Install required packages for blender.
    * Install blender.
    * Total size = 2698396K. Space Used = 218764K.
  * Running inst-std-xtra-dia.sh ...
    * After this operation, 21.2 MB of additional disk space will be used.
    * Install dia to draw diagrams.
    * Total size = 2723952K. Space Used = 25556K.
  * Running inst-std-xtra-opw-drush.sh ...
    * After this operation, 1,507 kB of additional disk space will be used.
    * Install drush to manage Drupal.
    * Further setting is needed. See https://wiki.debian.org/drush.
    * Total size = 2725896K. Space Used = 1944K.
  * Running inst-std-xtra-opw-php5-gd.sh ...
    * After this operation, 118 kB of additional disk space will be used.
    * Install php5-gd to run Drupal.
    * Total size = 2726112K. Space Used = 216K.
  * Running inst-std-xtra-opw-php5-mysql.sh ...
    * After this operation, 3,777 kB of additional disk space will be used.
    * Install php5-mysql to enable the PDO_MYSQL database driver for PHP and to run Drupal.
    * Enable mod_rewrite module.
    * Total size = 2730628K. Space Used = 4516K.
  * Running inst-xtra-cld-dev-tools-apt-move.sh ...
    * After this operation, 430 kB of additional disk space will be used.
    * After this operation, 196 kB of additional disk space will be used.
    * Install apt-move to create debian local repository.
    * Patch apt-move to support SHA256..
    * Install apache 2 to turn apt-move into a webserver.
    * Total size = 2731652K. Space Used = 1024K.
  * Running inst-xtra-cld-dev-tools-debootstrap.sh ...
    * After this operation, 234 kB of additional disk space will be used.
    * Install debootstrap allows the creation of a Debian base system int a directory.
    * Total size = 2731976K. Space Used = 324K.
  * Running inst-xtra-cld-dev-tools-debtree.sh ...
    * After this operation, 13.3 MB of additional disk space will be used.
    * Install debtree and graphviz to view dependencies of packages. Better package selections.
    * Total size = 2747276K. Space Used = 15300K.
  * Running inst-xtra-cld-dev-tools-libxml2-utils.sh ...
    * After this operation, 152 kB of additional disk space will be used.
    * Install libxml2-utils to validate xml file.
    * Total size = 2747556K. Space Used = 280K.
  * Running inst-xtra-cld-dev-tools-pandoc.sh ...
    * After this operation, 38.6 MB of additional disk space will be used.
    * Install pandoc to generate user manual.
    * Add documentation: user manual.
    * Add documentation: developer manual.
    * Total size = 2790084K. Space Used = 42528K.
  * Running inst-xtra-dev-tools-ant.sh ...
    * After this operation, 2,229 kB of additional disk space will be used.
    * Install ant.
    * Total size = 2794132K. Space Used = 4048K.
  * Running inst-xtra-fuse.sh ...
    * Install fuse(fusermount) to run TMSU.
    * Total size = 2794132K. Space Used = 0K.
  * Running inst-xtra-open-terminals-on-startup.sh ...
    * After this operation, 19.9 MB of additional disk space will be used.
    * After this operation, 81.9 kB of additional disk space will be used.
    * After this operation, 654 kB of additional disk space will be used.
    * Install x11-xserver-utils for xrandr.
    * Install wmctrl.
    * Install x11-utils for xprop.
    * Copy open-terminal.sh in /root/.
    * Add open-terminal.sh in /root/jwmrc-startup.sh.
    * Total size = 2821036K. Space Used = 26904K.
  * Running inst-xtra-sqlite.sh ...
    * After this operation, 143 kB of additional disk space will be used.
    * Install Database: sqlite3.
    * Total size = 2821300K. Space Used = 264K.
  * Running inst-xtra-virtualbox-guest-from-scratch.sh ...
    * After this operation, 131 MB of additional disk space will be used.
    * After this operation, 14.7 MB disk space will be freed.
    * After this operation, 63.1 MB disk space will be freed.
    * Install VirtualBox guest additions to Shared folder/clipboard, auto window scaling, etc.
    * Assumed packages installed: bzip2 & Xserver installed.
    * Install dkms, libc6-dev, linux-headers-3.16.0-4-amd64 to compile VirtualBox guest additions.
    * VirtualBox guest additions installed: version: 4.3.20.
    * Delete ./settings/binary/VBoxGuestAdditions.iso[56976K]. Space used could be negative due to this deletion.
    * Total size = 2861220K. Space Used = 39920K.
  * Running inst-xtra-wifite.sh ...
    * After this operation, 80.3 MB of additional disk space will be used.
    * Install wifite.
    * Total size = 2954632K. Space Used = 93412K.
  * Running inst-xtra-xmpv.sh ...
    * Install xmpv.
    * Total size = 2954676K. Space Used = 44K.
  * Running inst-xtra-zfs.sh ...
    * After this operation, 16.0 MB of additional disk space will be used.
    * After this operation, 75.7 MB of additional disk space will be used.
    * Install lsb-release.
    * Add zfsonlinux repository to /etc/apt/sources.list.d/zfsonlinux.list.
    * Add GPG key to /etc/apt/trusted.gpg.d/zfsonlinux.gpg.
    * Install debian-zfs: version: 0.6.4-1.2-1.
    * Delete ./settings/binary/zfsonlinux_6_all.deb[1992K].
    * Total size = 3091528K. Space Used = 136852K.
  * Running inst-zclean-00-zerosizing-docs.sh ...
    * Zero size all documents in /usr/share/.
    * Total size = 2984632K. Space Used = -106896K.
  * Running inst-zclean-99-end-cleanup.sh ...
    * Clean apt-get cache.
    * rm -rf /tmp/*.
    * Umount /sys, /dev/pts and /proc.
    * Add Debian main repositories in sources.list.
    * Delete local Debian repository from sources.list.
    * Total size = 2361280K. Space Used = -623352K.
