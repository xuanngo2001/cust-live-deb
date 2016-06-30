* >>>>>>>>> Running install.sh ...
  * Running on SHELL=/bin/bash VER=4.3.30(1)-release
  * Disk size = 1532476K. Space Used = 1532476K.
* >>>>>>>>> Running inst-min-con-00-apt-custom-repository.sh ...
  * Disk size = 1534488K. Space Used = 2012K.
* >>>>>>>>> Running inst-min-con-00-linux-image.sh ...
  * After this operation, 3112 kB of additional disk space will be used.
  * After this operation, 182 MB of additional disk space will be used.
  * Generate dbus-uuidgen to /var/lib/dbus/machine-id.
  * Install Linux image: 4.6.0-0.bpo.1-amd64.
  * Disk size = 1797232K. Space Used = 262744K.
  * The following NEW packages will be installed:
  ```bash
  dbus dialog libcap-ng0 libdbus-1-3 libexpat1
  busybox-static firmware-linux-free initramfs-tools klibc-utils libklibc
  linux-base linux-image-4.6.0-0.bpo.1-amd64 linux-image-amd64 live-boot
  live-boot-initramfs-tools rsync
  ```
* >>>>>>>>> Running inst-min-con-01-apt.sh ...
  * Set APT to use local repository first.
  * Set APT to skip installing recommended packages.
  * Disk size = 1797244K. Space Used = 12K.
* >>>>>>>>> Running inst-min-con-01-debconf-utils.sh ...
  * After this operation, 157 kB of additional disk space will be used.
  * Install debconf-utils to use debconf-set-selections.
  * Disk size = 1797452K. Space Used = 208K.
  * The following NEW packages will be installed:
  ```bash
  debconf-utils
  ```
* >>>>>>>>> Running inst-min-con-02-localepurge.sh ...
  * After this operation, 334 kB of additional disk space will be used.
  * Install localepurge to purge documentation of all languages, except en, en_US, en_US.UTF-8.
  * Reconfigure localepurge: dpkg-reconfigure localepurge
  * Disk size = 1820956K. Space Used = 748K.
  * The following NEW packages will be installed:
  ```bash
  localepurge ucf
  ```
* >>>>>>>>> Running inst-min-con-02-locale.sh ...
  * After this operation, 16.7 MB of additional disk space will be used.
  * Install locale and set it to use en_US.UTF-8.
  * Disk size = 1820208K. Space Used = 22756K.
  * The following NEW packages will be installed:
  ```bash
  locales
  ```
* >>>>>>>>> Running inst-min-con-03-proxy.sh ...
  * Disk size = 1820968K. Space Used = 12K.
* >>>>>>>>> Running inst-min-con-03-startup-script.sh ...
  * Copy startup.sh to /etc/init.d/.
  * Make it executable.
  * Register it in the boot sequence.
  * Disk size = 1820980K. Space Used = 12K.
* >>>>>>>>> Running inst-min-con-04-block-services-start-postinstall.sh ...
  * Block services from starting after they are being installed.
  * Disk size = 1820988K. Space Used = 8K.
* >>>>>>>>> Running inst-min-con-auto-log-root.sh ...
  * Disk size = 1821000K. Space Used = 12K.
* >>>>>>>>> Running inst-min-con-bashrc.sh ...
  * Set common settings for /root/.bashrc.
  * Set dircolors to use dircolors-gnu-ls-colors.txt to make ls more beautiful.
  * Disk size = 1821012K. Space Used = 12K.
* >>>>>>>>> Running inst-min-con-cld-dev-tools-debootstrap.sh ...
  * After this operation, 245 kB of additional disk space will be used.
  * Install debootstrap allows the creation of a Debian base system in a directory.
  * Disk size = 1821348K. Space Used = 336K.
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
  * Disk size = 1821400K. Space Used = 52K.
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
  * Disk size = 1826452K. Space Used = 5052K.
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
  * Disk size = 1826480K. Space Used = 28K.
* >>>>>>>>> Running inst-min-con-filesystem-exfat.sh ...
  * After this operation, 555 kB of additional disk space will be used.
  * After this operation, 236 kB of additional disk space will be used.
  * Install exfat-fuse so that you can read and write SD cards and USB keys.
  * Disk size = 1827684K. Space Used = 1204K.
  * The following NEW packages will be installed:
  ```bash
  exfat-fuse fuse libfuse2
  exfat-utils
  ```
* >>>>>>>>> Running inst-min-con-filesystem-ntfs-3g.sh ...
  * After this operation, 1,632 kB of additional disk space will be used.
  * Install support for NTFS: ntfs-3g.
  * Disk size = 1829848K. Space Used = 2164K.
  * The following NEW packages will be installed:
  ```bash
  ntfs-3g
  ```
* >>>>>>>>> Running inst-min-con-firmware-cpu.sh ...
  * After this operation, 48.1 kB of additional disk space will be used.
  * After this operation, 634 kB of additional disk space will be used.
  * Install CPU firmware: amd64-microcode.
  * Install CPU firmware: intel-microcode.
  * Disk size = 1831260K. Space Used = 1412K.
  * The following NEW packages will be installed:
  ```bash
  amd64-microcode
  intel-microcode iucode-tool
  ```
* >>>>>>>>> Running inst-min-con-firmware-net-b43-installer.sh ...
  * After this operation, 100 kB of additional disk space will be used.
  * Install b43 for Dell Wireless 1397 WLAN Mini-Card Driver.
  * Disk size = 1868964K. Space Used = 37704K.
  * The following NEW packages will be installed:
  ```bash
  b43-fwcutter
  ```
