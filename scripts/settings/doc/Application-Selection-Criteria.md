# Application Selection Criteria
1. **Small**
1. **Visually nice**
1. **Popularity**

# TODO
* Pidgin (chat client)
* Banshee (audio player)
* https://wiki.archlinux.org/index.php/JWM#Conky
* https://wiki.archlinux.org/index.php/List_of_applications/Utilities
* http://www.linuxquestions.org/questions/linux-desktop-74/jwm-window-manager-how-to-put-the-taskbar-on-the-top-of-the-monitor-774159/#post3783980
* http://www.damnsmalllinux.org/f/topic-3-34-19504-0.html
* https://harbhag.wordpress.com/2010/07/02/best-lightweight-applications-for-linux/
* http://www.murga-linux.com/puppy/viewtopic.php?t=7754 (miniXcal)
* http://www.noobslab.com/2012/07/conky-collection-for-ubuntulinux.html
* audacious
* AbsVolume
* https://wiki.archlinux.org/index.php/List_of_applications/Utilities
* https://wiki.archlinux.org/index.php/List_of_applications

Open or Extract Archives with PCManFM
Install file-roller or xarchiver from the official repositories.
Open PCManFM in file explorer mode, go to Edit > Preferences > Advanced, select Archiver Integration and select your installed archiver.

# System Tools
Applications managing systems settings and behavior

## Disk Manager
Candidates:
* [Disk Manager](http://flomertens.free.fr/disk-manager/)
* [GParted](http://gparted.sourceforge.net/)
* [gnome-disks](https://packages.debian.org/jessie/gnome-disk-utility)

Winner: Disk Manager(Auto-mount partition), GParted(Filesystem editor)

## Display Manager
Edit screen resolution, wallpaper
Candidates:
* [????](????)

Winner: ????

## System Monitor
Edit screen resolution, wallpaper
Candidates:
* [Conky](http://conky.sourceforge.net/)
* [GKrellM](http://gkrellm.srcbox.net/)
* [screenlets](http://screenlets.org/)
Winner: ????

## Network Manager

http://www.techrepublic.com/blog/10-things/10-tools-to-connect-to-wireless-networks-in-linux/
* [Wavemon](http://eden-feed.erg.abdn.ac.uk/wavemon/)
* network-manager
* iwconfig and wpa_supplicant
* firmware-iwlwifi
* https://wiki.debian.org/WiFi/HowToUse

Candidates:
* [Wicd](http://wicd.sourceforge.net/): wicd is a lightweight alternative to NetworkManager
* [NetworkManager](https://wiki.gnome.org/Projects/NetworkManager): Multiple names for multiple desktop environment
* [Wifi-wiz](http://students.ou.edu/B/David.W.Braker-1/programs.html): The developer website is no longer available http://www.ghacks.net/2009/03/26/easy-debian-wireless-connections-with-wifi-wiz/
* [GTKWifi](http://gtkwifi.sourceforge.net/): Not in Debian repository.
* [Wireless Assistant](http://www.kde-apps.org/content/show.php?content=21832)
* [wifi-radar](http://wifi-radar.berlios.de/): One oddity with wifi-radar is that you do need to run it using sudo
 
Winner: ????

## Automount devices
Edit screen resolution, wallpaper
Candidates:
* [devmon](http://ignorantguru.github.io/udevil)
* [udev](https://www.kernel.org/pub/linux/utils/kernel/hotplug/udev/udev.html): Write rules directly.
* [usbmount](???)
* [pumount](:???)
* http://askubuntu.com/questions/359855/how-to-detect-insertion-of-dvd-disc
* https://awesome.naquadah.org/wiki/Automounting

Winner: ????

# System Tray
* [volumeicon-alsa](https://packages.debian.org/sid/sound/volumeicon-alsa)
* [Calendar](https://github.com/dmedvinsky/gsimplecal)
* [gvtray]
* [Volwheel](https://debmintux.wordpress.com/2012/04/06/howto-install-perl-volwheel-volume-controller/)
* [AbsVolume]
* [GVolWheel]


# Accessories
Small and single purpose applications

## PDF viewer
Candidates:
* [Evince](https://wiki.gnome.org/Apps/Evince) [166,984K]
* [MuPDF](http://mupdf.com/) [15,348K]

http://askubuntu.com/a/18561

Winner: MuPDF

## Image viewer
Candidates:
* [gpicview](http://lxde.sourceforge.net/gpicview/)
* [geeqie](http://geeqie.sourceforge.net/)
* [Fotoxx](http://www.kornelix.com/fotoxx.html)
* [Ristretto](http://goodies.xfce.org/projects/applications/ristretto)
* [feh](http://feh.finalrewind.org/)

Winner: gpicview

## Archive manager
Candidates:
* [File Roller](http://fileroller.sourceforge.net/)
* [Xarchiver](http://xarchiver.sourceforge.net/): Small but not intuitive: How to add multiple files in archive? Tried for 3 minutes.

Winner: File Roller

## Calculator
Candidates:
* [galculator](http://galculator.sourceforge.net/)

Winner: galculator

## Text Editor
Candidates:
* [SciTE](http://www.scintilla.org/SciTE.html)
* [Leafpad](http://tarot.freeshell.org/leafpad/)

Winner: SciTE

## File Manager
Candidates:
* [Thunar](http://docs.xfce.org/xfce/thunar/start)

Winner: Thunar

## Screensaver
Do you really need screensaver?
Candidates:
* [xscreensaver](http://www.jwz.org/xscreensaver/)

Winner: ???

## Print Screen

Candidates:
* [gnome-screenshot](https://wiki.gnome.org/GnomeUtils)
* [scrot](http://freshmeat.net/projects/scrot)

```xml
<Key mask=""  key="Print">exec: scrot %T.png -e 'mv $f ~/Desktop';xmessage " Screenshot Done! " -center</Key>
```

https://wiki.archlinux.org/index.php/Taking_a_screenshot

Winner: ???