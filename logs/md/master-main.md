* >>>>>>>>> Running inst-min-con-00-apt-custom-repository.sh ...
  * Disk size = 1527024K. Space Used = 2456K.
* >>>>>>>>> Running inst-min-con-00-linux-image.sh ...
  * After this operation, 3113 kB of additional disk space will be used.
  * After this operation, 187 MB of additional disk space will be used.
  * Generate dbus-uuidgen to /var/lib/dbus/machine-id.
  * Installed Linux image: linux-image-4.8.0-0.bpo.2-amd64-unsigned.
  * Disk size = 1796804K. Space Used = 269780K.
  * The following NEW packages will be installed:
  ```bash
  dbus dialog libcap-ng0 libdbus-1-3 libexpat1
  busybox-static firmware-linux-free initramfs-tools klibc-utils libklibc
  linux-base linux-image-4.8.0-0.bpo.2-amd64-unsigned linux-image-amd64
  live-boot live-boot-initramfs-tools rsync
  ```
* >>>>>>>>> Running inst-min-con-01-apt.sh ...
  * Set APT to use local repository first.
  * Set APT to skip installing recommended packages.
  * Disk size = 1796816K. Space Used = 12K.
* >>>>>>>>> Running inst-min-con-01-debconf-utils.sh ...
  * After this operation, 157 kB of additional disk space will be used.
  * Install debconf-utils to use debconf-set-selections.
  * Disk size = 1797024K. Space Used = 208K.
  * The following NEW packages will be installed:
  ```bash
  debconf-utils
  ```
* >>>>>>>>> Running inst-min-con-02-localepurge.sh ...
  * After this operation, 334 kB of additional disk space will be used.
  * Install localepurge to purge documentation of all languages, except en, en_US, en_US.UTF-8.
  * Reconfigure localepurge: dpkg-reconfigure localepurge
  * Disk size = 1820536K. Space Used = 756K.
  * The following NEW packages will be installed:
  ```bash
  localepurge ucf
  ```
* >>>>>>>>> Running inst-min-con-02-locale.sh ...
  * After this operation, 16.7 MB of additional disk space will be used.
  * Install locale and set it to use en_US.UTF-8.
  * Disk size = 1819780K. Space Used = 22756K.
  * The following NEW packages will be installed:
  ```bash
  locales
  ```
* >>>>>>>>> Running inst-min-con-03-proxy.sh ...
  * Disk size = 1820548K. Space Used = 12K.
* >>>>>>>>> Running inst-min-con-03-systemd-hooks.sh ...
  * Add systemd hook scripts.
  * Disk size = 1820584K. Space Used = 36K.
* >>>>>>>>> Running inst-min-con-04-block-services-start-postinstall.sh ...
  * Block services from starting after they are being installed.
  * Disk size = 1820592K. Space Used = 8K.
* >>>>>>>>> Running inst-min-con-auto-log-root.sh ...
  * Disk size = 1820604K. Space Used = 12K.
* >>>>>>>>> Running inst-min-con-bashrc.sh ...
  * Set common settings for /root/.bashrc.
  * Set dircolors to use dircolors-gnu-ls-colors.txt to make ls more beautiful.
  * Disk size = 1820616K. Space Used = 12K.
* >>>>>>>>> Running inst-min-con-cld-dev-tools-debootstrap.sh ...
  * After this operation, 249 kB of additional disk space will be used.
  * Install debootstrap allows the creation of a Debian base system in a directory.
  * Disk size = 1820952K. Space Used = 336K.
  * The following NEW packages will be installed:
  ```bash
  debootstrap
  ```
* >>>>>>>>> Running inst-min-con-cld-tools.sh ...
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/fimg.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/tt.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-mkiso.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/if-usage-sum.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/twin.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/lspace.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/zz1.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-dpkg-list.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/unrarall.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/zz2.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/feh-ss.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/bash-color-meaning.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-dd-usb.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/win.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-remaster.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-zfs-hd.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/if-usage.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/tt4-perfect.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-persistence.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/geometry.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/geo.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/partition-automount.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/tt3.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-lsmodules.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/decor.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/apt-dependency.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-list-icons.sh to /usr/local/bin/.
  * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/partition-swap-enable.sh to /usr/local/bin/.
  * Disk size = 1821120K. Space Used = 168K.
* >>>>>>>>> Running inst-min-con-compressors.sh ...
  * After this operation, 122 kB of additional disk space will be used.
  * After this operation, 1,476 kB of additional disk space will be used.
  * After this operation, 331 kB of additional disk space will be used.
  * After this operation, 607 kB of additional disk space will be used.
  * After this operation, 347 kB of additional disk space will be used.
  * After this operation, 927 kB of additional disk space will be used.
  * Install de/compressor: bzip2.
  * Install de/compressor: rar.
  * Install de/compressor: unrar.
  * Install de/compressor: unzip.
  * Install de/compressor: zip.
  * Install de/compressor: p7zip.
  * Disk size = 1825940K. Space Used = 4820K.
  * The following NEW packages will be installed:
  ```bash
  bzip2
  rar
  unrar
  zip
  unzip
  p7zip
  ```
* >>>>>>>>> Running inst-min-con-deb-multimedia.sh ...
  * Install deb-multimedia-keyring_2015.6.1_all.deb.
  * Add deb-multimedia repository.
  * Delete deb-multimedia-keyring_2015.6.1_all.deb[12K].
  * apt-get update
  * Disk size = 1825952K. Space Used = 12K.
* >>>>>>>>> Running inst-min-con-filesystem-exfat.sh ...
  * After this operation, 555 kB of additional disk space will be used.
  * After this operation, 236 kB of additional disk space will be used.
  * Install exfat-fuse so that you can read and write SD cards and USB keys.
  * Disk size = 1827168K. Space Used = 1216K.
  * The following NEW packages will be installed:
  ```bash
  exfat-fuse fuse libfuse2
  exfat-utils
  ```
* >>>>>>>>> Running inst-min-con-filesystem-ntfs-3g.sh ...
  * After this operation, 1,632 kB of additional disk space will be used.
  * Install support for NTFS: ntfs-3g.
  * Disk size = 1829544K. Space Used = 2376K.
  * The following NEW packages will be installed:
  ```bash
  ntfs-3g
  ```
* >>>>>>>>> Running inst-min-con-firmware-cpu.sh ...
  * After this operation, 48.1 kB of additional disk space will be used.
  * After this operation, 952 kB of additional disk space will be used.
  * Install CPU firmware: amd64-microcode.
  * Install CPU firmware: intel-microcode.
  * Disk size = 1831532K. Space Used = 1988K.
  * The following NEW packages will be installed:
  ```bash
  amd64-microcode
  intel-microcode iucode-tool
  ```
* >>>>>>>>> Running inst-min-con-firmware-net-b43-installer.sh ...
  * After this operation, 100 kB of additional disk space will be used.
  * Install b43 for Dell Wireless 1397 WLAN Mini-Card Driver.
  * Disk size = 1869232K. Space Used = 37700K.
  * The following NEW packages will be installed:
  ```bash
  b43-fwcutter
  ```
* >>>>>>>>> Running inst-min-con-firmware.sh ...
  * After this operation, 881 kB of additional disk space will be used.
  * After this operation, 162 kB of additional disk space will be used.
  * After this operation, 8,335 kB of additional disk space will be used.
  * After this operation, 475 kB of additional disk space will be used.
  * After this operation, 3,329 kB of additional disk space will be used.
  * After this operation, 12.9 MB of additional disk space will be used.
  * After this operation, 4,178 kB of additional disk space will be used.
  * After this operation, 1,265 kB of additional disk space will be used.
  * After this operation, 896 kB of additional disk space will be used.
  * After this operation, 46.7 MB of additional disk space will be used.
  * After this operation, 8,839 kB of additional disk space will be used.
  * After this operation, 23.1 MB of additional disk space will be used.
  * After this operation, 6,659 kB of additional disk space will be used.
  * After this operation, 1,166 kB of additional disk space will be used.
  * After this operation, 52.2 kB of additional disk space will be used.
  * Install firmwares.
  * Disk size = 2018768K. Space Used = 149536K.
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
  * Disk size = 2022360K. Space Used = 3592K.
  * The following NEW packages will be installed:
  ```bash
  isolinux
  libburn4 libisoburn1 libisofs6 libjte1 xorriso
  liblzo2-2 squashfs-tools
  ```