* >>>>>>>>> Running inst-min-con-firmware.sh ...
  * After this operation, 87.1 MB of additional disk space will be used.
  * Install firmwares: atmel-firmware, bluez-firmware, firmware-atheros, firmware-bnx2, firmware-bnx2x, firmware-brcm80211, firmware-intelwimax, firmware-ipw2x00, firmware-ivtv, firmware-iwlwifi, firmware-libertas, firmware-linux, firmware-linux-free, firmware-misc-nonfree, firmware-linux-nonfree, firmware-qlogic, firmware-realtek, firmware-zd1211.
  * Disk size = 1977452K. Space Used = 108488K.
  * The following NEW packages will be installed:
  ```bash
  atmel-firmware bluez-firmware firmware-amd-graphics firmware-atheros
  firmware-bnx2 firmware-bnx2x firmware-brcm80211 firmware-intelwimax
  firmware-ipw2x00 firmware-ivtv firmware-iwlwifi firmware-libertas
  firmware-linux firmware-linux-nonfree firmware-misc-nonfree firmware-qlogic
  firmware-realtek firmware-zd1211
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
  * Disk size = 1981044K. Space Used = 3592K.
  * The following NEW packages will be installed:
  ```bash
  isolinux
  libburn4 libisoburn1 libisofs6 libjte1 xorriso
  liblzo2-2 squashfs-tools
  ```
* >>>>>>>>> Running inst-min-con-mtp-00-libmtp9-bpo.sh ...
  * After this operation, 2,405 kB of additional disk space will be used.
  * Install backport version of libmtp9 to support the most smartphones.
  * Disk size = 1983824K. Space Used = 2780K.
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
  * Disk size = 1987476K. Space Used = 3652K.
  * The following NEW packages will be installed:
  ```bash
  jmtpfs libmagic1
  ```
* >>>>>>>>> Running inst-min-con-ntp.sh ...
  * After this operation, 1,871 kB of additional disk space will be used.
  * Install Network Time Protocol: ntp.
  * Disk size = 1989996K. Space Used = 2520K.
  * The following NEW packages will be installed:
  ```bash
  libbsd0 libedit2 libopts25 ntp
  ```
* >>>>>>>>> Running inst-min-con-numlock.sh ...
  * After this operation, 4,381 kB of additional disk space will be used.
  * Install numlockx to turn on NumLock on boot.
  * Disk size = 1996552K. Space Used = 6556K.
  * The following NEW packages will be installed:
  ```bash
  libx11-6 libx11-data libxau6 libxcb1 libxdmcp6 libxext6 libxi6 libxtst6
  numlockx x11-common
  ```
* >>>>>>>>> Running inst-min-con-pciutils.sh ...
  * After this operation, 1,181 kB of additional disk space will be used.
  * Install pciutils to troubleshoot pci devices(i.e. lspci).
  * Disk size = 1998124K. Space Used = 1572K.
  * The following NEW packages will be installed:
  ```bash
  libpci3 pciutils
  ```
* >>>>>>>>> Running inst-min-con-snd-alsa.sh ...
  * After this operation, 5,270 kB of additional disk space will be used.
  * Install ALSA sound.
  * Test sound: aplay /usr/share/sounds/alsa/*.
  * Add key bindings.
  * Disk size = 2005972K. Space Used = 7848K.
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
  * Disk size = 2013960K. Space Used = 7988K.
  * The following NEW packages will be installed:
  ```bash
  libglib2.0-0 udevil
  ```
* >>>>>>>>> Running inst-min-con-xtra-buffer-pv.sh ...
  * After this operation, 166 kB of additional disk space will be used.
  * Install pv.
  * Disk size = 2014120K. Space Used = 160K.
  * The following NEW packages will be installed:
  ```bash
  pv
  ```
* >>>>>>>>> Running inst-min-con-xtra-buffer.sh ...
  * After this operation, 71.7 kB of additional disk space will be used.
  * Install buffer.
  * Disk size = 2014200K. Space Used = 80K.
  * The following NEW packages will be installed:
  ```bash
  buffer
  ```
* >>>>>>>>> Running inst-min-con-xtra-cld-dev-tools-aptly.sh ...
  * After this operation, 483 kB of additional disk space will be used.
  * Add aptly nightly build repository.
  * Install aptly version: 0.9.7~dev to create local debian repository.
  * Add xz-utils package because aptly snapshot merge needs it.
  * Disk size = 2037916K. Space Used = 23716K.
  * The following NEW packages will be installed:
  ```bash
  aptly xz-utils
  ```
* >>>>>>>>> Running inst-min-con-xtra-cld-dev-virtualbox-guest-additions.sh ...
  * After this operation, 102 MB of additional disk space will be used.
  * After this operation, 133 MB of additional disk space will be used.
  * After this operation, 6,555 kB of additional disk space will be used.
  * Install virtualbox-guest-utils to access shared folder. No need for x11. Less error prone.
  * VirtualBox guest additions installed: ERROR: VirtualBox guest additions installation failed!.
  * Disk size = 2261652K. Space Used = 223736K.
  * The following NEW packages will be installed:
  ```bash
  binutils cpp-4.9 gcc-4.9 libasan1 libatomic1 libcilkrts5 libcloog-isl4
  libgcc-4.9-dev libgomp1 libisl10 libitm1 liblsan0 libmpc3 libmpfr4
  libquadmath0 libtsan0 libubsan0 linux-compiler-gcc-4.9-x86
  linux-headers-4.6.0-0.bpo.1-amd64 linux-headers-4.6.0-0.bpo.1-common
  linux-headers-amd64 linux-kbuild-4.6
  binutils cpp cpp-4.9 dkms gcc gcc-4.9 guile-2.0-libs libasan1 libatomic1
  libc-dev-bin libc6-dev libcilkrts5 libcloog-isl4 libgc1c2 libgcc-4.9-dev
  libgomp1 libisl10 libitm1 liblsan0 libltdl7 libmpc3 libmpfr4 libquadmath0
  libtsan0 libubsan0 libunistring0 linux-compiler-gcc-4.9-x86
  linux-headers-4.6.0-0.bpo.1-amd64 linux-headers-4.6.0-0.bpo.1-common
  linux-kbuild-4.6 linux-libc-dev make-guile patch
  virtualbox-guest-dkms virtualbox-guest-utils
  ```
* >>>>>>>>> Running inst-min-con-xtra-curl.sh ...
  * After this operation, 4,012 kB of additional disk space will be used.
  * Install curl.
  * Disk size = 2267540K. Space Used = 5888K.
  * The following NEW packages will be installed:
  ```bash
  curl libcurl3 libgssapi-krb5-2 libk5crypto3 libkeyutils1 libkrb5-3
  libkrb5support0 libldap-2.4-2 librtmp1 libsasl2-2 libsasl2-modules-db
  libssh2-1
  ```
* >>>>>>>>> Running inst-min-con-xtra-dev-tool-java-jdk.sh ...
  * After this operation, 143 MB of additional disk space will be used.
  * Install JAVA JDK: default-jdk.
  * Disk size = 2488068K. Space Used = 220528K.
  * The following NEW packages will be installed:
  ```bash
  ca-certificates ca-certificates-java default-jdk default-jre
  default-jre-headless fontconfig fontconfig-config fonts-dejavu-core
  java-common libasyncns0 libatk-wrapper-java libatk-wrapper-java-jni
  libatk1.0-0 libatk1.0-data libavahi-client3 libavahi-common-data
  libavahi-common3 libcairo2 libcups2 libdatrie1 libdrm2 libflac8
  libfontconfig1 libfreetype6 libgdk-pixbuf2.0-0 libgdk-pixbuf2.0-common
  libgif4 libgl1-mesa-glx libglapi-mesa libgraphite2-3 libgtk2.0-0
  libgtk2.0-common libharfbuzz0b libice6 libjasper1 libjbig0 libjpeg62-turbo
  liblcms2-2 libnspr4 libnss3 libogg0 libpango-1.0-0 libpangocairo-1.0-0
  libpangoft2-1.0-0 libpcsclite1 libpixman-1-0 libpng12-0 libpulse0 libsctp1
  libsm6 libsndfile1 libsqlite3-0 libthai-data libthai0 libtiff5 libvorbis0a
  libvorbisenc2 libwrap0 libx11-xcb1 libxcb-dri2-0 libxcb-dri3-0 libxcb-glx0
  libxcb-present0 libxcb-render0 libxcb-shm0 libxcb-sync1 libxcomposite1
  libxcursor1 libxdamage1 libxfixes3 libxinerama1 libxml2 libxrandr2
  libxrender1 libxshmfence1 libxxf86vm1 openjdk-7-jdk openjdk-7-jre
  openjdk-7-jre-headless openssl shared-mime-info tzdata-java
  ```
* >>>>>>>>> Running inst-min-con-xtra-dev-tool-tree.sh ...
  * After this operation, 102 kB of additional disk space will be used.
  * Install tree to display files and directories structure.
  * Disk size = 2488248K. Space Used = 180K.
  * The following NEW packages will be installed:
  ```bash
  tree
  ```
* >>>>>>>>> Running inst-min-con-xtra-gnuplot.sh ...
  * After this operation, 34.0 MB of additional disk space will be used.
  * Install gnuplot.
  * Disk size = 2532292K. Space Used = 44044K.
  * The following NEW packages will be installed:
  ```bash
  aglfn gnuplot gnuplot-data gnuplot-qt gnuplot-tex libaudio2 libgd3
  liblua5.1-0 libmng1 libqt4-network libqt4-svg libqt4-xml libqtcore4
  libqtdbus4 libqtgui4 libvpx1 libxpm4 libxt6 qtcore4-l10n
  ```
* >>>>>>>>> Running inst-min-con-xtra-imagemagick.sh ...
  * After this operation, 13.1 MB of additional disk space will be used.
  * Install imagemagick to process image from command line.
  * Disk size = 2549368K. Space Used = 17076K.
  * The following NEW packages will be installed:
  ```bash
  hicolor-icon-theme imagemagick imagemagick-6.q16 imagemagick-common
  libfftw3-double3 liblqr-1-0 libmagickcore-6.q16-2 libmagickwand-6.q16-2
  ```
* >>>>>>>>> Running inst-min-con-xtra-iso-iat.sh ...
  * After this operation, 65.5 kB of additional disk space will be used.
  * Install iat to convert BIN, MDF, PDI, CDI, NRG, and B5I into ISO-9660.
  * Disk size = 2549420K. Space Used = 52K.
  * The following NEW packages will be installed:
  ```bash
  iat
  ```
* >>>>>>>>> Running inst-min-con-xtra-java-jre.sh ...
  * Install JAVA JRE: default-jre.
  * Disk size = 2549424K. Space Used = 4K.
* >>>>>>>>> Running inst-min-con-xtra-locate.sh ...
  * After this operation, 324 kB of additional disk space will be used.
  * Install locate to generate an index of files and directories. Searching for files will be much faster.
  * Add locate alias.
  * Run updatedb to update the database.
  * Disk size = 2549988K. Space Used = 564K.
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
  * Disk size = 2550876K. Space Used = 888K.
  * The following NEW packages will be installed:
  ```bash
  macchanger
  ```
* >>>>>>>>> Running inst-min-con-xtra-mariadb-server.sh ...
  * After this operation, 164 MB of additional disk space will be used.
  * Disk size = 2843436K. Space Used = 292560K.
  * The following NEW packages will be installed:
  ```bash
  libaio1 libdbi-perl libreadline5 libterm-readkey-perl mariadb-client-10.0
  mariadb-client-core-10.0 mariadb-common mariadb-server mariadb-server-10.0
  mariadb-server-core-10.0 mysql-common perl perl-modules psmisc
  ```
* >>>>>>>>> Running inst-min-con-xtra-mtran.sh ...
  * Copied /root/scripts/repository/inst-min-con-xtra-mtran/mtran.sh to /usr/local/bin/.
  * Disk size = 2843448K. Space Used = 12K.
* >>>>>>>>> Running inst-min-con-xtra-pdf-poppler-utils.sh ...
  * After this operation, 4,138 kB of additional disk space will be used.
  * Install poppler-utils to extract text from pdf files.
  * Disk size = 2848984K. Space Used = 5536K.
  * The following NEW packages will be installed:
  ```bash
  libopenjpeg5 libpoppler46 poppler-utils
  ```
* >>>>>>>>> Running inst-min-con-xtra-php5.sh ...
  * After this operation, 27.9 MB of additional disk space will be used.
  * Install php5.
  * Disk size = 2886120K. Space Used = 37136K.
  * The following NEW packages will be installed:
  ```bash
  apache2 apache2-bin apache2-data apache2-utils libapache2-mod-php5 libapr1
  libaprutil1 libaprutil1-dbd-sqlite3 libaprutil1-ldap libonig2
  libperl4-corelibs-perl libqdbm14 lsof mime-support php5 php5-cli php5-common
  php5-json
  ```
* >>>>>>>>> Running inst-min-con-xtra-timezone.sh ...
  * Set time zone to EST (America/Montreal) in /etc/timezone.
  * Disk size = 2886124K. Space Used = 4K.
* >>>>>>>>> Running inst-min-win-00-xorg.sh ...
  * After this operation, 67.6 MB of additional disk space will be used.
  * Set keyboard to use US international.
  * Install minimum Xorg X server.
  * Install xinit so you can run startx.
  * Add auto start window manager(i.e startx).
  * Disk size = 2972732K. Space Used = 86608K.
  * The following NEW packages will be installed:
  ```bash
  keyboard-configuration libdrm-intel1 libdrm-nouveau2 libdrm-radeon1
  libegl1-mesa libelf1 libepoxy0 libevdev2 libfontenc1 libgbm1 libllvm3.5
  libmtdev1 libpciaccess0 libwayland-client0 libwayland-server0 libxatracker2
  libxaw7 libxcb-shape0 libxcb-util0 libxcb-xfixes0 libxfont1 libxkbfile1
  libxmu6 libxmuu1 libxv1 libxvmc1 x11-xkb-utils xauth xinit xkb-data
  xserver-common xserver-xorg xserver-xorg-core xserver-xorg-input-all
  xserver-xorg-input-evdev xserver-xorg-input-mouse
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
  * Install fonts-dejavu-core to fix characters overlap with xfce4-terminal(e.g. mkdir).
  * Disk size = 2972736K. Space Used = 4K.
