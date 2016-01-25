* >>>>>>>>> Running install.sh ...
  * Running on SHELL=/bin/bash VER=4.3.30(1)-release
  * Disk size = 1380588K. Space Used = 1380588K.
* >>>>>>>>> Running inst-min-con-00-apt-custom-repository.sh ...
  * Disk size = 1380604K. Space Used = 16K.
* >>>>>>>>> Running inst-min-con-00-linux-image.sh ...
  * After this operation, 2048 B of additional disk space will be used.
  * After this operation, 3111 kB of additional disk space will be used.
  * After this operation, 225 MB of additional disk space will be used.
  * Mount /proc, /sys and /dev/pts.
  * Generate dbus-uuidgen to /var/lib/dbus/machine-id.
  * Install Linux image: 3.16.0-4-amd64.
  * Disk size = 1770228K. Space Used = 389624K.
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
  * Disk size = 1770236K. Space Used = 8K.
* >>>>>>>>> Running inst-min-con-01-debconf-utils.sh ...
  * After this operation, 157 kB of additional disk space will be used.
  * Install debconf-utils to use debconf-set-selections.
  * Disk size = 1770464K. Space Used = 228K.
  * The following NEW packages will be installed:
  ```bash
  debconf-utils
  ```
* >>>>>>>>> Running inst-min-con-02-localepurge.sh ...
  * After this operation, 334 kB of additional disk space will be used.
  * Install localepurge to purge documentation of all languages, except en, en_US, en_US.UTF-8.
  * Reconfigure localepurge: dpkg-reconfigure localepurge
  * Disk size = 1793996K. Space Used = 752K.
  * The following NEW packages will be installed:
  ```bash
  localepurge ucf
  ```
* >>>>>>>>> Running inst-min-con-02-locale.sh ...
  * After this operation, 16.3 MB of additional disk space will be used.
  * Install locale and set it to use en_US.UTF-8.
  * Disk size = 1793244K. Space Used = 22780K.
  * The following NEW packages will be installed:
  ```bash
  locales
  ```
* >>>>>>>>> Running inst-min-con-03-startup-script.sh ...
  * Copy startup.sh to /etc/init.d/.
  * Make it executable.
  * Register it in the boot sequence.
  * Disk size = 1794004K. Space Used = 8K.
* >>>>>>>>> Running inst-min-con-04-block-services-start-postinstall.sh ...
  * Block services from starting after they are being installed.
  * Disk size = 1794012K. Space Used = 8K.
* >>>>>>>>> Running inst-min-con-auto-log-root.sh ...
  * Disk size = 1794024K. Space Used = 12K.
* >>>>>>>>> Running inst-min-con-bashrc.sh ...
  * Set common settings for /root/.bashrc.
  * Set dircolors to use dircolors-gnu-ls-colors.txt to make ls more beautiful.
  * Disk size = 1794036K. Space Used = 12K.
* >>>>>>>>> Running inst-min-con-cld-dev-tools-debootstrap.sh ...
  * After this operation, 234 kB of additional disk space will be used.
  * Install debootstrap allows the creation of a Debian base system in a directory.
  * Disk size = 1794356K. Space Used = 320K.
  * The following NEW packages will be installed:
  ```bash
  debootstrap
  ```
* >>>>>>>>> Running inst-min-con-cld-tools.sh ...
  * Disk size = 1794404K. Space Used = 48K.
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
  * Disk size = 1798420K. Space Used = 4016K.
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
  * Disk size = 1799672K. Space Used = 1252K.
* >>>>>>>>> Running inst-min-con-filesystem-exfat.sh ...
  * After this operation, 784 kB of additional disk space will be used.
  * Install exfat-fuse so that you can read and write SD cards and USB keys.
  * Disk size = 1800872K. Space Used = 1200K.
  * The following NEW packages will be installed:
  ```bash
  exfat-fuse exfat-utils fuse libfuse2
  ```
* >>>>>>>>> Running inst-min-con-filesystem-ntfs-3g.sh ...
  * After this operation, 1,632 kB of additional disk space will be used.
  * Install support for NTFS: ntfs-3g.
  * Disk size = 1803032K. Space Used = 2160K.
  * The following NEW packages will be installed:
  ```bash
  ntfs-3g
  ```
