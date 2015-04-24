# DasBoot
Bootable BIOS, Firmware and Diagnostic repo based on Syslinux.
Developed/Maintained offline since 2011-05 for the place I work.
Slowly migrating to GitHub in hope to create a better, and more complete firmware repo.

The main menu consists of several submenues
BIOS (Laptops, Desktops, Servers; mainly DELL for now)
Firmware (HDD, SSD, NIC, ESM, ODD, StorageControllers) 
Diagnostics (CPU, GPU, HDD, NIC, OEM, RAM)

Most of the BIOS and Firmware updates are still released for DOS. That's why I'm using FreeDOS 1440 KB or
2880 KB (and recently 5760 KB) floppy images. Sometimes HDD images or even the original ISO or Floppy images
provided by the manufacturer.

My FDD image template is a bare minimum FreeDOS compilation with the latest available binaries.
* WATCOMC compiled FreeDOS Kernel 2041 (2012-02-07) with FAT12, FAT16 and FAT32 support.
* 8086+ (CMD8086.com) and 80386+ (COMMAND.com) CPU compatible (config.sys selectable).
  * CMD8086.COM v0.84-pre XMS_SWAP (2006-06-06) and COMMAND.COM v0.84-pre2 XMS_SWAP (2006-08-28)
  * HiMemX v3.32 (2008-03-13) and Jemm386/JemmEx v5.75 (2011-05-31)
  * NANSI v4.0d (2007-05-26)

Config.sys looks like this:

* MENU                      FreeDOS 2041 Config.sys Presets
* MENU                      -------------------------------
* MENU
* MENU 0 -> CMD8086.COM / 8086+  / CleanBoot (BIOS and Firmware)    ( No XMMs       )
* MENU 1 -> COMMAND.COM / 80386+ / CleanBoot (BIOS and Firmware)    ( No XMMs       )
* MENU 2 -> COMMAND.COM / 80386+ / HimemX                           ( XMSv3         )
* MENU 3 -> COMMAND.COM / 80386+ / HimemX + Jemm386                 ( XMSv3 + EMSv4 )
* MENU 4 -> COMMAND.COM / 80386+ / JemmEx (HimemX/Jemm386 combo)    ( XMSv3 + EMSv4 )
* MENU 5 -> COMMAND.COM / 80386+ / JemmEx Safe (NOHI NOVME etc.)    ( XMSv3 + EMSv4 )
* MENUDEFAULT=1,0
