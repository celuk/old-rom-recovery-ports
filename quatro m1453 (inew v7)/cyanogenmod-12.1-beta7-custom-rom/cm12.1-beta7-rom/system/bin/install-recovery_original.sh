#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 6856704 dc19a6114a0c253e74d205ab475c19c682de0a5e 4292608 cb9dc5fb8a74a9d2eaff57ed3ff6683e38eff03d
fi

if ! applypatch -c EMMC:/dev/recovery:6856704:dc19a6114a0c253e74d205ab475c19c682de0a5e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/bootimg:4292608:cb9dc5fb8a74a9d2eaff57ed3ff6683e38eff03d EMMC:/dev/recovery dc19a6114a0c253e74d205ab475c19c682de0a5e 6856704 cb9dc5fb8a74a9d2eaff57ed3ff6683e38eff03d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
if [ `uname -r` != '3.4.107-WR2-V1.1' ]; then
stop adbd
stop logd
stop zygote
fi