* >>>>>>>>> Running inst-min-win-01-wm-jwm-bpo.sh ...
  * After this operation, 3,660 kB of additional disk space will be used.
  * Install Window Manager: JWM v2.3.5 by Joe Wingbermuehle.
  * Set jwmrc.
  * Disk size = 2977944K. Space Used = 5208K.
  * The following NEW packages will be installed:
  ```bash
  jwm libcroco3 libfribidi0 librsvg2-2 libutempter0 libxft2 xbitmaps xterm
  ```
* >>>>>>>>> Running inst-min-win-cld-dev-tools-pandoc.sh ...
  * After this operation, 38.6 MB of additional disk space will be used.
  * Install pandoc to generate user manual.
  * Disk size = 3020428K. Space Used = 42484K.
  * The following NEW packages will be installed:
  ```bash
  libyaml-0-2 pandoc pandoc-data
  ```
* >>>>>>>>> Running inst-min-win-cld-win-split.sh ...
  * After this operation, 81.9 kB of additional disk space will be used.
  * After this operation, 654 kB of additional disk space will be used.
  * Install required applications for cld-win-split.sh: wmctrl and x11-utils for xprop.
  * Add key bindings: Ctrl+Alt+Left, Right, Up, Down, 1, 2, 3, 4, 5, 6, 7, 8, 9.
  * Disk size = 3021504K. Space Used = 1076K.
  * The following NEW packages will be installed:
  ```bash
  wmctrl
  libxxf86dga1 x11-utils
  ```
