* >>>>>>>>> Running install.sh ...
  * Running on SHELL=/bin/bash VER=4.3.30(1)-release
  * Disk size = 1336468K. Space Used = 1336468K.
* >>>>>>>>> Running inst-min-con-00-apt-custom-repository.sh ...
  * Disk size = 1336484K. Space Used = 16K.
* >>>>>>>>> Running inst-min-con-00-linux-image.sh ...
  * After this operation, 14.3 kB of additional disk space will be used.
  * After this operation, 3111 kB of additional disk space will be used.
  * After this operation, 225 MB of additional disk space will be used.
  * Mount /proc, /sys and /dev/pts.
  * Generate dbus-uuidgen to /var/lib/dbus/machine-id.
  * Install Linux image: 3.16.0-4-amd64.
  * Disk size = 1735172K. Space Used = 398688K.
  * The following NEW packages will be installed:
  ```bash
  dbus dialog libcap-ng0 libdbus-1-3 libexpat1
  busybox firmware-linux-free initramfs-tools irqbalance klibc-utils
  libalgorithm-c3-perl libarchive-extract-perl libcgi-fast-perl libcgi-pm-perl
  libclass-c3-perl libclass-c3-xs-perl libcpan-meta-perl libdata-optlist-perl
  libdata-section-perl libfcgi-perl libglib2.0-0 libglib2.0-data libklibc
  liblog-message-perl liblog-message-simple-perl libmodule-build-perl
  libmodule-pluggable-perl libmodule-signature-perl libmro-compat-perl
  libnuma1 libpackage-constants-perl libparams-util-perl libpod-latex-perl
  libpod-readme-perl libregexp-common-perl libsoftware-license-perl
  libsub-exporter-perl libsub-install-perl libterm-ui-perl
  libtext-soundex-perl libtext-template-perl libuuid-perl libxml2 linux-base
  linux-image-3.16.0-4-amd64 linux-image-amd64 live-boot live-boot-doc
  live-boot-initramfs-tools live-tools perl perl-modules rename rsync
  sgml-base shared-mime-info uuid-runtime xdg-user-dirs xml-core
  ```
* >>>>>>>>> Running inst-min-con-01-apt.sh ...
  * Set APT to use local repository first.
  * Set APT to skip installing recommended packages.
  * Disk size = 1735184K. Space Used = 12K.
* >>>>>>>>> Running inst-min-con-01-debconf-utils.sh ...
  * After this operation, 157 kB of additional disk space will be used.
  * Install debconf-utils to use debconf-set-selections.
  * Disk size = 1735416K. Space Used = 232K.
  * The following NEW packages will be installed:
  ```bash
  debconf-utils
  ```
* >>>>>>>>> Running inst-min-con-02-localepurge.sh ...
  * After this operation, 334 kB of additional disk space will be used.
  * Install localepurge to purge documentation of all languages, except en, en_US, en_US.UTF-8.
  * Reconfigure localepurge: dpkg-reconfigure localepurge
  * Disk size = 1758932K. Space Used = 756K.
  * The following NEW packages will be installed:
  ```bash
  localepurge ucf
  ```
* >>>>>>>>> Running inst-min-con-02-locale.sh ...
  * After this operation, 16.7 MB of additional disk space will be used.
  * Install locale and set it to use en_US.UTF-8.
  * Disk size = 1758176K. Space Used = 22760K.
  * The following NEW packages will be installed:
  ```bash
  locales
  ```
* >>>>>>>>> Running inst-min-con-03-startup-script.sh ...
  * Copy startup.sh to /etc/init.d/.
  * Make it executable.
  * Register it in the boot sequence.
  * Disk size = 1758944K. Space Used = 12K.
* >>>>>>>>> Running inst-min-con-04-block-services-start-postinstall.sh ...
  * Block services from starting after they are being installed.
  * Disk size = 1758952K. Space Used = 8K.
* >>>>>>>>> Running inst-min-con-auto-log-root.sh ...
  * Disk size = 1758964K. Space Used = 12K.
* >>>>>>>>> Running inst-min-con-bashrc.sh ...
  * Set common settings for /root/.bashrc.
  * Set dircolors to use dircolors-gnu-ls-colors.txt to make ls more beautiful.
  * Disk size = 1758976K. Space Used = 12K.
* >>>>>>>>> Running inst-min-con-cld-dev-tools-debootstrap.sh ...
  * After this operation, 234 kB of additional disk space will be used.
  * Install debootstrap allows the creation of a Debian base system in a directory.
  * Disk size = 1759296K. Space Used = 320K.
  * The following NEW packages will be installed:
  ```bash
  debootstrap
  ```
