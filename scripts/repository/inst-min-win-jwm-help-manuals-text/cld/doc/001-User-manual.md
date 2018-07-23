---
title: User manual
---

# System settings
* System Information:
    * Application: `hardinfo`
    * Menu path: **Menu->Administration->System Information**

* Change time zone:
    * Application: `dpkg-reconfigure tzdata`
    * Menu path: **Menu->Administration->Time Zone**
 
* Change keyboard:
    * Application: `dpkg-reconfigure keyboard-configuration`
    * Menu path: **Menu->Administration->Keyboard**
  
* Change screen resolution or switch monitors:
    * Shortcut: `⌘ + p`
    * Application: `lxrandr`
    * Menu path: **Menu->Administration->Monitor Settings - LXRandR**

* Volume control:
    * Shortcut: `⌘ + Up` to increase volume.
    * Shortcut: `⌘ + Down` to decrease volume.
    * Shortcut: `⌘ + 0` to mute.    

* Change sound card settings:
    * Application: `alsamixer`
    * Menu path: **Menu->Administration->Sound - Alsa mixer**

* Network settings:
    * Application: `wicd`
    * Menu path: **Menu->Network->WICD**

* Hard drive management:
    * Application: `gnome-disks`
    * Menu path: **Menu->Administration->Gnome Disk Utility**

* Run applications on startup:
    * Add your scripts in `/usr/local/cld/systemd/runlevel/after-boot/` if you want them to run **after** boot.
    * Add your scripts in `/usr/local/cld/app/jwm/bootstrap/` if you want them to run **after** JWM window manager.

* Run applications before shutdown/reboot/restart:
    * Add your scripts in `/usr/local/cld/systemd/runlevel/before-shutdown/` if you want them to run **before** shutdown/reboot/restart.

# Applications

## Application on the Menu

| Name        | Path                              | Description             |
|-------------|-----------------------------------|-------------------------|
| gpicview    | Menu->Accessories->Image Viewer   | Image viewer            |
| speedcrunch | Menu->Accessories->Calculator     | Calculator              |
| scite       | Menu->Accessories->SciTE          | Text editor             |
| thunar      | Menu->Accessories->Thunar         | File explorer           |
| firefox     | Menu->Internet->Firefox           | Internet browser        |
| pinta       | Menu->Graphics->Pinta             | Image editor            |
| libreoffice | Menu->Office->LibreOffice Calc    | Excel spreadsheet       |
| libreoffice | Menu->Office->LibreOffice Impress | Powerpoint presentation |
| libreoffice | Menu->Office->LibreOffice Writer  | Word editor             |

## Command line applications

| Name      | Description        | Usage                   |
|-----------|--------------------|-------------------------|
| mpv       | Video/music player | mpv video.avi song.mp3  |
| mupdf     | PDF viewer         | mupdf pdf_file.pdf      |
| feh-ss.sh | Photo slideshow    | feh-ss.sh filelist.txt  |

## Useful commands

    # Count lines
    ls -1 * | wc  -l
    
    # Play videos found
    mpv -playlist <(locate somepattern | grep otherpattern)

    # Find and unrar
    #  http://superuser.com/questions/410972/recursive-unrar-of-several-folders
    #  http://stackoverflow.com/questions/22730756/unrar-all-file-in-directory-without-prompting
    find . -maxdepth 1 -name '*.rar' -execdir rar x -phef -o+ {} \; -execdir rm -f {} \;

    # Debug xargs
    xargs -p

    # List command history 5 lines before and after COMMAND_PATTERN
    history | grep -C 5 COMMAND_PATTERN

    # List partitions and size
    lsblk /dev/sdX
    
    # Episodes regex
    grep -iE "s[0-9]+e[0-9]+" FILE
    
    # View all and highlight pattern
    grep --color -E 'pattern|$' file
    
    # Download a single web page. In case robots.txt is disallowing, add -e robots=off
    wget -E -H -k -K -p http://your-web-page.com/page1.html
    
    

## Hot keys

### Main operations
* `Alt + Ctrl + Del`: Reboot.
* `Alt + Tab`: Switch focus to the next application.
* `Alt + #`: Switch desktop. # is a number between 1 and 4.
* `Alt + ->`: Switch desktop.
* `⌘ + d`: Minimize all applications.
* `⌘ + Esc`: Open main menu.
  
### Operations on window
* `Alt + F4`: Close current application.
* `Alt + F2`: Open the menu of the current application.
* `Alt + F10`: Maximize the window of the current application.
* `Ctrl + Alt + Left` : Maximize active window to the left half section of the screen.
* `Ctrl + Alt + Right`: Maximize active window to the right half section of the screen.
* `Ctrl + Alt + Up`: Maximize active window to the top half section of the screen.
* `Ctrl + Alt + Down` : Maximize active window to the bottom half section of the screen.