* >>>>>>>>> Running inst-min-win-jwm-help-manuals-text.sh ...
  * Add Help menu in JWM.
  * Disk size = 3021536K. Space Used = 32K.
* >>>>>>>>> Running inst-min-win-jwm-keys-alsa.sh ...
  * Add ALSA key binding.
  * Add script to auto-detect ALSA controller on JWM startup.
  * Disk size = 3021548K. Space Used = 12K.
* >>>>>>>>> Running inst-min-win-menu.sh ...
  * After this operation, 1,829 kB of additional disk space will be used.
  * Install menu, an easy way to get installed programs in the menu automatically.
  * For how to use Debian menu, see https://www.debian.org/doc/packaging-manuals/menu.html/ch3.html.
  * Disk size = 3022824K. Space Used = 1276K.
  * The following NEW packages will be installed:
  ```bash
  menu
  ```
* >>>>>>>>> Running inst-min-win-systray-volumeicon-alsa.sh ...
  * After this operation, 243 kB of additional disk space will be used.
  * Install volume controller in system tray.
  * Set left-click to display volume slider: lmb_slider=true.
  * Set volumeicon to run on JWN startup.
  * Disk size = 3023308K. Space Used = 484K.
  * The following NEW packages will be installed:
  ```bash
  libnotify4 volumeicon-alsa
  ```
* >>>>>>>>> Running inst-min-xtra-encoding-libtext-iconv-perl.sh ...
  * Install libtext-iconv-perl so that you can use iconv to convert to other encoding.
  * Disk size = 3023312K. Space Used = 4K.
* >>>>>>>>> Running inst-min-xtra-fonts-asian.sh ...
  * After this operation, 48.2 MB of additional disk space will be used.
  * Install fonts-hanazono to display Asian characters correctly.
  * Test it by opening website http://ctext.org/zh.
  * Disk size = 3089308K. Space Used = 65996K.
  * The following NEW packages will be installed:
  ```bash
  fonts-hanazono
  ```
* >>>>>>>>> Running inst-std-00-jwm.sh ...
  * Add default standard menus in JWM.
  * Disk size = 3089312K. Space Used = 4K.
* >>>>>>>>> Running inst-std-accessories-calc-speedcrunch.sh ...
  * After this operation, 1,830 kB of additional disk space will be used.
  * Install calculator: speedcrunch.
  * Insert speedcrunch in Accessories menu.
  * Disk size = 3092456K. Space Used = 3144K.
  * The following NEW packages will be installed:
  ```bash
  speedcrunch
  ```
* >>>>>>>>> Running inst-std-accessories-feh.sh ...
  * After this operation, 3,310 kB of additional disk space will be used.
  * Install command line image viewer: feh.
  * Disk size = 3094808K. Space Used = 2352K.
  * The following NEW packages will be installed:
  ```bash
  feh libexif12 libid3tag0 libimlib2
  ```
* >>>>>>>>> Running inst-std-accessories-gpicview.sh ...
  * After this operation, 876 kB of additional disk space will be used.
  * Install Image Viewer: gpicview.
  * Insert gpicview in Accessories menu.
  * Disk size = 3095152K. Space Used = 344K.
  * The following NEW packages will be installed:
  ```bash
  gpicview
  ```
