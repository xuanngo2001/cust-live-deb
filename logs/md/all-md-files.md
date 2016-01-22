* >>>>>>>>> Running install.sh ...
  * Running on SHELL=/bin/bash VER=4.3.30(1)-release
  * Disk size = 1380576K. Space Used = 1380576K.
* >>>>>>>>> Running inst-min-con-00-apt-custom-repository.sh ...
  * Disk size = 1380592K. Space Used = 16K.
* >>>>>>>>> Running inst-min-con-00-linux-image.sh ...
  * After this operation, 304 kB of additional disk space will be used.
  * After this operation, 3111 kB of additional disk space will be used.
  * After this operation, 225 MB of additional disk space will be used.
  * Mount /proc, /sys and /dev/pts.
  * Generate dbus-uuidgen to /var/lib/dbus/machine-id.
  * Install Linux image: 3.16.0-4-amd64.
  * Disk size = 1782524K. Space Used = 401932K.
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
  * Disk size = 1782536K. Space Used = 12K.
* >>>>>>>>> Running inst-min-con-01-debconf-utils.sh ...
  * After this operation, 157 kB of additional disk space will be used.
  * Install debconf-utils to use debconf-set-selections.
  * Disk size = 1782768K. Space Used = 232K.
  * The following NEW packages will be installed:
  ```bash
  debconf-utils
  ```
* >>>>>>>>> Running inst-min-con-02-localepurge.sh ...
  * After this operation, 334 kB of additional disk space will be used.
  * Install localepurge to purge documentation of all languages, except en, en_US, en_US.UTF-8.
  * Reconfigure localepurge: dpkg-reconfigure localepurge
  * Disk size = 1806256K. Space Used = 752K.
  * The following NEW packages will be installed:
  ```bash
  localepurge ucf
  ```
* >>>>>>>>> Running inst-min-con-02-locale.sh ...
  * After this operation, 16.3 MB of additional disk space will be used.
  * Install locale and set it to use en_US.UTF-8.
  * Disk size = 1805504K. Space Used = 22736K.
  * The following NEW packages will be installed:
  ```bash
  locales
  ```
* >>>>>>>>> Running inst-min-con-03-startup-script.sh ...
  * Copy startup.sh to /etc/init.d/.
  * Make it executable.
  * Register it in the boot sequence.
  * Disk size = 1806264K. Space Used = 8K.
* >>>>>>>>> Running inst-min-con-04-block-services-start-postinstall.sh ...
  * Block services from starting after they are being installed.
  * Disk size = 1806272K. Space Used = 8K.
* >>>>>>>>> Running inst-min-con-auto-log-root.sh ...
  * Disk size = 1806284K. Space Used = 12K.
* >>>>>>>>> Running inst-min-con-bashrc.sh ...
  * Set common settings for /root/.bashrc.
  * Set dircolors to use dircolors-gnu-ls-colors.txt to make ls more beautiful.
  * Disk size = 1806296K. Space Used = 12K.
* >>>>>>>>> Running inst-min-con-cld-dev-tools-debootstrap.sh ...
  * After this operation, 234 kB of additional disk space will be used.
  * Install debootstrap allows the creation of a Debian base system in a directory.
  * Disk size = 1806616K. Space Used = 320K.
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
  * Disk size = 1806668K. Space Used = 52K.
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
  * Disk size = 1810676K. Space Used = 4008K.
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
  * Disk size = 1811940K. Space Used = 1264K.
* >>>>>>>>> Running inst-min-con-filesystem-exfat.sh ...
  * After this operation, 550 kB of additional disk space will be used.
  * After this operation, 234 kB of additional disk space will be used.
  * Install exfat-fuse so that you can read and write SD cards and USB keys.
  * Disk size = 1813132K. Space Used = 1192K.
  * The following NEW packages will be installed:
  ```bash
  exfat-fuse fuse libfuse2
  exfat-utils
  ```
* >>>>>>>>> Running inst-min-con-filesystem-ntfs-3g.sh ...
  * After this operation, 1,632 kB of additional disk space will be used.
  * Install support for NTFS: ntfs-3g.
  * Disk size = 1815288K. Space Used = 2156K.
  * The following NEW packages will be installed:
  ```bash
  ntfs-3g
  ```
