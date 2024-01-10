#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 7376896 1890184bdbf8f051c406daf9e7fbde9744552e5e 4810752 06fdaf210e6a70b8c51debcd9acaf8bd3e8b58d4
fi

if ! applypatch -c EMMC:/dev/recovery:7376896:1890184bdbf8f051c406daf9e7fbde9744552e5e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/bootimg:4810752:06fdaf210e6a70b8c51debcd9acaf8bd3e8b58d4 EMMC:/dev/recovery 1890184bdbf8f051c406daf9e7fbde9744552e5e 7376896 06fdaf210e6a70b8c51debcd9acaf8bd3e8b58d4:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