* >>>>>>>>> Running inst-std-accessories-mupdf.sh ...
  * After this operation, 12.0 MB of additional disk space will be used.
  * Install PDF reader: Mupdf.
  * Disk size = 3110500K. Space Used = 15348K.
  * The following NEW packages will be installed:
  ```bash
  libjbig2dec0 libopenjp2-7 mupdf
  ```
* >>>>>>>>> Running inst-std-accessories-prtscr-gnome-screenshot.sh ...
  * After this operation, 55.3 MB of additional disk space will be used.
  * Install gnome-screenshot to be used for PrintScreen key.
  * Insert PrintScreen key binding.
  * By default, screenshots are saved under ~/Pictures/.
  * Disk size = 3163648K. Space Used = 53148K.
  * The following NEW packages will be installed:
  ```bash
  adwaita-icon-theme dconf-gsettings-backend dconf-service glib-networking
  glib-networking-common glib-networking-services gnome-screenshot
  gsettings-desktop-schemas libatk-bridge2.0-0 libatspi2.0-0 libcairo-gobject2
  libcanberra-gtk3-0 libcanberra0 libcolord2 libdconf1 libgtk-3-0 libgtk-3-bin
  libgtk-3-common libjson-glib-1.0-0 libjson-glib-1.0-common libproxy1
  librest-0.7-0 librsvg2-common libsoup-gnome2.4-1 libsoup2.4-1 libtdb1
  libvorbisfile3 libwayland-cursor0 libxkbcommon0
  ```
* >>>>>>>>> Running inst-std-accessories-scite.sh ...
  * After this operation, 4,829 kB of additional disk space will be used.
  * After this operation, 221 kB of additional disk space will be used.
  * Install Text Editor: SciTE.
  * Install at-spi2-core to shut up Accessibility warning message.
  * Insert SciTE in Accessories menu.
  * Disk size = 3170180K. Space Used = 6532K.
  * The following NEW packages will be installed:
  ```bash
  scite
  at-spi2-core
  ```
* >>>>>>>>> Running inst-std-accessories-terminal-xfce.sh ...
  * After this operation, 11.1 MB of additional disk space will be used.
  * Install terminal: xfce4-terminal.
  * Disk size = 3179520K. Space Used = 9340K.
  * The following NEW packages will be installed:
  ```bash
  dbus-x11 exo-utils libdbus-glib-1-2 libexo-1-0 libexo-common libexo-helpers
  libpango1.0-0 libpangox-1.0-0 libpangoxft-1.0-0 libstartup-notification0
  libvte-common libvte9 libxfce4ui-1-0 libxfce4util-common libxfce4util6
  libxfconf-0-2 xfce-keyboard-shortcuts xfce4-terminal xfconf
  ```
* >>>>>>>>> Running inst-std-accessories-thunar.sh ...
  * After this operation, 10.0 MB of additional disk space will be used.
  * Install File Manger: thunar, thunar-media-tags-plugin, thunar-archive-plugin, thunar-volman.
  * Insert Thunar in Accessories menu.
  * Disk size = 3185892K. Space Used = 6372K.
  * The following NEW packages will be installed:
  ```bash
  desktop-file-utils libgudev-1.0-0 libtag1-vanilla libtag1c2a libtagc0
  libthunarx-2-0 thunar thunar-archive-plugin thunar-data
  thunar-media-tags-plugin thunar-volman
  ```
* >>>>>>>>> Running inst-std-accessories-xarchiver.sh ...
  * After this operation, 1,529 kB of additional disk space will be used.
  * Install Archive Manager: xarchiver.
  * Disk size = 3187128K. Space Used = 1236K.
  * The following NEW packages will be installed:
  ```bash
  xarchiver
  ```
* >>>>>>>>> Running inst-std-font-fonts-liberation.sh ...
  * After this operation, 2,178 kB of additional disk space will be used.
  * Install fonts-liberation to get free variants of the Times, Arial and Courier fonts.
  * Otherwise, install ttf-mscorefonts-installer to get Microsoft TrueType core fonts.
  * Disk size = 3190140K. Space Used = 3012K.
  * The following NEW packages will be installed:
  ```bash
  fonts-liberation
  ```
* >>>>>>>>> Running inst-std-graphic-pinta.sh ...
  * After this operation, 36.4 MB of additional disk space will be used.
  * Install Image Editor: Pinta.
  * Insert Pinta menu in Graphics.
  * Disk size = 3251672K. Space Used = 61532K.
  * The following NEW packages will be installed:
  ```bash
  cli-common gnome-icon-theme libgdiplus libglib2.0-cil libgtk2.0-cil
  libmono-addins-gui0.2-cil libmono-addins0.2-cil libmono-cairo4.0-cil
  libmono-corlib4.5-cil libmono-posix4.0-cil libmono-security4.0-cil
  libmono-sharpzip4.84-cil libmono-system-configuration4.0-cil
  libmono-system-core4.0-cil libmono-system-drawing4.0-cil
  libmono-system-security4.0-cil libmono-system-xml4.0-cil
  libmono-system4.0-cil mono-4.0-gac mono-gac mono-runtime mono-runtime-common
  mono-runtime-sgen pinta
  ```
* >>>>>>>>> Running inst-std-help-manuals-html.sh ...
  * Add user & developer manuals in Help menu.
  * Disk size = 3251736K. Space Used = 64K.
* >>>>>>>>> Running inst-std-internet-iceweasel-bpo.sh ...
  * After this operation, 101 MB of additional disk space will be used.
  * After this operation, 752 kB of additional disk space will be used.
  * Install the latest Firefox from Debian Mozilla team: Mozilla Firefox 45.2.0.
  * Insert Iceweasel in Internet menu.
  * To update Adobe Flash Player: update-flashplugin-nonfree --install.
  * To test Adobe Flash Player: http://www.adobe.com/software/flash/about/.
  * Disk size = 3420880K. Space Used = 169144K.
  * The following NEW packages will be installed:
  ```bash
  firefox-esr iceweasel libevent-2.0-5 libhunspell-1.3-0
  flashplugin-nonfree libcurl3-gnutls
  ```
