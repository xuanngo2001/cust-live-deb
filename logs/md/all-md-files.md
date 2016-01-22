* >>>>>>>>> Running install.sh ...
  * Running on SHELL=/bin/bash VER=4.3.30(1)-release
  * Disk size = 1380640K. Space Used = 1380640K.
* >>>>>>>>> Running inst-min-con-00-apt-custom-repository.sh ...
  * Disk size = 1380656K. Space Used = 16K.
* >>>>>>>>> Running inst-min-con-00-linux-image.sh ...
  * After this operation, 304 kB of additional disk space will be used.
  * After this operation, 3111 kB of additional disk space will be used.
  * After this operation, 225 MB of additional disk space will be used.
  * Mount /proc, /sys and /dev/pts.
  * Generate dbus-uuidgen to /var/lib/dbus/machine-id.
  * Install Linux image: 3.16.0-4-amd64.
  * Disk size = 1782588K. Space Used = 401932K.
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
  * Disk size = 1782596K. Space Used = 8K.
* >>>>>>>>> Running inst-min-con-01-debconf-utils.sh ...
  * After this operation, 157 kB of additional disk space will be used.
  * Install debconf-utils to use debconf-set-selections.
  * Disk size = 1782832K. Space Used = 236K.
  * The following NEW packages will be installed:
  ```bash
  debconf-utils
  ```
* >>>>>>>>> Running inst-min-con-02-localepurge.sh ...
  * After this operation, 334 kB of additional disk space will be used.
  * Install localepurge to purge documentation of all languages, except en, en_US, en_US.UTF-8.
  * Reconfigure localepurge: dpkg-reconfigure localepurge
  * Disk size = 1806320K. Space Used = 752K.
  * The following NEW packages will be installed:
  ```bash
  localepurge ucf
  ```
* >>>>>>>>> Running inst-min-con-02-locale.sh ...
  * After this operation, 16.3 MB of additional disk space will be used.
  * Install locale and set it to use en_US.UTF-8.
  * Disk size = 1805568K. Space Used = 22736K.
  * The following NEW packages will be installed:
  ```bash
  locales
  ```
* >>>>>>>>> Running inst-min-con-03-startup-script.sh ...
  * Copy startup.sh to /etc/init.d/.
  * Make it executable.
  * Register it in the boot sequence.
  * Disk size = 1806328K. Space Used = 8K.
* >>>>>>>>> Running inst-min-con-04-block-services-start-postinstall.sh ...
  * Block services from starting after they are being installed.
  * Disk size = 1806336K. Space Used = 8K.
* >>>>>>>>> Running inst-min-con-auto-log-root.sh ...
  * Disk size = 1806348K. Space Used = 12K.
* >>>>>>>>> Running inst-min-con-bashrc.sh ...
  * Set common settings for /root/.bashrc.
  * Set dircolors to use dircolors-gnu-ls-colors.txt to make ls more beautiful.
  * Disk size = 1806360K. Space Used = 12K.
* >>>>>>>>> Running inst-min-con-cld-dev-tools-debootstrap.sh ...
  * After this operation, 234 kB of additional disk space will be used.
  * Install debootstrap allows the creation of a Debian base system in a directory.
  * Disk size = 1806680K. Space Used = 320K.
  * The following NEW packages will be installed:
  ```bash
  debootstrap
  ```
* >>>>>>>>> Running inst-min-con-cld-tools.sh ...
  * Disk size = 1806728K. Space Used = 48K.
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
  * Disk size = 1810740K. Space Used = 4012K.
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
  * Disk size = 1812004K. Space Used = 1264K.
* >>>>>>>>> Running inst-min-con-filesystem-exfat.sh ...
  * After this operation, 784 kB of additional disk space will be used.
  * Install exfat-fuse so that you can read and write SD cards and USB keys.
  * Disk size = 1813188K. Space Used = 1184K.
  * The following NEW packages will be installed:
  ```bash
  exfat-fuse exfat-utils fuse libfuse2
  ```
* >>>>>>>>> Running inst-min-con-filesystem-ntfs-3g.sh ...
  * After this operation, 1,632 kB of additional disk space will be used.
  * Install support for NTFS: ntfs-3g.
  * Disk size = 1815352K. Space Used = 2164K.
  * The following NEW packages will be installed:
  ```bash
  ntfs-3g
  ```
* >>>>>>>>> Running inst-min-con-firmware-cpu.sh ...
  * After this operation, 47.1 kB of additional disk space will be used.
  * After this operation, 655 kB of additional disk space will be used.
  * Install CPU firmware: amd64-microcode.
  * Install CPU firmware: intel-microcode.
  * Disk size = 1816696K. Space Used = 1344K.
  * The following NEW packages will be installed:
  ```bash
  amd64-microcode
  intel-microcode iucode-tool
  ```
* >>>>>>>>> Running inst-min-con-firmware-net-b43-installer.sh ...
  * After this operation, 100 kB of additional disk space will be used.
  * Install b43 for Dell Wireless 1397 WLAN Mini-Card Driver.
  * Disk size = 1854408K. Space Used = 37712K.
  * The following NEW packages will be installed:
  ```bash
  b43-fwcutter
  ```
