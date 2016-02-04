# Custom Live Debian System
`cust-live-deb` is a 64-bit Debian operating system that runs from RAM. It can either boot from USB key or CD/DVD.

* It includes tools to remaster itself to include your changes. See [Menu->User manual->Remaster live system](https://github.com/limelime/cust-live-deb/wiki/001-User-manual#remaster-live-system).
* It also allows your changes to persist on your hard drives. See [Menu->User manual->Persistence](https://github.com/limelime/cust-live-deb/wiki/001-User-manual#remaster-live-system).

# Screenshots
![](https://github.com/limelime/cust-live-deb/blob/master/docs/screenshots/cld_screenshot_01.jpg)

# [Download](https://github.com/limelime/cust-live-deb/releases/latest)

It comes in 2 flavors:
* [min](https://github.com/limelime/cust-live-deb/releases/latest): Strict minimum system with JWM light-weight window manager. From there, you can add your desired applications.
* [std](https://github.com/limelime/cust-live-deb/releases/latest): Standard system includes minimum system + common applications.

# Burn ISO to USB key
**WARNING**: Everything in your USB key will be **destroyed**.

    # On any unix system, run:
    dd if="cust-live-deb-64-FFF_YYYY-MM-DD_HH.MM.SS.iso" of="/path/to/your/usb/device" bs=4M; sync
    
    # Or, on cust-live-deb, run:
    cld-dd-usb.sh cust-live-deb-64-FFF_YYYY-MM-DD_HH.MM.SS.iso /path/to/your/usb/device

## MS Windows
On Microsoft Windows, you can use [Win32 Disk Imager](http://sourceforge.net/projects/win32diskimager/) to burn the ISO to your USB key.

# Documentation

* For users, see [User manual](https://github.com/limelime/cust-live-deb/wiki/001-User-manual). Or, from `cust-live-deb`, **Menu->Help->User manual**.
* For developers, see [Developer manual](https://github.com/limelime/cust-live-deb/wiki/100-Developer-manual). Or, from `cust-live-deb`, **Menu->Help->Developer manual**.

# Releases stats
http://www.somsubhra.com/github-release-stats/?username=limelime&repository=cust-live-deb

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

# Customizations Performed

* [List of changes](https://github.com/limelime/cust-live-deb/blob/master/logs/md/all-md-files.md)
