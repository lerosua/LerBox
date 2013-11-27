#!/bin/sh

mkdir /media/xunlei -p
cd /media/xunlei
wget https://geekr.googlecode.com/files/xunlei_mips_le_mips32_2.207.3.42_141202.zip --no-check-certificate
unzip xunlei_mips_le_mips32_2.207.3.42_141202.zip
chmod +x portal
chmod +x lib/*
./portal
echo -e "invalid_mounts
{
	rootfs /
	/dev/root /
}
#comment
avaliable_mount_path_pattern
{
	/tmp/usbmounts/
	/tmp/HDD/
	/mnt/USB/
	/mnt/HardDisk/
	/media
}" > cfg/thunder_mounts.cfg

