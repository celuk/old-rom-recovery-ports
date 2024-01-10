#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 8984576 570a794cc1f778b47ee1746850af2995a986db5d 6418432 6178e73193d7b106307c0c65eebad0812d5aec5f
fi

if ! applypatch -c EMMC:/dev/recovery:8984576:570a794cc1f778b47ee1746850af2995a986db5d; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/bootimg:6418432:6178e73193d7b106307c0c65eebad0812d5aec5f EMMC:/dev/recovery 570a794cc1f778b47ee1746850af2995a986db5d 8984576 6178e73193d7b106307c0c65eebad0812d5aec5f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
