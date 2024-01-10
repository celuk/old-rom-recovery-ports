#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 7387136 7888a680394cf03c6f7dc6a5ac3b39117597c85a 4818944 e2c3596271d3b5988dba7cc3ebfcd740662e66cd
fi

if ! applypatch -c EMMC:/dev/recovery:7387136:7888a680394cf03c6f7dc6a5ac3b39117597c85a; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/bootimg:4818944:e2c3596271d3b5988dba7cc3ebfcd740662e66cd EMMC:/dev/recovery 7888a680394cf03c6f7dc6a5ac3b39117597c85a 7387136 e2c3596271d3b5988dba7cc3ebfcd740662e66cd:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
