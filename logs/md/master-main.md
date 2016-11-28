* >>>>>>>>> Running inst-min-con-00-apt-custom-repository.sh ...
  * Disk size = 1506304K. Space Used = 2296K.
* >>>>>>>>> Running inst-min-con-00-linux-image.sh ...
  * After this operation, 3112 kB of additional disk space will be used.
  * After this operation, 182 MB of additional disk space will be used.
  * Reconfigure linux-image-4.7.0-0.bpo.1-amd64-unsigned.
  * Generate dbus-uuidgen to /var/lib/dbus/machine-id.
  * Installed Linux image: 4.7.0-0.bpo.1-amd64-unsigned.
  * Disk size = 1769584K. Space Used = 263280K.
  * The following NEW packages will be installed:
  ```bash
  dbus dialog libcap-ng0 libdbus-1-3 libexpat1
  busybox-static firmware-linux-free initramfs-tools klibc-utils libklibc
  linux-base linux-image-4.7.0-0.bpo.1-amd64-unsigned linux-image-amd64
  live-boot live-boot-initramfs-tools rsync
  ```
* >>>>>>>>> Running inst-min-con-01-apt.sh ...
  * Set APT to use local repository first.
  * Set APT to skip installing recommended packages.
  * Disk size = 1769596K. Space Used = 12K.
* >>>>>>>>> Running inst-min-con-01-debconf-utils.sh ...
  * After this operation, 157 kB of additional disk space will be used.
  * Install debconf-utils to use debconf-set-selections.
  * Disk size = 1769804K. Space Used = 208K.
  * The following NEW packages will be installed:
  ```bash
  debconf-utils
  ```
* >>>>>>>>> Running inst-min-con-02-localepurge.sh ...
  * After this operation, 334 kB of additional disk space will be used.
  * Install localepurge to purge documentation of all languages, except en, en_US, en_US.UTF-8.
  * Reconfigure localepurge: dpkg-reconfigure localepurge
  * Disk size = 1793320K. Space Used = 756K.
  * The following NEW packages will be installed:
  ```bash
  localepurge ucf
  ```
* >>>>>>>>> Running inst-min-con-02-locale.sh ...
  * After this operation, 16.7 MB of additional disk space will be used.
  * Install locale and set it to use en_US.UTF-8.
  * Disk size = 1792564K. Space Used = 22760K.
  * The following NEW packages will be installed:
  ```bash
  locales
  ```
* >>>>>>>>> Running inst-min-con-03-startup-script.sh ...
  * Copy startup.sh to /etc/init.d/.
  * Make it executable.
  * Register it in the boot sequence.
  * Disk size = 1793328K. Space Used = 8K.
* >>>>>>>>> Running inst-min-con-04-block-services-start-postinstall.sh ...
  * Block services from starting after they are being installed.
  * Disk size = 1793336K. Space Used = 8K.
* >>>>>>>>> Running inst-min-con-auto-log-root.sh ...
  * Disk size = 1793348K. Space Used = 12K.
* >>>>>>>>> Running inst-min-con-bashrc.sh ...
  * Set common settings for /root/.bashrc.
  * Set dircolors to use dircolors-gnu-ls-colors.txt to make ls more beautiful.
  * Disk size = 1793360K. Space Used = 12K.
* >>>>>>>>> Running inst-min-con-cld-dev-tools-debootstrap.sh ...
  * After this operation, 249 kB of additional disk space will be used.
  * Install debootstrap allows the creation of a Debian base system in a directory.
  * Disk size = 1793696K. Space Used = 336K.
  * The following NEW packages will be installed:
  ```bash
  debootstrap
  ```
* >>>>>>>>> Running inst-min-con-cld-tools.sh ...
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-bash-color-meaning.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/fimg.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-mkiso.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/lspace.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-dpkg-list.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/feh-ss.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-win-split.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-dd-usb.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-remaster.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-zfs-hd.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-persistence.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-lsmodules.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-apt-dependency.sh to /usr/local/bin/.
  * Disk size = 1793756K. Space Used = 60K.
* >>>>>>>>> Running inst-min-con-compressors.sh ...
  * After this operation, 122 kB of additional disk space will be used.
  * After this operation, 1,476 kB of additional disk space will be used.
  * After this operation, 347 kB of additional disk space will be used.
  * After this operation, 607 kB of additional disk space will be used.
  * After this operation, 927 kB of additional disk space will be used.
  * Install de/compressor: bzip2.
  * Install de/compressor: rar.
  * Install de/compressor: unzip.
  * Install de/compressor: zip.
  * Install de/compressor: p7zip.
  * Disk size = 1798804K. Space Used = 5048K.
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
  * Add deb-multimedia repository.
  * Delete deb-multimedia-keyring_2015.6.1_all.deb[12K].
  * apt-get update
  * Disk size = 1798820K. Space Used = 16K.
