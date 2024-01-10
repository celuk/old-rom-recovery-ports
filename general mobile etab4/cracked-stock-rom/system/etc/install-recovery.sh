#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/mmcblk0p6:5128192:e3372ab0bf83c19939fc5b563511e7ce61e6eefd; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/mmcblk0p5:4616192:348878e2719001ed771743aa77a3cd70a6f79764 EMMC:/dev/block/mmcblk0p6 e3372ab0bf83c19939fc5b563511e7ce61e6eefd 5128192 348878e2719001ed771743aa77a3cd70a6f79764:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