* >>>>>>>>> Running inst-min-con-firmware.sh ...
  * After this operation, 41.7 MB of additional disk space will be used.
  * Install firmwares: atmel-firmware, bluez-firmware, firmware-atheros, firmware-bnx2, firmware-bnx2x, firmware-brcm80211, firmware-intelwimax, firmware-ipw2x00, firmware-ivtv, firmware-iwlwifi, firmware-libertas, firmware-linux, firmware-linux-free, firmware-linux-nonfree, firmware-qlogic, firmware-ralink, firmware-realtek, zd1211-firmware.
  * Disk size = 1908112K. Space Used = 53704K.
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
  * Disk size = 1916848K. Space Used = 8736K.
  * The following NEW packages will be installed:
  ```bash
  isolinux syslinux-common
  libburn4 libisoburn1 libisofs6 libjte1 xorriso
  liblzo2-2 squashfs-tools
  ```
* >>>>>>>>> Running inst-min-con-mtp-tools.sh ...
  * After this operation, 2,168 kB of additional disk space will be used.
  * Install mtp-tools to mount smartphones.
  * Disk size = 1919520K. Space Used = 2672K.
  * The following NEW packages will be installed:
  ```bash
  libmtp-common libmtp-runtime libmtp9 libusb-1.0-0 mtp-tools
  ```
* >>>>>>>>> Running inst-min-con-ntp.sh ...
  * After this operation, 1,871 kB of additional disk space will be used.
  * Install Network Time Protocol: ntp.
  * Disk size = 1922024K. Space Used = 2504K.
  * The following NEW packages will be installed:
  ```bash
  libbsd0 libedit2 libopts25 ntp
  ```
* >>>>>>>>> Running inst-min-con-numlock.sh ...
  * After this operation, 4,381 kB of additional disk space will be used.
  * Install numlockx to turn on NumLock on boot.
  * Disk size = 1928540K. Space Used = 6516K.
  * The following NEW packages will be installed:
  ```bash
  libx11-6 libx11-data libxau6 libxcb1 libxdmcp6 libxext6 libxi6 libxtst6
  numlockx x11-common
  ```
* >>>>>>>>> Running inst-min-con-pciutils.sh ...
  * After this operation, 1,181 kB of additional disk space will be used.
  * Install pciutils to troubleshoot pci devices(i.e. lspci).
  * Disk size = 1930108K. Space Used = 1568K.
  * The following NEW packages will be installed:
  ```bash
  libpci3 pciutils
  ```