* >>>>>>>>> Running inst-min-con-filesystem-exfat.sh ...
  * After this operation, 555 kB of additional disk space will be used.
  * After this operation, 236 kB of additional disk space will be used.
  * Install exfat-fuse so that you can read and write SD cards and USB keys.
  * Disk size = 1800036K. Space Used = 1216K.
  * The following NEW packages will be installed:
  ```bash
  exfat-fuse fuse libfuse2
  exfat-utils
  ```
* >>>>>>>>> Running inst-min-con-filesystem-ntfs-3g.sh ...
  * After this operation, 1,632 kB of additional disk space will be used.
  * Install support for NTFS: ntfs-3g.
  * Disk size = 1802432K. Space Used = 2396K.
  * The following NEW packages will be installed:
  ```bash
  ntfs-3g
  ```
* >>>>>>>>> Running inst-min-con-firmware-cpu.sh ...
  * After this operation, 48.1 kB of additional disk space will be used.
  * After this operation, 946 kB of additional disk space will be used.
  * Install CPU firmware: amd64-microcode.
  * Install CPU firmware: intel-microcode.
  * Disk size = 1804400K. Space Used = 1968K.
  * The following NEW packages will be installed:
  ```bash
  amd64-microcode
  intel-microcode iucode-tool
  ```
* >>>>>>>>> Running inst-min-con-firmware-net-b43-installer.sh ...
  * After this operation, 100 kB of additional disk space will be used.
  * Install b43 for Dell Wireless 1397 WLAN Mini-Card Driver.
  * Disk size = 1842104K. Space Used = 37704K.
  * The following NEW packages will be installed:
  ```bash
  b43-fwcutter
  ```
