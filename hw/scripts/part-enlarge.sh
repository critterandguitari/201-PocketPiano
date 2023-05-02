echo "-------------stopping things..."
killall pd
rmmod g_mass_storage
umount /dev/mmcblk1p2

echo "-------------resize partition 2 to max..."
echo ", +" | sfdisk --no-reread -N 2 /dev/mmcblk1
sync
partprobe
sync

echo "-------------make new fs..."
mkfs.vfat -F 32 -n 201PP /dev/mmcblk1p2

echo "-------------adding pd patch making songs dir..."
mount /dev/mmcblk1p2 /sdcard
cp -r /home/root/pd /sdcard/
mkdir -p /sdcard/songs/1

touch /etc/201pp-format.lock
sync