* >>>>>>>>> Running inst-std-multimedia-mpv.sh ...
  * After this operation, 208 kB of additional disk space will be used.
  * After this operation, 22.7 MB of additional disk space will be used.
  * After this operation, 33.8 MB of additional disk space will be used.
  * After this operation, 27.9 MB of additional disk space will be used.
  * After this operation, 24.9 MB of additional disk space will be used.
  * After this operation, 159 kB of additional disk space will be used.
  * After this operation, 224 kB of additional disk space will be used.
  * After this operation, 180 kB of additional disk space will be used.
  * After this operation, 86.0 kB of additional disk space will be used.
  * After this operation, 43.2 MB of additional disk space will be used.
  * After this operation, 154 kB of additional disk space will be used.
  * After this operation, 143 kB of additional disk space will be used.
  * After this operation, 869 kB of additional disk space will be used.
  * After this operation, 81.3 MB of additional disk space will be used.
  * Install Media Player: mpv 0.8.3 .
  * Add multiple aliases for MPV.
  * Add useful mpv keybindings settings.
  * Disk size = 3535884K. Space Used = 115004K.
  * The following NEW packages will be installed:
  ```bash
  libavc1394-0 libraw1394-11
  libaacplus2 libavcodec56 libavutil54 libcrystalhd3 libfaac0 libfdk-aac1
  libgsm1 libmp3lame0 libopencore-amrnb0 libopencore-amrwb0 libopus0
  liborc-0.4-0 libschroedinger-1.0-0 libspeex1 libswresample1 libtheora0
  libutvideo15 libva1 libvo-aacenc0 libvo-amrwbenc0 libx264-146 libx265-51
  libxvidcore4 libzvbi-common libzvbi0
  libaacplus2 libass5 libavc1394-0 libavcodec56 libavdevice56 libavfilter5
  libavformat56 libavresample2 libavutil54 libbluray1 libcaca0 libcdio-cdda1
  libcdio-paranoia1 libcdio13 libcrystalhd3 libdc1394-22 libdirectfb-1.2-9
  libenca0 libfaac0 libfdk-aac1 libgsm1 libiec61883-0 libjack-jackd2-0
  libmp3lame0 libopencore-amrnb0 libopencore-amrwb0 libopus0 liborc-0.4-0
  libpostproc53 libraw1394-11 libschroedinger-1.0-0 libsdl1.2debian libspeex1
  libswresample1 libswscale3 libtheora0 libutvideo15 libva1 libvidstab1.0
  libvo-aacenc0 libvo-amrwbenc0 libx264-146 libx265-51 libxvidcore4
  libzvbi-common libzvbi0
  libaacplus2 libass5 libavcodec56 libavfilter5 libavformat56 libavresample2
  libavutil54 libbluray1 libcrystalhd3 libenca0 libfaac0 libfdk-aac1 libgsm1
  libmp3lame0 libopencore-amrnb0 libopencore-amrwb0 libopus0 liborc-0.4-0
  libpostproc53 libschroedinger-1.0-0 libspeex1 libswresample1 libswscale3
  libtheora0 libutvideo15 libva1 libvidstab1.0 libvo-aacenc0 libvo-amrwbenc0
  libx264-146 libx265-51 libxvidcore4 libzvbi-common libzvbi0
  libaacplus2 libavcodec56 libavformat56 libavutil54 libbluray1 libcrystalhd3
  libfaac0 libfdk-aac1 libgsm1 libmp3lame0 libopencore-amrnb0
  libopencore-amrwb0 libopus0 liborc-0.4-0 libschroedinger-1.0-0 libspeex1
  libswresample1 libtheora0 libutvideo15 libva1 libvo-aacenc0 libvo-amrwbenc0
  libx264-146 libx265-51 libxvidcore4 libzvbi-common libzvbi0
  libcrystalhd3
  libiec61883-0 libraw1394-11
  libopencore-amrnb0
  libopencore-amrwb0
  libldb1 libntdb1 libpython-stdlib libpython2.7 libpython2.7-minimal
  libpython2.7-stdlib libsmbclient libtalloc2 libtevent0 libwbclient0 python
  python-minimal python-talloc python2.7 python2.7-minimal samba-libs
  libvo-aacenc0
  libvo-amrwbenc0
  libzvbi-common libzvbi0
  libaacplus2 libass5 libavc1394-0 libavcodec56 libavdevice56 libavfilter5
  libavformat56 libavresample2 libavutil54 libbluray1 libbs2b0 libcaca0
  libcdio-cdda1 libcdio-paranoia1 libcdio13 libcrystalhd3 libdc1394-22
  libdirectfb-1.2-9 libdvdnav4 libdvdread4 libenca0 libfaac0 libfdk-aac1
  libgsm1 libguess1 libiec61883-0 libjack-jackd2-0 libldb1 liblircclient0
  liblua5.2-0 libmowgli-2-0 libmp3lame0 libmpg123-0 libntdb1 libopenal-data
  libopenal1 libopencore-amrnb0 libopencore-amrwb0 libopus0 liborc-0.4-0
  libpostproc53 libpython-stdlib libpython2.7 libpython2.7-minimal
  libpython2.7-stdlib libraw1394-11 libschroedinger-1.0-0 libsdl1.2debian
  libsmbclient libspeex1 libswresample1 libswscale3 libtalloc2 libtevent0
  libtheora0 libutvideo15 libv4l-0 libv4lconvert0 libva-glx1 libva-x11-1
  libva1 libvdpau1 libvidstab1.0 libvo-aacenc0 libvo-amrwbenc0
  libwayland-egl1-mesa libwbclient0 libx264-146 libx265-51 libxss1
  libxvidcore4 libzvbi-common libzvbi0 mpv python python-minimal python-talloc
  python2.7 python2.7-minimal samba-libs
  ```
