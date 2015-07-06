---
title: User manual - Standard system
---

# System settings
* Change time zone:
    * Application: `dpkg-reconfigure tzdata`
    * Menu path: **Menu->Administration->Time Zone**
 
* Change keyboard:
    * Application: `dpkg-reconfigure keyboard-configuration`
    * Menu path: **Menu->Administration->Keyboard**
  
* Change screen resolution or switch monitors:
    * Shortcut: `⌘ + p`
    * Application: `lxrandr`
    * Menu path: **Menu->Administration->LXRandR**

* Volume control:
    * Shortcut: `⌘ + UP` to increase volume.
    * Shortcut: `⌘ + DOWN` to decrease volume.
    * Shortcut: `⌘ + 0` to mute.    

* Change sound card settings:
    * Application: `pavucontrol`
    * Menu path: **Menu->Administration->Sound**

* Network settings:
    * Application: `wicd`
    * Menu path: **Menu->Network->WICD**

* Hard drive management:
    * Application: `gparted`
    * Menu path: **Menu->Administration->GNOME partition editor**

* Mount partitions:
    * Application: `disk-manager`
    * Menu path: **Menu->Administration->Disk Manager**

* Run applications on startup:
  * Add your scripts in `/root/jwmrc-startup.sh`.



# Applications

## Application on the Menu
| Name        | Path                              | Description             |
|-------------|-----------------------------------|-------------------------|
| geeqie      | Menu->Accessories->Geeqie         | Image viewer            |
| galculator  | Menu->Accessories->Calculator     | Calculator              |
| scite       | Menu->Accessories->SciTE          | Text editor             |
| thunar      | Menu->Accessories->Thunar         | File explorer           |
| firefox     | Menu->Internet->Iceweasel         | Internet browser        |
| pinta       | Menu->Graphics->Pinta             | Image editor            |
| libreoffice | Menu->Office->LibreOffice Calc    | Excel spreadsheet       |
| libreoffice | Menu->Office->LibreOffice Impress | Powerpoint presentation |
| libreoffice | Menu->Office->LibreOffice Writer  | Word editor             |

## Command line applications

| Name       | Description      | Usage                   |
|------------|------------------|-------------------------|
| mpv        | Video player     | mpv videofile.avi       |
| feh-ss.sh  | Photo slideshow  | feh-ss.sh filelist.txt  |

## Hot keys

* `PrtScrn`: Take screenshot
* `⌘ + d`: Minimize all applications.
* `Alt + F4`: Close current application.
* `Alt + Ctrl + Del`: Reboot.

# Persistence
By default, `Cust-Live-Deb` supports [persistence](http://live.debian.net/manual/git/html/live-manual.en.html#557). It allows your changes to persist after reboot, provided that you have a persistence image file in the root path of any partitions. That image file will hold all your changes.
```
# Create a persistence image file(e.g. 2048 MB).
cld-persistence.sh 2048

# Copy persistence image file to the root path of any partitions.
cp persistence /media/SomePartition/

# Reboot for the persistence process to take effect.
```

* Disable persistence:
  * Ensure there is no `persistence` image file on the root path of any partitions. Or,
  * On **Boot Menu**, press `TAB` and delete `persistence` word. Or,
  * When you [remastered the whole live system](#remaster-live-system), remove `persistence` words from `../binary/isolinux/isolinux.cfg`. 

# Remaster live system
```
# Copy the whole live system to a WORKING directory.
cld-remaster.sh /path/to/WORKING/

# Create HYBRID-ISO
cld-mkiso.sh /path/to/WORKING/

# Burn HYBRID-ISO to USB key(e.g. /dev/sdX)
cld-dd-usb.sh cust-live-deb_YYYY-MM-DD_HH.MM.SS.iso /dev/sdX
```

## Tips
```
# List USB key device available.
ll /dev/disk/by-id/
```

# Limitations
* Can't upgrade kernel(not yet).