* >>>>>>>>> Running inst-min-con-firmware-cpu.sh ...
  * After this operation, 47.1 kB of additional disk space will be used.
  * After this operation, 623 kB of additional disk space will be used.
  * Install CPU firmware: amd64-microcode.
  * Install CPU firmware: intel-microcode.
  * Disk size = 1804436K. Space Used = 1404K.
  * The following NEW packages will be installed:
  ```bash
  amd64-microcode
  intel-microcode iucode-tool
  ```
* >>>>>>>>> Running inst-min-con-firmware-net-b43-installer.sh ...
  * After this operation, 100 kB of additional disk space will be used.
  * Install b43 for Dell Wireless 1397 WLAN Mini-Card Driver.
  * Disk size = 1842152K. Space Used = 37716K.
  * The following NEW packages will be installed:
  ```bash
  b43-fwcutter
  ```
* >>>>>>>>> Running inst-min-con-firmware.sh ...
  * After this operation, 41.7 MB of additional disk space will be used.
  * Install firmwares: atmel-firmware, bluez-firmware, firmware-atheros, firmware-bnx2, firmware-bnx2x, firmware-brcm80211, firmware-intelwimax, firmware-ipw2x00, firmware-ivtv, firmware-iwlwifi, firmware-libertas, firmware-linux, firmware-linux-free, firmware-linux-nonfree, firmware-qlogic, firmware-ralink, firmware-realtek, zd1211-firmware.
  * Disk size = 1895852K. Space Used = 53700K.
  * The following NEW packages will be installed:
  ```bash
  atmel-firmware bluez-firmware firmware-atheros firmware-bnx2 firmware-bnx2x
  firmware-brcm80211 firmware-intelwimax firmware-ipw2x00 firmware-ivtv
  firmware-iwlwifi firmware-libertas firmware-linux firmware-linux-nonfree
  firmware-qlogic firmware-ralink firmware-realtek firmware-zd1211
  zd1211-firmware
  ```
* >>>>>>>>> Running inst-min-con-live-build-tools.sh ...
  * After this operation, 3,632 kB of additional disk space will be used.
  * After this operation, 1,789 kB of additional disk space will be used.
  * After this operation, 392 kB of additional disk space will be used.
  * Install xorriso to create isohybrid.
  * Install isolinux to get isohdpfx.bin and isolinux.bin in order to create isohybrid.
  * Note: boot.cat is automatically created.
  * Install rsync to copy directories.
  * Install squashfs-tools to create new squashfs.
  * Disk size = 1904588K. Space Used = 8736K.
  * The following NEW packages will be installed:
  ```bash
  isolinux syslinux-common
  libburn4 libisoburn1 libisofs6 libjte1 xorriso
  liblzo2-2 squashfs-tools
  ```
* >>>>>>>>> Running inst-min-con-mtp-tools.sh ...
  * After this operation, 2,168 kB of additional disk space will be used.
  * Install mtp-tools to mount smartphones.
  * Disk size = 1907264K. Space Used = 2676K.
  * The following NEW packages will be installed:
  ```bash
  libmtp-common libmtp-runtime libmtp9 libusb-1.0-0 mtp-tools
  ```
* >>>>>>>>> Running inst-min-con-ntp.sh ...
  * After this operation, 1,871 kB of additional disk space will be used.
  * Install Network Time Protocol: ntp.
  * Disk size = 1909764K. Space Used = 2500K.
  * The following NEW packages will be installed:
  ```bash
  libbsd0 libedit2 libopts25 ntp
  ```
* >>>>>>>>> Running inst-min-con-numlock.sh ...
  * After this operation, 4,381 kB of additional disk space will be used.
  * Install numlockx to turn on NumLock on boot.
  * Disk size = 1916280K. Space Used = 6516K.
  * The following NEW packages will be installed:
  ```bash
  libx11-6 libx11-data libxau6 libxcb1 libxdmcp6 libxext6 libxi6 libxtst6
  numlockx x11-common
  ```
* >>>>>>>>> Running inst-min-con-pciutils.sh ...
  * After this operation, 1,181 kB of additional disk space will be used.
  * Install pciutils to troubleshoot pci devices(i.e. lspci).
  * Disk size = 1917856K. Space Used = 1576K.
  * The following NEW packages will be installed:
  ```bash
  libpci3 pciutils
  ```