* >>>>>>>>> Running inst-std-office-libreoffice-bpo.sh ...
  * After this operation, 1,185 kB of additional disk space will be used.
  * After this operation, 285 MB of additional disk space will be used.
  * After this operation, 42.6 MB of additional disk space will be used.
  * After this operation, 16.8 MB of additional disk space will be used.
  * After this operation, 9,673 kB of additional disk space will be used.
  * After this operation, 1,484 kB of additional disk space will be used.
  * Install LibreOffice 5.1.4.2 10m0(Build:2).
  * Install Office Suite: Word processor.
  * Install Office Suite: Spreadsheet.
  * Install Office Suite: Presentation.
  * Install Office Suite: Drawing.
  * Install Office Suite: Database.
  * Install Office Suite: Equation.
  * https://wiki.documentfoundation.org/ReleasePlan
  * Disk size = 3983348K. Space Used = 447464K.
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
  libgfortran3 liblapack3 libreoffice-calc lp-solve
  libcdr-0.1-1 libfreehand-0.1-1 libmspub-0.1-1 libpagemaker-0.0-0
  libreoffice-draw libreoffice-impress libvisio-0.1-1
  libreoffice-base libreoffice-base-drivers
  libreoffice-math
  ```
* >>>>>>>>> Running inst-std-office-xtra-projectlibre.sh ...
  * Install ProjectLibre.
  * Disk size = 4001808K. Space Used = 18460K.
* >>>>>>>>> Running inst-std-system-alsamixer.sh ...
  * Insert Alsamixer menu in Administration.
  * Disk size = 4001812K. Space Used = 4K.
* >>>>>>>>> Running inst-std-system-conky.sh ...
  * After this operation, 929 kB of additional disk space will be used.
  * Install System Monitor: conky.
  * Add conky config file: conkyrc.
  * Set conky to run on JWM startup.
  * Add on the fly settings to Conky.
  * Disk size = 4003048K. Space Used = 1236K.
  * The following NEW packages will be installed:
  ```bash
  conky-std libiw30
  ```
* >>>>>>>>> Running inst-std-system-gnome-disk-utility.sh ...
  * After this operation, 11.1 MB of additional disk space will be used.
  * Install Partition Manager: gnome-disk-utility.
  * Run: gnome-disks.
  * Insert gnome-disk-utility menu in Administration.
  * Disk size = 4009336K. Space Used = 6288K.
  * The following NEW packages will be installed:
  ```bash
  gnome-disk-utility libatasmart4 libcrack2 libpam-systemd libparted2
  libpolkit-agent-1-0 libpolkit-gobject-1-0 libpwquality-common libpwquality1
  libsecret-1-0 libsecret-common libudisks2-0 parted udisks2
  ```
* >>>>>>>>> Running inst-std-system-keyboard.sh ...
  * Insert keyboard menu in Administration.
  * Disk size = 4009340K. Space Used = 4K.
* >>>>>>>>> Running inst-std-system-monitor-switcher-lxrandr.sh ...
  * After this operation, 454 kB of additional disk space will be used.
  * After this operation, 779 kB of additional disk space will be used.
  * Install Monitor Switcher: lxrandr.
  * Add lxrandr key binding.
  * Disk size = 4010200K. Space Used = 860K.
  * The following NEW packages will be installed:
  ```bash
  x11-xserver-utils
  lxrandr
  ```
* >>>>>>>>> Running inst-std-system-network-wicd.sh ...
  * After this operation, 21.1 MB of additional disk space will be used.
  * Install Network Manager: wicd.
  * Insert Wicd menu in Network.
  * For wireless, you have to type in the wireless interface(e.g. wlan0) in the Preferences.
  * Set wicd to run on JWM startup.
  * Log at /var/log/wicd/wicd.log.
  * Disk size = 4044912K. Space Used = 34712K.
  * The following NEW packages will be installed:
  ```bash
  gir1.2-glib-2.0 libgirepository-1.0-1 libglade2-0 libnl-3-200
  libnl-genl-3-200 python-cairo python-dbus python-dbus-dev python-gi
  python-glade2 python-gobject python-gobject-2 python-gtk2 python-numpy
  python-support python-wicd wicd wicd-daemon wicd-gtk wireless-tools
  wpasupplicant
  ```
* >>>>>>>>> Running inst-std-system-time-zone.sh ...
  * Insert Time Zone menu in Administration.
  * Disk size = 4044916K. Space Used = 4K.
* >>>>>>>>> Running inst-std-system-xtra-hardinfo.sh ...
  * After this operation, 467 kB of additional disk space will be used.
  * Install hardware info apps: hardinfo.
  * Insert System Information menu in Administration.
  * Disk size = 4045844K. Space Used = 928K.
  * The following NEW packages will be installed:
  ```bash
  hardinfo
  ```
* >>>>>>>>> Running inst-std-system-xtra-webcam-camorama.sh ...
  * After this operation, 41.1 MB of additional disk space will be used.
  * Install webcam: Camorama.
  * Insert Camorama menu in Graphics.
  * Disk size = 4077272K. Space Used = 31428K.
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
  * After this operation, 16.1 MB of additional disk space will be used.
  * After this operation, 190 MB of additional disk space will be used.
  * Install required packages for blender.
  * Install blender3d.
  * Insert Blender 3D menu in Graphics.
  * Disk size = 4313392K. Space Used = 236120K.
  * The following NEW packages will be installed:
  ```bash
  libdrm-amdgpu1 libgl1-mesa-dri libjemalloc1
  blender blender-data dh-python fonts-droid libavdevice55
  libboost-chrono1.55.0 libboost-locale1.55.0 libboost-regex1.55.0
  libboost-thread1.55.0 libgtkglext1 libilmbase6 libjs-jquery libjs-jquery-ui
  libmpdec2 libopencolorio1 libopencv-core2.4 libopencv-highgui2.4
  libopencv-imgproc2.4 libopenexr6 libopenimageio1.4 libpython3-stdlib
  libpython3.4 libpython3.4-minimal libpython3.4-stdlib libraw10 libspnav0
  libtbb2 libtinyxml2.6.2 libwebp5 libyaml-cpp0.3 python3 python3-minimal
  python3.4 python3.4-minimal
  ```
* >>>>>>>>> Running inst-std-xtra-dia.sh ...
  * After this operation, 21.5 MB of additional disk space will be used.
  * Install Dia to draw diagrams.
  * Insert Dia menu in Graphics.
  * Disk size = 4339420K. Space Used = 26028K.
  * The following NEW packages will be installed:
  ```bash
  dia dia-common dia-libs sgml-base xml-core
  ```
* >>>>>>>>> Running inst-std-xtra-opw-drush8-phar.sh ...
  * Install  Drush Version : 8.0.3  to manage Drupal.
  * List of commands at http://drushcommands.com/.
  * Disk size = 4344552K. Space Used = 5132K.
* >>>>>>>>> Running inst-std-xtra-opw-php5-gd.sh ...
  * After this operation, 118 kB of additional disk space will be used.
  * Install php5-gd to run Drupal.
  * Disk size = 4344772K. Space Used = 220K.
  * The following NEW packages will be installed:
  ```bash
  php5-gd
  ```
* >>>>>>>>> Running inst-std-xtra-opw-php5-mysql.sh ...
  * After this operation, 3,756 kB of additional disk space will be used.
  * Install php5-mysql to enable the PDO_MYSQL database driver for PHP and to run Drupal.
  * Enable mod_rewrite module.
  * Disk size = 4349308K. Space Used = 4536K.
  * The following NEW packages will be installed:
  ```bash
  libmysqlclient18 php5-mysql
  ```
* >>>>>>>>> Running inst-std-xtra-sweethome3d5.sh ...
  * Install SweetHome3D-5.2.jar.
  * Install TexturesLibraryEditor-1.5.jar.
  * Install FurnitureLibraryEditor-1.19.jar.
  * Insert SweetHome3D menus in Graphics.
  * Disk size = 4421456K. Space Used = 72148K.
* >>>>>>>>> Running inst-xtra-dev-tools-ant.sh ...
  * After this operation, 2,250 kB of additional disk space will be used.
  * Install ant.
  * Disk size = 4425548K. Space Used = 4092K.
  * The following NEW packages will be installed:
  ```bash
  ant
  ```
* >>>>>>>>> Running inst-xtra-fuse.sh ...
  * Install fuse(fusermount) to run TMSU.
  * Disk size = 4425552K. Space Used = 4K.
* >>>>>>>>> Running inst-xtra-open-terminals-on-startup.sh ...
  * Install x11-xserver-utils for xrandr.
  * Install wmctrl.
  * Install x11-utils for xprop.
  * Install xterm for resize.
  * Copy open-terminal.sh in /root/cld.
  * Add jwmrc-startup-open-terminals.sh in /root/cld/jwmrc-startup.sh.
  * Disk size = 4425572K. Space Used = 20K.
* >>>>>>>>> Running inst-xtra-sqlite3.sh ...
  * After this operation, 143 kB of additional disk space will be used.
  * Install Database: sqlite3.
  * Disk size = 4425844K. Space Used = 272K.
  * The following NEW packages will be installed:
  ```bash
  sqlite3
  ```
* >>>>>>>>> Running inst-xtra-virtualbox-guest-additions-x11.sh ...
  * After this operation, 39.9 kB of additional disk space will be used.
  * After this operation, 6,386 kB of additional disk space will be used.
  * Install virtualbox-guest-utils to access shared folder. No need for x11. Less error prone.
  * VirtualBox guest additions installed: ERROR: VirtualBox guest additions installation failed!.
  * Disk size = 4433252K. Space Used = 7408K.
  * The following NEW packages will be installed:
  ```bash
  libnotify-bin linux-headers-amd64
  libnotify-bin virtualbox-guest-x11
  ```
* >>>>>>>>> Running inst-xtra-wifite.sh ...
  * After this operation, 82.4 MB of additional disk space will be used.
  * Install wifite.
  * Disk size = 4528688K. Space Used = 95436K.
  * The following NEW packages will be installed:
  ```bash
  aircrack-ng iw libc-ares2 libgeoip1 libpcap0.8 libsmi2ldbl libwireshark-data
  libwireshark5 libwiretap4 libwsutil4 pyrit reaver tshark wifite
  wireshark-common
  ```
* >>>>>>>>> Running inst-xtra-xmpv.sh ...
  * Install xmpv.
  * Disk size = 4528736K. Space Used = 48K.
* >>>>>>>>> Running inst-xtra-zfs.sh ...
  * After this operation, 77.8 kB of additional disk space will be used.
  * After this operation, 50.1 MB of additional disk space will be used.
  * After this operation, 99.3 kB of additional disk space will be used.
  * After this operation, 14.1 MB of additional disk space will be used.
  * Install lsb-release.
  * Add zfsonlinux repository to /etc/apt/sources.list.d/zfsonlinux.list.
  * Add GPG key to /etc/apt/trusted.gpg.d/zfsonlinux.gpg.
  * Install debian-zfs: ERROR: ZFS installation failed!, DKMS style package. DKMS vs KMOD, see http://zfsonlinux.org/generic-deb.html
  * Delete zfsonlinux_6_all.deb[1992K].
  * Disk size = 4641072K. Space Used = 112336K.
  * The following NEW packages will be installed:
  ```bash
  file
  build-essential dpkg-dev g++ g++-4.9 libdpkg-perl libstdc++-4.9-dev
  libtimedate-perl linux-headers-amd64
  lsb-release
  debian-zfs file libnvpair1 libuutil1 libzfs2 libzpool2 spl spl-dkms zfs-dkms
  zfsutils
  ```
* >>>>>>>>> Running inst-zclean-01-apt-get-00-clean-up.sh ...
  * Remove unused packages: apt-get -y --force-yes autoremove.
  * Clean cached DEB: apt-get clean.
  * Disk size = 3989100K. Space Used = -651972K.
* >>>>>>>>> Running inst-zclean-01-apt-get-01-source-list.sh ...
  * Reinstate original Debian repositories back to source.list.
  * Disk size = 3989108K. Space Used = 8K.
* >>>>>>>>> Running inst-zclean-02-remove-block-services.sh ...
  * Remove block services from starting after they are being installed.
  * Disk size = 3989108K. Space Used = 0K.
* >>>>>>>>> Running inst-zclean-98-zerosizing-docs.sh ...
  * Zero size all documents in /usr/share/.
  * Disk size = 3876504K. Space Used = -112604K.
* >>>>>>>>> Running inst-zclean-99-end-cleanup.sh ...
  * rm -rf /tmp/*.
  * Umount /sys, /dev/pts and /proc.
  * Disk size = 3876504K. Space Used = 0K.
