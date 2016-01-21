# Custom Live Debian System
`cust-live-deb` will boot from USB key and load the whole Debian operating system on RAM. Hence, everything is run from memory.

* It does include tools to customize itself to add new applications. See [Menu->User Manua->Remaster live system](https://github.com/limelime/cust-live-deb/wiki/001-User-manual#remaster-live-system).
* It also allows changes to persist on your hard drives. See [Menu->User Manual->Persistence](https://github.com/limelime/cust-live-deb/wiki/001-User-manual#remaster-live-system).

# Screenshots
![](https://github.com/limelime/cust-live-deb/blob/master/docs/screenshots/cld_screenshot_01.jpg)

# Download
It comes in 2 flavors:
* [min](https://github.com/limelime/cust-live-deb/releases): Strict minimum system with JWM light-weight window manager. From there, you can add your desired applications.
* [std](https://github.com/limelime/cust-live-deb/releases): Standard system includes minimum system + common applications.

# Burn ISO to USB key
    # On any unix system, run:
    dd if="cust-live-deb-64-std_YYYY-MM-DD_HH.MM.SS.iso" of="/dev/usb/device/" bs=4M; sync

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

# Customizations Performed

* [List of changes](https://github.com/limelime/cust-live-deb/blob/master/logs/md/all-md-files.md)
