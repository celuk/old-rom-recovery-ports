#!/sbin/sh
#
# /system/addon.d/01-cyngn.sh
#
. /tmp/backuptool.functions

list_files() {
cat <<EOF
addon.d/01-cyngn.sh
priv-app/AmbientCore/AmbientCore.apk
priv-app/AmbientUpdater/AmbientUpdater.apk
priv-app/AudioFX/AudioFX.apk
priv-app/CMLogger/CMLogger.apk
priv-app/CyanogenStats/CyanogenStats.apk
priv-app/DeviceManager/DeviceManager.apk
priv-app/DialerNext/DialerNext.apk priv-app/Dialer/Dialer.apk
priv-app/DialerNext/ priv-app/Dialer/
priv-app/GalleryNext/GalleryNext.apk
priv-app/Screencast/Screencast.apk
priv-app/ThemeChooser/ThemeChooser.apk
priv-app/ThemeStore/ThemeStore.apk
app/TruecallerCM/TruecallerCM.apk
app/InCallUINext/ app/InCallUI/
app/InCallUINext/InCallUINext.apk app/InCallUI/InCallUI.apk
app/BoxerCM/BoxerCM.apk
etc/permissions/com.cyanogen.ambient.xml
etc/permissions/com.cyngn.audiofx.xml
etc/permissions/org.cyanogenmod.partner.boxer.xml
EOF
}

case "$1" in
  backup)
    list_files | while read FILE DUMMY; do
      backup_file $S/$FILE
    done
  ;;
  restore)
    list_files | while read FILE REPLACEMENT; do
      R=""
      [ -n "$REPLACEMENT" ] && R="$S/$REPLACEMENT"
      [ -f "$C/$S/$FILE" ] && restore_file $S/$FILE $R
    done
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
    # Stub
  ;;
  post-restore)
    # Stub
  ;;
esac