* >>>>>>>>> Running inst-min-con-firmware.sh ...
  * After this operation, 881 kB of additional disk space will be used.
  * After this operation, 162 kB of additional disk space will be used.
  * After this operation, 7,868 kB of additional disk space will be used.
  * After this operation, 430 kB of additional disk space will be used.
  * After this operation, 3,284 kB of additional disk space will be used.
  * After this operation, 12.5 MB of additional disk space will be used.
  * After this operation, 4,133 kB of additional disk space will be used.
  * After this operation, 1,215 kB of additional disk space will be used.
  * After this operation, 847 kB of additional disk space will be used.
  * After this operation, 46.7 MB of additional disk space will be used.
  * After this operation, 7,588 kB of additional disk space will be used.
  * After this operation, 21.5 MB of additional disk space will be used.
  * After this operation, 6,606 kB of additional disk space will be used.
  * After this operation, 1,001 kB of additional disk space will be used.
  * After this operation, 52.2 kB of additional disk space will be used.
  * After this operation, 7,071 kB disk space will be freed.
  * Install firmwares.
  * Disk size = 1979848K. Space Used = 137744K.
  * The following NEW packages will be installed:
  ```bash
  atmel-firmware
  bluez-firmware
  firmware-atheros
  firmware-bnx2
  firmware-bnx2x
  firmware-brcm80211
  firmware-intelwimax
  firmware-ipw2x00
  firmware-ivtv
  firmware-iwlwifi
  firmware-libertas
  firmware-amd-graphics firmware-linux firmware-linux-nonfree
  firmware-misc-nonfree
  firmware-qlogic
  firmware-realtek
  firmware-zd1211
  firmware-ralink
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
  * Disk size = 1983436K. Space Used = 3588K.
  * The following NEW packages will be installed:
  ```bash
  isolinux
  libburn4 libisoburn1 libisofs6 libjte1 xorriso
  liblzo2-2 squashfs-tools
  ```
* >>>>>>>>> Running inst-min-con-mtp-00-libmtp9-bpo.sh ...
  * After this operation, 2,405 kB of additional disk space will be used.
  * Install backport version of libmtp9 to support the most smartphones.
  * Disk size = 1986208K. Space Used = 2772K.
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
  * Disk size = 1989868K. Space Used = 3660K.
  * The following NEW packages will be installed:
  ```bash
  jmtpfs libmagic1
  ```
* >>>>>>>>> Running inst-min-con-ntp.sh ...
  * After this operation, 1,871 kB of additional disk space will be used.
  * Install Network Time Protocol: ntp.
  * Disk size = 1992372K. Space Used = 2504K.
  * The following NEW packages will be installed:
  ```bash
  libbsd0 libedit2 libopts25 ntp
  ```
* >>>>>>>>> Running inst-min-con-numlock.sh ...
  * After this operation, 4,381 kB of additional disk space will be used.
  * Install numlockx to turn on NumLock on boot.
  * Disk size = 1998928K. Space Used = 6556K.
  * The following NEW packages will be installed:
  ```bash
  libx11-6 libx11-data libxau6 libxcb1 libxdmcp6 libxext6 libxi6 libxtst6
  numlockx x11-common
  ```
* >>>>>>>>> Running inst-min-con-pciutils.sh ...
  * After this operation, 1,181 kB of additional disk space will be used.
  * Install pciutils to troubleshoot pci devices(i.e. lspci).
  * Disk size = 2000496K. Space Used = 1568K.
  * The following NEW packages will be installed:
  ```bash
  libpci3 pciutils
  ```
* >>>>>>>>> Running inst-min-con-snd-alsa.sh ...
  * After this operation, 5,270 kB of additional disk space will be used.
  * Install ALSA sound.
  * Test sound: aplay /usr/share/sounds/alsa/*.
  * Add key bindings.
  * Disk size = 2008344K. Space Used = 7848K.
  * The following NEW packages will be installed:
  ```bash
  alsa-base alsa-utils libasound2 libasound2-data libsamplerate0
  ```
* >>>>>>>>> Running inst-min-con-udevil-bpo.sh ...
  * After this operation, 5,539 kB of additional disk space will be used.
  * Install udevil version 0.4.4.
  * Install udevil to auto mount USB devices.
  * Set devmon to auto start on startup.
  * Need ntfs-3g driver to be able to read and write ntfs partition.
  * Need exfat-fuse to be able to read and write exfat partition.
  * Disk size = 2016348K. Space Used = 8004K.
  * The following NEW packages will be installed:
  ```bash
  libglib2.0-0 udevil
  ```
* >>>>>>>>> Running inst-min-win-00-xorg.sh ...
  * After this operation, 72.2 MB of additional disk space will be used.
  * Set keyboard to use US international.
  * Install minimum Xorg X server.
  * Install xinit so you can run startx.
  * Add auto start window manager(i.e startx).
  * Disk size = 2110120K. Space Used = 93772K.
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
* >>>>>>>>> Running inst-min-win-01-basic-font.sh ...
  * After this operation, 2,966 kB of additional disk space will be used.
  * Install fonts-dejavu-core to fix characters overlap with xfce4-terminal(e.g. mkdir).
  * Disk size = 2114108K. Space Used = 3988K.
  * The following NEW packages will be installed:
  ```bash
  fonts-dejavu-core
  ```
* >>>>>>>>> Running inst-min-win-01-wm-jwm-bpo.sh ...
  * After this operation, 14.5 MB of additional disk space will be used.
  * Install Window Manager: JWM v2.3.6 by Joe Wingbermuehle.
  * Set jwmrc.
  * Disk size = 2131928K. Space Used = 17820K.
  * The following NEW packages will be installed:
  ```bash
  fontconfig fontconfig-config jwm libcairo2 libcroco3 libdatrie1
  libfontconfig1 libfribidi0 libgdk-pixbuf2.0-0 libgdk-pixbuf2.0-common
  libgraphite2-3 libharfbuzz0b libjasper1 libjbig0 libjpeg62-turbo
  libpango-1.0-0 libpangocairo-1.0-0 libpangoft2-1.0-0 librsvg2-2 libthai-data
  libthai0 libtiff5 libxcb-shm0 libxft2 libxinerama1 libxml2 libxrender1
  stterm
  ```
* >>>>>>>>> Running inst-min-win-cld-dev-tools-pandoc.sh ...
  * After this operation, 39.0 MB of additional disk space will be used.
  * Install pandoc to generate user manual.
  * Disk size = 2174928K. Space Used = 43000K.
  * The following NEW packages will be installed:
  ```bash
  liblua5.1-0 libyaml-0-2 pandoc pandoc-data
  ```
* >>>>>>>>> Running inst-min-win-cld-win-split.sh ...
  * After this operation, 81.9 kB of additional disk space will be used.
  * After this operation, 777 kB of additional disk space will be used.
  * Install required applications for cld-win-split.sh: wmctrl and x11-utils for xprop.
  * Add key bindings: Ctrl+Alt+Left, Right, Up, Down, 1, 2, 3, 4, 5, 6, 7, 8, 9.
  * Disk size = 2176228K. Space Used = 1300K.
  * The following NEW packages will be installed:
  ```bash
  wmctrl
  libxcomposite1 libxrandr2 libxxf86dga1 x11-utils
  ```
* >>>>>>>>> Running inst-min-win-jwm-help-manuals-text.sh ...
  * Add Help menu in JWM.
  * Disk size = 2176264K. Space Used = 36K.
* >>>>>>>>> Running inst-min-win-jwm-keyboard-move-mouse.sh ...
  * Setup X Window to allow keyboard to move mouse.
  * Press Left Shift+NumLock.
  * Press on numpad keys to move the mouse.
  * Disk size = 2176272K. Space Used = 8K.
* >>>>>>>>> Running inst-min-win-jwm-keys-alsa.sh ...
  * Add ALSA key binding.
  * Add script to auto-detect ALSA controller on JWM startup.
  * Disk size = 2176280K. Space Used = 8K.
* >>>>>>>>> Running inst-min-win-menu.sh ...
  * After this operation, 1,829 kB of additional disk space will be used.
  * Install menu, an easy way to get installed programs in the menu automatically.
  * For how to use Debian menu, see https://www.debian.org/doc/packaging-manuals/menu.html/ch3.html.
  * Disk size = 2177556K. Space Used = 1276K.
  * The following NEW packages will be installed:
  ```bash
  menu
  ```
* >>>>>>>>> Running inst-min-win-systray-volumeicon-alsa.sh ...
  * After this operation, 37.3 MB of additional disk space will be used.
  * Install volume controller in system tray.
  * Set left-click to display volume slider: lmb_slider=true.
  * Set volumeicon to run on JWN startup.
  * Disk size = 2201416K. Space Used = 23860K.
  * The following NEW packages will be installed:
  ```bash
  libatk1.0-0 libatk1.0-data libavahi-client3 libavahi-common-data
  libavahi-common3 libcups2 libgssapi-krb5-2 libgtk2.0-0 libgtk2.0-common
  libk5crypto3 libkeyutils1 libkrb5-3 libkrb5support0 libnotify4 libxcursor1
  shared-mime-info volumeicon-alsa
  ```
* >>>>>>>>> Running inst-std-00-jwm.sh ...
  * Add default standard menus in JWM.
  * Disk size = 2201420K. Space Used = 4K.
* >>>>>>>>> Running inst-std-accessories-calc-speedcrunch.sh ...
  * After this operation, 26.3 MB of additional disk space will be used.
  * Install calculator: speedcrunch.
  * Insert speedcrunch in Accessories menu.
  * Disk size = 2235616K. Space Used = 34196K.
  * The following NEW packages will be installed:
  ```bash
  libaudio2 liblcms2-2 libmng1 libqt4-xml libqtcore4 libqtgui4 qtcore4-l10n
  speedcrunch
  ```
* >>>>>>>>> Running inst-std-accessories-feh.sh ...
  * After this operation, 5,169 kB of additional disk space will be used.
  * Install command line image viewer: feh.
  * Disk size = 2240808K. Space Used = 5192K.
  * The following NEW packages will be installed:
  ```bash
  feh libcurl3 libexif12 libgif4 libid3tag0 libimlib2 libldap-2.4-2 librtmp1
  libsasl2-2 libsasl2-modules-db libssh2-1
  ```
* >>>>>>>>> Running inst-std-accessories-gpicview.sh ...
  * After this operation, 876 kB of additional disk space will be used.
  * Install Image Viewer: gpicview.
  * Insert gpicview in Accessories menu.
  * Disk size = 2241164K. Space Used = 356K.
  * The following NEW packages will be installed:
  ```bash
  gpicview
  ```
* >>>>>>>>> Running inst-std-accessories-mupdf.sh ...
  * After this operation, 9,954 kB of additional disk space will be used.
  * Install PDF reader: Mupdf.
  * Disk size = 2254456K. Space Used = 13292K.
  * The following NEW packages will be installed:
  ```bash
  libjbig2dec0 libopenjp2-7 mupdf
  ```
* >>>>>>>>> Running inst-std-accessories-prtscr-gnome-screenshot.sh ...
  * After this operation, 58.0 MB of additional disk space will be used.
  * Install gnome-screenshot to be used for PrintScreen key.
  * Insert PrintScreen key binding.
  * By default, screenshots are saved under ~/Pictures/.
  * Disk size = 2310976K. Space Used = 56520K.
  * The following NEW packages will be installed:
  ```bash
  adwaita-icon-theme dconf-gsettings-backend dconf-service glib-networking
  glib-networking-common glib-networking-services gnome-screenshot
  gsettings-desktop-schemas hicolor-icon-theme libatk-bridge2.0-0
  libatspi2.0-0 libcairo-gobject2 libcanberra-gtk3-0 libcanberra0 libcolord2
  libdconf1 libgtk-3-0 libgtk-3-bin libgtk-3-common libjson-glib-1.0-0
  libjson-glib-1.0-common libltdl7 libogg0 libproxy1 librest-0.7-0
  librsvg2-common libsoup-gnome2.4-1 libsoup2.4-1 libsqlite3-0 libtdb1
  libvorbis0a libvorbisfile3 libwayland-cursor0 libxkbcommon0
  ```
* >>>>>>>>> Running inst-std-accessories-scite.sh ...
  * After this operation, 4,829 kB of additional disk space will be used.
  * After this operation, 221 kB of additional disk space will be used.
  * Install Text Editor: SciTE.
  * Install at-spi2-core to shut up Accessibility warning message.
  * Insert SciTE in Accessories menu.
  * Disk size = 2317516K. Space Used = 6540K.
  * The following NEW packages will be installed:
  ```bash
  scite
  at-spi2-core
  ```
* >>>>>>>>> Running inst-std-accessories-terminal-xfce.sh ...
  * After this operation, 11.1 MB of additional disk space will be used.
  * Install terminal: xfce4-terminal.
  * Disk size = 2326852K. Space Used = 9336K.
  * The following NEW packages will be installed:
  ```bash
  dbus-x11 exo-utils libdbus-glib-1-2 libexo-1-0 libexo-common libexo-helpers
  libpango1.0-0 libpangox-1.0-0 libpangoxft-1.0-0 libstartup-notification0
  libvte-common libvte9 libxfce4ui-1-0 libxfce4util-common libxfce4util6
  libxfconf-0-2 xfce-keyboard-shortcuts xfce4-terminal xfconf
  ```
* >>>>>>>>> Running inst-std-accessories-thunar.sh ...
  * After this operation, 6,519 kB of additional disk space will be used.
  * After this operation, 1,931 kB of additional disk space will be used.
  * After this operation, 585 kB of additional disk space will be used.
  * After this operation, 1,004 kB of additional disk space will be used.
  * Install Thunar file manager.
  * Insert Thunar in Accessories menu.
  * Disk size = 2333228K. Space Used = 6376K.
  * The following NEW packages will be installed:
  ```bash
  desktop-file-utils libgudev-1.0-0 libthunarx-2-0 thunar thunar-data
  libtag1-vanilla libtag1c2a libtagc0 thunar-media-tags-plugin
  thunar-archive-plugin
  thunar-volman
  ```
* >>>>>>>>> Running inst-std-accessories-xarchiver.sh ...
  * After this operation, 1,529 kB of additional disk space will be used.
  * Install Archive Manager: xarchiver.
  * Disk size = 2334464K. Space Used = 1236K.
  * The following NEW packages will be installed:
  ```bash
  xarchiver
  ```
* >>>>>>>>> Running inst-std-font-fonts-liberation.sh ...
  * After this operation, 2,178 kB of additional disk space will be used.
  * Install fonts-liberation to get free variants of the Times, Arial and Courier fonts.
  * Otherwise, install ttf-mscorefonts-installer to get Microsoft TrueType core fonts.
  * Disk size = 2337468K. Space Used = 3004K.
  * The following NEW packages will be installed:
  ```bash
  fonts-liberation
  ```
* >>>>>>>>> Running inst-std-graphic-pinta.sh ...
  * After this operation, 69.9 MB of additional disk space will be used.
  * Install Image Editor: Pinta.
  * Insert Pinta menu in Graphics.
  * Disk size = 2438832K. Space Used = 101364K.
  * The following NEW packages will be installed:
  ```bash
  cli-common gnome-icon-theme libgdiplus libglib2.0-cil libgtk2.0-cil
  libmono-addins-gui0.2-cil libmono-addins0.2-cil libmono-cairo4.0-cil
  libmono-corlib4.5-cil libmono-posix4.0-cil libmono-security4.0-cil
  libmono-sharpzip4.84-cil libmono-system-configuration4.0-cil
  libmono-system-core4.0-cil libmono-system-drawing4.0-cil
  libmono-system-security4.0-cil libmono-system-xml4.0-cil
  libmono-system4.0-cil mono-4.0-gac mono-gac mono-runtime mono-runtime-common
  mono-runtime-sgen perl perl-modules pinta
  ```
* >>>>>>>>> Running inst-std-help-manuals-html.sh ...
  * Add user & developer manuals in Help menu.
  * Disk size = 2438896K. Space Used = 64K.
* >>>>>>>>> Running inst-std-internet-iceweasel-bpo.sh ...
  * After this operation, 101 MB of additional disk space will be used.
  * After this operation, 27.5 MB of additional disk space will be used.
  * Install the latest Firefox from Debian Mozilla team: Mozilla Firefox 45.5.0.
  * Insert Iceweasel in Internet menu.
  * To update Adobe Flash Player: update-flashplugin-nonfree --install.
  * To test Adobe Flash Player: http://www.adobe.com/software/flash/about/.
  * Disk size = 2633284K. Space Used = 194388K.
  * The following NEW packages will be installed:
  ```bash
  firefox-esr iceweasel libevent-2.0-5 libhunspell-1.3-0
  binutils ca-certificates flashplugin-nonfree libcurl3-gnutls libnspr4
  libnss3 openssl
  ```
* >>>>>>>>> Running inst-std-multimedia-mpv.sh ...
  * After this operation, 208 kB of additional disk space will be used.
  * After this operation, 25.7 MB of additional disk space will be used.
  * After this operation, 38.7 MB of additional disk space will be used.
  * After this operation, 31.0 MB of additional disk space will be used.
  * After this operation, 28.0 MB of additional disk space will be used.
  * After this operation, 159 kB of additional disk space will be used.
  * After this operation, 224 kB of additional disk space will be used.
  * After this operation, 180 kB of additional disk space will be used.
  * After this operation, 86.0 kB of additional disk space will be used.
  * After this operation, 43.7 MB of additional disk space will be used.
  * After this operation, 154 kB of additional disk space will be used.
  * After this operation, 143 kB of additional disk space will be used.
  * After this operation, 869 kB of additional disk space will be used.
  * After this operation, 86.7 MB of additional disk space will be used.
  * Install Media Player: mpv 0.8.3 .
  * Add multiple aliases for MPV.
  * Add useful mpv keybindings settings.
  * Disk size = 2754824K. Space Used = 121540K.
  * The following NEW packages will be installed:
  ```bash
  libavc1394-0 libraw1394-11
  libaacplus2 libavcodec56 libavutil54 libcrystalhd3 libfaac0 libfdk-aac1
  libgsm1 libmp3lame0 libopencore-amrnb0 libopencore-amrwb0 libopenjpeg5
  libopus0 liborc-0.4-0 libschroedinger-1.0-0 libspeex1 libswresample1
  libtheora0 libutvideo15 libva1 libvo-aacenc0 libvo-amrwbenc0 libvorbisenc2
  libvpx1 libx264-146 libx265-51 libxvidcore4 libzvbi-common libzvbi0
  libaacplus2 libass5 libasyncns0 libavc1394-0 libavcodec56 libavdevice56
  libavfilter5 libavformat56 libavresample2 libavutil54 libbluray1 libcaca0
  libcdio-cdda1 libcdio-paranoia1 libcdio13 libcrystalhd3 libdc1394-22
  libdirectfb-1.2-9 libenca0 libfaac0 libfdk-aac1 libflac8 libgsm1
  libiec61883-0 libjack-jackd2-0 libmp3lame0 libopencore-amrnb0
  libopencore-amrwb0 libopenjpeg5 libopus0 liborc-0.4-0 libpostproc53
  libpulse0 libraw1394-11 libschroedinger-1.0-0 libsdl1.2debian libsndfile1
  libspeex1 libswresample1 libswscale3 libtheora0 libutvideo15 libva1
  libvidstab1.0 libvo-aacenc0 libvo-amrwbenc0 libvorbisenc2 libvpx1 libwrap0
  libx264-146 libx265-51 libxvidcore4 libzvbi-common libzvbi0
  libaacplus2 libass5 libavcodec56 libavfilter5 libavformat56 libavresample2
  libavutil54 libbluray1 libcrystalhd3 libenca0 libfaac0 libfdk-aac1 libgsm1
  libmp3lame0 libopencore-amrnb0 libopencore-amrwb0 libopenjpeg5 libopus0
  liborc-0.4-0 libpostproc53 libschroedinger-1.0-0 libspeex1 libswresample1
  libswscale3 libtheora0 libutvideo15 libva1 libvidstab1.0 libvo-aacenc0
  libvo-amrwbenc0 libvorbisenc2 libvpx1 libx264-146 libx265-51 libxvidcore4
  libzvbi-common libzvbi0
  libaacplus2 libavcodec56 libavformat56 libavutil54 libbluray1 libcrystalhd3
  libfaac0 libfdk-aac1 libgsm1 libmp3lame0 libopencore-amrnb0
  libopencore-amrwb0 libopenjpeg5 libopus0 liborc-0.4-0 libschroedinger-1.0-0
  libspeex1 libswresample1 libtheora0 libutvideo15 libva1 libvo-aacenc0
  libvo-amrwbenc0 libvorbisenc2 libvpx1 libx264-146 libx265-51 libxvidcore4
  libzvbi-common libzvbi0
  libcrystalhd3
  libiec61883-0 libraw1394-11
  libopencore-amrnb0
  libopencore-amrwb0
  libldb1 libntdb1 libpython-stdlib libpython2.7 libpython2.7-minimal
  libpython2.7-stdlib libsmbclient libtalloc2 libtevent0 libwbclient0
  mime-support python python-minimal python-talloc python2.7 python2.7-minimal
  samba-libs
  libvo-aacenc0
  libvo-amrwbenc0
  libzvbi-common libzvbi0
  libaacplus2 libass5 libasyncns0 libavc1394-0 libavcodec56 libavdevice56
  libavfilter5 libavformat56 libavresample2 libavutil54 libbluray1 libbs2b0
  libcaca0 libcdio-cdda1 libcdio-paranoia1 libcdio13 libcrystalhd3
  libdc1394-22 libdirectfb-1.2-9 libdvdnav4 libdvdread4 libenca0 libfaac0
  libfdk-aac1 libflac8 libgsm1 libguess1 libiec61883-0 libjack-jackd2-0
  libldb1 liblircclient0 liblua5.2-0 libmowgli-2-0 libmp3lame0 libmpg123-0
  libntdb1 libopenal-data libopenal1 libopencore-amrnb0 libopencore-amrwb0
  libopenjpeg5 libopus0 liborc-0.4-0 libpostproc53 libpulse0 libpython-stdlib
  libpython2.7 libpython2.7-minimal libpython2.7-stdlib libraw1394-11
  libschroedinger-1.0-0 libsdl1.2debian libsmbclient libsndfile1 libspeex1
  libswresample1 libswscale3 libtalloc2 libtevent0 libtheora0 libutvideo15
  libv4l-0 libv4lconvert0 libva-glx1 libva-x11-1 libva1 libvdpau1
  libvidstab1.0 libvo-aacenc0 libvo-amrwbenc0 libvorbisenc2 libvpx1
  libwayland-egl1-mesa libwbclient0 libwrap0 libx264-146 libx265-51 libxss1
  libxvidcore4 libzvbi-common libzvbi0 mime-support mpv python python-minimal
  python-talloc python2.7 python2.7-minimal samba-libs
  ```
* >>>>>>>>> Running inst-std-office-libreoffice-bpo.sh ...
  * After this operation, 1,185 kB of additional disk space will be used.
  * After this operation, 282 MB of additional disk space will be used.
  * After this operation, 43.0 MB of additional disk space will be used.
  * After this operation, 17.1 MB of additional disk space will be used.
  * After this operation, 9,637 kB of additional disk space will be used.
  * After this operation, 1,447 kB of additional disk space will be used.
  * Install LibreOffice 5.2.3.1 20m0(Build:1).
  * Install Office Suite: Word processor.
  * Install Office Suite: Spreadsheet.
  * Install Office Suite: Presentation.
  * Install Office Suite: Drawing.
  * Install Office Suite: Database.
  * Install Office Suite: Equation.
  * https://wiki.documentfoundation.org/ReleasePlan
  * Disk size = 3199784K. Space Used = 444960K.
  * The following NEW packages will be installed:
  ```bash
  libpagemaker-0.0-0 librevenge-0.0-0
  fonts-opensymbol libabw-0.1-1 libboost-date-time1.55.0
  libboost-filesystem1.55.0 libboost-system1.55.0 libclucene-contribs1
  libclucene-core1 libe-book-0.1-1 libeot0 libetonyek-0.1-1
  libexttextcat-2.0-0 libexttextcat-data libglew1.10 libglu1-mesa
  libharfbuzz-icu0 libhyphen0 liblangtag-common liblangtag1 libmhash2
  libmwaw-0.3-3 libmythes-1.2-0 libneon27-gnutls libodfgen-0.1-1 libraptor2-0
  librasqal3 librdf0 libreoffice-base-core libreoffice-common libreoffice-core
  libreoffice-style-galaxy libreoffice-writer librevenge-0.0-0 libwpd-0.10-10
  libwpg-0.3-3 libxslt1.1 libyajl2 uno-libs3 ure
  coinor-libcbc3 coinor-libcgl1 coinor-libclp1 coinor-libcoinmp1
  coinor-libcoinutils3 coinor-libosi1 libblas-common libblas3 libcolamd2.8.0
  libgfortran3 liblapack3 libquadmath0 libreoffice-calc lp-solve
  libcdr-0.1-1 libfreehand-0.1-1 libmspub-0.1-1 libpagemaker-0.0-0
  libreoffice-draw libreoffice-impress libvisio-0.1-1
  libreoffice-base libreoffice-base-drivers
  libreoffice-math
  ```
* >>>>>>>>> Running inst-std-system-alsamixer.sh ...
  * Insert Alsamixer menu in Administration.
  * Disk size = 3199788K. Space Used = 4K.
* >>>>>>>>> Running inst-std-system-conky.sh ...
  * After this operation, 929 kB of additional disk space will be used.
  * Install System Monitor: conky.
  * Add conky config file: conkyrc.
  * Set conky to run on JWM startup.
  * Add on the fly settings to Conky.
  * Disk size = 3201016K. Space Used = 1228K.
  * The following NEW packages will be installed:
  ```bash
  conky-std libiw30
  ```
* >>>>>>>>> Running inst-std-system-gnome-disk-utility.sh ...
  * After this operation, 11.1 MB of additional disk space will be used.
  * Install Partition Manager: gnome-disk-utility.
  * Run: gnome-disks.
  * Insert gnome-disk-utility menu in Administration.
  * Disk size = 3207312K. Space Used = 6296K.
  * The following NEW packages will be installed:
  ```bash
  gnome-disk-utility libatasmart4 libcrack2 libpam-systemd libparted2
  libpolkit-agent-1-0 libpolkit-gobject-1-0 libpwquality-common libpwquality1
  libsecret-1-0 libsecret-common libudisks2-0 parted udisks2
  ```
* >>>>>>>>> Running inst-std-system-keyboard.sh ...
  * Insert keyboard menu in Administration.
  * Disk size = 3207316K. Space Used = 4K.
* >>>>>>>>> Running inst-std-system-monitor-switcher-lxrandr.sh ...
  * After this operation, 19.9 MB of additional disk space will be used.
  * After this operation, 779 kB of additional disk space will be used.
  * Install Monitor Switcher: lxrandr.
  * Add lxrandr key binding.
  * Disk size = 3233304K. Space Used = 25988K.
  * The following NEW packages will be installed:
  ```bash
  cpp cpp-4.9 libcloog-isl4 libisl10 libmpc3 libmpfr4 x11-xserver-utils
  lxrandr
  ```
* >>>>>>>>> Running inst-std-system-network-wicd.sh ...
  * After this operation, 22.0 MB of additional disk space will be used.
  * Install Network Manager: wicd.
  * Insert Wicd menu in Network.
  * For wireless, you have to type in the wireless interface(e.g. wlan0) in the Preferences.
  * Set wicd to run on JWM startup.
  * Log at /var/log/wicd/wicd.log.
  * Disk size = 3268500K. Space Used = 35196K.
  * The following NEW packages will be installed:
  ```bash
  gir1.2-glib-2.0 libgirepository-1.0-1 libglade2-0 libnl-3-200
  libnl-genl-3-200 libpcsclite1 psmisc python-cairo python-dbus
  python-dbus-dev python-gi python-glade2 python-gobject python-gobject-2
  python-gtk2 python-numpy python-support python-wicd wicd wicd-daemon
  wicd-gtk wireless-tools wpasupplicant
  ```
* >>>>>>>>> Running inst-std-system-time-zone.sh ...
  * Insert Time Zone menu in Administration.
  * Disk size = 3268504K. Space Used = 4K.
* >>>>>>>>> Running inst-zclean-01-apt-get-00-clean-up.sh ...
  * After this operation, 14.4 MB disk space will be freed.
  * Remove unused packages: apt-get -y --force-yes autoremove.
  * Clean cached DEB: apt-get clean.
  * Disk size = 2834264K. Space Used = -434240K.
* >>>>>>>>> Running inst-zclean-01-apt-get-01-source-list.sh ...
  * Reinstate original Debian repositories back to source.list.
  * Disk size = 2834272K. Space Used = 8K.
* >>>>>>>>> Running inst-zclean-02-remove-block-services.sh ...
  * Remove block services from starting after they are being installed.
  * Disk size = 2834272K. Space Used = 0K.
* >>>>>>>>> Running inst-zclean-98-zerosizing-docs.sh ...
  * Zero size all documents in /usr/share/.
  * Disk size = 2765620K. Space Used = -68652K.
* >>>>>>>>> Running inst-zclean-99-end-cleanup.sh ...
  * rm -rf /tmp/*.
  * Umount /sys, /dev/pts and /proc.
  * Disk size = 2765624K. Space Used = 4K.
* >>>>>>>>> Running main.sh ...
  * Running on SHELL=/bin/bash VER=4.3.30(1)-release
  * Disk size = 1504008K. Space Used = 1504008K.
