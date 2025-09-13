# ISOLINUX bootloader
- menu.cfg: Add your custom configurations here.
- menu-cld.cfg: Backup menu of CLD.
- menu.0.cfg: Original file from debian-live-13.1.0-amd64-standard.iso
- live.cfg: Original boot entries but decided to use menu.cfg instead.

isolinux.cfg
    - menu.cfg
        - stdmenu.cfg
            - splash.png
    - vesamenu.c32
