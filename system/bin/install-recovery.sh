#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:11493376:c0d121de2539623b330a1dd4f05ec3c4d611fd9d; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:9082880:65ce151b6559e2ab02680febbc44e44ed5f1825a EMMC:/dev/block/bootdevice/by-name/recovery c0d121de2539623b330a1dd4f05ec3c4d611fd9d 11493376 65ce151b6559e2ab02680febbc44e44ed5f1825a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