* >>>>>>>>> Running inst-min-con-cld-tools.sh ...
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-bash-color-meaning.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/fimg.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-mkiso.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/lspace.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/feh-ss.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-win-split.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-dd-usb.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-remaster.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-zfs-hd.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-persistence.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-lsmodules.sh to /usr/local/bin/.
  * Disk size = 1759344K. Space Used = 48K.
* >>>>>>>>> Running inst-min-con-compressors.sh ...
  * After this operation, 122 kB of additional disk space will be used.
  * After this operation, 812 kB of additional disk space will be used.
  * After this operation, 347 kB of additional disk space will be used.
  * After this operation, 607 kB of additional disk space will be used.
  * After this operation, 927 kB of additional disk space will be used.
  * Install de/compressor: bzip2.
  * Install de/compressor: rar.
  * Install de/compressor: unzip.
  * Install de/compressor: zip.
  * Install de/compressor: p7zip.
  * Disk size = 1763360K. Space Used = 4016K.
  * The following NEW packages will be installed:
  ```bash
  bzip2
  rar
  unzip
  zip
  p7zip
  ```
* >>>>>>>>> Running inst-min-con-deb-multimedia.sh ...
  * Install deb-multimedia-keyring_2015.6.1_all.deb.
  * Add deb-multimedia sources list.
  * Delete deb-multimedia-keyring_2015.6.1_all.deb[12K].
  * apt-get update
  * Disk size = 1764544K. Space Used = 1184K.
* >>>>>>>>> Running inst-min-con-filesystem-exfat.sh ...
  * After this operation, 554 kB of additional disk space will be used.
  * After this operation, 234 kB of additional disk space will be used.
  * Install exfat-fuse so that you can read and write SD cards and USB keys.
  * Disk size = 1765732K. Space Used = 1188K.
  * The following NEW packages will be installed:
  ```bash
  exfat-fuse fuse libfuse2
  exfat-utils
  ```
* >>>>>>>>> Running inst-min-con-filesystem-ntfs-3g.sh ...
  * After this operation, 1,632 kB of additional disk space will be used.
  * Install support for NTFS: ntfs-3g.
  * Disk size = 1767892K. Space Used = 2160K.
  * The following NEW packages will be installed:
  ```bash
  ntfs-3g
  ```
* >>>>>>>>> Running inst-min-con-firmware-cpu.sh ...
  * After this operation, 47.1 kB of additional disk space will be used.
  * After this operation, 623 kB of additional disk space will be used.
  * Install CPU firmware: amd64-microcode.
  * Install CPU firmware: intel-microcode.
  * Disk size = 1769304K. Space Used = 1412K.
  * The following NEW packages will be installed:
  ```bash
  amd64-microcode
  intel-microcode iucode-tool
  ```
* >>>>>>>>> Running inst-min-con-firmware-net-b43-installer.sh ...
  * After this operation, 100 kB of additional disk space will be used.
  * Install b43 for Dell Wireless 1397 WLAN Mini-Card Driver.
  * Disk size = 1807008K. Space Used = 37704K.
  * The following NEW packages will be installed:
  ```bash
  b43-fwcutter
  ```
* >>>>>>>>> Running inst-min-con-firmware.sh ...
  * After this operation, 41.7 MB of additional disk space will be used.
  * Install firmwares: atmel-firmware, bluez-firmware, firmware-atheros, firmware-bnx2, firmware-bnx2x, firmware-brcm80211, firmware-intelwimax, firmware-ipw2x00, firmware-ivtv, firmware-iwlwifi, firmware-libertas, firmware-linux, firmware-linux-free, firmware-linux-nonfree, firmware-qlogic, firmware-ralink, firmware-realtek, zd1211-firmware.
  * Disk size = 1860712K. Space Used = 53704K.
  * The following NEW packages will be installed:
  ```bash
  atmel-firmware bluez-firmware firmware-atheros firmware-bnx2 firmware-bnx2x
  firmware-brcm80211 firmware-intelwimax firmware-ipw2x00 firmware-ivtv
  firmware-iwlwifi firmware-libertas firmware-linux firmware-linux-nonfree
  firmware-qlogic firmware-ralink firmware-realtek firmware-zd1211
  zd1211-firmware
  ```
* >>>>>>>>> Running inst-min-con-live-build-tools.sh ...
  * After this operation, 110 kB of additional disk space will be used.
  * After this operation, 1,789 kB of additional disk space will be used.
  * After this operation, 392 kB of additional disk space will be used.
  * Install xorriso to create isohybrid.
  * Install isolinux to get isohdpfx.bin and isolinux.bin in order to create isohybrid.
  * Note: boot.cat is automatically created.
  * Install rsync to copy directories.
  * Install squashfs-tools to create new squashfs.
  * Disk size = 1864292K. Space Used = 3580K.
  * The following NEW packages will be installed:
  ```bash
  isolinux
  libburn4 libisoburn1 libisofs6 libjte1 xorriso
  liblzo2-2 squashfs-tools
  ```
