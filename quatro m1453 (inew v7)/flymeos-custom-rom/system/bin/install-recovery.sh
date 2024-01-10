#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 6838272 479733896b3081ed470099fcbba896b2740bed28 4265984 2d25c59dd1000d3b0e7b7d94419693129c5aeb1b
fi

if ! applypatch -c EMMC:/dev/recovery:6838272:479733896b3081ed470099fcbba896b2740bed28; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/bootimg:4265984:2d25c59dd1000d3b0e7b7d94419693129c5aeb1b EMMC:/dev/recovery 479733896b3081ed470099fcbba896b2740bed28 6838272 2d25c59dd1000d3b0e7b7d94419693129c5aeb1b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