* >>>>>>>>> Running inst-min-con-firmware-cpu.sh ...
  * After this operation, 47.1 kB of additional disk space will be used.
  * After this operation, 655 kB of additional disk space will be used.
  * Install CPU firmware: amd64-microcode.
  * Install CPU firmware: intel-microcode.
  * Disk size = 1816636K. Space Used = 1348K.
  * The following NEW packages will be installed:
  ```bash
  amd64-microcode
  intel-microcode iucode-tool
  ```
* >>>>>>>>> Running inst-min-con-firmware-net-b43-installer.sh ...
  * After this operation, 100 kB of additional disk space will be used.
  * Install b43 for Dell Wireless 1397 WLAN Mini-Card Driver.
  * Disk size = 1854348K. Space Used = 37712K.
  * The following NEW packages will be installed:
  ```bash
  b43-fwcutter
  ```
* >>>>>>>>> Running inst-min-con-firmware.sh ...
  * After this operation, 41.7 MB of additional disk space will be used.
  * Install firmwares: atmel-firmware, bluez-firmware, firmware-atheros, firmware-bnx2, firmware-bnx2x, firmware-brcm80211, firmware-intelwimax, firmware-ipw2x00, firmware-ivtv, firmware-iwlwifi, firmware-libertas, firmware-linux, firmware-linux-free, firmware-linux-nonfree, firmware-qlogic, firmware-ralink, firmware-realtek, zd1211-firmware.
  * Disk size = 1908048K. Space Used = 53700K.
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
  * Disk size = 1911628K. Space Used = 3580K.
  * The following NEW packages will be installed:
  ```bash
  isolinux
  libburn4 libisoburn1 libisofs6 libjte1 xorriso
  liblzo2-2 squashfs-tools
  ```
* >>>>>>>>> Running inst-min-con-mtp-tools.sh ...
  * After this operation, 2,114 kB of additional disk space will be used.
  * Install mtp-tools to mount smartphones.
  * Disk size = 1914180K. Space Used = 2552K.
  * The following NEW packages will be installed:
  ```bash
  libmtp-common libmtp9 libusb-1.0-0 mtp-tools
  ```
* >>>>>>>>> Running inst-min-con-ntp.sh ...
  * After this operation, 1,871 kB of additional disk space will be used.
  * Install Network Time Protocol: ntp.
  * Disk size = 1916692K. Space Used = 2512K.
  * The following NEW packages will be installed:
  ```bash
  libbsd0 libedit2 libopts25 ntp
  ```
* >>>>>>>>> Running inst-min-con-numlock.sh ...
  * After this operation, 4,381 kB of additional disk space will be used.
  * Install numlockx to turn on NumLock on boot.
  * Disk size = 1923200K. Space Used = 6508K.
  * The following NEW packages will be installed:
  ```bash
  libx11-6 libx11-data libxau6 libxcb1 libxdmcp6 libxext6 libxi6 libxtst6
  numlockx x11-common
  ```
* >>>>>>>>> Running inst-min-con-pciutils.sh ...
  * After this operation, 1,181 kB of additional disk space will be used.
  * Install pciutils to troubleshoot pci devices(i.e. lspci).
  * Disk size = 1924780K. Space Used = 1580K.
  * The following NEW packages will be installed:
  ```bash
  libpci3 pciutils
  ```