* >>>>>>>>> Running inst-min-con-snd-alsa.sh ...
  * After this operation, 5,270 kB of additional disk space will be used.
  * Install ALSA sound.
  * Test sound: aplay /usr/share/sounds/alsa/*.
  * Add key bindings.
  * Disk size = 1937956K. Space Used = 7848K.
  * The following NEW packages will be installed:
  ```bash
  alsa-base alsa-utils libasound2 libasound2-data libsamplerate0
  ```
* >>>>>>>>> Running inst-min-con-udevil-bpo.sh ...
  * After this operation, 290 MB of additional disk space will be used.
  * Disk size = 2262728K. Space Used = 324772K.
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
* >>>>>>>>> Running inst-min-con-xtra-buffer-pv.sh ...
  * After this operation, 166 kB of additional disk space will be used.
  * Install pv.
  * Disk size = 2262880K. Space Used = 152K.
  * The following NEW packages will be installed:
  ```bash
  pv
  ```
* >>>>>>>>> Running inst-min-con-xtra-buffer.sh ...
  * After this operation, 71.7 kB of additional disk space will be used.
  * Install buffer.
  * Disk size = 2262960K. Space Used = 80K.
  * The following NEW packages will be installed:
  ```bash
  buffer
  ```
* >>>>>>>>> Running inst-min-con-xtra-curl.sh ...
  * After this operation, 3,664 kB of additional disk space will be used.
  * Install curl.
  * Disk size = 2270196K. Space Used = 7236K.
  * The following NEW packages will be installed:
  ```bash
  ca-certificates curl libcurl3 libldap-2.4-2 librtmp1 libsasl2-2
  libsasl2-modules-db libssh2-1 openssl
  ```
* >>>>>>>>> Running inst-min-con-xtra-dev-tool-java-jdk.sh ...
  * After this operation, 194 MB of additional disk space will be used.
  * Install JAVA JDK: default-jdk.
  * Disk size = 2550124K. Space Used = 279928K.
  * The following NEW packages will be installed:
  ```bash
  ca-certificates-java dbus-x11 default-jdk default-jre default-jre-headless
  file fonts-dejavu-extra gconf-service gconf2 gconf2-common gnome-mime-data
  java-common libasyncns0 libatk-wrapper-java libatk-wrapper-java-jni
  libavahi-glib1 libbonobo2-0 libbonobo2-common libdbus-glib-1-2 libgconf-2-4
  libgconf2-4 libgif4 libgnome-2-0 libgnome2-0 libgnome2-bin libgnome2-common
  libgnomevfs2-0 libgnomevfs2-common libgnomevfs2-extra libgtk2.0-0
  libgtk2.0-bin libgtk2.0-common libice-dev libmagic1 libnspr4 libnss3
  liborbit-2-0 libpthread-stubs0-dev libpulse0 libpython-stdlib
  libpython2.7-minimal libpython2.7-stdlib libsctp1 libsm-dev libsndfile1
  libwrap0 libx11-dev libx11-doc libxau-dev libxcb1-dev libxdmcp-dev libxt-dev
  lksctp-tools mime-support openjdk-7-jdk openjdk-7-jre openjdk-7-jre-headless
  psmisc python python-minimal python2.7 python2.7-minimal tcpd tzdata-java
  x11proto-core-dev x11proto-input-dev x11proto-kb-dev xorg-sgml-doctools
  xtrans-dev
  ```
* >>>>>>>>> Running inst-min-con-xtra-dev-tool-tree.sh ...
  * After this operation, 102 kB of additional disk space will be used.
  * Install tree to display files and directories structure.
  * Disk size = 2550324K. Space Used = 200K.
  * The following NEW packages will be installed:
  ```bash
  tree
  ```
* >>>>>>>>> Running inst-min-con-xtra-gnuplot.sh ...
  * After this operation, 31.1 MB of additional disk space will be used.
  * Install gnuplot.
  * Disk size = 2590456K. Space Used = 40132K.
  * The following NEW packages will be installed:
  ```bash
  aglfn gnuplot gnuplot-data gnuplot-qt gnuplot-tex libaudio2 liblua5.1-0
  libmng1 libqt4-network libqt4-svg libqt4-xml libqtcore4 libqtdbus4 libqtgui4
  qtcore4-l10n
  ```
* >>>>>>>>> Running inst-min-con-xtra-imagemagick.sh ...
  * After this operation, 67.6 MB of additional disk space will be used.
  * Install imagemagick to process image from command line.
  * Disk size = 2679240K. Space Used = 88784K.
  * The following NEW packages will be installed:
  ```bash
  fonts-droid ghostscript gsfonts imagemagick imagemagick-6.q16
  imagemagick-common libcupsfilters1 libcupsimage2 libdjvulibre-text
  libdjvulibre21 libfftw3-double3 libgomp1 libgs9 libgs9-common libijs-0.35
  libilmbase6 libjbig2dec0 liblqr-1-0 libmagickcore-6.q16-2
  libmagickcore-6.q16-2-extra libmagickwand-6.q16-2 libnetpbm10 libopenexr6
  libpaper-utils libpaper1 libwmf0.2-7 netpbm poppler-data
  ```
* >>>>>>>>> Running inst-min-con-xtra-iso-iat.sh ...
  * After this operation, 65.5 kB of additional disk space will be used.
  * Install iat to convert BIN, MDF, PDI, CDI, NRG, and B5I into ISO-9660.
  * Disk size = 2679300K. Space Used = 60K.
  * The following NEW packages will be installed:
  ```bash
  iat
  ```
* >>>>>>>>> Running inst-min-con-xtra-java-jre.sh ...
  * Install JAVA JRE: default-jre.
  * Disk size = 2679304K. Space Used = 4K.
* >>>>>>>>> Running inst-min-con-xtra-locate.sh ...
  * After this operation, 324 kB of additional disk space will be used.
  * Install locate to generate an index of files and directories. Searching for files will be much faster.
  * Add locate alias.
  * Run updatedb to update the database.
  * Disk size = 2679872K. Space Used = 568K.
  * The following NEW packages will be installed:
  ```bash
  locate
  ```
* >>>>>>>>> Running inst-min-con-xtra-macchanger.sh ...
  * After this operation, 622 kB of additional disk space will be used.
  * Install macchanger.
  * Set macchanger to change MAC address whenever network device is up or down.
  * To configure macchanger: dpkg-reconfigure macchanger.
  * Check whether it is working: macchanger -s eth0.
  * systemctl status macchanger@eth0.service
  * Disk size = 2680756K. Space Used = 884K.
  * The following NEW packages will be installed:
  ```bash
  macchanger
  ```
* >>>>>>>>> Running inst-min-con-xtra-mariadb-server.sh ...
  * After this operation, 134 MB of additional disk space will be used.
  * Disk size = 2937916K. Space Used = 257160K.
  * The following NEW packages will be installed:
  ```bash
  libaio1 libdbd-mysql-perl libdbi-perl libhtml-template-perl libmysqlclient18
  libreadline5 libterm-readkey-perl mariadb-client-10.0
  mariadb-client-core-10.0 mariadb-common mariadb-server mariadb-server-10.0
  mariadb-server-core-10.0 mysql-common
  ```
* >>>>>>>>> Running inst-min-con-xtra-mtran.sh ...
  * Copied /root/scripts/repository/inst-min-con-xtra-mtran/mtran.sh to /usr/local/bin/.
  * Disk size = 2937924K. Space Used = 8K.
* >>>>>>>>> Running inst-min-con-xtra-pdf-poppler-utils.sh ...
  * After this operation, 4,134 kB of additional disk space will be used.
  * Install poppler-utils to extract text from pdf files.
  * Disk size = 2943452K. Space Used = 5528K.
  * The following NEW packages will be installed:
  ```bash
  libopenjpeg5 libpoppler46 poppler-utils
  ```
* >>>>>>>>> Running inst-min-con-xtra-php5.sh ...
  * After this operation, 27.9 MB of additional disk space will be used.
  * Install php5.
  * Disk size = 2980532K. Space Used = 37080K.
  * The following NEW packages will be installed:
  ```bash
  apache2 apache2-bin apache2-data apache2-utils libapache2-mod-php5 libapr1
  libaprutil1 libaprutil1-dbd-sqlite3 libaprutil1-ldap libonig2
  libperl4-corelibs-perl libqdbm14 lsof php5 php5-cli php5-common php5-json
  ssl-cert
  ```
* >>>>>>>>> Running inst-min-con-xtra-timezone.sh ...
  * Set time zone to EST (America/Montreal) in /etc/timezone.
  * Disk size = 2980536K. Space Used = 4K.
* >>>>>>>>> Running inst-min-win-00-xorg.sh ...
  * After this operation, 51.6 MB of additional disk space will be used.
  * Set keyboard to use US international.
  * Install minimum Xorg X server.
  * Install xinit so you can run startx.
  * Add auto start window manager(i.e startx).
  * Disk size = 3056884K. Space Used = 76348K.
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
  * Disk size = 3057564K. Space Used = 680K.
  * The following NEW packages will be installed:
  ```bash
  jwm libfribidi0
  ```
* >>>>>>>>> Running inst-min-win-cld-dev-tools-pandoc.sh ...
  * After this operation, 38.6 MB of additional disk space will be used.
  * Install pandoc to generate user manual.
  * Disk size = 3100044K. Space Used = 42480K.
  * The following NEW packages will be installed:
  ```bash
  libyaml-0-2 pandoc pandoc-data
  ```
* >>>>>>>>> Running inst-min-win-cld-win-split.sh ...
  * After this operation, 81.9 kB of additional disk space will be used.
  * Disk size = 3100140K. Space Used = 96K.
  * The following NEW packages will be installed:
  ```bash
  wmctrl
  ```
* >>>>>>>>> Running inst-min-win-jwm-help-manuals-text.sh ...
  * Disk size = 3100168K. Space Used = 28K.
* >>>>>>>>> Running inst-min-win-jwm-keys-alsa.sh ...
  * Disk size = 3100172K. Space Used = 4K.
* >>>>>>>>> Running inst-min-win-menu.sh ...
  * After this operation, 1,829 kB of additional disk space will be used.
  * Install menu, an easy way to get installed programs in the menu automatically.
  * Disk size = 3101448K. Space Used = 1276K.
  * The following NEW packages will be installed:
  ```bash
  menu
  ```
* >>>>>>>>> Running inst-min-win-systray-volumeicon-alsa.sh ...
  * Disk size = 3101464K. Space Used = 16K.
* >>>>>>>>> Running inst-min-xtra-encoding-libtext-iconv-perl.sh ...
  * Install libtext-iconv-perl so that you can use iconv to convert to other encoding.
  * Disk size = 3101468K. Space Used = 4K.
* >>>>>>>>> Running inst-min-xtra-fonts-asian.sh ...
  * After this operation, 48.2 MB of additional disk space will be used.
  * Install fonts-hanazono to display Asian characters correctly.
  * Test it by opening website http://ctext.org/zh.
  * Disk size = 3167460K. Space Used = 65992K.
  * The following NEW packages will be installed:
  ```bash
  fonts-hanazono
  ```
* >>>>>>>>> Running inst-std-00-jwm.sh ...
  * Disk size = 3167464K. Space Used = 4K.
* >>>>>>>>> Running inst-std-accessories-calc-speedcrunch.sh ...
  * After this operation, 1,830 kB of additional disk space will be used.
  * Install calculator: speedcrunch.
  * Insert speedcrunch in Accessories menu.
  * Disk size = 3170608K. Space Used = 3144K.
  * The following NEW packages will be installed:
  ```bash
  speedcrunch
  ```
* >>>>>>>>> Running inst-std-accessories-feh.sh ...
  * After this operation, 1,750 kB of additional disk space will be used.
  * Install command line image viewer: feh.
  * Disk size = 3173124K. Space Used = 2516K.
  * The following NEW packages will be installed:
  ```bash
  feh libid3tag0 libimlib2 libjpeg-turbo-progs libturbojpeg1
  ```
* >>>>>>>>> Running inst-std-accessories-gpicview.sh ...
  * After this operation, 28.7 MB of additional disk space will be used.
  * Install Image Viewer: gpicview.
  * Insert gpicview in Accessories menu.
  * Disk size = 3210888K. Space Used = 37764K.
  * The following NEW packages will be installed:
  ```bash
  cpp cpp-4.9 gpicview libauthen-sasl-perl libcloog-isl4 libencode-locale-perl
  libfile-basedir-perl libfile-desktopentry-perl libfile-listing-perl
  libfile-mimeinfo-perl libfont-afm-perl libhtml-form-perl libhtml-format-perl
  libhtml-parser-perl libhtml-tagset-perl libhtml-tree-perl
  libhttp-cookies-perl libhttp-daemon-perl libhttp-date-perl
  libhttp-message-perl libhttp-negotiate-perl libio-html-perl
  libio-socket-ssl-perl libisl10 liblwp-mediatypes-perl
  liblwp-protocol-https-perl libmailtools-perl libmpc3 libmpfr4
  libnet-dbus-perl libnet-http-perl libnet-smtp-ssl-perl libnet-ssleay-perl
  libtie-ixhash-perl libtimedate-perl liburi-perl libwww-perl
  libwww-robotrules-perl libx11-protocol-perl libxml-parser-perl
  libxml-twig-perl libxml-xpathengine-perl x11-xserver-utils xdg-utils
  ```
* >>>>>>>>> Running inst-std-accessories-mupdf.sh ...
  * After this operation, 11.9 MB of additional disk space will be used.
  * Install PDF reader: Mupdf.
  * Disk size = 3226044K. Space Used = 15156K.
  * The following NEW packages will be installed:
  ```bash
  libopenjp2-7 mupdf
  ```
* >>>>>>>>> Running inst-std-accessories-prtscr-gnome-screenshot.sh ...
  * After this operation, 733 kB of additional disk space will be used.
  * Disk size = 3226368K. Space Used = 324K.
  * The following NEW packages will be installed:
  ```bash
  gnome-screenshot
  ```
* >>>>>>>>> Running inst-std-accessories-scite.sh ...
  * After this operation, 4,829 kB of additional disk space will be used.
  * Install Text Editor: SciTE.
  * Install at-spi2-core to shut up Accessibility warning message.
  * Insert SciTE in Accessories menu.
  * Disk size = 3232648K. Space Used = 6280K.
  * The following NEW packages will be installed:
  ```bash
  scite
  ```
* >>>>>>>>> Running inst-std-accessories-terminal-xfce.sh ...
  * After this operation, 10.8 MB of additional disk space will be used.
  * Install terminal: xfce4-terminal.
  * Disk size = 3241344K. Space Used = 8696K.
  * The following NEW packages will be installed:
  ```bash
  exo-utils libexo-1-0 libexo-common libexo-helpers libpango1.0-0
  libpangox-1.0-0 libpangoxft-1.0-0 libstartup-notification0 libvte-common
  libvte9 libxfce4ui-1-0 libxfce4util-bin libxfce4util-common libxfce4util6
  libxfconf-0-2 xfce-keyboard-shortcuts xfce4-terminal xfconf
  ```
* >>>>>>>>> Running inst-std-accessories-thunar.sh ...
  * After this operation, 30.3 MB of additional disk space will be used.
  * Disk size = 3263308K. Space Used = 21964K.
  * The following NEW packages will be installed:
  ```bash
  desktop-file-utils gvfs gvfs-common gvfs-daemons gvfs-libs libaacs0
  libbluray1 libgarcon-1-0 libgarcon-common libpoppler-glib8 libtagc0
  libthunarx-2-0 libtumbler-1-0 libwnck-common libwnck22 libxres1 p7zip-full
  policykit-1-gnome thunar thunar-archive-plugin thunar-data
  thunar-media-tags-plugin thunar-volman tumbler tumbler-common xarchiver
  xfce4-panel xz-utils
  ```
* >>>>>>>>> Running inst-std-accessories-xarchiver.sh ...
  * Install Archive Manager: xarchiver.
  * Disk size = 3263312K. Space Used = 4K.
* >>>>>>>>> Running inst-std-font-fonts-liberation.sh ...
  * After this operation, 2,178 kB of additional disk space will be used.
  * Install fonts-liberation to get free variants of the Times, Arial and Courier fonts.
  * Otherwise, install ttf-mscorefonts-installer to get Microsoft TrueType core fonts.
  * Disk size = 3266324K. Space Used = 3012K.
  * The following NEW packages will be installed:
  ```bash
  fonts-liberation
  ```
* >>>>>>>>> Running inst-std-graphic-pinta.sh ...
  * After this operation, 45.8 MB of additional disk space will be used.
  * Install Image Editor: Pinta.
  * Insert Pinta menu in Graphics.
  * Disk size = 3338880K. Space Used = 72556K.
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
  * Disk size = 3338884K. Space Used = 4K.
* >>>>>>>>> Running inst-std-internet-iceweasel-bpo.sh ...
  * After this operation, 109 MB of additional disk space will be used.
  * Disk size = 3493760K. Space Used = 154876K.
  * The following NEW packages will be installed:
  ```bash
  gstreamer1.0-libav iceweasel libevent-2.0-5
  ```
* >>>>>>>>> Running inst-std-multimedia-mpv.sh ...
  * After this operation, 68.4 MB of additional disk space will be used.
  * Install Media Player: mpv 0.8.3 .
  * Add multiple aliases for MPV.
  * Add useful mpv keybindings settings.
  * Disk size = 3581896K. Space Used = 88136K.
  * The following NEW packages will be installed:
  ```bash
  i965-va-driver libaacplus2 libasn1-8-heimdal libass5 libavcodec56
  libavdevice56 libavfilter5 libavformat56 libavresample2 libavutil54 libbs2b0
  libcdio-cdda1 libcdio-paranoia1 libcdio13 libcrystalhd3 libdc1394-22
  libdirectfb-1.2-9 libdvdnav4 libdvdread4 libenca0 libfaac0 libfdk-aac1
  libgsm1 libgssapi3-heimdal libguess1 libhcrypto4-heimdal
  libheimbase1-heimdal libheimntlm0-heimdal libhx509-5-heimdal
  libkrb5-26-heimdal libldb1 liblircclient0 liblua5.2-0 libmowgli-2-0
  libmp3lame0 libmpg123-0 libntdb1 libopenal-data libopenal1
  libopencore-amrnb0 libopencore-amrwb0 libpostproc53 libpython2.7
  libroken18-heimdal libschroedinger-1.0-0 libsdl1.2debian libsmbclient
  libswresample1 libswscale3 libtalloc2 libtevent0 libutvideo15 libva-glx1
  libva-x11-1 libva1 libvdpau1 libvidstab1.0 libvo-aacenc0 libvo-amrwbenc0
  libwbclient0 libwind0-heimdal libx264-146 libx265-51 libxss1 libxvidcore4
  libzvbi-common libzvbi0 mesa-vdpau-drivers mpv python-talloc samba-libs
  va-driver-all vdpau-va-driver
  ```
* >>>>>>>>> Running inst-std-office-libreoffice-bpo.sh ...
  * After this operation, 310 MB of additional disk space will be used.
  * After this operation, 43.9 MB of additional disk space will be used.
  * After this operation, 16.7 MB of additional disk space will be used.
  * After this operation, 26.7 MB of additional disk space will be used.
  * Install LibreOffice 5.0.4.2 00m0(Build:2).
  * Install Office Suite: Word processor.
  * Install Office Suite: Spreadsheet.
  * Install Office Suite: Presentation.
  * Install Office Suite: Drawing.
  * Install Office Suite: Database.
  * Install Office Suite: Equation.
  * https://wiki.documentfoundation.org/ReleasePlan
  * Disk size = 4094712K. Space Used = 512816K.
  * The following NEW packages will be installed:
  ```bash
  dh-python fonts-opensymbol libabw-0.1-1 libboost-date-time1.55.0
  libclucene-contribs1 libclucene-core1 libcurl3-gnutls libe-book-0.1-1
  libeot0 libexttextcat-2.0-0 libexttextcat-data libglew1.10 libhyphen0
  liblangtag-common liblangtag1 libmhash2 libmpdec2 libmythes-1.2-0
  libneon27-gnutls libodfgen-0.1-1 libpython3-stdlib libpython3.4
  libpython3.4-minimal libpython3.4-stdlib libraptor2-0 librasqal3 librdf0
  libreoffice-base-core libreoffice-common libreoffice-core libreoffice-math
  libreoffice-style-galaxy libreoffice-writer librevenge-0.0-0 libwpd-0.10-10
  libwpg-0.3-3 libyajl2 python3 python3-minimal python3-uno python3.4
  python3.4-minimal uno-libs3 ure
  coinor-libcbc3 coinor-libcgl1 coinor-libclp1 coinor-libcoinmp1
  coinor-libcoinutils3 coinor-libosi1 libblas-common libblas3
  libboost-system1.55.0 libcolamd2.8.0 libgfortran3 liblapack3 libquadmath0
  libreoffice-calc lp-solve
  libcdr-0.1-1 libfreehand-0.1-1 libmspub-0.1-1 libpagemaker-0.0-0
  libreoffice-avmedia-backend-gstreamer libreoffice-draw libreoffice-impress
  libvisio-0.1-1
  firebird2.5-common firebird2.5-common-doc firebird2.5-server-common
  libfbclient2 libfbembed2.5 libhsqldb1.8.0-java libreoffice-base
  libreoffice-base-drivers libreoffice-java-common libreoffice-sdbc-firebird
  libreoffice-sdbc-hsqldb libservlet2.5-java
  ```
* >>>>>>>>> Running inst-std-office-xtra-projectlibre.sh ...
  * Install ProjectLibre.
  * Disk size = 4113172K. Space Used = 18460K.
* >>>>>>>>> Running inst-std-system-alsamixer.sh ...
  * Disk size = 4113176K. Space Used = 4K.
* >>>>>>>>> Running inst-std-system-conky.sh ...
  * After this operation, 967 kB of additional disk space will be used.
  * Disk size = 4114480K. Space Used = 1304K.
  * The following NEW packages will be installed:
  ```bash
  conky conky-std libiw30
  ```
* >>>>>>>>> Running inst-std-system-gnome-disk-utility.sh ...
  * After this operation, 7,803 kB of additional disk space will be used.
  * Disk size = 4118956K. Space Used = 4476K.
  * The following NEW packages will be installed:
  ```bash
  cracklib-runtime gnome-disk-utility libcrack2 libpwquality-common
  libpwquality1 wamerican
  ```
* >>>>>>>>> Running inst-std-system-keyboard.sh ...
  * Disk size = 4118960K. Space Used = 4K.
* >>>>>>>>> Running inst-std-system-monitor-switcher-lxrandr.sh ...
  * After this operation, 779 kB of additional disk space will be used.
  * Disk size = 4119104K. Space Used = 144K.
  * The following NEW packages will be installed:
  ```bash
  lxrandr
  ```
* >>>>>>>>> Running inst-std-system-network-wicd.sh ...
  * After this operation, 31.8 MB of additional disk space will be used.
  * Disk size = 4162492K. Space Used = 43388K.
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
  * Disk size = 4162496K. Space Used = 4K.
* >>>>>>>>> Running inst-std-system-xtra-hardinfo.sh ...
  * After this operation, 467 kB of additional disk space will be used.
  * Disk size = 4163432K. Space Used = 936K.
  * The following NEW packages will be installed:
  ```bash
  hardinfo
  ```
* >>>>>>>>> Running inst-std-system-xtra-webcam-camorama.sh ...
  * After this operation, 10.6 MB of additional disk space will be used.
  * Disk size = 4169236K. Space Used = 5804K.
  * The following NEW packages will be installed:
  ```bash
  camorama libart-2.0-2 libbonoboui2-0 libbonoboui2-common libgail18
  libgnomecanvas2-0 libgnomecanvas2-common libgnomeui-0 libgnomeui-common
  ```
* >>>>>>>>> Running inst-std-xtra-blender.sh ...
  * After this operation, 243 kB of additional disk space will be used.
  * After this operation, 145 MB of additional disk space will be used.
  * Disk size = 4320440K. Space Used = 151204K.
  * The following NEW packages will be installed:
  ```bash
  libjemalloc1
  blender blender-data javascript-common libatomic1 libavdevice55
  libboost-chrono1.55.0 libboost-filesystem1.55.0 libboost-locale1.55.0
  libboost-regex1.55.0 libboost-thread1.55.0 libgtkglext1 libjs-jquery
  libjs-jquery-ui libopencolorio1 libopencv-core2.4 libopencv-highgui2.4
  libopencv-imgproc2.4 libopenimageio1.4 libraw10 libspnav0 libtbb2
  libtinyxml2.6.2 libyaml-cpp0.3
  ```
* >>>>>>>>> Running inst-std-xtra-dia.sh ...
  * After this operation, 22.6 MB of additional disk space will be used.
  * Disk size = 4350872K. Space Used = 30432K.
  * The following NEW packages will be installed:
  ```bash
  dia dia-common dia-libs dia-shapes gsfonts-x11
  ```
* >>>>>>>>> Running inst-std-xtra-opw-drush8.sh ...
  * Disk size = 4352052K. Space Used = 1180K.
* >>>>>>>>> Running inst-std-xtra-opw-php5-gd.sh ...
  * After this operation, 118 kB of additional disk space will be used.
  * Install php5-gd to run Drupal.
  * Disk size = 4352272K. Space Used = 220K.
  * The following NEW packages will be installed:
  ```bash
  php5-gd
  ```
* >>>>>>>>> Running inst-std-xtra-opw-php5-mysql.sh ...
  * After this operation, 253 kB of additional disk space will be used.
  * Install php5-mysql to enable the PDO_MYSQL database driver for PHP and to run Drupal.
  * Enable mod_rewrite module.
  * Disk size = 4352692K. Space Used = 420K.
  * The following NEW packages will be installed:
  ```bash
  php5-mysql
  ```
* >>>>>>>>> Running inst-xtra-cld-dev-tools-aptly.sh ...
  * After this operation, 28.8 MB of additional disk space will be used.
  * Install aptly version: 0.9.6~dev to create local debian repository.
  * Add xz-utils package because aptly snapshot merge needs it.
  * Disk size = 4387616K. Space Used = 34924K.
  * The following NEW packages will be installed:
  ```bash
  aptly graphviz libcdt5 libcgraph6 libgvc6 libgvpr2 libpathplan4 libxdot4
  ```
* >>>>>>>>> Running inst-xtra-cld-dev-tools-libxml2-utils.sh ...
  * After this operation, 152 kB of additional disk space will be used.
  * Install libxml2-utils to validate xml file.
  * Disk size = 4387908K. Space Used = 292K.
  * The following NEW packages will be installed:
  ```bash
  libxml2-utils
  ```
* >>>>>>>>> Running inst-xtra-cld-dev-tools-xsltproc.sh ...
  * After this operation, 140 kB of additional disk space will be used.
  * Install xsltproc to process xslt.
  * Disk size = 4388196K. Space Used = 288K.
  * The following NEW packages will be installed:
  ```bash
  xsltproc
  ```
* >>>>>>>>> Running inst-xtra-dev-tools-ant.sh ...
  * After this operation, 3,073 kB of additional disk space will be used.
  * Install ant.
  * Disk size = 4393460K. Space Used = 5264K.
  * The following NEW packages will be installed:
  ```bash
  ant ant-optional
  ```
* >>>>>>>>> Running inst-xtra-fuse.sh ...
  * Install fuse(fusermount) to run TMSU.
  * Disk size = 4393464K. Space Used = 4K.
* >>>>>>>>> Running inst-xtra-open-terminals-on-startup.sh ...
  * Disk size = 4393472K. Space Used = 8K.
* >>>>>>>>> Running inst-xtra-sqlite3.sh ...
  * After this operation, 143 kB of additional disk space will be used.
  * Install Database: sqlite3.
  * Disk size = 4393748K. Space Used = 276K.
  * The following NEW packages will be installed:
  ```bash
  sqlite3
  ```
* >>>>>>>>> Running inst-xtra-virtualbox5.sh ...
  * After this operation, 78.4 MB of additional disk space will be used.
  * After this operation, 159 MB of additional disk space will be used.
  * After this operation, 14.6 MB disk space will be freed.
  * After this operation, 63.8 MB disk space will be freed.
  * Install dkms, libc6-dev, linux-headers-3.16.0-4-amd64 to compile VirtualBox.
  * Install VirtualBox 5.0.14r105127.
  * Disk size = 4730852K. Space Used = 232504K.
  * The following NEW packages will be installed:
  ```bash
  cpp-4.8 dkms fakeroot gcc-4.8 libasan0 libc-dev-bin libc6-dev libfakeroot
  libgcc-4.8-dev linux-compiler-gcc-4.8-x86 linux-headers-3.16.0-4-amd64
  linux-headers-3.16.0-4-common linux-headers-amd64 linux-kbuild-3.16
  linux-libc-dev patch
  libqt4-opengl libsdl-ttf2.0-0 virtualbox-5.0
  ```
* >>>>>>>>> Running inst-xtra-virtualbox-guest-iso.sh ...
  * After this operation, 134 MB of additional disk space will be used.
  * After this operation, 14.6 MB disk space will be freed.
  * After this operation, 63.8 MB disk space will be freed.
  * Install VirtualBox guest additions to Shared folder/clipboard, auto window scaling, etc.
  * Assumed packages installed: bzip2 & Xserver installed.
  * Install dkms, libc6-dev, linux-headers-3.16.0-4-amd64 to compile VirtualBox guest additions.
  * VirtualBox guest additions installed: version: 5.0.12.
  * Delete VBoxGuestAdditions.iso[0K]. Space used could be negative due to this deletion.
  * Disk size = 4498348K. Space Used = 104600K.
  * The following NEW packages will be installed:
  ```bash
  binutils cpp-4.8 dkms fakeroot gcc gcc-4.8 gcc-4.9 libasan0 libasan1
  libc-dev-bin libc6-dev libcilkrts5 libfakeroot libgcc-4.8-dev libgcc-4.9-dev
  libitm1 liblsan0 libtsan0 libubsan0 linux-compiler-gcc-4.8-x86
  linux-headers-3.16.0-4-amd64 linux-headers-3.16.0-4-common
  linux-headers-amd64 linux-kbuild-3.16 linux-libc-dev make manpages-dev patch
  ```
* >>>>>>>>> Running inst-xtra-wifite.sh ...
  * After this operation, 94.9 MB of additional disk space will be used.
  * Disk size = 4847228K. Space Used = 116376K.
  * The following NEW packages will be installed:
  ```bash
  aircrack-ng crda geoip-database ieee-data iw libc-ares2 libgeoip1 libpcap0.8
  libsmi2ldbl libwireshark-data libwireshark5 libwiretap4 libwsutil4 pyrit
  python-scapy python-sqlalchemy python-sqlalchemy-ext reaver tshark wifite
  wireless-regdb wireshark-common
  ```
* >>>>>>>>> Running inst-xtra-wine-diablo2.sh ...
  * Install libjpeg-turbo-progs & libldap-2.4-2 so that Blizzard Downloader will not fail.
  * Disk size = 4847232K. Space Used = 4K.
* >>>>>>>>> Running inst-xtra-wine.sh ...
  * After this operation, 174 MB of additional disk space will be used.
  * Install wine so that you can run Windows applications.
  * You need to run 'wine winecfg' before using wine. This is a workaround of a bug.
  * Disk size = 5077096K. Space Used = 229864K.
  * The following NEW packages will be installed:
  ```bash
  libasound2-plugins libgstreamer-plugins-base0.10-0 libgstreamer0.10-0
  libspeexdsp1 libwine libwine-gecko-2.21 wine wine64
  ```
* >>>>>>>>> Running inst-xtra-xmpv.sh ...
  * Disk size = 5077144K. Space Used = 48K.
* >>>>>>>>> Running inst-xtra-zfs.sh ...
  * After this operation, 15.8 MB of additional disk space will be used.
  * After this operation, 129 MB of additional disk space will be used.
  * Install lsb-release.
  * Add zfsonlinux repository to /etc/apt/sources.list.d/zfsonlinux.list.
  * Add GPG key to /etc/apt/trusted.gpg.d/zfsonlinux.gpg.
  * Install debian-zfs: version: 0.6.5.2-2, DKMS style package. DKMS vs KMOD, see http://zfsonlinux.org/generic-deb.html
  * Delete zfsonlinux_6_all.deb[1992K].
  * Disk size = 5290960K. Space Used = 213816K.
  * The following NEW packages will be installed:
  ```bash
  libc-dev-bin libc6-dev linux-libc-dev lsb-release
  build-essential cpp-4.8 debian-zfs dkms dpkg-dev fakeroot g++ g++-4.9
  gcc-4.8 libalgorithm-diff-perl libalgorithm-diff-xs-perl
  libalgorithm-merge-perl libasan0 libdpkg-perl libfakeroot
  libfile-fcntllock-perl libgcc-4.8-dev libnvpair1 libstdc++-4.9-dev libuutil1
  libzfs2 libzpool2 linux-compiler-gcc-4.8-x86 linux-headers-3.16.0-4-amd64
  linux-headers-3.16.0-4-common linux-headers-amd64 linux-kbuild-3.16 patch
  spl spl-dkms zfs-dkms zfsutils
  ```
* >>>>>>>>> Running inst-zclean-00-remove-block-services.sh ...
  * Remove block services from starting after they are being installed.
  * Disk size = 5290960K. Space Used = 0K.
* >>>>>>>>> Running inst-zclean-00-zerosizing-docs.sh ...
  * Zero size all documents in /usr/share/.
  * Disk size = 5124040K. Space Used = -166920K.
* >>>>>>>>> Running inst-zclean-99-end-cleanup.sh ...
  * Clean apt-get cache.
  * rm -rf /tmp/*.
  * Umount /sys, /dev/pts and /proc.
  * Add Debian main repositories in sources.list.
  * Delete local Debian repository from sources.list.
  * Disk size = 4195936K. Space Used = -928104K.
