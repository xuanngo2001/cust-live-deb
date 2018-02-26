# Tagging release
    ./build-cld.sh work
    ./master-release-ok.sh
    aptly db cleanup
    ./build-cld.sh work
    

# Eclipse
## Exclude chroot folder
Otherwise, there will be lock issues with Eclipse.

1. Right-click on the project
1. Select **Properties** from the menu
1. Select **Resource -> Resource Filters -> Add**
    * Filter Type : Exclude All
    * Applies to: Folder
    * File and Folder Attributes: Name | matches | chroot
    * OK
1. Apply

## Plug-ins

# Packages
* To use debconf-set-selections, `apt-get -y --force-yes install debconf-utils`
* debtree 
* http://ubuntuforums.org/archive/index.php/t-174188.html
* http://forums.debian.net/viewtopic.php?f=6&t=48765

# Apt-Cacher-NG

* http://www.tecmint.com/apt-cache-server-in-ubuntu/
* https://www.unix-ag.uni-kl.de/~bloch/acng/html/index.html

1. `apt-get -y --force-yes install apt-cacher-ng`
1. Open `/etc/apt-cacher-ng/acng.conf`.
1. To run as service, uncomment `PidFile: /var/run/apt-cacher-ng/pid`.
1. If you changed the cache directories, run `chown -R apt-cacher-ng:apt-cacher-ng /path/to/CacheDir`.
1. Increase `ExTreshold` to 24.
1. Restart `/etc/init.d/apt-cacher-ng restart`. If it doesn't work, try `/usr/sbin/apt-cacher-ng -c /etc/apt-cacher-ng`.


# Bash
*  http://www.davidpashley.com/articles/writing-robust-shell-scripts/
*  http://wiki.bash-hackers.org/scripting/debuggingtips

```
# -x  Print commands and their arguments as they are executed
set -x
export PS4='+(${BASH_SOURCE}:${LINENO}): ${FUNCNAME[0]:+${FUNCNAME[0]}(): }'
```

# Run script individually from scripts/
```
./in-chroot.sh
cd /root/scripts/
source ./load-global-vars-funcs.sh
./your_script_here.sh
```

# Script Structure
```bash
rm -f *.sh

touch inst-min-con-00-linux-image.sh
touch inst-min-con-auto-log-root.sh
touch inst-min-con-bashrc.sh
touch inst-min-con-compressors.sh
touch inst-min-con-locale.sh
touch inst-min-con-snd-alsa.sh
touch inst-min-con-timezone.sh
touch inst-min-win-00-xorg.sh
touch inst-min-win-01-wm-jwm.sh
touch inst-min-win-menu.sh
touch inst-std-accessories-evince.sh
touch inst-std-accessories-fileroller.sh
touch inst-std-accessories-galculator.sh
touch inst-std-accessories-gpicview.sh
touch inst-std-accessories-scite.sh
touch inst-std-accessories-thunar.sh
touch inst-std-accessories-xscreensaver.sh
touch inst-std-graphic-pinta.sh
touch inst-std-internet-iceweseal.sh
touch inst-std-multimedia-mpv.sh
touch inst-std-office-libreoffice.sh
touch inst-std-system-disk-manager.sh
touch inst-std-system-display.sh
touch inst-std-system-gparted.sh
touch inst-std-system-netconfig.sh
touch inst-std-system-sound.sh
touch inst-xtra-dev-tools.sh
touch inst-xtra-filesystem-zfs.sh
touch inst-xtra-gimp.sh
touch inst-xtra-proxy.sh
touch inst-xtra-virtualbox-guest.sh
touch inst-zclean-00-zerosizing-docs.sh
touch inst-zclean-99-end-cleanup.sh


ls -1 *.sh | sed "s/^/touch /"

::gpicview, geeqie
::Fotoxx  
::https://wiki.ubuntu.com/Lubuntu/Applications

:: touch inst-std-multimedia-audacious.sh
:: touch inst-std-multimedia-bomi.sh
:: touch inst-std-multimedia-SMPlayer.sh
:: ImageMagick, NetPBM
:: conky
:: Calibre
https://launchpad.net/jwm-settings-manager
/usr/share/icons/
 /usr/share/pixmaps 
 
ip link set wlan0 up
https://wiki.archlinux.org/index.php/Wireless_network_configuration#Check_the_driver_status
Need iw
https://packages.debian.org/jessie/iw

iwlist wlan0 scan
autofs
https://bitbucket.org/mgorny/uam
ivman, pmount, gnome-mount, PCManFM
http://unix.stackexchange.com/a/134906

Check http://debiania.in.ua/posts/2013-03-24-automounting-with-udev-and-pmount.html
apt-get -y --force-yes install pcmanfm pmount plymouth
```