* >>>>>>>>> Running inst-min-con-snd-alsa.sh ...
  * After this operation, 5,270 kB of additional disk space will be used.
  * Install ALSA sound.
  * Test sound: aplay /usr/share/sounds/alsa/*.
  * Add key bindings.
  * Disk size = 1932628K. Space Used = 7848K.
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
  * Disk size = 1938548K. Space Used = 5920K.
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
  * Disk size = 2032408K. Space Used = 93860K.
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
* >>>>>>>>> Running inst-min-win-01-wm-jwm.sh ...
  * After this operation, 15.1 MB of additional disk space will be used.
  * Install Window Manager: JWM vsvn-579 by Joe Wingbermuehle.
  * Set jwmrc.
  * Disk size = 2053944K. Space Used = 21536K.
  * The following NEW packages will be installed:
  ```bash
  fontconfig-config fonts-dejavu-core jwm libfontconfig1 libfribidi0
  libgdk-pixbuf2.0-0 libgdk-pixbuf2.0-common libjasper1 libjbig0
  libjpeg62-turbo libperl5.20 libstartup-notification0 libtiff5 libxft2
  libxinerama1 libxrender1 ncurses-term rxvt-unicode-256color
  ```
* >>>>>>>>> Running inst-min-win-cld-dev-tools-pandoc.sh ...
  * After this operation, 39.0 MB of additional disk space will be used.
  * Install pandoc to generate user manual.
  * Disk size = 2096952K. Space Used = 43008K.
  * The following NEW packages will be installed:
  ```bash
  liblua5.1-0 libyaml-0-2 pandoc pandoc-data
  ```
* >>>>>>>>> Running inst-min-win-cld-win-split.sh ...
  * After this operation, 81.9 kB of additional disk space will be used.
  * After this operation, 777 kB of additional disk space will be used.
  * Install required applications for cld-win-split.sh: wmctrl and x11-utils for xprop.
  * Add key bindings: Ctrl+Alt+Left, Right, Up, Down, 1, 2, 3, 4, 5, 6, 7, 8, 9.
  * Disk size = 2098240K. Space Used = 1288K.
  * The following NEW packages will be installed:
  ```bash
  wmctrl
  libxcomposite1 libxrandr2 libxxf86dga1 x11-utils
  ```
* >>>>>>>>> Running inst-min-win-jwm-help-manuals-text.sh ...
  * Add Help menu in JWM.
  * Disk size = 2098268K. Space Used = 28K.
* >>>>>>>>> Running inst-min-win-jwm-keys-alsa.sh ...
  * Add ALSA key binding.
  * Add script to auto-detect ALSA controller on JWM startup.
  * Disk size = 2098276K. Space Used = 8K.
* >>>>>>>>> Running inst-min-win-menu.sh ...
  * After this operation, 1,829 kB of additional disk space will be used.
  * Install menu, an easy way to get installed programs in the menu automatically.
  * Disk size = 2099548K. Space Used = 1272K.
  * The following NEW packages will be installed:
  ```bash
  menu
  ```
* >>>>>>>>> Running inst-min-win-systray-volumeicon-alsa.sh ...
  * After this operation, 36.6 MB of additional disk space will be used.
  * Install volume controller in system tray.
  * Set left-click to display volume slider: lmb_slider=true.
  * Set volumeicon to run on JWN startup.
  * Disk size = 2125008K. Space Used = 25460K.
  * The following NEW packages will be installed:
  ```bash
  fontconfig libatk1.0-0 libatk1.0-data libavahi-client3 libavahi-common-data
  libavahi-common3 libcairo2 libcups2 libdatrie1 libgraphite2-3
  libgssapi-krb5-2 libgtk2.0-0 libgtk2.0-common libharfbuzz0b libk5crypto3
  libkeyutils1 libkrb5-3 libkrb5support0 libnotify4 libpango-1.0-0
  libpangocairo-1.0-0 libpangoft2-1.0-0 libthai-data libthai0 libxcb-shm0
  libxcursor1 volumeicon-alsa
  ```
* >>>>>>>>> Running inst-std-00-jwm.sh ...
  * Add default standard menus in JWM.
  * Disk size = 2125012K. Space Used = 4K.
* >>>>>>>>> Running inst-std-accessories-calc-speedcrunch.sh ...
  * After this operation, 26.3 MB of additional disk space will be used.
  * Install calculator: speedcrunch.
  * Insert speedcrunch in Accessories menu.
  * Disk size = 2159204K. Space Used = 34192K.
  * The following NEW packages will be installed:
  ```bash
  libaudio2 liblcms2-2 libmng1 libqt4-xml libqtcore4 libqtgui4 qtcore4-l10n
  speedcrunch
  ```
* >>>>>>>>> Running inst-std-accessories-feh.sh ...
  * After this operation, 5,145 kB of additional disk space will be used.
  * Install command line image viewer: feh.
  * Disk size = 2164392K. Space Used = 5188K.
  * The following NEW packages will be installed:
  ```bash
  feh libcurl3 libexif12 libgif4 libid3tag0 libimlib2 libldap-2.4-2 librtmp1
  libsasl2-2 libsasl2-modules-db libssh2-1
  ```
* >>>>>>>>> Running inst-std-accessories-gpicview.sh ...
  * After this operation, 876 kB of additional disk space will be used.
  * Install Image Viewer: gpicview.
  * Insert gpicview in Accessories menu.
  * Disk size = 2164744K. Space Used = 352K.
  * The following NEW packages will be installed:
  ```bash
  gpicview
  ```
* >>>>>>>>> Running inst-std-accessories-mupdf.sh ...
  * After this operation, 12.0 MB of additional disk space will be used.
  * Install PDF reader: Mupdf.
  * Disk size = 2180092K. Space Used = 15348K.
  * The following NEW packages will be installed:
  ```bash
  libjbig2dec0 libopenjp2-7 mupdf
  ```
* >>>>>>>>> Running inst-std-accessories-prtscr-gnome-screenshot.sh ...
  * After this operation, 58.8 MB of additional disk space will be used.
  * Install gnome-screenshot to be used for PrintScreen key.
  * Insert PrintScreen key binding.
  * By default, screenshots are saved under ~/Pictures/.
  * Disk size = 2237772K. Space Used = 57680K.
  * The following NEW packages will be installed:
  ```bash
  adwaita-icon-theme dconf-gsettings-backend dconf-service glib-networking
  glib-networking-common glib-networking-services gnome-screenshot
  gsettings-desktop-schemas hicolor-icon-theme libatk-bridge2.0-0
  libatspi2.0-0 libcairo-gobject2 libcanberra-gtk3-0 libcanberra0 libcolord2
  libcroco3 libdconf1 libgtk-3-0 libgtk-3-bin libgtk-3-common
  libjson-glib-1.0-0 libjson-glib-1.0-common libltdl7 libogg0 libproxy1
  librest-0.7-0 librsvg2-2 librsvg2-common libsoup-gnome2.4-1 libsoup2.4-1
  libsqlite3-0 libtdb1 libvorbis0a libvorbisfile3 libwayland-cursor0
  libxkbcommon0
  ```
* >>>>>>>>> Running inst-std-accessories-scite.sh ...
  * After this operation, 4,829 kB of additional disk space will be used.
  * After this operation, 221 kB of additional disk space will be used.
  * Install Text Editor: SciTE.
  * Install at-spi2-core to shut up Accessibility warning message.
  * Insert SciTE in Accessories menu.
  * Disk size = 2244308K. Space Used = 6536K.
  * The following NEW packages will be installed:
  ```bash
  scite
  at-spi2-core
  ```
* >>>>>>>>> Running inst-std-accessories-terminal-xfce.sh ...
  * After this operation, 11.1 MB of additional disk space will be used.
  * Install terminal: xfce4-terminal.
  * Disk size = 2253528K. Space Used = 9220K.
  * The following NEW packages will be installed:
  ```bash
  dbus-x11 exo-utils libdbus-glib-1-2 libexo-1-0 libexo-common libexo-helpers
  libpango1.0-0 libpangox-1.0-0 libpangoxft-1.0-0 libvte-common libvte9
  libxfce4ui-1-0 libxfce4util-common libxfce4util6 libxfconf-0-2
  xfce-keyboard-shortcuts xfce4-terminal xfconf
  ```
* >>>>>>>>> Running inst-std-accessories-thunar.sh ...
  * After this operation, 10.0 MB of additional disk space will be used.
  * Install File Manger: thunar, thunar-media-tags-plugin, thunar-archive-plugin, thunar-volman.
  * Insert Thunar in Accessories menu.
  * Disk size = 2259876K. Space Used = 6348K.
  * The following NEW packages will be installed:
  ```bash
  desktop-file-utils libgudev-1.0-0 libtag1-vanilla libtag1c2a libtagc0
  libthunarx-2-0 thunar thunar-archive-plugin thunar-data
  thunar-media-tags-plugin thunar-volman
  ```
* >>>>>>>>> Running inst-std-accessories-xarchiver.sh ...
  * After this operation, 1,211 kB of additional disk space will be used.
  * Install Archive Manager: xarchiver.
  * Disk size = 2261120K. Space Used = 1244K.
  * The following NEW packages will be installed:
  ```bash
  xarchiver
  ```
* >>>>>>>>> Running inst-std-font-fonts-liberation.sh ...
  * After this operation, 2,178 kB of additional disk space will be used.
  * Install fonts-liberation to get free variants of the Times, Arial and Courier fonts.
  * Otherwise, install ttf-mscorefonts-installer to get Microsoft TrueType core fonts.
  * Disk size = 2264116K. Space Used = 2996K.
  * The following NEW packages will be installed:
  ```bash
  fonts-liberation
  ```
* >>>>>>>>> Running inst-std-graphic-pinta.sh ...
  * After this operation, 45.0 MB of additional disk space will be used.
  * Install Image Editor: Pinta.
  * Insert Pinta menu in Graphics.
  * Disk size = 2335668K. Space Used = 71552K.
  * The following NEW packages will be installed:
  ```bash
  cli-common gnome-icon-theme libgdiplus libglib2.0-cil libgtk2.0-cil
  libmono-addins-gui0.2-cil libmono-addins0.2-cil libmono-cairo4.0-cil
  libmono-corlib2.0-cil libmono-corlib4.5-cil libmono-posix2.0-cil
  libmono-posix4.0-cil libmono-security2.0-cil libmono-security4.0-cil
  libmono-sharpzip4.84-cil libmono-system-configuration4.0-cil
  libmono-system-core4.0-cil libmono-system-drawing4.0-cil
  libmono-system-security4.0-cil libmono-system-xml4.0-cil
  libmono-system2.0-cil libmono-system4.0-cil mono-4.0-gac mono-gac
  mono-runtime mono-runtime-common mono-runtime-sgen pinta
  ```
* >>>>>>>>> Running inst-std-help-manuals-html.sh ...
  * Add user & developer manuals in Help menu.
  * Disk size = 2335724K. Space Used = 56K.
* >>>>>>>>> Running inst-std-internet-iceweasel-bpo.sh ...
  * After this operation, 101 MB of additional disk space will be used.
  * After this operation, 27.5 MB of additional disk space will be used.
  * Install the latest Firefox from Debian Mozilla team: Mozilla Iceweasel 43.0.4.
  * Insert Iceweasel in Internet menu.
  * To update Adobe Flash Player: update-flashplugin-nonfree --install.
  * To test Adobe Flash Player: http://www.adobe.com/software/flash/about/.
  * Disk size = 2532044K. Space Used = 196320K.
  * The following NEW packages will be installed:
  ```bash
  iceweasel libevent-2.0-5 libhunspell-1.3-0
  binutils ca-certificates flashplugin-nonfree libcurl3-gnutls libnspr4
  libnss3 openssl
  ```
* >>>>>>>>> Running inst-std-multimedia-mpv.sh ...
  * After this operation, 88.6 MB of additional disk space will be used.
  * Install Media Player: mpv 0.8.3 .
  * Add multiple aliases for MPV.
  * Add useful mpv keybindings settings.
  * Disk size = 2655696K. Space Used = 123652K.
  * The following NEW packages will be installed:
  ```bash
  libaacplus2 libasn1-8-heimdal libass5 libasyncns0 libavc1394-0 libavcodec56
  libavdevice56 libavfilter5 libavformat56 libavresample2 libavutil54
  libbluray1 libbs2b0 libcaca0 libcdio-cdda1 libcdio-paranoia1 libcdio13
  libcrystalhd3 libdc1394-22 libdirectfb-1.2-9 libdvdnav4 libdvdread4 libenca0
  libfaac0 libfdk-aac1 libflac8 libgsm1 libgssapi3-heimdal libguess1
  libhcrypto4-heimdal libheimbase1-heimdal libheimntlm0-heimdal
  libhx509-5-heimdal libiec61883-0 libjack-jackd2-0 libkrb5-26-heimdal libldb1
  liblircclient0 liblua5.2-0 libmowgli-2-0 libmp3lame0 libmpg123-0 libntdb1
  libopenal-data libopenal1 libopencore-amrnb0 libopencore-amrwb0 libopenjpeg5
  libopus0 liborc-0.4-0 libpostproc53 libpulse0 libpython-stdlib libpython2.7
  libpython2.7-minimal libpython2.7-stdlib libraw1394-11 libroken18-heimdal
  libschroedinger-1.0-0 libsdl1.2debian libsmbclient libsndfile1 libspeex1
  libswresample1 libswscale3 libtalloc2 libtevent0 libtheora0 libutvideo15
  libv4l-0 libv4lconvert0 libva-glx1 libva-x11-1 libva1 libvdpau1
  libvidstab1.0 libvo-aacenc0 libvo-amrwbenc0 libvorbisenc2 libvpx1
  libwayland-egl1-mesa libwbclient0 libwind0-heimdal libwrap0 libx264-146
  libx265-51 libxss1 libxvidcore4 libzvbi-common libzvbi0 mime-support mpv
  python python-minimal python-talloc python2.7 python2.7-minimal samba-libs
  ```
* >>>>>>>>> Running inst-std-office-libreoffice-bpo.sh ...
  * After this operation, 286 MB of additional disk space will be used.
  * After this operation, 43.9 MB of additional disk space will be used.
  * After this operation, 16.6 MB of additional disk space will be used.
  * After this operation, 9,520 kB of additional disk space will be used.
  * After this operation, 1,405 kB of additional disk space will be used.
  * Install LibreOffice 5.0.4.2 00m0(Build:2).
  * Install Office Suite: Word processor.
  * Install Office Suite: Spreadsheet.
  * Install Office Suite: Presentation.
  * Install Office Suite: Drawing.
  * Install Office Suite: Database.
  * Install Office Suite: Equation.
  * https://wiki.documentfoundation.org/ReleasePlan
  * Disk size = 3105572K. Space Used = 449876K.
  * The following NEW packages will be installed:
  ```bash
  fonts-opensymbol libabw-0.1-1 libboost-date-time1.55.0 libclucene-contribs1
  libclucene-core1 libe-book-0.1-1 libeot0 libexttextcat-2.0-0
  libexttextcat-data libglew1.10 libglu1-mesa libharfbuzz-icu0 libhyphen0
  liblangtag-common liblangtag1 libmhash2 libmythes-1.2-0 libneon27-gnutls
  libodfgen-0.1-1 libraptor2-0 librasqal3 librdf0 libreoffice-base-core
  libreoffice-common libreoffice-core libreoffice-style-galaxy
  libreoffice-writer librevenge-0.0-0 libwpd-0.10-10 libwpg-0.3-3 libxslt1.1
  libyajl2 uno-libs3 ure
  coinor-libcbc3 coinor-libcgl1 coinor-libclp1 coinor-libcoinmp1
  coinor-libcoinutils3 coinor-libosi1 libblas-common libblas3
  libboost-system1.55.0 libcolamd2.8.0 libgfortran3 liblapack3 libquadmath0
  libreoffice-calc lp-solve
  libcdr-0.1-1 libfreehand-0.1-1 libmspub-0.1-1 libpagemaker-0.0-0
  libreoffice-draw libreoffice-impress libvisio-0.1-1
  libreoffice-base libreoffice-base-drivers
  libreoffice-math
  ```
* >>>>>>>>> Running inst-std-system-alsamixer.sh ...
  * Insert Alsamixer menu in Administration.
  * Disk size = 3105576K. Space Used = 4K.
* >>>>>>>>> Running inst-std-system-conky.sh ...
  * After this operation, 967 kB of additional disk space will be used.
  * Install System Monitor: conky.
  * Add conky config file: conkyrc.
  * Set conky to run on JWM startup.
  * Add on the fly settings to Conky.
  * Disk size = 3106884K. Space Used = 1308K.
  * The following NEW packages will be installed:
  ```bash
  conky conky-std libiw30
  ```
* >>>>>>>>> Running inst-std-system-gnome-disk-utility.sh ...
  * After this operation, 11.1 MB of additional disk space will be used.
  * Install Partition Manager: gnome-disk-utility.
  * Run: gnome-disks.
  * Insert gnome-disk-utility menu in Administration.
  * Disk size = 3113180K. Space Used = 6296K.
  * The following NEW packages will be installed:
  ```bash
  gnome-disk-utility libatasmart4 libcrack2 libpam-systemd libparted2
  libpolkit-agent-1-0 libpolkit-gobject-1-0 libpwquality-common libpwquality1
  libsecret-1-0 libsecret-common libudisks2-0 parted udisks2
  ```
* >>>>>>>>> Running inst-std-system-keyboard.sh ...
  * Insert keyboard menu in Administration.
  * Disk size = 3113188K. Space Used = 8K.
* >>>>>>>>> Running inst-std-system-monitor-switcher-lxrandr.sh ...
  * After this operation, 19.9 MB of additional disk space will be used.
  * After this operation, 779 kB of additional disk space will be used.
  * Install Monitor Switcher: lxrandr.
  * Add lxrandr key binding.
  * Disk size = 3139172K. Space Used = 25984K.
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
  * Disk size = 3174368K. Space Used = 35196K.
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
  * Disk size = 3174372K. Space Used = 4K.
* >>>>>>>>> Running inst-zclean-00-remove-block-services.sh ...
  * Remove block services from starting after they are being installed.
  * Disk size = 3174372K. Space Used = 0K.
* >>>>>>>>> Running inst-zclean-00-zerosizing-docs.sh ...
  * Zero size all documents in /usr/share/.
  * Disk size = 3102484K. Space Used = -71888K.
* >>>>>>>>> Running inst-zclean-99-end-cleanup.sh ...
  * Clean apt-get cache.
  * rm -rf /tmp/*.
  * Umount /sys, /dev/pts and /proc.
  * Add Debian main repositories in sources.list.
  * Delete local Debian repository from sources.list.
  * Disk size = 2632220K. Space Used = -470264K.
