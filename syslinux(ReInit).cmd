@echo off
rem Create bootable drive (UFD or HDD)
rem
rem Info from syslinux.txt:
rem
rem === MBR ===
rem In order to boot from a hard disk (or hard disk-like device) in BIOS mode, 
rem an appropriate MBR boot block must also be installed in the MBR (first
rem sector or 512 bytes of the disk), occupying at most 440 bytes.
rem
rem To create a MBR in In DOS/Windows:
rem If using FDISK, FDISK or a similar application must also be used to mark
rem the partition as active.
rem fdisk /mbr
rem OR
rem syslinux -ma c:
rem don't use syslinux -S since it basically reduces the speed to USB1.1 levels
rem ("Safe, slow, stupid: uses simpler code that boots better.")
rem
rem So for HardDrives and FlashDrives use -M -A -D, where D is the directory
rem
rem ===
rem === Note the drive letter S: at the end;
rem === Adjust this to the drive letter of the UFD or portable USB-HDD you want
rem === to make bootable
rem ===
"%~dp0syslinux.exe" -m -a -d /boot/syslinux S:
pause