* >>>>>>>>> Running inst-min-con-mtp-00-libmtp9-bpo.sh ...
  * After this operation, 2,405 kB of additional disk space will be used.
  * Install backport version of libmtp9 to support the most smartphones.
  * Disk size = 1874044K. Space Used = 9752K.
  * The following NEW packages will be installed:
  ```bash
  libmtp-common libmtp9 libusb-1.0-0
  ```
* >>>>>>>>> Running inst-min-con-mtp-jmtpfs.sh ...
  * After this operation, 3,389 kB of additional disk space will be used.
  * Install jmtpfs to mount smartphones that use Media Transfer Protocol(MTP).
  *   # Connect your smartphone.
  *   mkdir /path/to/your/mount/directory/
  *   jmtpfs -o allow_other /path/to/your/mount/directory/
  *   # Enter your PIN to unlock your smartphone.
  *   cd /path/to/your/mount/directory/
  * Disk size = 1877696K. Space Used = 3652K.
  * The following NEW packages will be installed:
  ```bash
  jmtpfs libmagic1
  ```
* >>>>>>>>> Running inst-min-con-ntp.sh ...
  * After this operation, 1,871 kB of additional disk space will be used.
  * Install Network Time Protocol: ntp.
  * Disk size = 1880204K. Space Used = 2508K.
  * The following NEW packages will be installed:
  ```bash
  libbsd0 libedit2 libopts25 ntp
  ```
* >>>>>>>>> Running inst-min-con-numlock.sh ...
  * After this operation, 4,381 kB of additional disk space will be used.
  * Install numlockx to turn on NumLock on boot.
  * Disk size = 1886724K. Space Used = 6520K.
  * The following NEW packages will be installed:
  ```bash
  libx11-6 libx11-data libxau6 libxcb1 libxdmcp6 libxext6 libxi6 libxtst6
  numlockx x11-common
  ```
* >>>>>>>>> Running inst-min-con-pciutils.sh ...
  * After this operation, 1,181 kB of additional disk space will be used.
  * Install pciutils to troubleshoot pci devices(i.e. lspci).
  * Disk size = 1888288K. Space Used = 1564K.
  * The following NEW packages will be installed:
  ```bash
  libpci3 pciutils
  ```
