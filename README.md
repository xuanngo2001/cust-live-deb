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

# Create hybrid ISO

1. Clone the git repository(e.g. `git clone https://github.com/limelime/cust-live-deb.git`)
1. Import the wiki to `./scripts/settings/doc/`.
1. `./cld.sh <SYSTEM> <DEB_REPO_URL>`. 
    * **SYSTEM** can be:
        * min: Strict minimum system with JWM light-weight window manager. From there, you can add your desired applications.
        * std: Standard system includes minimum system + common applications.
        * all: Will execute all scripts in `./scripts/repository/`.
    * **DEB_REPO_URL** is the URL to the Debian repository(e.g. http://ftp.debian.org/debian/).
1. `cust-live-deb-64-<SYSTEM>_YYYY-MM-DD_HH.MM.SS.iso` will be created.


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

    * Disk size = 2209172K. Space Used = 48K.
  * Running inst-min-con-xtra-java-jre.sh ...
    * Install JAVA JRE: default-jre.
    * Disk size = 2209172K. Space Used = 0K.
  * Running inst-min-con-xtra-locate.sh ...
    * After this operation, 324 kB of additional disk space will be used.
    * Install locate to generate an index of files and directories. Searching for files will be much faster.
    * Add locate alias.
    * Run updatedb to update the database.
    * Disk size = 2209744K. Space Used = 572K.
  * Running inst-min-con-xtra-macchanger.sh ...
    * After this operation, 622 kB of additional disk space will be used.
    * Install macchanger.
    * Set macchanger to change MAC address whenever network device is up or down.
    * To configure macchanger: dpkg-reconfigure macchanger.
    * Check whether it is working: macchanger -s eth0.
    * systemctl status macchanger@eth0.service
    * Disk size = 2210628K. Space Used = 884K.
  * Running inst-min-con-xtra-mariadb-server.sh ...
    * After this operation, 131 MB of additional disk space will be used.
    * Disk size = 2463244K. Space Used = 252616K.
  * Running inst-min-con-xtra-mtran.sh ...
    * Copied /root/scripts/repository/inst-min-con-xtra-mtran/mtran.sh to /usr/local/bin/.
    * Disk size = 2463248K. Space Used = 4K.
  * Running inst-min-con-xtra-php5.sh ...
    * After this operation, 32.0 MB of additional disk space will be used.
    * Install php5.
    * Disk size = 2505044K. Space Used = 41796K.
  * Running inst-min-con-xtra-timezone.sh ...
    * Set time zone to EST (America/Montreal) in /etc/timezone.
    * Disk size = 2505044K. Space Used = 0K.
  * Running inst-min-win-00-xorg.sh ...
    * After this operation, 67.7 MB of additional disk space will be used.
    * Set keyboard to use US international.
    * Install minimum Xorg X server.
    * Install xinit so you can run startx.
    * Add auto start window manager(i.e startx).
    * Disk size = 2591584K. Space Used = 86540K.
  * Running inst-min-win-01-wm-jwm.sh ...
    * After this operation, 5,989 kB of additional disk space will be used.
    * Install Window Manager: JWM vsvn-579 by Joe Wingbermuehle.
    * Set jwmrc.
    * Disk size = 2604140K. Space Used = 12556K.
  * Running inst-min-win-cld-dev-tools-pandoc.sh ...
    * After this operation, 38.6 MB of additional disk space will be used.
    * Install pandoc to generate user manual.
    * Add documentation: user manual.
    * Add documentation: developer manual.
    * Disk size = 2646676K. Space Used = 42536K.
  * Running inst-min-win-cld-win-split.sh ...
    * After this operation, 81.9 kB of additional disk space will be used.
    * After this operation, 654 kB of additional disk space will be used.
    * Install required applications for cld-win-split.sh: wmctrl and x11-utils for xprop.
    * Add key bindings: Ctrl+Alt+Left, Right, Up, Down, 1, 2, 3, 4, 5, 6, 7, 8, 9.
    * Disk size = 2647748K. Space Used = 1072K.
  * Running inst-min-win-jwm-keys-alsa.sh ...
    * Add ALSA key binding.
    * Add script to auto-detect ALSA controller on JWM startup.
    * Disk size = 2647752K. Space Used = 4K.
  * Running inst-min-win-menu.sh ...
    * After this operation, 1,829 kB of additional disk space will be used.
    * Install menu, an easy way to get installed programs in the menu automatically.
    * Disk size = 2649032K. Space Used = 1280K.
  * Running inst-min-win-systray-volumeicon-alsa.sh ...
    * After this operation, 243 kB of additional disk space will be used.
    * Install volume controller in system tray.
    * Set left-click to display volume slider: lmb_slider=true.
    * Set volumeicon to run on JWN startup.
    * Disk size = 2649496K. Space Used = 464K.
  * Running inst-min-xtra-encoding-libtext-iconv-perl.sh ...
    * Install libtext-iconv-perl so that you can use iconv to convert to other encoding.
    * Disk size = 2649496K. Space Used = 0K.
  * Running inst-min-xtra-fonts-asian.sh ...
    * After this operation, 48.2 MB of additional disk space will be used.
    * Install fonts-hanazono to display Asian characters correctly.
    * Test it by opening website http://ctext.org/zh.
    * Disk size = 2715488K. Space Used = 65992K.
  * Running inst-std-accessories-calc-calcoo.sh ...
    * After this operation, 123 kB of additional disk space will be used.
    * Install calculator: calcoo.
    * Disk size = 2715708K. Space Used = 220K.
  * Running inst-std-accessories-calc-gnome-calculator.sh ...
    * After this operation, 66.4 MB of additional disk space will be used.
    * Install calculator: gnome-calculator.
    * Disk size = 2777428K. Space Used = 61720K.
  * Running inst-std-accessories-calc-qalculate-gtk.sh ...
    * After this operation, 8,248 kB of additional disk space will be used.
    * Install calculator: qalculate-gtk.
    * Disk size = 2788156K. Space Used = 10728K.
  * Running inst-std-accessories-calc-speedcrunch.sh ...
    * After this operation, 1,830 kB of additional disk space will be used.
    * Install calculator: speedcrunch.
    * Disk size = 2791292K. Space Used = 3136K.
  * Running inst-std-accessories-calc-wcalc.sh ...
    * After this operation, 1,170 kB of additional disk space will be used.
    * Install calculator: wcalc.
    * Disk size = 2793116K. Space Used = 1824K.
  * Running inst-std-accessories-calc-x11-apps.sh ...
    * After this operation, 20.8 MB of additional disk space will be used.
    * Install calculator: xcalc.
    * Disk size = 2819800K. Space Used = 26684K.
  * Running inst-std-accessories-feh.sh ...
    * After this operation, 4,308 kB of additional disk space will be used.
    * Install command line image viewer: feh.
    * Disk size = 2823620K. Space Used = 3820K.
  * Running inst-std-accessories-galculator.sh ...
    * After this operation, 1,424 kB of additional disk space will be used.
    * Install Calculator: galculator.
    * Insert galculator in Accessories menu.
    * Disk size = 2825140K. Space Used = 1520K.
  * Running inst-std-accessories-gpicview.sh ...
    * After this operation, 876 kB of additional disk space will be used.
    * Install Image Viewer: gpicview.
    * Insert gpicview in Accessories menu.
    * Disk size = 2825484K. Space Used = 344K.
  * Running inst-std-accessories-mupdf.sh ...
    * After this operation, 12.0 MB of additional disk space will be used.
    * Install PDF reader: Mupdf.
    * Disk size = 2840828K. Space Used = 15344K.
  * Running inst-std-accessories-prtscr-gnome-screenshot.sh ...
    * After this operation, 1,158 kB of additional disk space will be used.
    * Install gnome-screenshot to be used for PrintScreen key.
    * Insert PrintScreen key binding.
    * By default, screenshots are saved under ~/Pictures/.
    * Disk size = 2841700K. Space Used = 872K.
  * Running inst-std-accessories-scite.sh ...
    * After this operation, 4,829 kB of additional disk space will be used.
    * After this operation, 221 kB of additional disk space will be used.
    * Install Text Editor: SciTE.
    * Install at-spi2-core to shut up Accessibility warning message.
    * Insert SciTE in Accessories menu.
    * Disk size = 2848236K. Space Used = 6536K.
  * Running inst-std-accessories-terminal-xfce.sh ...
    * After this operation, 11.1 MB of additional disk space will be used.
    * Install terminal: xfce4-terminal.
    * Disk size = 2857444K. Space Used = 9208K.
  * Running inst-std-accessories-thunar.sh ...
    * After this operation, 10.0 MB of additional disk space will be used.
    * Install File Manger: thunar, thunar-media-tags-plugin, thunar-archive-plugin, thunar-volman.
    * Insert Thunar in Accessories menu.
    * Disk size = 2863792K. Space Used = 6348K.
  * Running inst-std-accessories-xarchiver.sh ...
    * After this operation, 1,211 kB of additional disk space will be used.
    * Install Archive Manager: xarchiver.
    * Disk size = 2865028K. Space Used = 1236K.
  * Running inst-std-graphic-pinta.sh ...
    * After this operation, 45.0 MB of additional disk space will be used.
    * Install Image Editor: Pinta.
    * Disk size = 2936564K. Space Used = 71536K.
  * Running inst-std-internet-iceweasel.sh ...
    * After this operation, 91.5 MB of additional disk space will be used.
    * After this operation, 21.8 MB of additional disk space will be used.
    * Install web browser: iceweasel.
    * To update Adobe Flash Player: update-flashplugin-nonfree --install.
    * To test Adobe Flash Player: http://www.adobe.com/software/flash/about/.
    * Disk size = 3107684K. Space Used = 171120K.
  * Running inst-std-multimedia-mpv.sh ...
    * After this operation, 84.0 MB of additional disk space will be used.
    * Install Media Player: MPV.
    * Add multiple aliases for MPV.
    * Add useful mpv keybindings settings.
    * Disk size = 3225336K. Space Used = 117652K.
  * Running inst-std-office-libreoffice-bpo.sh ...
    * After this operation, 286 MB of additional disk space will be used.
    * After this operation, 43.7 MB of additional disk space will be used.
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
    * Disk size = 3674860K. Space Used = 449524K.
  * Running inst-std-office-xtra-projectlibre.sh ...
    * Install ProjectLibre.
    * Disk size = 3693316K. Space Used = 18456K.
  * Running inst-std-system-alsamixer.sh ...
    * Insert Alsamixer menu in Administration.
    * Disk size = 3693316K. Space Used = 0K.
  * Running inst-std-system-conky.sh ...
    * After this operation, 967 kB of additional disk space will be used.
    * Install System Monitor: conky.
    * Add conky config file: conkyrc.
    * Set conky to run on JWM startup.
    * Add on the fly settings to Conky.
    * Disk size = 3694632K. Space Used = 1316K.
  * Running inst-std-system-gnome-disk-utility.sh ...
    * After this operation, 11.1 MB of additional disk space will be used.
    * Install Partition Manager: gnome-disk-utility.
    * Run: gnome-disks.
    * Insert gnome-disk-utility menu in Administration.
    * Disk size = 3700904K. Space Used = 6272K.
  * Running inst-std-system-keyboard.sh ...
    * Insert keyboard menu in Administration.
    * Disk size = 3700904K. Space Used = 0K.
  * Running inst-std-system-monitor-switcher-lxrandr.sh ...
    * After this operation, 454 kB of additional disk space will be used.
    * After this operation, 779 kB of additional disk space will be used.
    * Install Monitor Switcher: lxrandr.
    * Add lxrandr key binding.
    * Disk size = 3701760K. Space Used = 856K.
  * Running inst-std-system-network-wicd.sh ...
    * After this operation, 20.9 MB of additional disk space will be used.
    * Install Network Manager: wicd.
    * For wireless, you have to type in the wireless interface(e.g. wlan0) in the Preferences.
    * Set wicd to run on JWM startup.
    * Log at /var/log/wicd/wicd.log.
    * Disk size = 3736164K. Space Used = 34404K.
  * Running inst-std-system-time-zone.sh ...
    * Insert Time Zone menu in Administration.
    * Disk size = 3736164K. Space Used = 0K.
  * Running inst-std-system-xtra-hardinfo.sh ...
    * After this operation, 467 kB of additional disk space will be used.
    * Install hardware info apps: hardinfo.
    * Insert System Information menu in Administration.
    * Disk size = 3737096K. Space Used = 932K.
  * Running inst-std-system-xtra-webcam-camorama.sh ...
    * After this operation, 41.1 MB of additional disk space will be used.
    * Install webcam: Camorama.
    * Insert Camorama menu in Graphics.
    * Disk size = 3768520K. Space Used = 31424K.
  * Running inst-std-xtra-blender.sh ...
    * After this operation, 14.0 MB of additional disk space will be used.
    * After this operation, 185 MB of additional disk space will be used.
    * Install required packages for blender.
    * Install blender3d.
    * Insert Blender 3D menu in Graphics.
    * Disk size = 3997292K. Space Used = 228772K.
  * Running inst-std-xtra-dia.sh ...
    * After this operation, 21.2 MB of additional disk space will be used.
    * Install Dia to draw diagrams.
    * Insert Dia menu in Graphics.
    * Disk size = 4022860K. Space Used = 25568K.
  * Running inst-std-xtra-opw-drush8.sh ...
    * Install  Drush Version   :  8.0.0-rc1  to manage Drupal.
    * See https://www.linode.com/docs/websites/cms/drush-drupal.
    * Further setting is needed. See https://wiki.debian.org/drush.
    * Disk size = 4042976K. Space Used = 20116K.
  * Running inst-std-xtra-opw-php5-gd.sh ...
    * After this operation, 118 kB of additional disk space will be used.
    * Install php5-gd to run Drupal.
    * Disk size = 4043188K. Space Used = 212K.
  * Running inst-std-xtra-opw-php5-mysql.sh ...
    * After this operation, 3,752 kB of additional disk space will be used.
    * Install php5-mysql to enable the PDO_MYSQL database driver for PHP and to run Drupal.
    * Enable mod_rewrite module.
    * Disk size = 4047720K. Space Used = 4532K.
  * Running inst-std-xtra-sweethome3d.sh ...
    * Install SweetHome3D-5.0.jar.
    * Install TexturesLibraryEditor-1.4.jar.
    * Install FurnitureLibraryEditor-1.17.jar.
    * Insert SweetHome3D menus in Graphics.
    * Disk size = 4083836K. Space Used = 36116K.
  * Running inst-xtra-cld-dev-tools-aptly.sh ...
    * After this operation, 16.9 MB of additional disk space will be used.
    * Install aptly version: 0.9.6~dev to create local debian repository.
    * Add xz-utils package because aptly snapshot merge needs it.
    * Disk size = 4104960K. Space Used = 21124K.
  * Running inst-xtra-cld-dev-tools-libxml2-utils.sh ...
    * After this operation, 152 kB of additional disk space will be used.
    * Install libxml2-utils to validate xml file.
    * Disk size = 4105252K. Space Used = 292K.
  * Running inst-xtra-cld-dev-tools-xsltproc.sh ...
    * After this operation, 140 kB of additional disk space will be used.
    * Install xsltproc to process xslt.
    * Disk size = 4105540K. Space Used = 288K.
  * Running inst-xtra-dev-tools-ant.sh ...
    * After this operation, 2,229 kB of additional disk space will be used.
    * Install ant.
    * Disk size = 4109580K. Space Used = 4040K.
  * Running inst-xtra-fuse.sh ...
    * Install fuse(fusermount) to run TMSU.
    * Disk size = 4109580K. Space Used = 0K.
  * Running inst-xtra-imdb-python-imdbpy.sh ...
    * After this operation, 990 kB of additional disk space will be used.
    * Install IMDbPY.
    * Disk size = 4111744K. Space Used = 2164K.
  * Running inst-xtra-open-terminals-on-startup.sh ...
    * After this operation, 2,064 kB of additional disk space will be used.
    * Install x11-xserver-utils for xrandr.
    * Install wmctrl.
    * Install x11-utils for xprop.
    * Install xterm for resize.
    * Copy open-terminal.sh in /root/cld.
    * Add open-terminal.sh in /root/cld/jwmrc-startup.sh.
    * Disk size = 4114652K. Space Used = 2908K.
  * Running inst-xtra-sqlite3.sh ...
    * After this operation, 143 kB of additional disk space will be used.
    * Install Database: sqlite3.
    * Disk size = 4114920K. Space Used = 268K.
  * Running inst-xtra-virtualbox-guest-iso.sh ...
    * After this operation, 110 MB of additional disk space will be used.
    * After this operation, 14.6 MB disk space will be freed.
    * After this operation, 63.3 MB disk space will be freed.
    * Install VirtualBox guest additions to Shared folder/clipboard, auto window scaling, etc.
    * Assumed packages installed: bzip2 & Xserver installed.
    * Install dkms, libc6-dev, linux-headers-3.16.0-4-amd64 to compile VirtualBox guest additions.
    * VirtualBox guest additions installed: version: 5.0.12.
    * Delete VBoxGuestAdditions.iso[0K]. Space used could be negative due to this deletion.
    * Disk size = 4197860K. Space Used = 82940K.
  * Running inst-xtra-virtualbox5.sh ...
    * After this operation, 77.9 MB of additional disk space will be used.
    * After this operation, 156 MB of additional disk space will be used.
    * After this operation, 14.6 MB disk space will be freed.
    * After this operation, 63.3 MB disk space will be freed.
    * Install dkms, libc6-dev, linux-headers-3.16.0-4-amd64 to compile VirtualBox.
    * Install VirtualBox 5.0.12r104815.
    * Disk size = 4426912K. Space Used = 229052K.
  * Running inst-xtra-wifite.sh ...
    * After this operation, 80.3 MB of additional disk space will be used.
    * Install wifite.
    * Disk size = 4520308K. Space Used = 93396K.
  * Running inst-xtra-wine-diablo2.sh ...
    * After this operation, 631 kB of additional disk space will be used.
    * Install libjpeg-turbo-progs & libldap-2.4-2 so that Blizzard Downloader will not fail.
    * Disk size = 4521148K. Space Used = 840K.
  * Running inst-xtra-wine.sh ...
    * After this operation, 190 MB of additional disk space will be used.
    * Install wine so that you can run Windows applications.
    * You need to run 'wine winecfg' before using wine. This is a workaround of a bug.
    * Disk size = 4754680K. Space Used = 233532K.
  * Running inst-xtra-xmpv.sh ...
    * Install xmpv.
    * Disk size = 4754724K. Space Used = 44K.
  * Running inst-xtra-zfs.sh ...
    * After this operation, 15.8 MB of additional disk space will be used.
    * After this operation, 78.0 MB of additional disk space will be used.
    * Install lsb-release.
    * Add zfsonlinux repository to /etc/apt/sources.list.d/zfsonlinux.list.
    * Add GPG key to /etc/apt/trusted.gpg.d/zfsonlinux.gpg.
    * Install debian-zfs: version: 0.6.5.2-2, DKMS style package. DKMS vs KMOD, see http://zfsonlinux.org/generic-deb.html
    * Delete zfsonlinux_6_all.deb[1992K].
    * Change default behavior: Don't allow the last 1.6% of space in the pool instead of 3.2%.
    * Disk size = 4893924K. Space Used = 139200K.
  * Running inst-zclean-00-remove-block-services.sh ...
    * Remove block services from starting after they are being installed.
    * Disk size = 4893920K. Space Used = -4K.
  * Running inst-zclean-00-zerosizing-docs.sh ...
    * Zero size all documents in /usr/share/.
    * Disk size = 4786924K. Space Used = -106996K.
  * Running inst-zclean-99-end-cleanup.sh ...
    * Clean apt-get cache.
    * rm -rf /tmp/*.
    * Umount /sys, /dev/pts and /proc.
    * Add Debian main repositories in sources.list.
    * Delete local Debian repository from sources.list.
    * Disk size = 3980916K. Space Used = -806008K.
# Customizations Performed
  * Running install.sh ...
    * Running on SHELL=/bin/bash VER=4.3.30(1)-release
    * Disk size = 1372184K. Space Used = 1372184K.
  * Running inst-min-con-00-apt-custom-repository.sh ...
    * Disk size = 1372196K. Space Used = 12K.
  * Running inst-min-con-00-linux-image.sh ...
    * After this operation, 153 kB disk space will be freed.
    * After this operation, 3111 kB of additional disk space will be used.
    * After this operation, 224 MB of additional disk space will be used.
    * Mount /proc, /sys and /dev/pts.
    * Generate dbus-uuidgen to /var/lib/dbus/machine-id.
    * Install Linux image.
    * Set APT to skip installing recommended packages.
    * Disk size = 1772420K. Space Used = 400224K.
  * Running inst-min-con-01-apt.sh ...
    * Set APT to use local repository first.
    * Set APT to skip installing recommended packages.
    * Disk size = 1772428K. Space Used = 8K.
  * Running inst-min-con-01-debconf-utils.sh ...
    * After this operation, 157 kB of additional disk space will be used.
    * Install debconf-utils to use debconf-set-selections.
    * Disk size = 1772660K. Space Used = 232K.
  * Running inst-min-con-02-locale.sh ...
    * After this operation, 16.3 MB of additional disk space will be used.
    * Install locale and set it to use en_US.UTF-8.
    * Disk size = 1795388K. Space Used = 22728K.
  * Running inst-min-con-02-localepurge.sh ...
    * After this operation, 334 kB of additional disk space will be used.
    * Install localepurge to purge documentation of all languages, except en, en_US, en_US.UTF-8.
    * Reconfigure localepurge: dpkg-reconfigure localepurge
    * Disk size = 1796124K. Space Used = 736K.
  * Running inst-min-con-03-proxy.sh ...
    * Disk size = 1796132K. Space Used = 8K.
  * Running inst-min-con-03-startup-script.sh ...
    * Copy startup.sh to /etc/init.d/.
    * Make it executable.
    * Register it in the boot sequence.
    * Disk size = 1796136K. Space Used = 4K.
  * Running inst-min-con-04-block-services-start-postinstall.sh ...
    * Block services from starting after they are being installed.
    * Disk size = 1796140K. Space Used = 4K.
  * Running inst-min-con-auto-log-root.sh ...
    * Disk size = 1796152K. Space Used = 12K.
  * Running inst-min-con-bashrc.sh ...
    * Set common settings for /root/.bashrc.
    * Set dircolors to use dircolors-gnu-ls-colors.txt to make ls more beautiful.
    * Disk size = 1796160K. Space Used = 8K.
  * Running inst-min-con-cld-dev-tools-debootstrap.sh ...
    * After this operation, 234 kB of additional disk space will be used.
    * Install debootstrap allows the creation of a Debian base system in a directory.
    * Disk size = 1796484K. Space Used = 324K.
  * Running inst-min-con-cld-tools.sh ...
    * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/fimg.sh to /usr/local/bin/.
    * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/feh-ss.sh to /usr/local/bin/.
    * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-remaster.sh to /usr/local/bin/.
    * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/lspace.sh to /usr/local/bin/.
    * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-lsmodules.sh to /usr/local/bin/.
    * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-persistence.sh to /usr/local/bin/.
    * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-zfs-hd.sh to /usr/local/bin/.
    * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-bash-color-meaning.sh to /usr/local/bin/.
    * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-mkiso.sh to /usr/local/bin/.
    * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-dd-usb.sh to /usr/local/bin/.
    * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-dependency-graph.sh to /usr/local/bin/.
    * Copied /root/scripts/repository/inst-min-con-cld-tools/tools/cld-win-split.sh to /usr/local/bin/.
    * Disk size = 1796532K. Space Used = 48K.
  * Running inst-min-con-compressors.sh ...
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
    * Disk size = 1800544K. Space Used = 4012K.
  * Running inst-min-con-deb-multimedia.sh ...
    * Install deb-multimedia-keyring_2015.6.1_all.deb.
    * Add deb-multimedia sources list.
    * Delete deb-multimedia-keyring_2015.6.1_all.deb[12K].
    * apt-get update
    * Disk size = 1801796K. Space Used = 1252K.
  * Running inst-min-con-filesystem-exfat.sh ...
    * After this operation, 550 kB of additional disk space will be used.
    * After this operation, 234 kB of additional disk space will be used.
    * Install exfat-fuse so that you can read and write SD cards and USB keys.
    * Disk size = 1802984K. Space Used = 1188K.
  * Running inst-min-con-filesystem-ntfs-3g.sh ...
    * After this operation, 1,632 kB of additional disk space will be used.
    * Install support for NTFS: ntfs-3g.
    * Disk size = 1805140K. Space Used = 2156K.
  * Running inst-min-con-firmware-cpu.sh ...
    * After this operation, 47.1 kB of additional disk space will be used.
    * After this operation, 655 kB of additional disk space will be used.
    * Install CPU firmware: amd64-microcode.
    * Install CPU firmware: intel-microcode.
    * Disk size = 1806480K. Space Used = 1340K.
  * Running inst-min-con-firmware-net-b43-installer.sh ...
    * After this operation, 100 kB of additional disk space will be used.
    * Install b43 for Dell Wireless 1397 WLAN Mini-Card Driver.
    * Disk size = 1844176K. Space Used = 37696K.
  * Running inst-min-con-firmware.sh ...
    * After this operation, 41.7 MB of additional disk space will be used.
    * Install firmwares: atmel-firmware, bluez-firmware, firmware-atheros, firmware-bnx2, firmware-bnx2x, firmware-brcm80211, firmware-intelwimax, firmware-ipw2x00, firmware-ivtv, firmware-iwlwifi, firmware-libertas, firmware-linux, firmware-linux-free, firmware-linux-nonfree, firmware-qlogic, firmware-ralink, firmware-realtek, zd1211-firmware.
    * Disk size = 1897868K. Space Used = 53692K.
  * Running inst-min-con-live-build-tools.sh ...
    * After this operation, 110 kB of additional disk space will be used.
    * After this operation, 1,789 kB of additional disk space will be used.
    * After this operation, 392 kB of additional disk space will be used.
    * Install xorriso to create isohybrid.
    * Install isolinux to get isohdpfx.bin and isolinux.bin in order to create isohybrid.
    * Note: boot.cat is automatically created.
    * Install rsync to copy directories.
    * Install squashfs-tools to create new squashfs.
    * Disk size = 1901436K. Space Used = 3568K.
  * Running inst-min-con-mtp-tools.sh ...
    * After this operation, 2,114 kB of additional disk space will be used.
    * Install mtp-tools to mount smartphones.
    * Disk size = 1903988K. Space Used = 2552K.
  * Running inst-min-con-ntp.sh ...
    * After this operation, 1,871 kB of additional disk space will be used.
    * Install Network Time Protocol: ntp.
    * Disk size = 1906492K. Space Used = 2504K.
  * Running inst-min-con-numlock.sh ...
    * After this operation, 4,381 kB of additional disk space will be used.
    * Install numlockx to turn on NumLock on boot.
    * Disk size = 1912996K. Space Used = 6504K.
  * Running inst-min-con-pciutils.sh ...
    * After this operation, 1,181 kB of additional disk space will be used.
    * Install pciutils to troubleshoot pci devices(i.e. lspci).
    * Disk size = 1914564K. Space Used = 1568K.
  * Running inst-min-con-snd-alsa.sh ...
    * After this operation, 5,270 kB of additional disk space will be used.
    * Install ALSA sound.
    * Test sound: aplay /usr/share/sounds/alsa/*.
    * Add key bindings.
    * Disk size = 1922408K. Space Used = 7844K.
  * Running inst-min-con-udevil-bpo.sh ...
    * After this operation, 503 kB of additional disk space will be used.
    * Install udevil version 0.4.4.
    * Install udevil to auto mount USB devices.
    * Set devmon to auto start on startup.
    * Need ntfs-3g driver to be able to read and write ntfs partition.
    * Need exfat-fuse to be able to read and write exfat partition.
    * Disk size = 1928024K. Space Used = 5616K.
  * Running inst-min-con-xtra-buffer-pv.sh ...
    * After this operation, 166 kB of additional disk space will be used.
    * Install pv.
    * Disk size = 1928176K. Space Used = 152K.
  * Running inst-min-con-xtra-buffer.sh ...
    * After this operation, 71.7 kB of additional disk space will be used.
    * Install buffer.
    * Disk size = 1928244K. Space Used = 68K.
  * Running inst-min-con-xtra-dev-tool-java-jdk.sh ...
    * After this operation, 143 MB of additional disk space will be used.
    * Install JAVA JDK: default-jdk.
    * Disk size = 2147532K. Space Used = 219288K.
  * Running inst-min-con-xtra-dev-tool-tree.sh ...
    * After this operation, 102 kB of additional disk space will be used.
    * Install tree to display files and directories structure.
    * Disk size = 2147712K. Space Used = 180K.
  * Running inst-min-con-xtra-gnuplot.sh ...
    * After this operation, 34.1 MB of additional disk space will be used.
    * Install gnuplot.
    * Disk size = 2191756K. Space Used = 44044K.
  * Running inst-min-con-xtra-imagemagick.sh ...
    * After this operation, 13.0 MB of additional disk space will be used.
    * Install imagemagick to process image from command line.
    * Disk size = 2209108K. Space Used = 17352K.
  * Running inst-min-con-xtra-iso-iat.sh ...
    * After this operation, 65.5 kB of additional disk space will be used.
    * Install iat to convert BIN, MDF, PDI, CDI, NRG, and B5I into ISO-9660.
    * Disk size = 2209160K. Space Used = 52K.
  * Running inst-min-con-xtra-java-jre.sh ...
    * Install JAVA JRE: default-jre.
    * Disk size = 2209160K. Space Used = 0K.
  * Running inst-min-con-xtra-locate.sh ...
    * After this operation, 324 kB of additional disk space will be used.
    * Install locate to generate an index of files and directories. Searching for files will be much faster.
    * Add locate alias.
    * Run updatedb to update the database.
    * Disk size = 2209728K. Space Used = 568K.
  * Running inst-min-con-xtra-macchanger.sh ...
    * After this operation, 622 kB of additional disk space will be used.
    * Install macchanger.
    * Set macchanger to change MAC address whenever network device is up or down.
    * To configure macchanger: dpkg-reconfigure macchanger.
    * Check whether it is working: macchanger -s eth0.
    * systemctl status macchanger@eth0.service
    * Disk size = 2210616K. Space Used = 888K.
  * Running inst-min-con-xtra-mariadb-server.sh ...
    * After this operation, 131 MB of additional disk space will be used.
    * Disk size = 2463228K. Space Used = 252612K.
  * Running inst-min-con-xtra-mtran.sh ...
    * Copied /root/scripts/repository/inst-min-con-xtra-mtran/mtran.sh to /usr/local/bin/.
    * Disk size = 2463232K. Space Used = 4K.
  * Running inst-min-con-xtra-php5.sh ...
    * After this operation, 32.0 MB of additional disk space will be used.
    * Install php5.
    * Disk size = 2505032K. Space Used = 41800K.
  * Running inst-min-con-xtra-timezone.sh ...
    * Set time zone to EST (America/Montreal) in /etc/timezone.
    * Disk size = 2505032K. Space Used = 0K.
  * Running inst-min-win-00-xorg.sh ...
    * After this operation, 67.7 MB of additional disk space will be used.
    * Set keyboard to use US international.
    * Install minimum Xorg X server.
    * Install xinit so you can run startx.
    * Add auto start window manager(i.e startx).
    * Disk size = 2591572K. Space Used = 86540K.
  * Running inst-min-win-01-wm-jwm.sh ...
    * After this operation, 5,989 kB of additional disk space will be used.
    * Install Window Manager: JWM vsvn-579 by Joe Wingbermuehle.
    * Set jwmrc.
    * Disk size = 2604132K. Space Used = 12560K.
  * Running inst-min-win-cld-dev-tools-pandoc.sh ...
    * After this operation, 38.6 MB of additional disk space will be used.
    * Install pandoc to generate user manual.
    * Add documentation: user manual.
    * Add documentation: developer manual.
    * Disk size = 2646660K. Space Used = 42528K.
  * Running inst-min-win-cld-win-split.sh ...
    * After this operation, 81.9 kB of additional disk space will be used.
    * After this operation, 654 kB of additional disk space will be used.
    * Install required applications for cld-win-split.sh: wmctrl and x11-utils for xprop.
    * Add key bindings: Ctrl+Alt+Left, Right, Up, Down, 1, 2, 3, 4, 5, 6, 7, 8, 9.
    * Disk size = 2647732K. Space Used = 1072K.
  * Running inst-min-win-jwm-keys-alsa.sh ...
    * Add ALSA key binding.
    * Add script to auto-detect ALSA controller on JWM startup.
    * Disk size = 2647736K. Space Used = 4K.
  * Running inst-min-win-menu.sh ...
    * After this operation, 1,829 kB of additional disk space will be used.
    * Install menu, an easy way to get installed programs in the menu automatically.
    * Disk size = 2649020K. Space Used = 1284K.
  * Running inst-min-win-systray-volumeicon-alsa.sh ...
    * After this operation, 243 kB of additional disk space will be used.
    * Install volume controller in system tray.
    * Set left-click to display volume slider: lmb_slider=true.
    * Set volumeicon to run on JWN startup.
    * Disk size = 2649480K. Space Used = 460K.
  * Running inst-min-xtra-encoding-libtext-iconv-perl.sh ...
    * Install libtext-iconv-perl so that you can use iconv to convert to other encoding.
    * Disk size = 2649480K. Space Used = 0K.
  * Running inst-min-xtra-fonts-asian.sh ...
    * After this operation, 48.2 MB of additional disk space will be used.
    * Install fonts-hanazono to display Asian characters correctly.
    * Test it by opening website http://ctext.org/zh.
    * Disk size = 2715472K. Space Used = 65992K.
  * Running inst-std-accessories-calc-speedcrunch.sh ...
    * After this operation, 1,830 kB of additional disk space will be used.
    * Install calculator: speedcrunch.
    * Disk size = 2718616K. Space Used = 3144K.
  * Running inst-std-accessories-feh.sh ...
    * After this operation, 4,308 kB of additional disk space will be used.
    * Install command line image viewer: feh.
    * Disk size = 2722424K. Space Used = 3808K.
  * Running inst-std-accessories-gpicview.sh ...
    * After this operation, 876 kB of additional disk space will be used.
    * Install Image Viewer: gpicview.
    * Insert gpicview in Accessories menu.
    * Disk size = 2722764K. Space Used = 340K.
  * Running inst-std-accessories-mupdf.sh ...
    * After this operation, 12.0 MB of additional disk space will be used.
    * Install PDF reader: Mupdf.
    * Disk size = 2738120K. Space Used = 15356K.
  * Running inst-std-accessories-prtscr-gnome-screenshot.sh ...
    * After this operation, 56.1 MB of additional disk space will be used.
    * Install gnome-screenshot to be used for PrintScreen key.
    * Insert PrintScreen key binding.
    * By default, screenshots are saved under ~/Pictures/.
    * Disk size = 2792416K. Space Used = 54296K.
  * Running inst-std-accessories-scite.sh ...
    * After this operation, 4,829 kB of additional disk space will be used.
    * After this operation, 221 kB of additional disk space will be used.
    * Install Text Editor: SciTE.
    * Install at-spi2-core to shut up Accessibility warning message.
    * Insert SciTE in Accessories menu.
    * Disk size = 2798956K. Space Used = 6540K.
  * Running inst-std-accessories-terminal-xfce.sh ...
    * After this operation, 11.1 MB of additional disk space will be used.
    * Install terminal: xfce4-terminal.
    * Disk size = 2808164K. Space Used = 9208K.
  * Running inst-std-accessories-thunar.sh ...
    * After this operation, 10.0 MB of additional disk space will be used.
    * Install File Manger: thunar, thunar-media-tags-plugin, thunar-archive-plugin, thunar-volman.
    * Insert Thunar in Accessories menu.
    * Disk size = 2814512K. Space Used = 6348K.
  * Running inst-std-accessories-xarchiver.sh ...
    * After this operation, 1,211 kB of additional disk space will be used.
    * Install Archive Manager: xarchiver.
    * Disk size = 2815744K. Space Used = 1232K.
  * Running inst-std-graphic-pinta.sh ...
    * After this operation, 45.0 MB of additional disk space will be used.
    * Install Image Editor: Pinta.
    * Disk size = 2887268K. Space Used = 71524K.
  * Running inst-std-internet-iceweasel.sh ...
    * After this operation, 91.5 MB of additional disk space will be used.
    * After this operation, 21.8 MB of additional disk space will be used.
    * Install web browser: iceweasel.
    * To update Adobe Flash Player: update-flashplugin-nonfree --install.
    * To test Adobe Flash Player: http://www.adobe.com/software/flash/about/.
    * Disk size = 3058392K. Space Used = 171124K.
  * Running inst-std-multimedia-mpv.sh ...
    * After this operation, 84.0 MB of additional disk space will be used.
    * Install Media Player: MPV.
    * Add multiple aliases for MPV.
    * Add useful mpv keybindings settings.
    * Disk size = 3176044K. Space Used = 117652K.
  * Running inst-std-office-libreoffice-bpo.sh ...
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
    * Disk size = 3625944K. Space Used = 449900K.
  * Running inst-std-office-xtra-projectlibre.sh ...
    * Install ProjectLibre.
    * Disk size = 3644392K. Space Used = 18448K.
  * Running inst-std-system-alsamixer.sh ...
    * Insert Alsamixer menu in Administration.
    * Disk size = 3644392K. Space Used = 0K.
  * Running inst-std-system-conky.sh ...
    * After this operation, 967 kB of additional disk space will be used.
    * Install System Monitor: conky.
    * Add conky config file: conkyrc.
    * Set conky to run on JWM startup.
    * Add on the fly settings to Conky.
    * Disk size = 3645712K. Space Used = 1320K.
  * Running inst-std-system-gnome-disk-utility.sh ...
    * After this operation, 11.1 MB of additional disk space will be used.
    * Install Partition Manager: gnome-disk-utility.
    * Run: gnome-disks.
    * Insert gnome-disk-utility menu in Administration.
    * Disk size = 3651980K. Space Used = 6268K.
  * Running inst-std-system-keyboard.sh ...
    * Insert keyboard menu in Administration.
    * Disk size = 3651980K. Space Used = 0K.
  * Running inst-std-system-monitor-switcher-lxrandr.sh ...
    * After this operation, 19.9 MB of additional disk space will be used.
    * After this operation, 779 kB of additional disk space will be used.
    * Install Monitor Switcher: lxrandr.
    * Add lxrandr key binding.
    * Disk size = 3677960K. Space Used = 25980K.
  * Running inst-std-system-network-wicd.sh ...
    * After this operation, 21.1 MB of additional disk space will be used.
    * Install Network Manager: wicd.
    * For wireless, you have to type in the wireless interface(e.g. wlan0) in the Preferences.
    * Set wicd to run on JWM startup.
    * Log at /var/log/wicd/wicd.log.
    * Disk size = 3712652K. Space Used = 34692K.
  * Running inst-std-system-time-zone.sh ...
    * Insert Time Zone menu in Administration.
    * Disk size = 3712652K. Space Used = 0K.
  * Running inst-std-system-xtra-hardinfo.sh ...
    * After this operation, 467 kB of additional disk space will be used.
    * Install hardware info apps: hardinfo.
    * Insert System Information menu in Administration.
    * Disk size = 3713576K. Space Used = 924K.
  * Running inst-std-system-xtra-webcam-camorama.sh ...
    * After this operation, 41.1 MB of additional disk space will be used.
    * Install webcam: Camorama.
    * Insert Camorama menu in Graphics.
    * Disk size = 3744992K. Space Used = 31416K.
  * Running inst-std-xtra-blender.sh ...
    * After this operation, 14.0 MB of additional disk space will be used.
    * After this operation, 185 MB of additional disk space will be used.
    * Install required packages for blender.
    * Install blender3d.
    * Insert Blender 3D menu in Graphics.
    * Disk size = 3973796K. Space Used = 228804K.
  * Running inst-std-xtra-dia.sh ...
    * After this operation, 21.2 MB of additional disk space will be used.
    * Install Dia to draw diagrams.
    * Insert Dia menu in Graphics.
    * Disk size = 3999352K. Space Used = 25556K.
  * Running inst-std-xtra-opw-drush8.sh ...
    * Disk size = 4008360K. Space Used = 9008K.
  * Running inst-std-xtra-opw-php5-gd.sh ...
    * After this operation, 118 kB of additional disk space will be used.
    * Install php5-gd to run Drupal.
    * Disk size = 4008588K. Space Used = 228K.
  * Running inst-std-xtra-opw-php5-mysql.sh ...
    * After this operation, 3,752 kB of additional disk space will be used.
    * Install php5-mysql to enable the PDO_MYSQL database driver for PHP and to run Drupal.
    * Enable mod_rewrite module.
    * Disk size = 4013120K. Space Used = 4532K.
  * Running inst-std-xtra-sweethome3d.sh ...
    * Install SweetHome3D-5.0.jar.
    * Install TexturesLibraryEditor-1.4.jar.
    * Install FurnitureLibraryEditor-1.17.jar.
    * Insert SweetHome3D menus in Graphics.
    * Disk size = 4049236K. Space Used = 36116K.
  * Running inst-xtra-cld-dev-tools-aptly.sh ...
    * After this operation, 16.9 MB of additional disk space will be used.
    * Install aptly version: 0.9.6~dev to create local debian repository.
    * Add xz-utils package because aptly snapshot merge needs it.
    * Disk size = 4070344K. Space Used = 21108K.
  * Running inst-xtra-cld-dev-tools-libxml2-utils.sh ...
    * After this operation, 152 kB of additional disk space will be used.
    * Install libxml2-utils to validate xml file.
    * Disk size = 4070640K. Space Used = 296K.
  * Running inst-xtra-cld-dev-tools-xsltproc.sh ...
    * After this operation, 140 kB of additional disk space will be used.
    * Install xsltproc to process xslt.
    * Disk size = 4070936K. Space Used = 296K.
  * Running inst-xtra-dev-tools-ant.sh ...
    * After this operation, 2,229 kB of additional disk space will be used.
    * Install ant.
    * Disk size = 4074972K. Space Used = 4036K.
  * Running inst-xtra-fuse.sh ...
    * Install fuse(fusermount) to run TMSU.
    * Disk size = 4074972K. Space Used = 0K.
  * Running inst-xtra-imdb-python-imdbpy.sh ...
    * After this operation, 990 kB of additional disk space will be used.
    * Install IMDbPY.
    * Disk size = 4077124K. Space Used = 2152K.
  * Running inst-xtra-open-terminals-on-startup.sh ...
    * After this operation, 2,064 kB of additional disk space will be used.
    * Install x11-xserver-utils for xrandr.
    * Install wmctrl.
    * Install x11-utils for xprop.
    * Install xterm for resize.
    * Copy open-terminal.sh in /root/cld.
    * Add open-terminal.sh in /root/cld/jwmrc-startup.sh.
    * Disk size = 4080044K. Space Used = 2920K.
  * Running inst-xtra-sqlite3.sh ...
    * After this operation, 143 kB of additional disk space will be used.
    * Install Database: sqlite3.
    * Disk size = 4080308K. Space Used = 264K.
  * Running inst-xtra-virtualbox-guest-iso.sh ...
    * After this operation, 110 MB of additional disk space will be used.
    * After this operation, 14.6 MB disk space will be freed.
    * After this operation, 63.3 MB disk space will be freed.
    * Install VirtualBox guest additions to Shared folder/clipboard, auto window scaling, etc.
    * Assumed packages installed: bzip2 & Xserver installed.
    * Install dkms, libc6-dev, linux-headers-3.16.0-4-amd64 to compile VirtualBox guest additions.
    * VirtualBox guest additions installed: version: 5.0.12.
    * Delete VBoxGuestAdditions.iso[0K]. Space used could be negative due to this deletion.
    * Disk size = 4163264K. Space Used = 82956K.
  * Running inst-xtra-virtualbox5.sh ...
    * After this operation, 77.9 MB of additional disk space will be used.
    * After this operation, 156 MB of additional disk space will be used.
    * After this operation, 14.6 MB disk space will be freed.
    * After this operation, 63.3 MB disk space will be freed.
    * Install dkms, libc6-dev, linux-headers-3.16.0-4-amd64 to compile VirtualBox.
    * Install VirtualBox 5.0.12r104815.
    * Disk size = 4392312K. Space Used = 229048K.
  * Running inst-xtra-wifite.sh ...
    * After this operation, 80.3 MB of additional disk space will be used.
    * Install wifite.
    * Disk size = 4485704K. Space Used = 93392K.
  * Running inst-xtra-wine-diablo2.sh ...
    * After this operation, 631 kB of additional disk space will be used.
    * Install libjpeg-turbo-progs & libldap-2.4-2 so that Blizzard Downloader will not fail.
    * Disk size = 4486548K. Space Used = 844K.
  * Running inst-xtra-wine.sh ...
    * After this operation, 190 MB of additional disk space will be used.
    * Install wine so that you can run Windows applications.
    * You need to run 'wine winecfg' before using wine. This is a workaround of a bug.
    * Disk size = 4720084K. Space Used = 233536K.
  * Running inst-xtra-xmpv.sh ...
    * Install xmpv.
    * Disk size = 4720128K. Space Used = 44K.
  * Running inst-xtra-zfs.sh ...
    * After this operation, 15.8 MB of additional disk space will be used.
    * After this operation, 78.0 MB of additional disk space will be used.
    * Install lsb-release.
    * Add zfsonlinux repository to /etc/apt/sources.list.d/zfsonlinux.list.
    * Add GPG key to /etc/apt/trusted.gpg.d/zfsonlinux.gpg.
    * Install debian-zfs: version: 0.6.5.2-2, DKMS style package. DKMS vs KMOD, see http://zfsonlinux.org/generic-deb.html
    * Delete zfsonlinux_6_all.deb[1992K].
    * Change default behavior: Don't allow the last 1.6% of space in the pool instead of 3.2%.
    * Disk size = 4859368K. Space Used = 139240K.
  * Running inst-zclean-00-remove-block-services.sh ...
    * Remove block services from starting after they are being installed.
    * Disk size = 4859364K. Space Used = -4K.
  * Running inst-zclean-00-zerosizing-docs.sh ...
    * Zero size all documents in /usr/share/.
    * Disk size = 4754260K. Space Used = -105104K.
  * Running inst-zclean-99-end-cleanup.sh ...
    * Clean apt-get cache.
    * rm -rf /tmp/*.
    * Umount /sys, /dev/pts and /proc.
    * Add Debian main repositories in sources.list.
    * Delete local Debian repository from sources.list.
    * Disk size = 3953348K. Space Used = -800912K.
