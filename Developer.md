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

# Packages
* To use debconf-set-selections, `apt-get -y --force-yes install debconf-utils`
* 

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
touch inst-std-app-browser-iceweseal.sh
touch inst-std-app-diskmgr-diskmanager.sh
touch inst-std-app-diskmgr-gparted.sh
touch inst-std-app-graphic-gimp.sh
touch inst-std-app-multimedia-mpv.sh
touch inst-std-app-office-libreoffice.sh
touch inst-std-xtra-dev-tools.sh
touch inst-std-xtra-filesystem-zfs.sh
touch inst-std-xtra-virtualbox-guest.sh
touch inst-zzz-clean-00-zerosizing-docs.sh
touch inst-zzz-clean-99-end-cleanup.sh

ls -1 *.sh | sed "s/^/touch /"
```
