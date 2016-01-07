* >>>>>>>>> Running install.sh ...
  * Running on SHELL=/bin/bash VER=4.3.30(1)-release
  * Disk size = 1372164K. Space Used = 1372164K.
* >>>>>>>>> Running inst-min-con-00-apt-custom-repository.sh ...
  * Disk size = 1372180K. Space Used = 16K.
* >>>>>>>>> Running inst-min-con-00-linux-image.sh ...
  * After this operation, 153 kB disk space will be freed.
  * After this operation, 3111 kB of additional disk space will be used.
  * After this operation, 224 MB of additional disk space will be used.
  * Mount /proc, /sys and /dev/pts.
  * Generate dbus-uuidgen to /var/lib/dbus/machine-id.
  * Install Linux image.
  * Set APT to skip installing recommended packages.
  * Disk size = 1772420K. Space Used = 400240K.
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
  * Disk size = 1772432K. Space Used = 12K.
* >>>>>>>>> Running inst-min-con-01-debconf-utils.sh ...
  * After this operation, 157 kB of additional disk space will be used.
  * Install debconf-utils to use debconf-set-selections.
  * Disk size = 1772668K. Space Used = 236K.
  * The following NEW packages will be installed:
  ```bash
  debconf-utils
  ```
* >>>>>>>>> Running inst-min-con-02-localepurge.sh ...
  * After this operation, 334 kB of additional disk space will be used.
  * Install localepurge to purge documentation of all languages, except en, en_US, en_US.UTF-8.
  * Reconfigure localepurge: dpkg-reconfigure localepurge
  * Disk size = 1796144K. Space Used = 740K.
  * The following NEW packages will be installed:
  ```bash
  localepurge ucf
  ```
* >>>>>>>>> Running inst-min-con-02-locale.sh ...
  * After this operation, 16.3 MB of additional disk space will be used.
  * Install locale and set it to use en_US.UTF-8.
  * Disk size = 1795404K. Space Used = 22736K.
  * The following NEW packages will be installed:
  ```bash
  locales
  ```
* >>>>>>>>> Running inst-min-con-03-proxy.sh ...
  * Disk size = 1796156K. Space Used = 12K.
* >>>>>>>>> Running inst-min-con-03-startup-script.sh ...
  * Copy startup.sh to /etc/init.d/.
  * Make it executable.
  * Register it in the boot sequence.
  * Disk size = 1796152K. Space Used = 8K.
* >>>>>>>>> Running inst-min-con-04-block-services-start-postinstall.sh ...
  * Block services from starting after they are being installed.
  * Disk size = 1796160K. Space Used = 8K.
* >>>>>>>>> Running inst-min-con-auto-log-root.sh ...
  * Disk size = 1796172K. Space Used = 12K.
* >>>>>>>>> Running inst-min-con-bashrc.sh ...
  * Set common settings for /root/.bashrc.
  * Set dircolors to use dircolors-gnu-ls-colors.txt to make ls more beautiful.
  * Disk size = 1796188K. Space Used = 16K.
* >>>>>>>>> Running inst-min-con-cld-dev-tools-debootstrap.sh ...
  * After this operation, 234 kB of additional disk space will be used.
  * Install debootstrap allows the creation of a Debian base system in a directory.
  * Disk size = 1796512K. Space Used = 324K.
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
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-dependency-graph.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-win-split.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-dd-usb.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-remaster.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-zfs-hd.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-persistence.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-lsmodules.sh to /usr/local/bin/.
  * Disk size = 1796564K. Space Used = 52K.
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
  * Disk size = 1800584K. Space Used = 4020K.
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
  * Disk size = 1801840K. Space Used = 1256K.
* >>>>>>>>> Running inst-min-con-filesystem-exfat.sh ...
  * After this operation, 550 kB of additional disk space will be used.
  * After this operation, 234 kB of additional disk space will be used.
  * Install exfat-fuse so that you can read and write SD cards and USB keys.
  * Disk size = 1803032K. Space Used = 1192K.
  * The following NEW packages will be installed:
  ```bash
  exfat-fuse fuse libfuse2
  exfat-utils
  ```
* >>>>>>>>> Running inst-min-con-filesystem-ntfs-3g.sh ...
  * After this operation, 1,632 kB of additional disk space will be used.
  * Install support for NTFS: ntfs-3g.
  * Disk size = 1805192K. Space Used = 2160K.
  * The following NEW packages will be installed:
  ```bash
  ntfs-3g
  ```
* >>>>>>>>> Running inst-min-con-firmware-cpu.sh ...
  * After this operation, 47.1 kB of additional disk space will be used.
  * After this operation, 655 kB of additional disk space will be used.
  * Install CPU firmware: amd64-microcode.
  * Install CPU firmware: intel-microcode.
  * Disk size = 1806540K. Space Used = 1348K.
  * The following NEW packages will be installed:
  ```bash
  amd64-microcode
  intel-microcode iucode-tool
  ```