* >>>>>>>>> Running inst-min-con-mtp-00-libmtp9-bpo.sh ...
  * After this operation, 2,405 kB of additional disk space will be used.
  * Install backport version of libmtp9 to support the most smartphones.
  * Disk size = 2025124K. Space Used = 2764K.
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
  * Disk size = 2028788K. Space Used = 3664K.
  * The following NEW packages will be installed:
  ```bash
  jmtpfs libmagic1
  ```
* >>>>>>>>> Running inst-min-con-ntp.sh ...
  * After this operation, 1,871 kB of additional disk space will be used.
  * Install Network Time Protocol: ntp.
  * Disk size = 2031300K. Space Used = 2512K.
  * The following NEW packages will be installed:
  ```bash
  libbsd0 libedit2 libopts25 ntp
  ```
* >>>>>>>>> Running inst-min-con-numlock.sh ...
  * After this operation, 4,381 kB of additional disk space will be used.
  * Install numlockx to turn on NumLock on boot.
  * Disk size = 2037844K. Space Used = 6544K.
  * The following NEW packages will be installed:
  ```bash
  libx11-6 libx11-data libxau6 libxcb1 libxdmcp6 libxext6 libxi6 libxtst6
  numlockx x11-common
  ```
* >>>>>>>>> Running inst-min-con-pciutils.sh ...
  * After this operation, 1,181 kB of additional disk space will be used.
  * Install pciutils to troubleshoot pci devices(i.e. lspci).
  * Disk size = 2039416K. Space Used = 1572K.
  * The following NEW packages will be installed:
  ```bash
  libpci3 pciutils
  ```
