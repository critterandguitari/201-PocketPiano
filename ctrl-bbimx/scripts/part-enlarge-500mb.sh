killall pd
rmmod g_mass_storage
umount /dev/mmcblk1p2
sfdisk --no-reread /dev/mmcblk1 < part-500mb.dump 
sync
partprobe
sync

echo "-------------make new fs..."
mkfs.vfat -F 32 -n 201PP /dev/mmcblk1p2

echo "-------------adding pd patch..."
mount /dev/mmcblk1p2 /sdcard
cp -r /home/root/app/pd /sdcard/

touch /etc/app-sdcard-format.lock
sync