* >>>>>>>>> Running inst-min-con-firmware-net-b43-installer.sh ...
  * After this operation, 100 kB of additional disk space will be used.
  * Install b43 for Dell Wireless 1397 WLAN Mini-Card Driver.
  * Disk size = 1844244K. Space Used = 37704K.
  * The following NEW packages will be installed:
  ```bash
  b43-fwcutter
  ```
* >>>>>>>>> Running inst-min-con-firmware.sh ...
  * After this operation, 41.7 MB of additional disk space will be used.
  * Install firmwares: atmel-firmware, bluez-firmware, firmware-atheros, firmware-bnx2, firmware-bnx2x, firmware-brcm80211, firmware-intelwimax, firmware-ipw2x00, firmware-ivtv, firmware-iwlwifi, firmware-libertas, firmware-linux, firmware-linux-free, firmware-linux-nonfree, firmware-qlogic, firmware-ralink, firmware-realtek, zd1211-firmware.
  * Disk size = 1897944K. Space Used = 53700K.
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
  * Disk size = 1901524K. Space Used = 3580K.
  * The following NEW packages will be installed:
  ```bash
  isolinux
  libburn4 libisoburn1 libisofs6 libjte1 xorriso
  liblzo2-2 squashfs-tools
  ```
* >>>>>>>>> Running inst-min-con-mtp-tools.sh ...
  * After this operation, 2,114 kB of additional disk space will be used.
  * Install mtp-tools to mount smartphones.
  * Disk size = 1904076K. Space Used = 2552K.
  * The following NEW packages will be installed:
  ```bash
  libmtp-common libmtp9 libusb-1.0-0 mtp-tools
  ```
* >>>>>>>>> Running inst-min-con-ntp.sh ...
  * After this operation, 1,871 kB of additional disk space will be used.
  * Install Network Time Protocol: ntp.
  * Disk size = 1906588K. Space Used = 2512K.
  * The following NEW packages will be installed:
  ```bash
  libbsd0 libedit2 libopts25 ntp
  ```
* >>>>>>>>> Running inst-min-con-numlock.sh ...
  * After this operation, 4,381 kB of additional disk space will be used.
  * Install numlockx to turn on NumLock on boot.
  * Disk size = 1913100K. Space Used = 6512K.
  * The following NEW packages will be installed:
  ```bash
  libx11-6 libx11-data libxau6 libxcb1 libxdmcp6 libxext6 libxi6 libxtst6
  numlockx x11-common
  ```
* >>>>>>>>> Running inst-min-con-pciutils.sh ...
  * After this operation, 1,181 kB of additional disk space will be used.
  * Install pciutils to troubleshoot pci devices(i.e. lspci).
  * Disk size = 1914672K. Space Used = 1572K.
  * The following NEW packages will be installed:
  ```bash
  libpci3 pciutils
  ```