* >>>>>>>>> Running inst-min-con-snd-alsa.sh ...
  * After this operation, 5,270 kB of additional disk space will be used.
  * Install ALSA sound.
  * Test sound: aplay /usr/share/sounds/alsa/*.
  * Add key bindings.
  * Disk size = 2047264K. Space Used = 7848K.
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
  * Disk size = 2055260K. Space Used = 7996K.
  * The following NEW packages will be installed:
  ```bash
  libglib2.0-0 udevil
  ```
* >>>>>>>>> Running inst-min-con-xtra-buffer-pv.sh ...
  * After this operation, 166 kB of additional disk space will be used.
  * Install pv.
  * Disk size = 2055412K. Space Used = 152K.
  * The following NEW packages will be installed:
  ```bash
  pv
  ```
* >>>>>>>>> Running inst-min-con-xtra-buffer.sh ...
  * After this operation, 71.7 kB of additional disk space will be used.
  * Install buffer.
  * Disk size = 2055484K. Space Used = 72K.
  * The following NEW packages will be installed:
  ```bash
  buffer
  ```
* >>>>>>>>> Running inst-min-con-xtra-cld-dev-tools-aptly.sh ...
  * After this operation, 17.5 MB of additional disk space will be used.
  * Add aptly nightly build repository.
  * Install aptly version: 0.9.8~dev to create local debian repository.
  * Add xz-utils package because aptly snapshot merge needs it.
  * Disk size = 2077668K. Space Used = 22184K.
  * The following NEW packages will be installed:
  ```bash
  aptly xz-utils
  ```
* >>>>>>>>> Running inst-min-con-xtra-curl.sh ...
  * After this operation, 4,012 kB of additional disk space will be used.
  * Install curl.
  * Disk size = 2083552K. Space Used = 5884K.
  * The following NEW packages will be installed:
  ```bash
  curl libcurl3 libgssapi-krb5-2 libk5crypto3 libkeyutils1 libkrb5-3
  libkrb5support0 libldap-2.4-2 librtmp1 libsasl2-2 libsasl2-modules-db
  libssh2-1
  ```
* >>>>>>>>> Running inst-min-con-xtra-dev-tool-tree.sh ...
  * After this operation, 102 kB of additional disk space will be used.
  * Install tree to display files and directories structure.
  * Disk size = 2083740K. Space Used = 188K.
  * The following NEW packages will be installed:
  ```bash
  tree
  ```
* >>>>>>>>> Running inst-min-con-xtra-encoding-libtext-iconv-perl.sh ...
  * Install libtext-iconv-perl so that you can use iconv to convert to other encoding.
  * Disk size = 2083744K. Space Used = 4K.
* >>>>>>>>> Running inst-min-con-xtra-gnuplot.sh ...
  * After this operation, 46.7 MB of additional disk space will be used.
  * Install gnuplot.
  * Disk size = 2147120K. Space Used = 63376K.
  * The following NEW packages will be installed:
  ```bash
  aglfn fontconfig fontconfig-config fonts-dejavu-core gnuplot gnuplot-data
  gnuplot-qt gnuplot-tex libaudio2 libcairo2 libdatrie1 libfontconfig1
  libfreetype6 libgd3 libgraphite2-3 libharfbuzz0b libice6 libjbig0
  libjpeg62-turbo liblcms2-2 liblua5.1-0 libmng1 libpango-1.0-0
  libpangocairo-1.0-0 libpangoft2-1.0-0 libpixman-1-0 libpng12-0
  libqt4-network libqt4-svg libqt4-xml libqtcore4 libqtdbus4 libqtgui4 libsm6
  libthai-data libthai0 libtiff5 libvpx1 libxcb-render0 libxcb-shm0 libxpm4
  libxrender1 libxt6 qtcore4-l10n
  ```
* >>>>>>>>> Running inst-min-con-xtra-imagemagick.sh ...
  * After this operation, 19.3 MB of additional disk space will be used.
  * Install imagemagick to process image from command line.
  * Disk size = 2171232K. Space Used = 24112K.
  * The following NEW packages will be installed:
  ```bash
  hicolor-icon-theme imagemagick imagemagick-6.q16 imagemagick-common
  libfftw3-double3 libgomp1 liblqr-1-0 libltdl7 libmagickcore-6.q16-2
  libmagickwand-6.q16-2 libxml2
  ```
* >>>>>>>>> Running inst-min-con-xtra-iso-iat.sh ...
  * After this operation, 65.5 kB of additional disk space will be used.
  * Install iat to convert BIN, MDF, PDI, CDI, NRG, and B5I into ISO-9660.
  * Disk size = 2171284K. Space Used = 52K.
  * The following NEW packages will be installed:
  ```bash
  iat
  ```
* >>>>>>>>> Running inst-min-con-xtra-locate.sh ...
  * After this operation, 324 kB of additional disk space will be used.
  * Install locate to generate an index of files and directories. Searching for files will be much faster.
  * Add locate alias.
  * Run updatedb to update the database.
  * Disk size = 2171844K. Space Used = 560K.
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
  * Disk size = 2172736K. Space Used = 892K.
  * The following NEW packages will be installed:
  ```bash
  macchanger
  ```
* >>>>>>>>> Running inst-min-con-xtra-mariadb-server.sh ...
  * After this operation, 167 MB of additional disk space will be used.
  * Disk size = 2468988K. Space Used = 296252K.
  * The following NEW packages will be installed:
  ```bash
  libaio1 libdbi-perl libreadline5 libterm-readkey-perl mariadb-client-10.0
  mariadb-client-core-10.0 mariadb-common mariadb-server mariadb-server-10.0
  mariadb-server-core-10.0 mysql-common perl perl-modules psmisc
  ```
* >>>>>>>>> Running inst-min-con-xtra-mtran.sh ...
  * Copied /root/scripts/repository/inst-min-con-xtra-mtran/mtran.sh to /usr/local/bin/.
  * Disk size = 2468996K. Space Used = 8K.
* >>>>>>>>> Running inst-min-con-xtra-openjdk-8-jre.sh ...
  * After this operation, 153 MB of additional disk space will be used.
  * Install openjdk-8-jre.
  * Disk size = 2656264K. Space Used = 187268K.
  * The following NEW packages will be installed:
  ```bash
  ca-certificates ca-certificates-java java-common libasyncns0
  libatk-wrapper-java libatk-wrapper-java-jni libatk1.0-0 libatk1.0-data
  libavahi-client3 libavahi-common-data libavahi-common3 libcups2 libdrm2
  libflac8 libgdk-pixbuf2.0-0 libgdk-pixbuf2.0-common libgif4 libgl1-mesa-glx
  libglapi-mesa libgtk2.0-0 libgtk2.0-common libjasper1 libnspr4 libnss3
  libogg0 libpcsclite1 libpulse0 libsndfile1 libsqlite3-0 libvorbis0a
  libvorbisenc2 libwrap0 libx11-xcb1 libxcb-dri2-0 libxcb-dri3-0 libxcb-glx0
  libxcb-present0 libxcb-sync1 libxcomposite1 libxcursor1 libxdamage1
  libxfixes3 libxinerama1 libxrandr2 libxshmfence1 libxxf86vm1 openjdk-8-jre
  openjdk-8-jre-headless openssl shared-mime-info
  ```
* >>>>>>>>> Running inst-min-con-xtra-pdf-poppler-utils.sh ...
  * After this operation, 4,138 kB of additional disk space will be used.
  * Install poppler-utils to extract text from pdf files.
  * Disk size = 2661808K. Space Used = 5544K.
  * The following NEW packages will be installed:
  ```bash
  libopenjpeg5 libpoppler46 poppler-utils
  ```
* >>>>>>>>> Running inst-min-con-xtra-php5.sh ...
  * After this operation, 28.1 MB of additional disk space will be used.
  * Install php5.
  * Disk size = 2699144K. Space Used = 37336K.
  * The following NEW packages will be installed:
  ```bash
  apache2 apache2-bin apache2-data apache2-utils libapache2-mod-php5 libapr1
  libaprutil1 libaprutil1-dbd-sqlite3 libaprutil1-ldap libonig2
  libperl4-corelibs-perl libqdbm14 lsof mime-support php5 php5-cli php5-common
  php5-json
  ```
* >>>>>>>>> Running inst-min-con-xtra-re-use-x.sh ...
  * Install re-use-x.
  * Disk size = 2699168K. Space Used = 24K.
* >>>>>>>>> Running inst-min-con-xtra-timezone.sh ...
  * Set time zone to EST (America/Montreal) in /etc/timezone.
  * Disk size = 2699172K. Space Used = 4K.
* >>>>>>>>> Running inst-min-con-xtra-youtube-dl.sh ...
  * Install youtube-dl to download video from playlist.
  * https://github.com/rg3/youtube-dl/
  * https://www.quora.com/What-is-the-best-and-quickest-way-to-download-the-whole-playlist-of-videos-from-YouTube-all-at-once
  * Disk size = 2700556K. Space Used = 1384K.
* >>>>>>>>> Running inst-min-win-00-xorg.sh ...
  * After this operation, 67.6 MB of additional disk space will be used.
  * Set keyboard to use US international.
  * Install minimum Xorg X server.
  * Install xinit so you can run startx.
  * Add auto start window manager(i.e startx).
  * Disk size = 2787152K. Space Used = 86596K.
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
  * Disk size = 2787156K. Space Used = 4K.
* >>>>>>>>> Running inst-min-win-01-wm-jwm-bpo.sh ...
  * After this operation, 1,776 kB of additional disk space will be used.
  * Install Window Manager: JWM v2.3.6 by Joe Wingbermuehle.
  * Set jwmrc.
  * Disk size = 2789664K. Space Used = 2508K.
  * The following NEW packages will be installed:
  ```bash
  jwm libcroco3 libfribidi0 librsvg2-2 libxft2 stterm
  ```
* >>>>>>>>> Running inst-min-win-cld-dev-tools-pandoc.sh ...
  * After this operation, 38.6 MB of additional disk space will be used.
  * Install pandoc to generate user manual.
  * Disk size = 2832148K. Space Used = 42484K.
  * The following NEW packages will be installed:
  ```bash
  libyaml-0-2 pandoc pandoc-data
  ```
* >>>>>>>>> Running inst-min-win-cld-win-split.sh ...
  * After this operation, 81.9 kB of additional disk space will be used.
  * After this operation, 654 kB of additional disk space will be used.
  * Install required applications for cld-win-split.sh: wmctrl and x11-utils for xprop.
  * Add key bindings: Ctrl+Alt+Left, Right, Up, Down, 1, 2, 3, 4, 5, 6, 7, 8, 9.
  * Disk size = 2833260K. Space Used = 1112K.
  * The following NEW packages will be installed:
  ```bash
  wmctrl
  libxxf86dga1 x11-utils
  ```
* >>>>>>>>> Running inst-min-win-jwm-help-manuals-text.sh ...
  * Add Help menu in JWM.
  * Disk size = 2833296K. Space Used = 36K.
* >>>>>>>>> Running inst-min-win-jwm-keyboard-move-mouse.sh ...
  * Setup X Window to allow keyboard to move mouse.
  * Press Left Shift+NumLock.
  * Press on numpad keys to move the mouse.
  * Disk size = 2833308K. Space Used = 12K.
* >>>>>>>>> Running inst-min-win-jwm-keys-alsa.sh ...
  * Add ALSA key binding.
  * Add script to auto-detect ALSA controller on JWM startup.
  * Disk size = 2833316K. Space Used = 8K.
* >>>>>>>>> Running inst-min-win-menu.sh ...
  * After this operation, 1,829 kB of additional disk space will be used.
  * Install menu, an easy way to get installed programs in the menu automatically.
  * For how to use Debian menu, see https://www.debian.org/doc/packaging-manuals/menu.html/ch3.html.
  * Disk size = 2834592K. Space Used = 1276K.
  * The following NEW packages will be installed:
  ```bash
  menu
  ```
* >>>>>>>>> Running inst-min-win-systray-volumeicon-alsa.sh ...
  * After this operation, 243 kB of additional disk space will be used.
  * Install volume controller in system tray.
  * Set left-click to display volume slider: lmb_slider=true.
  * Set volumeicon to run on JWN startup.
  * Disk size = 2835068K. Space Used = 476K.
  * The following NEW packages will be installed:
  ```bash
  libnotify4 volumeicon-alsa
  ```
* >>>>>>>>> Running inst-min-win-xtra-fonts-asian.sh ...
  * After this operation, 48.2 MB of additional disk space will be used.
  * Install fonts-hanazono to display Asian characters correctly.
  * Test it by opening website http://ctext.org/zh.
  * Disk size = 2901060K. Space Used = 65992K.
  * The following NEW packages will be installed:
  ```bash
  fonts-hanazono
  ```
* >>>>>>>>> Running inst-min-win-xtra-xdotool.sh ...
  * After this operation, 479 kB of additional disk space will be used.
  * Install xdotool to manipulate windows: move, resize, click, mouse.
  * Disk size = 2901800K. Space Used = 740K.
  * The following NEW packages will be installed:
  ```bash
  libxdo3 libxkbcommon0 xdotool
  ```
* >>>>>>>>> Running inst-std-00-jwm.sh ...
  * Add default standard menus in JWM.
  * Disk size = 2901804K. Space Used = 4K.
* >>>>>>>>> Running inst-std-accessories-calc-speedcrunch.sh ...
  * After this operation, 1,830 kB of additional disk space will be used.
  * Install calculator: speedcrunch.
  * Insert speedcrunch in Accessories menu.
  * Disk size = 2904944K. Space Used = 3140K.
  * The following NEW packages will be installed:
  ```bash
  speedcrunch
  ```
* >>>>>>>>> Running inst-std-accessories-feh.sh ...
  * After this operation, 3,310 kB of additional disk space will be used.
  * Install command line image viewer: feh.
  * Disk size = 2907296K. Space Used = 2352K.
  * The following NEW packages will be installed:
  ```bash
  feh libexif12 libid3tag0 libimlib2
  ```
* >>>>>>>>> Running inst-std-accessories-gpicview.sh ...
  * After this operation, 876 kB of additional disk space will be used.
  * Install Image Viewer: gpicview.
  * Insert gpicview in Accessories menu.
  * Add alias viewpic='gpicview'.
  * Disk size = 2907648K. Space Used = 352K.
  * The following NEW packages will be installed:
  ```bash
  gpicview
  ```
* >>>>>>>>> Running inst-std-accessories-mupdf.sh ...
  * After this operation, 9,954 kB of additional disk space will be used.
  * Install PDF reader: Mupdf.
  * Disk size = 2920940K. Space Used = 13292K.
  * The following NEW packages will be installed:
  ```bash
  libjbig2dec0 libopenjp2-7 mupdf
  ```
* >>>>>>>>> Running inst-std-accessories-prtscr-gnome-screenshot.sh ...
  * After this operation, 54.9 MB of additional disk space will be used.
  * Install gnome-screenshot to be used for PrintScreen key.
  * Insert PrintScreen key binding.
  * By default, screenshots are saved under ~/Pictures/.
  * Disk size = 2973684K. Space Used = 52744K.
  * The following NEW packages will be installed:
  ```bash
  adwaita-icon-theme dconf-gsettings-backend dconf-service glib-networking
  glib-networking-common glib-networking-services gnome-screenshot
  gsettings-desktop-schemas libatk-bridge2.0-0 libatspi2.0-0 libcairo-gobject2
  libcanberra-gtk3-0 libcanberra0 libcolord2 libdconf1 libgtk-3-0 libgtk-3-bin
  libgtk-3-common libjson-glib-1.0-0 libjson-glib-1.0-common libproxy1
  librest-0.7-0 librsvg2-common libsoup-gnome2.4-1 libsoup2.4-1 libtdb1
  libvorbisfile3 libwayland-cursor0
  ```
* >>>>>>>>> Running inst-std-accessories-scite.sh ...
  * After this operation, 4,829 kB of additional disk space will be used.
  * After this operation, 221 kB of additional disk space will be used.
  * Install Text Editor: SciTE.
  * Install at-spi2-core to shut up Accessibility warning message.
  * Insert SciTE in Accessories menu.
  * Disk size = 2980228K. Space Used = 6544K.
  * The following NEW packages will be installed:
  ```bash
  scite
  at-spi2-core
  ```
* >>>>>>>>> Running inst-std-accessories-terminal-xfce.sh ...
  * After this operation, 11.1 MB of additional disk space will be used.
  * Install terminal: xfce4-terminal.
  * Disk size = 2989572K. Space Used = 9344K.
  * The following NEW packages will be installed:
  ```bash
  dbus-x11 exo-utils libdbus-glib-1-2 libexo-1-0 libexo-common libexo-helpers
  libpango1.0-0 libpangox-1.0-0 libpangoxft-1.0-0 libstartup-notification0
  libvte-common libvte9 libxfce4ui-1-0 libxfce4util-common libxfce4util6
  libxfconf-0-2 xfce-keyboard-shortcuts xfce4-terminal xfconf
  ```
* >>>>>>>>> Running inst-std-accessories-thunar.sh ...
  * After this operation, 6,520 kB of additional disk space will be used.
  * After this operation, 1,931 kB of additional disk space will be used.
  * After this operation, 585 kB of additional disk space will be used.
  * After this operation, 1,004 kB of additional disk space will be used.
  * Install Thunar file manager.
  * Insert Thunar in Accessories menu.
  * Disk size = 2995932K. Space Used = 6360K.
  * The following NEW packages will be installed:
  ```bash
  desktop-file-utils libgudev-1.0-0 libthunarx-2-0 thunar thunar-data
  libtag1-vanilla libtag1c2a libtagc0 thunar-media-tags-plugin
  thunar-archive-plugin
  thunar-volman
  ```
* >>>>>>>>> Running inst-std-font-fonts-liberation.sh ...
  * After this operation, 2,178 kB of additional disk space will be used.
  * Install fonts-liberation to get free variants of the Times, Arial and Courier fonts.
  * Otherwise, install ttf-mscorefonts-installer to get Microsoft TrueType core fonts.
  * Disk size = 2998952K. Space Used = 3020K.
  * The following NEW packages will be installed:
  ```bash
  fonts-liberation
  ```
* >>>>>>>>> Running inst-std-graphic-pinta.sh ...
  * After this operation, 36.4 MB of additional disk space will be used.
  * Install Image Editor: Pinta.
  * Insert Pinta menu in Graphics.
  * Disk size = 3060488K. Space Used = 61536K.
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
  * Disk size = 3060560K. Space Used = 72K.
* >>>>>>>>> Running inst-std-internet-xtra-google-chrome.sh ...
  * After this operation, 638 kB of additional disk space will be used.
  * After this operation, 308 kB of additional disk space will be used.
  * After this operation, 7,409 kB of additional disk space will be used.
  * After this operation, 57.3 kB of additional disk space will be used.
  * After this operation, 179 MB of additional disk space will be used.
  * Install Google Chrome 56.0.2924.76 .
  * Modify /opt/google/chrome/google-chrome to run google-chrome as root.
  * Insert Google Chrome in Internet menu.
  * Add google chrome alias, chrome.
  * Set default browser: update-alternatives --config x-www-browser.
  * Enable Flash: Run chrome://plugins and then disable and enable Flash. Test at https://www.google.com/finance?q=NASDAQ%3AAAPL
  * Disk size = 3285416K. Space Used = 224856K.
  * The following NEW packages will be installed:
  ```bash
  libappindicator1 libdbusmenu-glib4 libdbusmenu-gtk4 libindicator7
  xdg-utils
  gconf-service gconf2-common libgconf-2-4
  libxss1
  google-chrome-stable
  ```
* >>>>>>>>> Running inst-std-internet-xtra-transmission-gtk.sh ...
  * After this operation, 23.1 MB of additional disk space will be used.
  * Install transmission-gtk.
  * Insert transmission-gtk in Internet menu.
  * Disk size = 3320732K. Space Used = 35316K.
  * The following NEW packages will be installed:
  ```bash
  gconf2 libcurl3-gnutls libevent-2.0-5 libminiupnpc10 libnatpmp1
  libpython-stdlib libpython2.7-minimal libpython2.7-stdlib python
  python-minimal python2.7 python2.7-minimal transmission-common
  transmission-gtk
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
  * After this operation, 27.2 MB of additional disk space will be used.
  * After this operation, 154 kB of additional disk space will be used.
  * After this operation, 143 kB of additional disk space will be used.
  * After this operation, 869 kB of additional disk space will be used.
  * After this operation, 65.3 MB of additional disk space will be used.
  * Install Media Player: mpv 0.8.3 .
  * Add multiple aliases for MPV.
  * Add useful mpv keybindings settings.
  * Disk size = 3405760K. Space Used = 85028K.
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
  libldb1 libntdb1 libpython2.7 libsmbclient libtalloc2 libtevent0
  libwbclient0 python-talloc samba-libs
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
  libpostproc53 libpython2.7 libraw1394-11 libschroedinger-1.0-0
  libsdl1.2debian libsmbclient libspeex1 libswresample1 libswscale3 libtalloc2
  libtevent0 libtheora0 libutvideo15 libv4l-0 libv4lconvert0 libva-glx1
  libva-x11-1 libva1 libvdpau1 libvidstab1.0 libvo-aacenc0 libvo-amrwbenc0
  libwayland-egl1-mesa libwbclient0 libx264-146 libx265-51 libxvidcore4
  libzvbi-common libzvbi0 mpv python-talloc samba-libs
  ```
* >>>>>>>>> Running inst-std-office-libreoffice-bpo.sh ...
  * After this operation, 1,185 kB of additional disk space will be used.
  * After this operation, 282 MB of additional disk space will be used.
  * After this operation, 43.0 MB of additional disk space will be used.
  * After this operation, 17.1 MB of additional disk space will be used.
  * After this operation, 9,637 kB of additional disk space will be used.
  * After this operation, 1,447 kB of additional disk space will be used.
  * Install LibreOffice 5.2.4.2.1 20m0(Build:2).
  * Install Office Suite: Word processor.
  * Install Office Suite: Spreadsheet.
  * Install Office Suite: Presentation.
  * Install Office Suite: Drawing.
  * Install Office Suite: Database.
  * Install Office Suite: Equation.
  * https://wiki.documentfoundation.org/ReleasePlan
  * Disk size = 3851132K. Space Used = 445372K.
  * The following NEW packages will be installed:
  ```bash
  libpagemaker-0.0-0 librevenge-0.0-0
  fonts-opensymbol libabw-0.1-1 libboost-date-time1.55.0
  libboost-filesystem1.55.0 libboost-system1.55.0 libclucene-contribs1
  libclucene-core1 libe-book-0.1-1 libeot0 libetonyek-0.1-1
  libexttextcat-2.0-0 libexttextcat-data libglew1.10 libglu1-mesa
  libharfbuzz-icu0 libhunspell-1.3-0 libhyphen0 liblangtag-common liblangtag1
  libmhash2 libmwaw-0.3-3 libmythes-1.2-0 libneon27-gnutls libodfgen-0.1-1
  libraptor2-0 librasqal3 librdf0 libreoffice-base-core libreoffice-common
  libreoffice-core libreoffice-style-galaxy libreoffice-writer
  librevenge-0.0-0 libwpd-0.10-10 libwpg-0.3-3 libxslt1.1 libyajl2 uno-libs3
  ure
  coinor-libcbc3 coinor-libcgl1 coinor-libclp1 coinor-libcoinmp1
  coinor-libcoinutils3 coinor-libosi1 libblas-common libblas3 libcolamd2.8.0
  libgfortran3 liblapack3 libquadmath0 libreoffice-calc lp-solve
  libcdr-0.1-1 libfreehand-0.1-1 libmspub-0.1-1 libpagemaker-0.0-0
  libreoffice-draw libreoffice-impress libvisio-0.1-1
  libreoffice-base libreoffice-base-drivers
  libreoffice-math
  ```
* >>>>>>>>> Running inst-std-office-xtra-projectlibre.sh ...
  * Install ProjectLibre.
  * Disk size = 3869584K. Space Used = 18452K.
* >>>>>>>>> Running inst-std-system-alsamixer.sh ...
  * Insert Alsamixer menu in Administration.
  * Disk size = 3869588K. Space Used = 4K.
* >>>>>>>>> Running inst-std-system-conky.sh ...
  * After this operation, 1,331 kB of additional disk space will be used.
  * Install System Monitor: conky.
  * Add conky config file: conkyrc.
  * Set conky to run on JWM startup.
  * Add on the fly settings to Conky.
  * Disk size = 3871424K. Space Used = 1836K.
  * The following NEW packages will be installed:
  ```bash
  conky conky-std libiw30
  ```
* >>>>>>>>> Running inst-std-system-gnome-disk-utility.sh ...
  * After this operation, 11.1 MB of additional disk space will be used.
  * Install Partition Manager: gnome-disk-utility.
  * Run: gnome-disks.
  * Insert gnome-disk-utility menu in Administration.
  * Disk size = 3877728K. Space Used = 6304K.
  * The following NEW packages will be installed:
  ```bash
  gnome-disk-utility libatasmart4 libcrack2 libpam-systemd libparted2
  libpolkit-agent-1-0 libpolkit-gobject-1-0 libpwquality-common libpwquality1
  libsecret-1-0 libsecret-common libudisks2-0 parted udisks2
  ```
* >>>>>>>>> Running inst-std-system-keyboard.sh ...
  * Insert keyboard configuration in Administration menu.
  * Disk size = 3877732K. Space Used = 4K.
* >>>>>>>>> Running inst-std-system-monitor-switcher-lxrandr.sh ...
  * After this operation, 19.9 MB of additional disk space will be used.
  * After this operation, 779 kB of additional disk space will be used.
  * Install Monitor Switcher: lxrandr.
  * Add lxrandr key binding.
  * Disk size = 3903724K. Space Used = 25992K.
  * The following NEW packages will be installed:
  ```bash
  cpp cpp-4.9 libcloog-isl4 libisl10 libmpc3 libmpfr4 x11-xserver-utils
  lxrandr
  ```
* >>>>>>>>> Running inst-std-system-network-wicd.sh ...
  * After this operation, 21.1 MB of additional disk space will be used.
  * Install Network Manager: wicd.
  * Insert Wicd menu in Network.
  * For wireless, you have to type in the wireless interface(e.g. wlan0) in the Preferences.
  * Set wicd to run on JWM startup.
  * Log at /var/log/wicd/wicd.log.
  * Disk size = 3938424K. Space Used = 34700K.
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
  * Disk size = 3938428K. Space Used = 4K.
* >>>>>>>>> Running inst-std-system-xtra-gsimplecal.sh ...
  * After this operation, 93.2 kB of additional disk space will be used.
  * Install gsimplecal.
  * Insert gsimplecal in JWM system tray.
  * Disk size = 3938556K. Space Used = 128K.
  * The following NEW packages will be installed:
  ```bash
  gsimplecal
  ```
* >>>>>>>>> Running inst-std-system-xtra-hardinfo.sh ...
  * After this operation, 467 kB of additional disk space will be used.
  * Install hardware info apps: hardinfo.
  * Insert System Information menu in Administration.
  * Disk size = 3939488K. Space Used = 932K.
  * The following NEW packages will be installed:
  ```bash
  hardinfo
  ```
* >>>>>>>>> Running inst-std-system-xtra-webcam-camorama.sh ...
  * After this operation, 33.1 MB of additional disk space will be used.
  * Install webcam: Camorama.
  * Insert Camorama menu in Graphics.
  * Disk size = 3966352K. Space Used = 26864K.
  * The following NEW packages will be installed:
  ```bash
  camorama gnome-mime-data libart-2.0-2 libavahi-glib1 libbonobo2-0
  libbonobo2-common libbonoboui2-0 libbonoboui2-common libgail18 libgnome-2-0
  libgnome-keyring-common libgnome-keyring0 libgnome2-0 libgnome2-bin
  libgnome2-common libgnomecanvas2-0 libgnomecanvas2-common libgnomeui-0
  libgnomeui-common libgnomevfs2-0 libgnomevfs2-common liborbit-2-0
  ```
* >>>>>>>>> Running inst-std-xtra-blender.sh ...
  * After this operation, 59.9 MB of additional disk space will be used.
  * After this operation, 190 MB of additional disk space will be used.
  * Install required packages for blender.
  * Install blender3d.
  * Insert Blender 3D menu in Graphics.
  * http://download.blender.org/release/
  * Disk size = 4255928K. Space Used = 289576K.
  * The following NEW packages will be installed:
  ```bash
  libdrm-amdgpu1 libgl1-mesa-dri libjemalloc1 libllvm3.8
  blender blender-data dh-python fonts-droid libatomic1 libavdevice55
  libboost-chrono1.55.0 libboost-locale1.55.0 libboost-regex1.55.0
  libboost-thread1.55.0 libgtkglext1 libilmbase6 libjs-jquery libjs-jquery-ui
  libmpdec2 libopencolorio1 libopencv-core2.4 libopencv-highgui2.4
  libopencv-imgproc2.4 libopenexr6 libopenimageio1.4 libpython3-stdlib
  libpython3.4 libpython3.4-minimal libpython3.4-stdlib libraw10 libspnav0
  libtbb2 libtinyxml2.6.2 libwebp5 libyaml-cpp0.3 python3 python3-minimal
  python3.4 python3.4-minimal
  ```
* >>>>>>>>> Running inst-std-xtra-dia.sh ...
  * After this operation, 22.8 MB of additional disk space will be used.
  * Install Dia to draw diagrams.
  * Insert Dia menu in Graphics.
  * How to add a new shape to Dia: http://dia-installer.de/howto/create_shape/index.html.en
  * Dia Shape Repository: http://dia-installer.de/shapes/index.html.en
  * Disk size = 4286620K. Space Used = 30692K.
  * The following NEW packages will be installed:
  ```bash
  dia dia-common dia-libs dia-shapes sgml-base xml-core
  ```
* >>>>>>>>> Running inst-std-xtra-opw-drush8-phar.sh ...
  * Install  Drush Version : 8.0.3  to manage Drupal.
  * List of commands at http://drushcommands.com/.
  * Disk size = 4291752K. Space Used = 5132K.
* >>>>>>>>> Running inst-std-xtra-opw-php5-gd.sh ...
  * After this operation, 118 kB of additional disk space will be used.
  * Install php5-gd to run Drupal.
  * Disk size = 4291972K. Space Used = 220K.
  * The following NEW packages will be installed:
  ```bash
  php5-gd
  ```
* >>>>>>>>> Running inst-std-xtra-opw-php5-mysql.sh ...
  * After this operation, 3,764 kB of additional disk space will be used.
  * Install php5-mysql to enable the PDO_MYSQL database driver for PHP and to run Drupal.
  * Enable mod_rewrite module.
  * Disk size = 4296536K. Space Used = 4564K.
  * The following NEW packages will be installed:
  ```bash
  libmysqlclient18 php5-mysql
  ```
* >>>>>>>>> Running inst-std-xtra-sweethome3d5.sh ...
  * Install SweetHome3D-5.3.jar.
  * Install TexturesLibraryEditor-1.5.jar.
  * Install FurnitureLibraryEditor-1.19.jar.
  * Insert SweetHome3D menus in Graphics.
  * Disk size = 4357900K. Space Used = 61364K.
* >>>>>>>>> Running inst-xtra-dev-tools-ant.sh ...
  * After this operation, 2,250 kB of additional disk space will be used.
  * Install ant.
  * Disk size = 4361980K. Space Used = 4080K.
  * The following NEW packages will be installed:
  ```bash
  ant
  ```
* >>>>>>>>> Running inst-xtra-freecad.sh ...
  * After this operation, 125 MB of additional disk space will be used.
  * After this operation, 101 MB of additional disk space will be used.
  * After this operation, 101 MB of additional disk space will be used.
  * After this operation, 266 kB of additional disk space will be used.
  * After this operation, 162 MB of additional disk space will be used.
  * After this operation, 84.1 MB of additional disk space will be used.
  * After this operation, 33.4 MB of additional disk space will be used.
  * After this operation, 8,907 kB of additional disk space will be used.
  * After this operation, 15.8 MB of additional disk space will be used.
  * After this operation, 15.6 MB of additional disk space will be used.
  * After this operation, 16.4 MB of additional disk space will be used.
  * After this operation, 19.6 MB of additional disk space will be used.
  * After this operation, 17.1 MB of additional disk space will be used.
  * After this operation, 17.1 MB of additional disk space will be used.
  * After this operation, 30.3 MB of additional disk space will be used.
  * After this operation, 4,510 kB of additional disk space will be used.
  * After this operation, 95.5 MB of additional disk space will be used.
  * After this operation, 15.5 MB of additional disk space will be used.
  * After this operation, 3,519 kB of additional disk space will be used.
  * After this operation, 292 kB of additional disk space will be used.
  * After this operation, 28.5 MB of additional disk space will be used.
  * After this operation, 1,066 kB of additional disk space will be used.
  * After this operation, 481 kB of additional disk space will be used.
  * After this operation, 1,258 kB of additional disk space will be used.
  * After this operation, 157 kB of additional disk space will be used.
  * After this operation, 228 kB of additional disk space will be used.
  * After this operation, 6,192 kB of additional disk space will be used.
  * After this operation, 6,143 kB of additional disk space will be used.
  * After this operation, 2,840 kB of additional disk space will be used.
  * After this operation, 310 kB of additional disk space will be used.
  * After this operation, 78.8 kB of additional disk space will be used.
  * After this operation, 79.2 MB of additional disk space will be used.
  * After this operation, 195 kB of additional disk space will be used.
  * After this operation, 12.0 MB of additional disk space will be used.
  * After this operation, 361 kB of additional disk space will be used.
  * After this operation, 207 kB of additional disk space will be used.
  * After this operation, 343 kB of additional disk space will be used.
  * After this operation, 71.6 MB of additional disk space will be used.
  * After this operation, 61.7 MB of additional disk space will be used.
  * After this operation, 110 kB of additional disk space will be used.
  * After this operation, 1,495 kB of additional disk space will be used.
  * After this operation, 56.6 MB of additional disk space will be used.
  * After this operation, 50.2 MB of additional disk space will be used.
  * After this operation, 4,989 kB of additional disk space will be used.
  * After this operation, 422 kB of additional disk space will be used.
  * After this operation, 190 kB of additional disk space will be used.
  * After this operation, 170 kB of additional disk space will be used.
  * After this operation, 269 kB of additional disk space will be used.
  * After this operation, 213 kB of additional disk space will be used.
  * After this operation, 334 kB of additional disk space will be used.
  * After this operation, 129 kB of additional disk space will be used.
  * After this operation, 424 kB of additional disk space will be used.
  * After this operation, 135 kB of additional disk space will be used.
  * After this operation, 81.9 kB of additional disk space will be used.
  * After this operation, 373 kB of additional disk space will be used.
  * After this operation, 6,290 kB of additional disk space will be used.
  * After this operation, 3,949 kB of additional disk space will be used.
  * After this operation, 118 kB of additional disk space will be used.
  * After this operation, 129 kB of additional disk space will be used.
  * After this operation, 56.3 kB of additional disk space will be used.
  * After this operation, 67.0 MB of additional disk space will be used.
  * After this operation, 67.6 kB of additional disk space will be used.
  * After this operation, 253 kB of additional disk space will be used.
  * After this operation, 3,751 kB of additional disk space will be used.
  * After this operation, 1,202 kB of additional disk space will be used.
  * After this operation, 1,192 kB of additional disk space will be used.
  * After this operation, 11.7 MB of additional disk space will be used.
  * After this operation, 12.2 MB of additional disk space will be used.
  * After this operation, 4,647 kB of additional disk space will be used.
  * After this operation, 378 kB of additional disk space will be used.
  * After this operation, 2,874 kB of additional disk space will be used.
  * After this operation, 712 kB of additional disk space will be used.
  * After this operation, 79.1 MB of additional disk space will be used.
  * After this operation, 77.7 MB of additional disk space will be used.
  * After this operation, 401 kB of additional disk space will be used.
  * After this operation, 1,018 kB of additional disk space will be used.
  * After this operation, 333 kB of additional disk space will be used.
  * After this operation, 245 kB of additional disk space will be used.
  * After this operation, 94.2 kB of additional disk space will be used.
  * After this operation, 61.4 kB of additional disk space will be used.
  * After this operation, 170 kB of additional disk space will be used.
  * After this operation, 105 kB of additional disk space will be used.
  * After this operation, 179 kB of additional disk space will be used.
  * After this operation, 24.1 MB of additional disk space will be used.
  * After this operation, 35.4 MB of additional disk space will be used.
  * After this operation, 35.2 MB of additional disk space will be used.
  * After this operation, 16.5 MB of additional disk space will be used.
  * After this operation, 34.1 MB of additional disk space will be used.
  * After this operation, 4,428 kB of additional disk space will be used.
  * After this operation, 333 kB of additional disk space will be used.
  * After this operation, 9,917 kB of additional disk space will be used.
  * After this operation, 143 kB of additional disk space will be used.
  * After this operation, 953 kB of additional disk space will be used.
  * After this operation, 1,256 kB of additional disk space will be used.
  * After this operation, 3,874 kB of additional disk space will be used.
  * After this operation, 190 kB of additional disk space will be used.
  * After this operation, 202 kB of additional disk space will be used.
  * After this operation, 164 kB of additional disk space will be used.
  * After this operation, 223 kB of additional disk space will be used.
  * After this operation, 168 kB of additional disk space will be used.
  * After this operation, 110 kB of additional disk space will be used.
  * After this operation, 563 kB of additional disk space will be used.
  * After this operation, 173 kB of additional disk space will be used.
  * After this operation, 3,914 kB of additional disk space will be used.
  * After this operation, 735 kB of additional disk space will be used.
  * After this operation, 412 MB of additional disk space will be used.
  * Install freecad.
  * Disk size = 4861304K. Space Used = 499324K.
  * The following NEW packages will be installed:
  ```bash
  iso-codes libcoin80 libgstreamer-plugins-base1.0-0 libgstreamer1.0-0
  libqt4-dbus libqt4-declarative libqt4-designer libqt4-help libqt4-opengl
  libqt4-script libqt4-scripttools libqt4-sql libqt4-test libqt4-xmlpatterns
  libqtassistantclient4 libqtwebkit4 libsoqt4-20 python-pivy python-qt4
  python-qt4-gl python-sip qdbus qtchooser
  iso-codes libgstreamer-plugins-base1.0-0 libgstreamer1.0-0 libqt4-dbus
  libqt4-declarative libqt4-designer libqt4-help libqt4-opengl libqt4-script
  libqt4-scripttools libqt4-sql libqt4-test libqt4-xmlpatterns
  libqtassistantclient4 libqtwebkit4 python-qt4 python-qt4-gl python-sip qdbus
  qtchooser
  iso-codes libgstreamer-plugins-base1.0-0 libgstreamer1.0-0 libqt4-dbus
  libqt4-declarative libqt4-designer libqt4-help libqt4-opengl libqt4-script
  libqt4-scripttools libqt4-sql libqt4-test libqt4-xmlpatterns
  libqtassistantclient4 libqtwebkit4 python-qt4 python-sip qdbus qtchooser
  python-sip
  iso-codes liba52-0.7.4 libbasicusageenvironment0 libcddb2 libchromaprint0
  libdca0 libdvbpsi9 libebml4 libfaad2 libgme0 libgroupsock4
  libgstreamer-plugins-base1.0-0 libgstreamer1.0-0 libiso9660-8 libkate1
  liblivemedia42 libmad0 libmatroska6 libmodplug1 libmpcdec6 libmpeg2-4
  libphonon4 libpulse-mainloop-glib0 libpyside1.2 libqt4-dbus
  libqt4-declarative libqt4-designer libqt4-help libqt4-opengl libqt4-script
  libqt4-scripttools libqt4-sql libqt4-test libqt4-xmlpatterns libqtwebkit4
  libresid-builder0c2a libshiboken1.2 libshine3 libshout3 libsidplay2
  libspeexdsp1 libtwolame0 libupnp6 libusageenvironment2 libvcdinfo0 libvlc5
  libvlccore8 phonon phonon-backend-vlc python-pyside python-pyside.phonon
  python-pyside.qtcore python-pyside.qtdeclarative python-pyside.qtgui
  python-pyside.qthelp python-pyside.qtnetwork python-pyside.qtopengl
  python-pyside.qtscript python-pyside.qtsql python-pyside.qtsvg
  python-pyside.qttest python-pyside.qtuitools python-pyside.qtwebkit
  python-pyside.qtxml qdbus qtchooser vlc-data vlc-nox
  iso-codes libgstreamer-plugins-base1.0-0 libgstreamer1.0-0 libpyside1.2
  libqt4-opengl libqt4-xmlpatterns libqtwebkit4 libshiboken1.2
  python-pyside.qtcore python-pyside.qtgui python-pyside.qtnetwork
  python-pyside.qtwebkit
  libpyside1.2 libqt4-designer libqt4-script libqt4-xmlpatterns libshiboken1.2
  python-pyside.qtcore python-pyside.qtgui python-pyside.qtuitools
  python-pyside.qtxml
  libpyside1.2 libqt4-xmlpatterns libshiboken1.2 python-pyside.qtcore
  python-pyside.qtxml
  libpyside1.2 libqt4-test libshiboken1.2 python-pyside.qtcore
  python-pyside.qtgui python-pyside.qttest
  libpyside1.2 libshiboken1.2 python-pyside.qtcore python-pyside.qtgui
  python-pyside.qtsvg
  libpyside1.2 libqt4-sql libshiboken1.2 python-pyside.qtcore
  python-pyside.qtgui python-pyside.qtsql
  libpyside1.2 libqt4-script libqt4-scripttools libshiboken1.2
  python-pyside.qtcore python-pyside.qtgui python-pyside.qtscript
  libpyside1.2 libqt4-opengl libshiboken1.2 python-pyside.qtcore
  python-pyside.qtgui python-pyside.qtopengl
  libpyside1.2 libqt4-help libqt4-sql libshiboken1.2 python-pyside.qtcore
  python-pyside.qtgui python-pyside.qthelp
  libpyside1.2 libqt4-declarative libqt4-opengl libqt4-script libqt4-sql
  libqt4-xmlpatterns libshiboken1.2 python-pyside.qtcore
  python-pyside.qtdeclarative python-pyside.qtgui python-pyside.qtnetwork
  libpyside1.2 libshiboken1.2 python-pyside.qtcore python-pyside.qtnetwork
  iso-codes liba52-0.7.4 libbasicusageenvironment0 libcddb2 libchromaprint0
  libdca0 libdvbpsi9 libebml4 libfaad2 libgme0 libgroupsock4
  libgstreamer-plugins-base1.0-0 libgstreamer1.0-0 libiso9660-8 libkate1
  liblivemedia42 libmad0 libmatroska6 libmodplug1 libmpcdec6 libmpeg2-4
  libphonon4 libpulse-mainloop-glib0 libpyside1.2 libqt4-dbus
  libresid-builder0c2a libshiboken1.2 libshine3 libshout3 libsidplay2
  libspeexdsp1 libtwolame0 libupnp6 libusageenvironment2 libvcdinfo0 libvlc5
  libvlccore8 phonon phonon-backend-vlc python-pyside.phonon
  python-pyside.qtcore python-pyside.qtgui qdbus qtchooser vlc-data vlc-nox
  libpyside1.2 libshiboken1.2 python-pyside.qtcore python-pyside.qtgui
  libpyside1.2 libshiboken1.2 python-pyside.qtcore
  python-ply
  fonts-lyx libtcl8.6 libtk8.6 python-dateutil python-funcsigs
  python-matplotlib python-matplotlib-data python-mock python-nose python-pbr
  python-pkg-resources python-pyparsing python-six python-tz
  python-nose python-pkg-resources
  python-pkg-resources
  python-funcsigs python-mock python-pbr python-pkg-resources python-six
  python-tz
  python-pyparsing
  fonts-lyx python-matplotlib-data
  libjs-sphinxdoc libjs-underscore python-collada python-dateutil python-lxml
  python-six
  python-lxml
  python-dateutil python-six
  python-six
  iso-codes liba52-0.7.4 libbasicusageenvironment0 libcddb2 libchromaprint0
  libdca0 libdvbpsi9 libebml4 libfaad2 libgme0 libgroupsock4
  libgstreamer-plugins-base1.0-0 libgstreamer1.0-0 libiso9660-8 libkate1
  liblivemedia42 libmad0 libmatroska6 libmodplug1 libmpcdec6 libmpeg2-4
  libphonon4 libpulse-mainloop-glib0 libqt4-dbus libresid-builder0c2a
  libshine3 libshout3 libsidplay2 libspeexdsp1 libtwolame0 libupnp6
  libusageenvironment2 libvcdinfo0 libvlc5 libvlccore8 phonon
  phonon-backend-vlc qdbus qtchooser vlc-data vlc-nox
  libzipios++0c2a
  libcoin80 libqt4-opengl libsoqt4-20
  libjs-sphinxdoc libjs-underscore
  libjs-underscore
  fonts-lyx
  libfreeimage3 libgl2ps0 liboce-foundation8 liboce-modeling8
  liboce-ocaf-lite8 liboce-ocaf8 liboce-visualization8
  libfreeimage3 libgl2ps0 liboce-foundation8 liboce-modeling8
  liboce-visualization8
  libgl2ps0
  libfreeimage3
  liboce-foundation8 liboce-modeling8 liboce-ocaf-lite8
  liboce-foundation8 liboce-modeling8
  liboce-foundation8
  libiso9660-8 libvcdinfo0
  libiso9660-8
  libtwolame0
  libsidplay2
  libresid-builder0c2a
  libmodplug1
  libkate1
  libgme0
  libcddb2
  liba52-0.7.4
  libupnp6
  libtcl8.6 libtk8.6
  libtcl8.6
  libspeexdsp1
  libshout3
  libshine3
  iso-codes libgstreamer-plugins-base1.0-0 libgstreamer1.0-0 libqt4-opengl
  libqt4-xmlpatterns libqtwebkit4
  libqtassistantclient4
  libqt4-test
  libqt4-script libqt4-scripttools
  libqt4-opengl
  libqt4-help libqt4-sql
  libqt4-designer libqt4-script
  libqt4-declarative libqt4-script libqt4-sql libqt4-xmlpatterns
  libqt4-xmlpatterns
  libqt4-sql
  libqt4-script
  libpyside1.2 libshiboken1.2
  iso-codes liba52-0.7.4 libbasicusageenvironment0 libcddb2 libchromaprint0
  libdca0 libdvbpsi9 libebml4 libfaad2 libgme0 libgroupsock4
  libgstreamer-plugins-base1.0-0 libgstreamer1.0-0 libiso9660-8 libkate1
  liblivemedia42 libmad0 libmatroska6 libmodplug1 libmpcdec6 libmpeg2-4
  libphonon4 libpulse-mainloop-glib0 libqt4-dbus libresid-builder0c2a
  libshine3 libshout3 libsidplay2 libspeexdsp1 libtwolame0 libupnp6
  libusageenvironment2 libvcdinfo0 libvlc5 libvlccore8 phonon-backend-vlc
  qdbus qtchooser vlc-data vlc-nox
  iso-codes liba52-0.7.4 libbasicusageenvironment0 libcddb2 libchromaprint0
  libdca0 libdvbpsi9 libebml4 libfaad2 libgme0 libgroupsock4
  libgstreamer-plugins-base1.0-0 libgstreamer1.0-0 libiso9660-8 libkate1
  liblivemedia42 libmad0 libmatroska6 libmodplug1 libmpcdec6 libmpeg2-4
  libresid-builder0c2a libshine3 libshout3 libsidplay2 libspeexdsp1
  libtwolame0 libupnp6 libusageenvironment2 libvcdinfo0 libvlc5 libvlccore8
  vlc-data vlc-nox
  libshiboken1.2
  libphonon4 libpulse-mainloop-glib0 libqt4-dbus qdbus qtchooser
  libqt4-dbus qdbus qtchooser
  qdbus qtchooser
  qtchooser
  libpulse-mainloop-glib0
  libmpeg2-4
  libmpcdec6
  libmad0
  iso-codes libgstreamer-plugins-base1.0-0 libgstreamer1.0-0
  libvlc5 libvlccore8 vlc-data
  libvlccore8 vlc-data
  iso-codes
  vlc-data
  libgstreamer1.0-0
  libfaad2
  libcoin80
  libusageenvironment2
  libebml4 libmatroska6
  liblivemedia42
  libxerces-c3.1
  libgroupsock4
  libebml4
  libdvbpsi9
  libdca0
  libboost-signals1.55.0
  libchromaprint0
  libboost-program-options1.55.0
  libbasicusageenvironment0
  libpyside1.2 libshiboken1.2 pyside-tools python-pyside.qtcore
  libboost-python1.55.0
  fonts-lyx freecad iso-codes liba52-0.7.4 libbasicusageenvironment0
  libboost-program-options1.55.0 libboost-python1.55.0 libboost-signals1.55.0
  libcddb2 libchromaprint0 libcoin80 libdca0 libdvbpsi9 libebml4 libfaad2
  libfreeimage3 libgl2ps0 libgme0 libgroupsock4 libgstreamer-plugins-base1.0-0
  libgstreamer1.0-0 libiso9660-8 libjs-sphinxdoc libjs-underscore libkate1
  liblivemedia42 libmad0 libmatroska6 libmodplug1 libmpcdec6 libmpeg2-4
  liboce-foundation10 liboce-modeling10 liboce-ocaf-lite10 liboce-ocaf10
  liboce-visualization10 libphonon4 libpulse-mainloop-glib0 libpyside1.2
  libqt4-dbus libqt4-declarative libqt4-designer libqt4-help libqt4-opengl
  libqt4-script libqt4-scripttools libqt4-sql libqt4-test libqt4-xmlpatterns
  libqtassistantclient4 libqtwebkit4 libresid-builder0c2a libshiboken1.2
  libshine3 libshout3 libsidplay2 libsoqt4-20 libspeexdsp1 libtcl8.6 libtk8.6
  libtwolame0 libupnp6 libusageenvironment2 libvcdinfo0 libvlc5 libvlccore8
  libxerces-c3.1 libzipios++0c2a phonon phonon-backend-vlc pyside-tools
  python-collada python-dateutil python-funcsigs python-lxml python-matplotlib
  python-matplotlib-data python-mock python-nose python-pbr python-pivy
  python-pkg-resources python-ply python-pyparsing python-pyside
  python-pyside.phonon python-pyside.qtcore python-pyside.qtdeclarative
  python-pyside.qtgui python-pyside.qthelp python-pyside.qtnetwork
  python-pyside.qtopengl python-pyside.qtscript python-pyside.qtsql
  python-pyside.qtsvg python-pyside.qttest python-pyside.qtuitools
  python-pyside.qtwebkit python-pyside.qtxml python-qt4 python-qt4-gl
  python-sip python-six python-tz qdbus qtchooser vlc-data vlc-nox
  ```
* >>>>>>>>> Running inst-xtra-fuse.sh ...
  * Install fuse(fusermount) to run TMSU.
  * Disk size = 4861308K. Space Used = 4K.
* >>>>>>>>> Running inst-xtra-graphviz.sh ...
  * After this operation, 12.4 MB of additional disk space will be used.
  * Install graphviz.
  * Disk size = 4875728K. Space Used = 14420K.
  * The following NEW packages will be installed:
  ```bash
  graphviz libcdt5 libcgraph6 libgvc6 libgvpr2 libpathplan4 libxdot4
  ```
* >>>>>>>>> Running inst-xtra-open-terminals-on-startup.sh ...
  * Install x11-xserver-utils for xrandr.
  * Install wmctrl.
  * Install x11-utils for xprop.
  * Copy open-terminal.sh in /root/cld.
  * Add jwmrc-startup-open-terminals.sh in /root/cld/jwmrc-startup.sh.
  * Disk size = 4875740K. Space Used = 12K.
* >>>>>>>>> Running inst-xtra-sqlite3.sh ...
  * After this operation, 143 kB of additional disk space will be used.
  * Install Database: sqlite3.
  * Disk size = 4876012K. Space Used = 272K.
  * The following NEW packages will be installed:
  ```bash
  sqlite3
  ```
* >>>>>>>>> Running inst-xtra-wifite.sh ...
  * After this operation, 80.3 MB of additional disk space will be used.
  * Install wifite.
  * Disk size = 4969428K. Space Used = 93416K.
  * The following NEW packages will be installed:
  ```bash
  aircrack-ng iw libc-ares2 libgeoip1 libpcap0.8 libsmi2ldbl libwireshark-data
  libwireshark5 libwiretap4 libwsutil4 pyrit reaver tshark wifite
  wireshark-common
  ```
* >>>>>>>>> Running inst-xtra-wine64.sh ...
  * After this operation, 187 MB of additional disk space will be used.
  * Install wine64.
  * Disk size = 5461956K. Space Used = 209548K.
  * The following NEW packages will be installed:
  ```bash
  fonts-wine libwine-development wine-development wine64-development
  ```
* >>>>>>>>> Running inst-xtra-wine-playonlinux.sh ...
  * After this operation, 52.0 MB of additional disk space will be used.
  * After this operation, 240 kB of additional disk space will be used.
  * After this operation, 141 kB of additional disk space will be used.
  * After this operation, 606 kB of additional disk space will be used.
  * After this operation, 4,242 kB of additional disk space will be used.
  * After this operation, 3,828 kB of additional disk space will be used.
  * After this operation, 183 MB of additional disk space will be used.
  * Install playonlinux.
  * Insert playonlinux in Internet menu.
  * Disk size = 5252408K. Space Used = 282980K.
  * The following NEW packages will be installed:
  ```bash
  libwxbase3.0-0 libwxgtk3.0-0 python-wxgtk3.0 python-wxversion
  cabextract libmspack0
  mesa-utils
  gettext-base
  icoutils libencode-locale-perl libfile-listing-perl libhtml-parser-perl
  libhtml-tagset-perl libhtml-tree-perl libhttp-cookies-perl libhttp-date-perl
  libhttp-message-perl libhttp-negotiate-perl libio-html-perl
  libio-socket-ssl-perl liblwp-mediatypes-perl liblwp-protocol-https-perl
  libnet-http-perl libnet-ssleay-perl libtimedate-perl liburi-perl libwww-perl
  libwww-robotrules-perl
  p7zip-full
  binutils libwine ocl-icd-libopencl1 playonlinux wine wine64
  ```
* >>>>>>>>> Running inst-xtra-xmpv.sh ...
  * Install xmpv.
  * Disk size = 5462024K. Space Used = 68K.
* >>>>>>>>> Running inst-zclean-01-apt-get-00-clean-up.sh ...
  * Remove unused packages: apt-get -y --force-yes autoremove.
  * Clean cached DEB: apt-get clean.
  * Disk size = 4699664K. Space Used = -762360K.
* >>>>>>>>> Running inst-zclean-01-apt-get-01-source-list.sh ...
  * Reinstate original Debian repositories back to source.list.
  * Disk size = 4699672K. Space Used = 8K.
* >>>>>>>>> Running inst-zclean-02-remove-block-services.sh ...
  * Remove block services from starting after they are being installed.
  * Disk size = 4699672K. Space Used = 0K.
* >>>>>>>>> Running inst-zclean-03-default-filemanager.sh ...
  * Set shortcut key(WIN+e) for filemanager.
  * Disk size = 4699680K. Space Used = 8K.
* >>>>>>>>> Running inst-zclean-98-zerosizing-docs.sh ...
  * Zero size all documents in /usr/share/.
  * Disk size = 4597456K. Space Used = -102224K.
* >>>>>>>>> Running inst-zclean-99-end-cleanup.sh ...
  * rm -rf /tmp/*.
  * Umount /sys, /dev/pts and /proc.
  * Disk size = 4597456K. Space Used = 0K.
* >>>>>>>>> Running main.sh ...
  * Running on SHELL=/bin/bash VER=4.3.30(1)-release
  * Disk size = 1524568K. Space Used = 1524568K.