* >>>>>>>>> Running inst-min-con-snd-alsa.sh ...
  * After this operation, 5,270 kB of additional disk space will be used.
  * Install ALSA sound.
  * Test sound: aplay /usr/share/sounds/alsa/*.
  * Add key bindings.
  * Disk size = 1925708K. Space Used = 7852K.
  * The following NEW packages will be installed:
  ```bash
  alsa-base alsa-utils libasound2 libasound2-data libsamplerate0
  ```
* >>>>>>>>> Running inst-min-con-udevil-bpo.sh ...
  * After this operation, 290 MB of additional disk space will be used.
  * Disk size = 2250484K. Space Used = 324776K.
  * The following NEW packages will be installed:
  ```bash
  adwaita-icon-theme aspell aspell-en at-spi2-core colord colord-data
  dconf-gsettings-backend dconf-service dictionaries-common dosfstools eject
  emacsen-common enchant fontconfig fontconfig-config fonts-dejavu-core gdisk
  geoclue-2.0 glib-networking glib-networking-common glib-networking-services
  gsettings-desktop-schemas gstreamer1.0-plugins-base
  gstreamer1.0-plugins-good gstreamer1.0-x hicolor-icon-theme hunspell-en-us
  iso-codes krb5-locales libaa1 libaspell15 libatasmart4 libatk-bridge2.0-0
  libatk1.0-0 libatk1.0-data libatspi2.0-0 libavahi-client3
  libavahi-common-data libavahi-common3 libavc1394-0 libcaca0
  libcairo-gobject2 libcairo2 libcanberra-gtk3-0 libcanberra-gtk3-module
  libcanberra0 libcdparanoia0 libcolord2 libcolorhug2 libcroco3 libcups2
  libdatrie1 libdconf1 libdrm-intel1 libdrm-nouveau2 libdrm-radeon1 libdrm2
  libdv4 libelf1 libenchant1c2a libexif12 libfile-copy-recursive-perl libflac8
  libfontconfig1 libfreetype6 libgd3 libgdk-pixbuf2.0-0
  libgdk-pixbuf2.0-common libgl1-mesa-dri libgl1-mesa-glx libglapi-mesa
  libglu1-mesa libgphoto2-6 libgphoto2-l10n libgphoto2-port10
  libgphoto2-port12 libgpm2 libgraphite2-3 libgssapi-krb5-2
  libgstreamer-plugins-base1.0-0 libgstreamer1.0-0 libgtk-3-0 libgtk-3-bin
  libgtk-3-common libgudev-1.0-0 libgusb2 libharfbuzz-icu0 libharfbuzz0b
  libhunspell-1.3-0 libice6 libiec61883-0 libieee1284-3 libjack-jackd2-0
  libjasper1 libjavascriptcoregtk-3.0-0 libjbig0 libjim0.75 libjpeg62-turbo
  libjson-glib-1.0-0 libjson-glib-1.0-common libk5crypto3 libkeyutils1
  libkrb5-3 libkrb5support0 liblcms2-2 libllvm3.5 libltdl7 libmbim-glib4
  libmbim-proxy libmm-glib0 libnl-3-200 libnl-genl-3-200 libnotify4 libogg0
  libopus0 liborc-0.4-0 libpam-systemd libpango-1.0-0 libpangocairo-1.0-0
  libpangoft2-1.0-0 libparted2 libpciaccess0 libpcsclite1 libpixman-1-0
  libpng12-0 libpolkit-agent-1-0 libpolkit-backend-1-0 libpolkit-gobject-1-0
  libproxy1 libqmi-glib1 libqmi-proxy libraw1394-11 librest-0.7-0 librsvg2-2
  librsvg2-common libsane libsane-common libsane-extras libsane-extras-common
  libsecret-1-0 libsecret-common libshout3 libsm6 libsoup-gnome2.4-1
  libsoup2.4-1 libspeex1 libsqlite3-0 libtag1-vanilla libtag1c2a libtdb1
  libthai-data libthai0 libtheora0 libtiff5 libtxc-dxtn-s2tc0 libudisks2-0
  libv4l-0 libv4lconvert0 libvisual-0.4-0 libvisual-0.4-plugins libvorbis0a
  libvorbisenc2 libvorbisfile3 libvpx1 libwavpack1 libwayland-client0
  libwayland-cursor0 libwebkitgtk-3.0-0 libwebkitgtk-3.0-common libwebp5
  libx11-xcb1 libxcb-dri2-0 libxcb-dri3-0 libxcb-glx0 libxcb-present0
  libxcb-render0 libxcb-shm0 libxcb-sync1 libxcomposite1 libxcursor1
  libxdamage1 libxfixes3 libxinerama1 libxkbcommon0 libxpm4 libxrandr2
  libxrender1 libxshmfence1 libxslt1.1 libxt6 libxv1 libxxf86vm1 modemmanager
  notification-daemon parted pmount policykit-1 sane-utils udevil udisks2
  update-inetd usb-modeswitch usb-modeswitch-data wpasupplicant xkb-data
  zenity zenity-common
  ```
* >>>>>>>>> Running inst-min-win-00-xorg.sh ...
  * After this operation, 51.6 MB of additional disk space will be used.
  * Set keyboard to use US international.
  * Install minimum Xorg X server.
  * Install xinit so you can run startx.
  * Add auto start window manager(i.e startx).
  * Disk size = 2326832K. Space Used = 76348K.
  * The following NEW packages will be installed:
  ```bash
  keyboard-configuration libegl1-mesa libegl1-mesa-drivers libepoxy0 libevdev2
  libfontenc1 libgbm1 libmtdev1 libopenvg1-mesa libutempter0
  libwayland-egl1-mesa libwayland-server0 libxatracker2 libxaw7 libxcb-shape0
  libxcb-util0 libxcb-xfixes0 libxfont1 libxft2 libxkbfile1 libxmu6 libxmuu1
  libxvmc1 libxxf86dga1 x11-utils x11-xkb-utils xauth xbitmaps xfonts-base
  xfonts-encodings xfonts-utils xinit xserver-common xserver-xorg
  xserver-xorg-core xserver-xorg-input-all xserver-xorg-input-evdev
  xserver-xorg-input-mouse xserver-xorg-input-synaptics
  xserver-xorg-input-vmmouse xserver-xorg-input-wacom xserver-xorg-video-all
  xserver-xorg-video-ati xserver-xorg-video-cirrus xserver-xorg-video-fbdev
  xserver-xorg-video-intel xserver-xorg-video-mach64 xserver-xorg-video-mga
  xserver-xorg-video-modesetting xserver-xorg-video-neomagic
  xserver-xorg-video-nouveau xserver-xorg-video-openchrome
  xserver-xorg-video-qxl xserver-xorg-video-r128 xserver-xorg-video-radeon
  xserver-xorg-video-savage xserver-xorg-video-siliconmotion
  xserver-xorg-video-sisusb xserver-xorg-video-tdfx xserver-xorg-video-trident
  xserver-xorg-video-vesa xserver-xorg-video-vmware xterm
  ```
* >>>>>>>>> Running inst-min-win-01-wm-jwm.sh ...
  * After this operation, 430 kB of additional disk space will be used.
  * Disk size = 2327496K. Space Used = 664K.
  * The following NEW packages will be installed:
  ```bash
  jwm libfribidi0
  ```
* >>>>>>>>> Running inst-min-win-cld-dev-tools-pandoc.sh ...
  * After this operation, 39.0 MB of additional disk space will be used.
  * Install pandoc to generate user manual.
  * Disk size = 2370492K. Space Used = 42996K.
  * The following NEW packages will be installed:
  ```bash
  liblua5.1-0 libyaml-0-2 pandoc pandoc-data
  ```
* >>>>>>>>> Running inst-min-win-cld-win-split.sh ...
  * After this operation, 81.9 kB of additional disk space will be used.
  * Disk size = 2370604K. Space Used = 112K.
  * The following NEW packages will be installed:
  ```bash
  wmctrl
  ```
* >>>>>>>>> Running inst-min-win-jwm-help-manuals-text.sh ...
  * Disk size = 2370632K. Space Used = 28K.
* >>>>>>>>> Running inst-min-win-jwm-keys-alsa.sh ...
  * Disk size = 2370636K. Space Used = 4K.
* >>>>>>>>> Running inst-min-win-menu.sh ...
  * After this operation, 1,829 kB of additional disk space will be used.
  * Install menu, an easy way to get installed programs in the menu automatically.
  * Disk size = 2371908K. Space Used = 1272K.
  * The following NEW packages will be installed:
  ```bash
  menu
  ```
* >>>>>>>>> Running inst-min-win-systray-volumeicon-alsa.sh ...
  * Disk size = 2371924K. Space Used = 16K.
* >>>>>>>>> Running inst-std-00-jwm.sh ...
  * Disk size = 2371928K. Space Used = 4K.
* >>>>>>>>> Running inst-std-accessories-calc-speedcrunch.sh ...
  * After this operation, 25.9 MB of additional disk space will be used.
  * Install calculator: speedcrunch.
  * Insert speedcrunch in Accessories menu.
  * Disk size = 2405556K. Space Used = 33628K.
  * The following NEW packages will be installed:
  ```bash
  libaudio2 libmng1 libqt4-xml libqtcore4 libqtgui4 qtcore4-l10n speedcrunch
  ```
* >>>>>>>>> Running inst-std-accessories-feh.sh ...
  * After this operation, 5,380 kB of additional disk space will be used.
  * Install command line image viewer: feh.
  * Disk size = 2415332K. Space Used = 9776K.
  * The following NEW packages will be installed:
  ```bash
  ca-certificates feh libcurl3 libgif4 libid3tag0 libimlib2
  libjpeg-turbo-progs libldap-2.4-2 librtmp1 libsasl2-2 libsasl2-modules
  libsasl2-modules-db libssh2-1 libturbojpeg1 openssl
  ```
* >>>>>>>>> Running inst-std-accessories-gpicview.sh ...
  * After this operation, 55.9 MB of additional disk space will be used.
  * Install Image Viewer: gpicview.
  * Insert gpicview in Accessories menu.
  * Disk size = 2466540K. Space Used = 51208K.
  * The following NEW packages will be installed:
  ```bash
  cpp cpp-4.9 gpicview libauthen-sasl-perl libcloog-isl4 libencode-locale-perl
  libfile-basedir-perl libfile-desktopentry-perl libfile-listing-perl
  libfile-mimeinfo-perl libfont-afm-perl libgtk2.0-0 libgtk2.0-bin
  libgtk2.0-common libhtml-form-perl libhtml-format-perl libhtml-parser-perl
  libhtml-tagset-perl libhtml-tree-perl libhttp-cookies-perl
  libhttp-daemon-perl libhttp-date-perl libhttp-message-perl
  libhttp-negotiate-perl libio-html-perl libio-socket-ssl-perl libisl10
  liblwp-mediatypes-perl liblwp-protocol-https-perl libmailtools-perl libmpc3
  libmpfr4 libnet-dbus-perl libnet-http-perl libnet-smtp-ssl-perl
  libnet-ssleay-perl libtie-ixhash-perl libtimedate-perl liburi-perl
  libwww-perl libwww-robotrules-perl libx11-protocol-perl libxml-parser-perl
  libxml-twig-perl libxml-xpathengine-perl x11-xserver-utils xdg-utils
  ```
* >>>>>>>>> Running inst-std-accessories-mupdf.sh ...
  * After this operation, 12.0 MB of additional disk space will be used.
  * Install PDF reader: Mupdf.
  * Disk size = 2481900K. Space Used = 15360K.
  * The following NEW packages will be installed:
  ```bash
  libjbig2dec0 libopenjp2-7 mupdf
  ```
* >>>>>>>>> Running inst-std-accessories-prtscr-gnome-screenshot.sh ...
  * After this operation, 733 kB of additional disk space will be used.
  * Disk size = 2482220K. Space Used = 320K.
  * The following NEW packages will be installed:
  ```bash
  gnome-screenshot
  ```
* >>>>>>>>> Running inst-std-accessories-scite.sh ...
  * After this operation, 4,829 kB of additional disk space will be used.
  * Install Text Editor: SciTE.
  * Install at-spi2-core to shut up Accessibility warning message.
  * Insert SciTE in Accessories menu.
  * Disk size = 2488496K. Space Used = 6276K.
  * The following NEW packages will be installed:
  ```bash
  scite
  ```
* >>>>>>>>> Running inst-std-accessories-terminal-xfce.sh ...
  * After this operation, 11.2 MB of additional disk space will be used.
  * Install terminal: xfce4-terminal.
  * Disk size = 2497992K. Space Used = 9496K.
  * The following NEW packages will be installed:
  ```bash
  dbus-x11 exo-utils libdbus-glib-1-2 libexo-1-0 libexo-common libexo-helpers
  libpango1.0-0 libpangox-1.0-0 libpangoxft-1.0-0 libstartup-notification0
  libvte-common libvte9 libxfce4ui-1-0 libxfce4util-bin libxfce4util-common
  libxfce4util6 libxfconf-0-2 xfce-keyboard-shortcuts xfce4-terminal xfconf
  ```
* >>>>>>>>> Running inst-std-accessories-thunar.sh ...
  * After this operation, 46.0 MB of additional disk space will be used.
  * Disk size = 2538648K. Space Used = 40656K.
  * The following NEW packages will be installed:
  ```bash
  desktop-file-utils gvfs gvfs-common gvfs-daemons gvfs-libs libaacs0
  libbluray1 libgarcon-1-0 libgarcon-common libopenjpeg5 libpoppler-glib8
  libpoppler46 libtagc0 libthunarx-2-0 libtumbler-1-0 libwnck-common libwnck22
  libxres1 p7zip-full policykit-1-gnome poppler-data thunar
  thunar-archive-plugin thunar-data thunar-media-tags-plugin thunar-volman
  tumbler tumbler-common xarchiver xfce4-panel xz-utils
  ```
* >>>>>>>>> Running inst-std-accessories-xarchiver.sh ...
  * Install Archive Manager: xarchiver.
  * Disk size = 2538656K. Space Used = 8K.
* >>>>>>>>> Running inst-std-font-fonts-liberation.sh ...
  * After this operation, 2,178 kB of additional disk space will be used.
  * Install fonts-liberation to get free variants of the Times, Arial and Courier fonts.
  * Otherwise, install ttf-mscorefonts-installer to get Microsoft TrueType core fonts.
  * Disk size = 2541656K. Space Used = 3000K.
  * The following NEW packages will be installed:
  ```bash
  fonts-liberation
  ```
* >>>>>>>>> Running inst-std-graphic-pinta.sh ...
  * After this operation, 45.8 MB of additional disk space will be used.
  * Install Image Editor: Pinta.
  * Insert Pinta menu in Graphics.
  * Disk size = 2614208K. Space Used = 72552K.
  * The following NEW packages will be installed:
  ```bash
  binfmt-support cli-common gnome-icon-theme libgdiplus libglib2.0-cil
  libgtk2.0-cil libmono-addins-gui0.2-cil libmono-addins0.2-cil
  libmono-cairo4.0-cil libmono-corlib2.0-cil libmono-corlib4.5-cil
  libmono-i18n-west2.0-cil libmono-i18n-west4.0-cil libmono-i18n4.0-cil
  libmono-posix2.0-cil libmono-posix4.0-cil libmono-security2.0-cil
  libmono-security4.0-cil libmono-sharpzip4.84-cil
  libmono-system-configuration4.0-cil libmono-system-core4.0-cil
  libmono-system-drawing4.0-cil libmono-system-security4.0-cil
  libmono-system-xml4.0-cil libmono-system2.0-cil libmono-system4.0-cil
  mono-4.0-gac mono-gac mono-runtime mono-runtime-common mono-runtime-sgen
  pinta
  ```
* >>>>>>>>> Running inst-std-help-manuals-html.sh ...
  * Disk size = 2614216K. Space Used = 8K.
* >>>>>>>>> Running inst-std-internet-iceweasel-bpo.sh ...
  * After this operation, 109 MB of additional disk space will be used.
  * Disk size = 2769084K. Space Used = 154868K.
  * The following NEW packages will be installed:
  ```bash
  gstreamer1.0-libav iceweasel libevent-2.0-5
  ```
* >>>>>>>>> Running inst-std-multimedia-mpv.sh ...
  * After this operation, 89.7 MB of additional disk space will be used.
  * Install Media Player: mpv 0.8.3 .
  * Add multiple aliases for MPV.
  * Add useful mpv keybindings settings.
  * Disk size = 2893360K. Space Used = 124276K.
  * The following NEW packages will be installed:
  ```bash
  file i965-va-driver libaacplus2 libasn1-8-heimdal libass5 libasyncns0
  libavcodec56 libavdevice56 libavfilter5 libavformat56 libavresample2
  libavutil54 libbs2b0 libcdio-cdda1 libcdio-paranoia1 libcdio13 libcrystalhd3
  libdc1394-22 libdirectfb-1.2-9 libdvdnav4 libdvdread4 libenca0 libfaac0
  libfdk-aac1 libgsm1 libgssapi3-heimdal libguess1 libhcrypto4-heimdal
  libheimbase1-heimdal libheimntlm0-heimdal libhx509-5-heimdal
  libkrb5-26-heimdal libldb1 liblircclient0 liblua5.2-0 libmagic1
  libmowgli-2-0 libmp3lame0 libmpg123-0 libntdb1 libopenal-data libopenal1
  libopencore-amrnb0 libopencore-amrwb0 libpostproc53 libpulse0
  libpython-stdlib libpython2.7 libpython2.7-minimal libpython2.7-stdlib
  libroken18-heimdal libschroedinger-1.0-0 libsdl1.2debian libsmbclient
  libsndfile1 libswresample1 libswscale3 libtalloc2 libtevent0 libutvideo15
  libva-glx1 libva-x11-1 libva1 libvdpau1 libvidstab1.0 libvo-aacenc0
  libvo-amrwbenc0 libwbclient0 libwind0-heimdal libwrap0 libx264-146
  libx265-51 libxss1 libxvidcore4 libzvbi-common libzvbi0 mesa-vdpau-drivers
  mime-support mpv python python-minimal python-talloc python2.7
  python2.7-minimal samba-libs tcpd va-driver-all vdpau-va-driver
  ```
* >>>>>>>>> Running inst-std-office-libreoffice-bpo.sh ...
  * After this operation, 314 MB of additional disk space will be used.
  * After this operation, 43.9 MB of additional disk space will be used.
  * After this operation, 16.7 MB of additional disk space will be used.
  * After this operation, 127 MB of additional disk space will be used.
  * Install LibreOffice 5.0.4.2 00m0(Build:2).
  * Install Office Suite: Word processor.
  * Install Office Suite: Spreadsheet.
  * Install Office Suite: Presentation.
  * Install Office Suite: Drawing.
  * Install Office Suite: Database.
  * Install Office Suite: Equation.
  * https://wiki.documentfoundation.org/ReleasePlan
  * Disk size = 3573864K. Space Used = 680504K.
  * The following NEW packages will be installed:
  ```bash
  dh-python fonts-opensymbol libabw-0.1-1 libboost-date-time1.55.0
  libclucene-contribs1 libclucene-core1 libcurl3-gnutls libe-book-0.1-1
  libeot0 libexttextcat-2.0-0 libexttextcat-data libglew1.10 libhyphen0
  liblangtag-common liblangtag1 libmhash2 libmpdec2 libmythes-1.2-0
  libneon27-gnutls libnspr4 libnss3 libodfgen-0.1-1 libpython3-stdlib
  libpython3.4 libpython3.4-minimal libpython3.4-stdlib libraptor2-0
  librasqal3 librdf0 libreoffice-base-core libreoffice-common libreoffice-core
  libreoffice-math libreoffice-style-galaxy libreoffice-writer
  librevenge-0.0-0 libwpd-0.10-10 libwpg-0.3-3 libyajl2 python3
  python3-minimal python3-uno python3.4 python3.4-minimal uno-libs3 ure
  coinor-libcbc3 coinor-libcgl1 coinor-libclp1 coinor-libcoinmp1
  coinor-libcoinutils3 coinor-libosi1 libblas-common libblas3
  libboost-system1.55.0 libcolamd2.8.0 libgfortran3 liblapack3 libquadmath0
  libreoffice-calc lp-solve
  libcdr-0.1-1 libfreehand-0.1-1 libmspub-0.1-1 libpagemaker-0.0-0
  libreoffice-avmedia-backend-gstreamer libreoffice-draw libreoffice-impress
  libvisio-0.1-1
  ca-certificates-java default-jre default-jre-headless firebird2.5-common
  firebird2.5-common-doc firebird2.5-server-common fonts-dejavu-extra
  gconf-service gconf2 gconf2-common gnome-mime-data java-common
  libatk-wrapper-java libatk-wrapper-java-jni libavahi-glib1 libbonobo2-0
  libbonobo2-common libfbclient2 libfbembed2.5 libgconf-2-4 libgconf2-4
  libgnome-2-0 libgnome2-0 libgnome2-bin libgnome2-common libgnomevfs2-0
  libgnomevfs2-common libgnomevfs2-extra libhsqldb1.8.0-java liborbit-2-0
  libreoffice-base libreoffice-base-drivers libreoffice-java-common
  libreoffice-sdbc-firebird libreoffice-sdbc-hsqldb libsctp1
  libservlet2.5-java lksctp-tools openjdk-7-jre openjdk-7-jre-headless psmisc
  tzdata-java
  ```
* >>>>>>>>> Running inst-std-system-alsamixer.sh ...
  * Disk size = 3573868K. Space Used = 4K.
* >>>>>>>>> Running inst-std-system-conky.sh ...
  * After this operation, 967 kB of additional disk space will be used.
  * Disk size = 3575188K. Space Used = 1320K.
  * The following NEW packages will be installed:
  ```bash
  conky conky-std libiw30
  ```
* >>>>>>>>> Running inst-std-system-gnome-disk-utility.sh ...
  * After this operation, 7,803 kB of additional disk space will be used.
  * Disk size = 3579676K. Space Used = 4488K.
  * The following NEW packages will be installed:
  ```bash
  cracklib-runtime gnome-disk-utility libcrack2 libpwquality-common
  libpwquality1 wamerican
  ```
* >>>>>>>>> Running inst-std-system-keyboard.sh ...
  * Disk size = 3579684K. Space Used = 8K.
* >>>>>>>>> Running inst-std-system-monitor-switcher-lxrandr.sh ...
  * After this operation, 779 kB of additional disk space will be used.
  * Disk size = 3579828K. Space Used = 144K.
  * The following NEW packages will be installed:
  ```bash
  lxrandr
  ```
* >>>>>>>>> Running inst-std-system-network-wicd.sh ...
  * After this operation, 31.5 MB of additional disk space will be used.
  * Disk size = 3623232K. Space Used = 43404K.
  * The following NEW packages will be installed:
  ```bash
  gcr gir1.2-glib-2.0 gksu gnome-keyring libgck-1-0 libgcr-3-common
  libgcr-base-3-1 libgcr-ui-3-1 libgirepository-1.0-1 libgksu2-0 libglade2-0
  libgnome-keyring-common libgnome-keyring0 libgtop2-7 libgtop2-common
  libpam-gnome-keyring p11-kit p11-kit-modules python-cairo python-dbus
  python-dbus-dev python-gi python-glade2 python-gobject python-gobject-2
  python-gtk2 python-notify python-numpy python-support python-wicd rfkill
  sudo wicd wicd-daemon wicd-gtk wireless-tools
  ```
* >>>>>>>>> Running inst-std-system-time-zone.sh ...
  * Disk size = 3623236K. Space Used = 4K.
* >>>>>>>>> Running inst-zclean-00-remove-block-services.sh ...
  * Remove block services from starting after they are being installed.
  * Disk size = 3623236K. Space Used = 0K.
* >>>>>>>>> Running inst-zclean-00-zerosizing-docs.sh ...
  * Zero size all documents in /usr/share/.
  * Disk size = 3519028K. Space Used = -104208K.
* >>>>>>>>> Running inst-zclean-99-end-cleanup.sh ...
  * Clean apt-get cache.
  * rm -rf /tmp/*.
  * Umount /sys, /dev/pts and /proc.
  * Add Debian main repositories in sources.list.
  * Delete local Debian repository from sources.list.
  * Disk size = 2933008K. Space Used = -586020K.