#### Move active window

    Screen section layout
    +-----------+
    | 7 | 8 | 9 |
    +-----------+
    | 4 | 5 | 6 |
    +-----------+
    | 1 | 2 | 3 |
    +-----------+

* `Ctrl + Alt + 7` : Move active window to the top-left section of the screen.
* `Ctrl + Alt + 8` : Move active window to the top-center section of the screen.
* `Ctrl + Alt + 9` : Move active window to the top-right section of the screen.
* `Ctrl + Alt + 4` : Move active window to the middle-left section of the screen.
* `Ctrl + Alt + 5` : Move active window to the center of the screen.
* `Ctrl + Alt + 6` : Move active window to the middle-right section of the screen.
* `Ctrl + Alt + 1` : Move active window to the bottom-left section of the screen.
* `Ctrl + Alt + 2` : Move active window to the bottom-center of the screen.
* `Ctrl + Alt + 3` : Move active window to the bottom-right section of the screen.

## Install new applications
`Cust-Live-Deb` is a Debian system. [Therefore, all softwares available for Debian can be installed](https://www.debian.org/distrib/packages).

    apt-get update
    apt-get install PACKAGE_NAME

# Persistence
By default, `Cust-Live-Deb` supports [persistence](https://debian-live.alioth.debian.org/live-manual/stable/manual/html/live-manual.en.html#556). It allows your changes to persist after reboot, provided that you have a persistence image file in the root path of any partitions. That image file will hold all your changes. Here is how to create a persistent image file:

    # Create a persistence image file(e.g. 2048 MB).
    cld-persistence.sh 2048
    
    # Copy persistence image file to the root path of any partitions.
    cp persistence /path/to/some_partition/
    
    # Reboot for the persistence process to take effect.

You will know that persistence is working when you executed `df` and see something like the followings:

    Filesystem      Size  Used Avail Use% Mounted on
    udev             10M     0   10M   0% /dev
    tmpfs           603M  8.1M  595M   2% /run
    /dev/shm        891M  849M   43M  96% /lib/live/mount/medium
    /dev/loop0      816M  816M     0 100% /lib/live/mount/rootfs/filesystem.squashfs
    tmpfs           1.5G     0  1.5G   0% /lib/live/mount/overlay
    /dev/sdb        2.4G  335M  2.0G  15% /lib/live/mount/persistence/sdb
    /dev/loop1      2.0G  285M  1.6G  16% /lib/live/mount/persistence/loop1
  
Note: Sometime, persistence image file is not recognized by `Cust-Live-Deb` due to bad format of your partition. You can remedy by reformatting: `mkfs.ext4 /dev/sdX`(Use different command for different filesystem).

##  Disable persistence
* Ensure there is no `persistence` image file on the root path of any partitions. Or,
* On **Boot Menu**, press `Tab` key and delete `persistence` word. Or,
* When you [remastered the whole live system](#remaster-live-system), remove `persistence` words from `.../binary/isolinux/isolinux.cfg` file. 

# Remaster live system


    # Copy the whole live system to a WORKING directory.
    cld-remaster.sh /path/to/WORKING/
    
    # Create HYBRID-ISO
    cld-mkiso.sh /path/to/WORKING/
    
    # Burn HYBRID-ISO to USB key(e.g. /dev/sdX)
    cld-dd-usb.sh cust-live-deb_YYYY-MM-DD_HH.MM.SS.iso /dev/sdX


## Tips

    # List USB key device available.
    ls -al /dev/disk/by-id/
    

    # To create an image from a drive.
      dd if=/dev/sdX of=/path/to/new.iso
    # To create a USB drive from an image.
      dd if=/path/to/iso of=/dev/sdX    

# Upgrade
1. Boot without persistence.
1. cld-dd-usb.sh ISO to the main usb key.
1. Mount main usb key spare partition to /tmp/kkk.
1. `cd /tmp/kkk && cld-persistence.sh 2048`
1. Reboot.

# Cust-Live-Deb hangs
## Memory is max out
When you got the following symptoms, check your memory usage(i.e. Conky on your desktop): 
* Google Chrome/Firefox hangs when opening a lot of tabs.
* Eclipse is working fine and then suddenly, code is not highlighted. Or, when closing tab, Cancel/Save/Ok buttons are not shown.

If your memory is near max out, then the issues will be resolved by:
* Add more physical memory. Or,
* Add a swap partition:
      
      mkswap /dev/sdXX
      swapon /dev/sdXX


# Boot sequence

    ~>cat /root/cld/boot-sequence.txt 
    /root/cld/systemd/cld-systemd-after-boot.sh: Mon Jan  9 14:14:25 EST 2017
    /root/cld/jwmrc-startup.sh: Tue Jan 10 00:14:35 UTC 2017
    /root/cld/systemd/cld-systemd-before-shutdown-halt-reboot.sh: Mon Jan  9 19:15:50 EST 2017

# Help

## Set desktop background / wallpaper
    
    feh --bg-scale /path/to/your/image/background.jpg

## Set keyboard
    # Set keymap to English
    setxkbmap en
    
## Access files of your smartphones that use Media Transfer Protocol (MTP)

    # Connect your smartphone.
    mkdir /path/to/your/mount/directory/
    jmtpfs -o allow_other /path/to/your/mount/directory/
    # Enter your PIN to unlock your smartphone.
    cd /path/to/your/mount/directory/

## Find what video card am I using?
    
    # Get the video card line.
    lspci | grep -iE 'vga|3d|2d'
    # Get more informations about the device using option -s.
    lspci -v -s 01:00.0

    # Line 'Memory at d0000000' show the total video memory size.

## Turn on wlan0 network interface
    # Check network interfaces available.
    ls /sys/class/net
    
    ip link set wlan0 up
    
    # Scan wireless networks available.
    iwlist wlan0 scan
    
    # /etc/init.d/networking restart

## Setup sound
    # Check if your sound card is detected.
    lspci | grep audio
    
    # Use Alsamixer to select the correct sound card.
    alsamixer
    (Press F6 to select your sound card)
      # Save your settings.
      alsactl store
    
    # Play all possible sounds.
    aplay /usr/share/sounds/alsa/*
    
    # Default test for front left and right speaker:
    speaker-test -twav -l1 -c2 
    
    # For 4.0 surround (two speakers in front, two in the back):
    speaker-test -twav -l1 -Dplug:surround40 -c4
                      
    # For 5.1:        
    speaker-test -twav -l1 -Dplug:surround51 -c6
                      
    # For 7.1:         
    speaker-test -twav -l1 -Dplug:surround71 -c8
    
## Sync your BIOS clock to UTC or local time
    
    # Sync your system time.
    ntpd -gqc pool.ntp.org
    sntp -s pool.ntp.org
    
    # Sync your BIOS/hardware clock to UTC.
    hwclock --systohc --utc
    
    # Sync your BIOS/hardware clock to local time.
    hwclock --systohc --localtime
    
    # To see the time in UTC.
    date -u
    
## Use UUID in fstab
1. Find UUID of your hard drive by running `blkid`.
1. Change device path to UUID in fstab as follows:

        # Change: /dev/sdb1 /media/critical ext4  defaults  0 0
        #  to
        UUID="81917b82-6a0f-4493-a657-6a0aa127bf41" /media/critical ext4  defaults  0 0

## Character encodings
`more`, `cat`, `less`, `grep`, etc commands don't display the characters correctly(e.g. accents).
They displays `�`. Your shell is using UTF-8 whereas your file is using another encoding.

    # Your shell encoding.
    echo $LANG
    
    # You file encoding.
    file YOUR_FILE

    # Convert your file to UTF-8.
    iconv --from-code ISO-8859-15 --to-code UTF-8 YOUR_FILE -o YOUR_FILE_as_utf8
    
    
For more details, see http://unix.stackexchange.com/a/78782

## Port numbers opened
    
    netstat -tnlp
    # Reference: http://unix.stackexchange.com/a/108886
    
## Use keyboard to move mouse
Reference: https://en.wikipedia.org/wiki/Mouse_keys

1. Run `setxkbmap -option keypad:pointerkeys`.
1. Press `Left Shift`+`NumLock`.
1. Press on numpad keys to move the mouse.
    
    
## Find and play video/music

    mpv $(ilocate 2016 | igrep funky | igrep music | sort)
    mpv -playlist <(ilocate 2016 | igrep funky | igrep music | sort)
    
Reference: http://thinkmoult.com/tech-tip-2-mplayer-play-music-recursively-in-a-directory/

## Boot logs
https://www.digitalocean.com/community/tutorials/how-to-use-journalctl-to-view-and-manipulate-systemd-logs
    
    # Display logs from the current boot.
    journalctl -b
    
    # Display boot errors.
    journalctl -p err -b

    # Display all without paging.
    journalclt --no-pager

## Mount failed: Structure needs cleaning
    # Get the filesystem
    blkid /dev/sdi5
    
    # Use fsck matching your filesystem
    fsck.ext4 -y /dev/sdi5