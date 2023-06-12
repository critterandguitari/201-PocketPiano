killall pd
rmmod g_mass_storage
umount /dev/mmcblk1p2
sfdisk --no-reread /dev/mmcblk1 < part-small.dump 
sync
partprobe
sync
dd if=/dev/zero of=/dev/mmcblk1p2 
rm /etc/app-sdcard-format.lock
sync
#mkfs.vfat -F 12 -n APP /dev/mmcblk1p2