* >>>>>>>>> Running inst-min-con-snd-alsa.sh ...
  * After this operation, 5,270 kB of additional disk space will be used.
  * Install ALSA sound.
  * Test sound: aplay /usr/share/sounds/alsa/*.
  * Add key bindings.
  * Disk size = 1896136K. Space Used = 7848K.
  * The following NEW packages will be installed:
  ```bash
  alsa-base alsa-utils libasound2 libasound2-data libsamplerate0
  ```
* >>>>>>>>> Running inst-min-con-udevil-bpo.sh ...
  * After this operation, 503 kB of additional disk space will be used.
  * Install udevil version 0.4.4.
  * Install udevil to auto mount USB devices.
  * Set devmon to auto start on startup.
  * Need ntfs-3g driver to be able to read and write ntfs partition.
  * Need exfat-fuse to be able to read and write exfat partition.
  * Disk size = 1896536K. Space Used = 400K.
  * The following NEW packages will be installed:
  ```bash
  udevil
  ```
* >>>>>>>>> Running inst-min-win-00-xorg.sh ...
  * After this operation, 72.5 MB of additional disk space will be used.
  * Set keyboard to use US international.
  * Install minimum Xorg X server.
  * Install xinit so you can run startx.
  * Add auto start window manager(i.e startx).
  * Disk size = 1990404K. Space Used = 93868K.
  * The following NEW packages will be installed:
  ```bash
  keyboard-configuration libdrm-intel1 libdrm-nouveau2 libdrm-radeon1 libdrm2
  libegl1-mesa libelf1 libepoxy0 libevdev2 libfontenc1 libfreetype6 libgbm1
  libgl1-mesa-glx libglapi-mesa libice6 libllvm3.5 libmtdev1 libpciaccess0
  libpixman-1-0 libpng12-0 libsm6 libwayland-client0 libwayland-server0
  libx11-xcb1 libxatracker2 libxaw7 libxcb-dri2-0 libxcb-dri3-0 libxcb-glx0
  libxcb-present0 libxcb-render0 libxcb-shape0 libxcb-sync1 libxcb-util0
  libxcb-xfixes0 libxdamage1 libxfixes3 libxfont1 libxkbfile1 libxmu6 libxmuu1
  libxpm4 libxshmfence1 libxt6 libxv1 libxvmc1 libxxf86vm1 x11-xkb-utils xauth
  xinit xkb-data xserver-common xserver-xorg xserver-xorg-core
  xserver-xorg-input-all xserver-xorg-input-evdev xserver-xorg-input-mouse
  xserver-xorg-input-synaptics xserver-xorg-input-vmmouse
  xserver-xorg-video-all xserver-xorg-video-ati xserver-xorg-video-cirrus
  xserver-xorg-video-fbdev xserver-xorg-video-intel xserver-xorg-video-mach64
  xserver-xorg-video-mga xserver-xorg-video-modesetting
  xserver-xorg-video-neomagic xserver-xorg-video-nouveau
  xserver-xorg-video-openchrome xserver-xorg-video-r128
  xserver-xorg-video-radeon xserver-xorg-video-savage
  xserver-xorg-video-siliconmotion xserver-xorg-video-sisusb
  xserver-xorg-video-tdfx xserver-xorg-video-trident xserver-xorg-video-vesa
  xserver-xorg-video-vmware
  ```
* >>>>>>>>> Running inst-min-win-01-wm-jwm-git.sh ...
  * After this operation, 14.8 MB of additional disk space will be used.
  * Disk size = 2011804K. Space Used = 21400K.
  * The following NEW packages will be installed:
  ```bash
  fontconfig-config fonts-dejavu-core libfontconfig1 libfribidi0
  libgdk-pixbuf2.0-0 libgdk-pixbuf2.0-common libjasper1 libjbig0
  libjpeg62-turbo libperl5.20 libstartup-notification0 libtiff5 libxft2
  libxinerama1 libxrender1 ncurses-term rxvt-unicode-256color
  ```
* >>>>>>>>> Running inst-min-win-cld-dev-tools-pandoc.sh ...
  * After this operation, 39.0 MB of additional disk space will be used.
  * Install pandoc to generate user manual.
  * Disk size = 2054812K. Space Used = 43008K.
  * The following NEW packages will be installed:
  ```bash
  liblua5.1-0 libyaml-0-2 pandoc pandoc-data
  ```
* >>>>>>>>> Running inst-min-win-cld-win-split.sh ...
  * After this operation, 81.9 kB of additional disk space will be used.
  * After this operation, 777 kB of additional disk space will be used.
  * Disk size = 2056096K. Space Used = 1284K.
  * The following NEW packages will be installed:
  ```bash
  wmctrl
  libxcomposite1 libxrandr2 libxxf86dga1 x11-utils
  ```
* >>>>>>>>> Running inst-min-win-jwm-help-manuals-text.sh ...
  * Disk size = 2056124K. Space Used = 28K.
* >>>>>>>>> Running inst-min-win-jwm-keys-alsa.sh ...
  * Disk size = 2056128K. Space Used = 4K.
* >>>>>>>>> Running inst-min-win-menu.sh ...
  * After this operation, 1,829 kB of additional disk space will be used.
  * Install menu, an easy way to get installed programs in the menu automatically.
  * Disk size = 2057404K. Space Used = 1276K.
  * The following NEW packages will be installed:
  ```bash
  menu
  ```
* >>>>>>>>> Running inst-min-win-systray-volumeicon-alsa.sh ...
  * After this operation, 36.7 MB of additional disk space will be used.
  * Install volume controller in system tray.
  * Set left-click to display volume slider: lmb_slider=true.
  * Set volumeicon to run on JWN startup.
  * Disk size = 2082928K. Space Used = 25524K.
  * The following NEW packages will be installed:
  ```bash
  fontconfig libatk1.0-0 libatk1.0-data libavahi-client3 libavahi-common-data
  libavahi-common3 libcairo2 libcups2 libdatrie1 libgraphite2-3
  libgssapi-krb5-2 libgtk2.0-0 libgtk2.0-common libharfbuzz0b libk5crypto3
  libkeyutils1 libkrb5-3 libkrb5support0 libnotify4 libpango-1.0-0
  libpangocairo-1.0-0 libpangoft2-1.0-0 libthai-data libthai0 libxcb-shm0
  libxcursor1 volumeicon-alsa
  ```
* >>>>>>>>> Running inst-zclean-00-remove-block-services.sh ...
  * Remove block services from starting after they are being installed.
  * Disk size = 2082928K. Space Used = 0K.
* >>>>>>>>> Running inst-zclean-00-zerosizing-docs.sh ...
  * Zero size all documents in /usr/share/.
  * Disk size = 2034584K. Space Used = -48344K.
* >>>>>>>>> Running inst-zclean-99-end-cleanup.sh ...
  * Clean apt-get cache.
  * rm -rf /tmp/*.
  * Umount /sys, /dev/pts and /proc.
  * Add Debian main repositories in sources.list.
  * Delete local Debian repository from sources.list.
  * Disk size = 1806428K. Space Used = -228156K.