* >>>>>>>>> Running inst-min-con-snd-alsa.sh ...
  * After this operation, 5,270 kB of additional disk space will be used.
  * Install ALSA sound.
  * Test sound: aplay /usr/share/sounds/alsa/*.
  * Add key bindings.
  * Disk size = 1922524K. Space Used = 7852K.
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
  * Disk size = 1928140K. Space Used = 5616K.
  * The following NEW packages will be installed:
  ```bash
  udevil
  ```
* >>>>>>>>> Running inst-min-con-xtra-buffer-pv.sh ...
  * After this operation, 166 kB of additional disk space will be used.
  * Install pv.
  * Disk size = 1928308K. Space Used = 156K.
  * The following NEW packages will be installed:
  ```bash
  pv
  ```
* >>>>>>>>> Running inst-min-con-xtra-buffer.sh ...
  * After this operation, 71.7 kB of additional disk space will be used.
  * Install buffer.
  * Disk size = 1928380K. Space Used = 72K.
  * The following NEW packages will be installed:
  ```bash
  buffer
  ```
* >>>>>>>>> Running inst-min-con-xtra-dev-tool-java-jdk.sh ...
  * After this operation, 143 MB of additional disk space will be used.
  * Install JAVA JDK: default-jdk.
  * Disk size = 2147708K. Space Used = 219328K.
  * The following NEW packages will be installed:
  ```bash
  ca-certificates ca-certificates-java default-jdk default-jre
  default-jre-headless fontconfig fontconfig-config fonts-dejavu-core
  java-common libasyncns0 libatk-wrapper-java libatk-wrapper-java-jni
  libatk1.0-0 libatk1.0-data libavahi-client3 libavahi-common-data
  libavahi-common3 libcairo2 libcups2 libdatrie1 libdrm2 libflac8
  libfontconfig1 libfreetype6 libgdk-pixbuf2.0-0 libgdk-pixbuf2.0-common
  libgif4 libgl1-mesa-glx libglapi-mesa libgraphite2-3 libgssapi-krb5-2
  libgtk2.0-0 libgtk2.0-common libharfbuzz0b libice6 libjasper1 libjbig0
  libjpeg62-turbo libk5crypto3 libkeyutils1 libkrb5-3 libkrb5support0
  liblcms2-2 libnspr4 libnss3 libogg0 libpango-1.0-0 libpangocairo-1.0-0
  libpangoft2-1.0-0 libpcsclite1 libpixman-1-0 libpng12-0 libpulse0 libsctp1
  libsm6 libsndfile1 libsqlite3-0 libthai-data libthai0 libtiff5 libvorbis0a
  libvorbisenc2 libwrap0 libx11-xcb1 libxcb-dri2-0 libxcb-dri3-0 libxcb-glx0
  libxcb-present0 libxcb-render0 libxcb-shm0 libxcb-sync1 libxcomposite1
  libxcursor1 libxdamage1 libxfixes3 libxinerama1 libxrandr2 libxrender1
  libxshmfence1 libxxf86vm1 openjdk-7-jdk openjdk-7-jre openjdk-7-jre-headless
  openssl tzdata-java
  ```
* >>>>>>>>> Running inst-min-con-xtra-dev-tool-tree.sh ...
  * After this operation, 102 kB of additional disk space will be used.
  * Install tree to display files and directories structure.
  * Disk size = 2147892K. Space Used = 184K.
  * The following NEW packages will be installed:
  ```bash
  tree
  ```
* >>>>>>>>> Running inst-min-con-xtra-gnuplot.sh ...
  * After this operation, 34.1 MB of additional disk space will be used.
  * Install gnuplot.
  * Disk size = 2191932K. Space Used = 44040K.
  * The following NEW packages will be installed:
  ```bash
  aglfn gnuplot gnuplot-data gnuplot-qt gnuplot-tex libaudio2 libgd3
  liblua5.1-0 libmng1 libqt4-network libqt4-svg libqt4-xml libqtcore4
  libqtdbus4 libqtgui4 libvpx1 libxpm4 libxt6 qtcore4-l10n
  ```
* >>>>>>>>> Running inst-min-con-xtra-imagemagick.sh ...
  * After this operation, 13.0 MB of additional disk space will be used.
  * Install imagemagick to process image from command line.
  * Disk size = 2209296K. Space Used = 17364K.
  * The following NEW packages will be installed:
  ```bash
  hicolor-icon-theme imagemagick imagemagick-6.q16 imagemagick-common
  libfftw3-double3 libgomp1 liblqr-1-0 libltdl7 libmagickcore-6.q16-2
  libmagickwand-6.q16-2
  ```
* >>>>>>>>> Running inst-min-con-xtra-iso-iat.sh ...
  * After this operation, 65.5 kB of additional disk space will be used.
  * Install iat to convert BIN, MDF, PDI, CDI, NRG, and B5I into ISO-9660.
  * Disk size = 2209348K. Space Used = 52K.
  * The following NEW packages will be installed:
  ```bash
  iat
  ```
* >>>>>>>>> Running inst-min-con-xtra-java-jre.sh ...
  * Install JAVA JRE: default-jre.
  * Disk size = 2209352K. Space Used = 4K.
* >>>>>>>>> Running inst-min-con-xtra-locate.sh ...
  * After this operation, 324 kB of additional disk space will be used.
  * Install locate to generate an index of files and directories. Searching for files will be much faster.
  * Add locate alias.
  * Run updatedb to update the database.
  * Disk size = 2209928K. Space Used = 576K.
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
  * Disk size = 2210816K. Space Used = 888K.
  * The following NEW packages will be installed:
  ```bash
  macchanger
  ```
* >>>>>>>>> Running inst-min-con-xtra-mariadb-server.sh ...
  * After this operation, 131 MB of additional disk space will be used.
  * Disk size = 2463428K. Space Used = 252612K.
  * The following NEW packages will be installed:
  ```bash
  libaio1 libdbi-perl libreadline5 libterm-readkey-perl mariadb-client-10.0
  mariadb-client-core-10.0 mariadb-common mariadb-server mariadb-server-10.0
  mariadb-server-core-10.0 mysql-common psmisc
  ```
* >>>>>>>>> Running inst-min-con-xtra-mtran.sh ...
  * Copied /root/scripts/repository/inst-min-con-xtra-mtran/mtran.sh to /usr/local/bin/.
  * Disk size = 2463436K. Space Used = 8K.
* >>>>>>>>> Running inst-min-con-xtra-php5.sh ...
  * After this operation, 32.0 MB of additional disk space will be used.
  * Install php5.
  * Disk size = 2505248K. Space Used = 41812K.
  * The following NEW packages will be installed:
  ```bash
  apache2 apache2-bin apache2-data apache2-utils libapache2-mod-php5 libapr1
  libaprutil1 libaprutil1-dbd-sqlite3 libaprutil1-ldap libldap-2.4-2 libmagic1
  libonig2 libperl4-corelibs-perl libqdbm14 libsasl2-2 libsasl2-modules-db
  lsof mime-support php5 php5-cli php5-common php5-json
  ```
* >>>>>>>>> Running inst-min-con-xtra-timezone.sh ...
  * Set time zone to EST (America/Montreal) in /etc/timezone.
  * Disk size = 2505252K. Space Used = 4K.
* >>>>>>>>> Running inst-min-win-00-xorg.sh ...
  * After this operation, 72.5 MB of additional disk space will be used.
  * Set keyboard to use US international.
  * Install minimum Xorg X server.
  * Install xinit so you can run startx.
  * Add auto start window manager(i.e startx).
  * Disk size = 2022000K. Space Used = 93860K.
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
  * Disk size = 2043544K. Space Used = 21544K.
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
  * Add documentation: user manual.
  * Add documentation: developer manual.
  * Disk size = 2086600K. Space Used = 43056K.
  * The following NEW packages will be installed:
  ```bash
  liblua5.1-0 libyaml-0-2 pandoc pandoc-data
  ```
* >>>>>>>>> Running inst-min-win-cld-win-split.sh ...
  * After this operation, 81.9 kB of additional disk space will be used.
  * After this operation, 777 kB of additional disk space will be used.
  * Install required applications for cld-win-split.sh: wmctrl and x11-utils for xprop.
  * Add key bindings: Ctrl+Alt+Left, Right, Up, Down, 1, 2, 3, 4, 5, 6, 7, 8, 9.
  * Disk size = 2087900K. Space Used = 1300K.
  * The following NEW packages will be installed:
  ```bash
  wmctrl
  libxcomposite1 libxrandr2 libxxf86dga1 x11-utils
  ```
* >>>>>>>>> Running inst-min-win-jwm-keys-alsa.sh ...
  * Add ALSA key binding.
  * Add script to auto-detect ALSA controller on JWM startup.
  * Disk size = 2087908K. Space Used = 8K.
* >>>>>>>>> Running inst-min-win-menu.sh ...
  * After this operation, 1,829 kB of additional disk space will be used.
  * Install menu, an easy way to get installed programs in the menu automatically.
  * Disk size = 2089184K. Space Used = 1276K.
  * The following NEW packages will be installed:
  ```bash
  menu
  ```
* >>>>>>>>> Running inst-min-win-systray-volumeicon-alsa.sh ...
  * After this operation, 36.6 MB of additional disk space will be used.
  * Install volume controller in system tray.
  * Set left-click to display volume slider: lmb_slider=true.
  * Set volumeicon to run on JWN startup.
  * Disk size = 2114636K. Space Used = 25452K.
  * The following NEW packages will be installed:
  ```bash
  fontconfig libatk1.0-0 libatk1.0-data libavahi-client3 libavahi-common-data
  libavahi-common3 libcairo2 libcups2 libdatrie1 libgraphite2-3
  libgssapi-krb5-2 libgtk2.0-0 libgtk2.0-common libharfbuzz0b libk5crypto3
  libkeyutils1 libkrb5-3 libkrb5support0 libnotify4 libpango-1.0-0
  libpangocairo-1.0-0 libpangoft2-1.0-0 libthai-data libthai0 libxcb-shm0
  libxcursor1 volumeicon-alsa
  ```
* >>>>>>>>> Running inst-min-xtra-encoding-libtext-iconv-perl.sh ...
  * Install libtext-iconv-perl so that you can use iconv to convert to other encoding.
  * Disk size = 2649764K. Space Used = 4K.
* >>>>>>>>> Running inst-min-xtra-fonts-asian.sh ...
  * After this operation, 48.2 MB of additional disk space will be used.
  * Install fonts-hanazono to display Asian characters correctly.
  * Test it by opening website http://ctext.org/zh.
  * Disk size = 2715756K. Space Used = 65992K.
  * The following NEW packages will be installed:
  ```bash
  fonts-hanazono
  ```
* >>>>>>>>> Running inst-std-accessories-calc-speedcrunch.sh ...
  * After this operation, 26.3 MB of additional disk space will be used.
  * Install calculator: speedcrunch.
  * Insert speedcrunch in Accessories menu.
  * Disk size = 2148824K. Space Used = 34196K.
  * The following NEW packages will be installed:
  ```bash
  libaudio2 liblcms2-2 libmng1 libqt4-xml libqtcore4 libqtgui4 qtcore4-l10n
  speedcrunch
  ```
* >>>>>>>>> Running inst-std-accessories-feh.sh ...
  * After this operation, 5,145 kB of additional disk space will be used.
  * Install command line image viewer: feh.
  * Disk size = 2154016K. Space Used = 5192K.
  * The following NEW packages will be installed:
  ```bash
  feh libcurl3 libexif12 libgif4 libid3tag0 libimlib2 libldap-2.4-2 librtmp1
  libsasl2-2 libsasl2-modules-db libssh2-1
  ```
* >>>>>>>>> Running inst-std-accessories-gpicview.sh ...
  * After this operation, 876 kB of additional disk space will be used.
  * Install Image Viewer: gpicview.
  * Insert gpicview in Accessories menu.
  * Disk size = 2154368K. Space Used = 352K.
  * The following NEW packages will be installed:
  ```bash
  gpicview
  ```
* >>>>>>>>> Running inst-std-accessories-mupdf.sh ...
  * After this operation, 12.0 MB of additional disk space will be used.
  * Install PDF reader: Mupdf.
  * Disk size = 2169716K. Space Used = 15348K.
  * The following NEW packages will be installed:
  ```bash
  libjbig2dec0 libopenjp2-7 mupdf
  ```
* >>>>>>>>> Running inst-std-accessories-prtscr-gnome-screenshot.sh ...
  * After this operation, 58.8 MB of additional disk space will be used.
  * Install gnome-screenshot to be used for PrintScreen key.
  * Insert PrintScreen key binding.
  * By default, screenshots are saved under ~/Pictures/.
  * Disk size = 2227396K. Space Used = 57680K.
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
  * Disk size = 2233936K. Space Used = 6540K.
  * The following NEW packages will be installed:
  ```bash
  scite
  at-spi2-core
  ```
* >>>>>>>>> Running inst-std-accessories-terminal-xfce.sh ...
  * After this operation, 11.1 MB of additional disk space will be used.
  * Install terminal: xfce4-terminal.
  * Disk size = 2243152K. Space Used = 9216K.
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
  * Disk size = 2249504K. Space Used = 6352K.
  * The following NEW packages will be installed:
  ```bash
  desktop-file-utils libgudev-1.0-0 libtag1-vanilla libtag1c2a libtagc0
  libthunarx-2-0 thunar thunar-archive-plugin thunar-data
  thunar-media-tags-plugin thunar-volman
  ```
* >>>>>>>>> Running inst-std-accessories-xarchiver.sh ...
  * After this operation, 1,211 kB of additional disk space will be used.
  * Install Archive Manager: xarchiver.
  * Disk size = 2250744K. Space Used = 1240K.
  * The following NEW packages will be installed:
  ```bash
  xarchiver
  ```
* >>>>>>>>> Running inst-std-graphic-pinta.sh ...
  * After this operation, 45.0 MB of additional disk space will be used.
  * Install Image Editor: Pinta.
  * Disk size = 2322296K. Space Used = 71552K.
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
* >>>>>>>>> Running inst-std-internet-iceweasel.sh ...
  * After this operation, 91.5 MB of additional disk space will be used.
  * After this operation, 27.5 MB of additional disk space will be used.
  * Install web browser: iceweasel.
  * To update Adobe Flash Player: update-flashplugin-nonfree --install.
  * To test Adobe Flash Player: http://www.adobe.com/software/flash/about/.
  * Disk size = 2502772K. Space Used = 180476K.
  * The following NEW packages will be installed:
  ```bash
  iceweasel libevent-2.0-5 libhunspell-1.3-0
  binutils ca-certificates flashplugin-nonfree libcurl3-gnutls libnspr4
  libnss3 openssl
  ```
* >>>>>>>>> Running inst-std-multimedia-mpv.sh ...
  * After this operation, 88.6 MB of additional disk space will be used.
  * Install Media Player: MPV.
  * Add multiple aliases for MPV.
  * Add useful mpv keybindings settings.
  * Disk size = 2626420K. Space Used = 123648K.
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
  * Disk size = 3076340K. Space Used = 449920K.
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
* >>>>>>>>> Running inst-std-office-xtra-projectlibre.sh ...
  * Install ProjectLibre.
  * Disk size = 3644824K. Space Used = 18452K.
* >>>>>>>>> Running inst-std-system-alsamixer.sh ...
  * Insert Alsamixer menu in Administration.
  * Disk size = 3076344K. Space Used = 4K.
* >>>>>>>>> Running inst-std-system-conky.sh ...
  * After this operation, 967 kB of additional disk space will be used.
  * Install System Monitor: conky.
  * Add conky config file: conkyrc.
  * Set conky to run on JWM startup.
  * Add on the fly settings to Conky.
  * Disk size = 3077652K. Space Used = 1308K.
  * The following NEW packages will be installed:
  ```bash
  conky conky-std libiw30
  ```
* >>>>>>>>> Running inst-std-system-gnome-disk-utility.sh ...
  * After this operation, 11.1 MB of additional disk space will be used.
  * Install Partition Manager: gnome-disk-utility.
  * Run: gnome-disks.
  * Insert gnome-disk-utility menu in Administration.
  * Disk size = 3083940K. Space Used = 6288K.
  * The following NEW packages will be installed:
  ```bash
  gnome-disk-utility libatasmart4 libcrack2 libpam-systemd libparted2
  libpolkit-agent-1-0 libpolkit-gobject-1-0 libpwquality-common libpwquality1
  libsecret-1-0 libsecret-common libudisks2-0 parted udisks2
  ```
* >>>>>>>>> Running inst-std-system-keyboard.sh ...
  * Insert keyboard menu in Administration.
  * Disk size = 3083944K. Space Used = 4K.
* >>>>>>>>> Running inst-std-system-monitor-switcher-lxrandr.sh ...
  * After this operation, 19.9 MB of additional disk space will be used.
  * After this operation, 779 kB of additional disk space will be used.
  * Install Monitor Switcher: lxrandr.
  * Add lxrandr key binding.
  * Disk size = 3109932K. Space Used = 25988K.
  * The following NEW packages will be installed:
  ```bash
  cpp cpp-4.9 libcloog-isl4 libisl10 libmpc3 libmpfr4 x11-xserver-utils
  lxrandr
  ```
* >>>>>>>>> Running inst-std-system-network-wicd.sh ...
  * After this operation, 22.0 MB of additional disk space will be used.
  * Install Network Manager: wicd.
  * For wireless, you have to type in the wireless interface(e.g. wlan0) in the Preferences.
  * Set wicd to run on JWM startup.
  * Log at /var/log/wicd/wicd.log.
  * Disk size = 3145136K. Space Used = 35204K.
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
  * Disk size = 3145144K. Space Used = 8K.
* >>>>>>>>> Running inst-std-system-xtra-hardinfo.sh ...
  * After this operation, 467 kB of additional disk space will be used.
  * Install hardware info apps: hardinfo.
  * Insert System Information menu in Administration.
  * Disk size = 3714040K. Space Used = 924K.
  * The following NEW packages will be installed:
  ```bash
  hardinfo
  ```
* >>>>>>>>> Running inst-std-system-xtra-webcam-camorama.sh ...
  * After this operation, 41.1 MB of additional disk space will be used.
  * Install webcam: Camorama.
  * Insert Camorama menu in Graphics.
  * Disk size = 3745468K. Space Used = 31428K.
  * The following NEW packages will be installed:
  ```bash
  camorama gconf-service gconf2 gconf2-common gnome-mime-data libart-2.0-2
  libavahi-glib1 libbonobo2-0 libbonobo2-common libbonoboui2-0
  libbonoboui2-common libgail18 libgconf-2-4 libgnome-2-0
  libgnome-keyring-common libgnome-keyring0 libgnome2-0 libgnome2-bin
  libgnome2-common libgnomecanvas2-0 libgnomecanvas2-common libgnomeui-0
  libgnomeui-common libgnomevfs2-0 libgnomevfs2-common liborbit-2-0
  ```
* >>>>>>>>> Running inst-std-xtra-blender.sh ...
  * After this operation, 14.0 MB of additional disk space will be used.
  * After this operation, 185 MB of additional disk space will be used.
  * Install required packages for blender.
  * Install blender3d.
  * Insert Blender 3D menu in Graphics.
  * Disk size = 3974276K. Space Used = 228808K.
  * The following NEW packages will be installed:
  ```bash
  libgl1-mesa-dri libjemalloc1
  blender blender-data dh-python fonts-droid libatomic1 libavdevice55
  libboost-chrono1.55.0 libboost-filesystem1.55.0 libboost-locale1.55.0
  libboost-regex1.55.0 libboost-thread1.55.0 libgtkglext1 libilmbase6
  libjs-jquery libjs-jquery-ui libmpdec2 libopencolorio1 libopencv-core2.4
  libopencv-highgui2.4 libopencv-imgproc2.4 libopenexr6 libopenimageio1.4
  libpython3-stdlib libpython3.4 libpython3.4-minimal libpython3.4-stdlib
  libraw10 libspnav0 libtbb2 libtinyxml2.6.2 libwebp5 libyaml-cpp0.3 python3
  python3-minimal python3.4 python3.4-minimal
  ```
* >>>>>>>>> Running inst-std-xtra-dia.sh ...
  * After this operation, 21.2 MB of additional disk space will be used.
  * Install Dia to draw diagrams.
  * Insert Dia menu in Graphics.
  * Disk size = 3999836K. Space Used = 25560K.
  * The following NEW packages will be installed:
  ```bash
  dia dia-common dia-libs
  ```
* >>>>>>>>> Running inst-std-xtra-opw-drush8.sh ...
  * Install  Drush Version   :  8.0.0-rc1  to manage Drupal.
  * See https://www.linode.com/docs/websites/cms/drush-drupal.
  * Further setting is needed. See https://wiki.debian.org/drush.
  * Disk size = 4019980K. Space Used = 20144K.
* >>>>>>>>> Running inst-std-xtra-opw-php5-gd.sh ...
  * After this operation, 118 kB of additional disk space will be used.
  * Install php5-gd to run Drupal.
  * Disk size = 4020204K. Space Used = 224K.
  * The following NEW packages will be installed:
  ```bash
  php5-gd
  ```
* >>>>>>>>> Running inst-std-xtra-opw-php5-mysql.sh ...
  * After this operation, 3,752 kB of additional disk space will be used.
  * Install php5-mysql to enable the PDO_MYSQL database driver for PHP and to run Drupal.
  * Enable mod_rewrite module.
  * Disk size = 4024744K. Space Used = 4540K.
  * The following NEW packages will be installed:
  ```bash
  libmysqlclient18 php5-mysql
  ```
* >>>>>>>>> Running inst-std-xtra-sweethome3d.sh ...
  * Install SweetHome3D-5.0.jar.
  * Install TexturesLibraryEditor-1.4.jar.
  * Install FurnitureLibraryEditor-1.17.jar.
  * Insert SweetHome3D menus in Graphics.
  * Disk size = 4060864K. Space Used = 36120K.
* >>>>>>>>> Running inst-xtra-cld-dev-tools-aptly.sh ...
  * After this operation, 16.9 MB of additional disk space will be used.
  * Install aptly version: 0.9.6~dev to create local debian repository.
  * Add xz-utils package because aptly snapshot merge needs it.
  * Disk size = 4081968K. Space Used = 21104K.
  * The following NEW packages will be installed:
  ```bash
  aptly xz-utils
  ```
* >>>>>>>>> Running inst-xtra-cld-dev-tools-libxml2-utils.sh ...
  * After this operation, 152 kB of additional disk space will be used.
  * Install libxml2-utils to validate xml file.
  * Disk size = 4082276K. Space Used = 308K.
  * The following NEW packages will be installed:
  ```bash
  libxml2-utils
  ```
* >>>>>>>>> Running inst-xtra-cld-dev-tools-xsltproc.sh ...
  * After this operation, 140 kB of additional disk space will be used.
  * Install xsltproc to process xslt.
  * Disk size = 4082568K. Space Used = 292K.
  * The following NEW packages will be installed:
  ```bash
  xsltproc
  ```
* >>>>>>>>> Running inst-xtra-dev-tools-ant.sh ...
  * After this operation, 2,229 kB of additional disk space will be used.
  * Install ant.
  * Disk size = 4086604K. Space Used = 4036K.
  * The following NEW packages will be installed:
  ```bash
  ant
  ```
* >>>>>>>>> Running inst-xtra-fuse.sh ...
  * Install fuse(fusermount) to run TMSU.
  * Disk size = 4086608K. Space Used = 4K.
* >>>>>>>>> Running inst-xtra-open-terminals-on-startup.sh ...
  * After this operation, 2,064 kB of additional disk space will be used.
  * Install x11-xserver-utils for xrandr.
  * Install wmctrl.
  * Install x11-utils for xprop.
  * Install xterm for resize.
  * Copy open-terminal.sh in /root/cld.
  * Add open-terminal.sh in /root/cld/jwmrc-startup.sh.
  * Disk size = 4089532K. Space Used = 2924K.
  * The following NEW packages will be installed:
  ```bash
  libutempter0 xbitmaps xterm
  ```
* >>>>>>>>> Running inst-xtra-sqlite3.sh ...
  * After this operation, 143 kB of additional disk space will be used.
  * Install Database: sqlite3.
  * Disk size = 4089808K. Space Used = 276K.
  * The following NEW packages will be installed:
  ```bash
  sqlite3
  ```
* >>>>>>>>> Running inst-xtra-virtualbox5.sh ...
  * After this operation, 77.9 MB of additional disk space will be used.
  * After this operation, 156 MB of additional disk space will be used.
  * After this operation, 14.6 MB disk space will be freed.
  * After this operation, 63.3 MB disk space will be freed.
  * Install dkms, libc6-dev, linux-headers-3.16.0-4-amd64 to compile VirtualBox.
  * Install VirtualBox 5.0.12r104815.
  * Disk size = 4401796K. Space Used = 229044K.
  * The following NEW packages will be installed:
  ```bash
  cpp-4.8 dkms gcc-4.8 libasan0 libc-dev-bin libc6-dev libgcc-4.8-dev
  linux-compiler-gcc-4.8-x86 linux-headers-3.16.0-4-amd64
  linux-headers-3.16.0-4-common linux-kbuild-3.16 linux-libc-dev patch
  libqt4-opengl virtualbox-5.0
  ```
* >>>>>>>>> Running inst-xtra-virtualbox-guest-iso.sh ...
  * After this operation, 110 MB of additional disk space will be used.
  * After this operation, 14.6 MB disk space will be freed.
  * After this operation, 63.3 MB disk space will be freed.
  * Install VirtualBox guest additions to Shared folder/clipboard, auto window scaling, etc.
  * Assumed packages installed: bzip2 & Xserver installed.
  * Install dkms, libc6-dev, linux-headers-3.16.0-4-amd64 to compile VirtualBox guest additions.
  * VirtualBox guest additions installed: version: 5.0.12.
  * Delete VBoxGuestAdditions.iso[0K]. Space used could be negative due to this deletion.
  * Disk size = 4172752K. Space Used = 82944K.
  * The following NEW packages will be installed:
  ```bash
  cpp-4.8 dkms gcc gcc-4.8 gcc-4.9 libasan0 libasan1 libc-dev-bin libc6-dev
  libcilkrts5 libgcc-4.8-dev libgcc-4.9-dev libitm1 liblsan0 libtsan0
  libubsan0 linux-compiler-gcc-4.8-x86 linux-headers-3.16.0-4-amd64
  linux-headers-3.16.0-4-common linux-kbuild-3.16 linux-libc-dev make patch
  ```
* >>>>>>>>> Running inst-xtra-wifite.sh ...
  * After this operation, 80.3 MB of additional disk space will be used.
  * Install wifite.
  * Disk size = 4495200K. Space Used = 93404K.
  * The following NEW packages will be installed:
  ```bash
  aircrack-ng iw libc-ares2 libgeoip1 libpcap0.8 libsmi2ldbl libwireshark-data
  libwireshark5 libwiretap4 libwsutil4 pyrit reaver tshark wifite
  wireshark-common
  ```
* >>>>>>>>> Running inst-xtra-wine-diablo2.sh ...
  * After this operation, 631 kB of additional disk space will be used.
  * Install libjpeg-turbo-progs & libldap-2.4-2 so that Blizzard Downloader will not fail.
  * Disk size = 4496040K. Space Used = 840K.
  * The following NEW packages will be installed:
  ```bash
  libjpeg-turbo-progs libturbojpeg1
  ```
* >>>>>>>>> Running inst-xtra-wine.sh ...
  * After this operation, 190 MB of additional disk space will be used.
  * Install wine so that you can run Windows applications.
  * You need to run 'wine winecfg' before using wine. This is a workaround of a bug.
  * Disk size = 4729600K. Space Used = 233560K.
  * The following NEW packages will be installed:
  ```bash
  file iso-codes libgstreamer-plugins-base0.10-0 libgstreamer0.10-0 libwine
  libwine-gecko-2.21 wine wine64
  ```
* >>>>>>>>> Running inst-xtra-xmpv.sh ...
  * Install xmpv.
  * Disk size = 4729648K. Space Used = 48K.
* >>>>>>>>> Running inst-xtra-zfs.sh ...
  * After this operation, 15.8 MB of additional disk space will be used.
  * After this operation, 78.0 MB of additional disk space will be used.
  * Install lsb-release.
  * Add zfsonlinux repository to /etc/apt/sources.list.d/zfsonlinux.list.
  * Add GPG key to /etc/apt/trusted.gpg.d/zfsonlinux.gpg.
  * Install debian-zfs: version: 0.6.5.2-2, DKMS style package. DKMS vs KMOD, see http://zfsonlinux.org/generic-deb.html
  * Delete zfsonlinux_6_all.deb[1992K].
  * Disk size = 4868904K. Space Used = 139256K.
  * The following NEW packages will be installed:
  ```bash
  libc-dev-bin libc6-dev linux-libc-dev lsb-release
  cpp-4.8 debian-zfs dkms gcc-4.8 libasan0 libgcc-4.8-dev libnvpair1 libuutil1
  libzfs2 libzpool2 linux-compiler-gcc-4.8-x86 linux-headers-3.16.0-4-amd64
  linux-headers-3.16.0-4-common linux-headers-amd64 linux-kbuild-3.16 patch
  spl spl-dkms zfs-dkms zfsutils
  ```
* >>>>>>>>> Running inst-zclean-00-remove-block-services.sh ...
  * Remove block services from starting after they are being installed.
  * Disk size = 2114636K. Space Used = 0K.
* >>>>>>>>> Running inst-zclean-00-zerosizing-docs.sh ...
  * Zero size all documents in /usr/share/.
  * Disk size = 2066320K. Space Used = -48316K.
* >>>>>>>>> Running inst-zclean-99-end-cleanup.sh ...
  * Clean apt-get cache.
  * rm -rf /tmp/*.
  * Umount /sys, /dev/pts and /proc.
  * Add Debian main repositories in sources.list.
  * Delete local Debian repository from sources.list.
  * Disk size = 1837292K. Space Used = -229028K.
