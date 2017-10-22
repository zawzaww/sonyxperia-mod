#!/sbin/sh
# PuerZ Xperia MOD Script
# by ZawZaw @xda-developers

. /tmp/backuptool.functions

list_files() {
cat <<EOF
etc/permissions/com.sony.device.xml
etc/permissions/com.sonyericsson.colorextraction.xml
etc/permissions/com.sonyericsson.dlna.xml
etc/permissions/com.sonyericsson.dtcpctrl_private.xml
etc/permissions/com.sonyericsson.dtcpctrl_protected.xml
etc/permissions/com.sonyericsson.psm.sysmonservice.thermal.xml
etc/permissions/com.sonyericsson.system.xml
etc/permissions/com.sonyericsson.updatecenter.xml
etc/permissions/com.sonyericsson.uxpres.xml
etc/permissions/com.sonyericsson.video.player.service.xml
etc/permissions/com.sonyericsson.video.settings.xml
etc/permissions/com.sonymobile.home.resourceprovider.xml
etc/permissions/com.sonymobile.imageenhancer.xml
etc/permissions/com.sonymobile.playanywhere.xml
etc/permissions/com.sonymobile.product.xml
etc/permissions/com.sonymobile.sonyaudioeffect.xml
framework/com.sony.device.jar
framework/com.sonyericsson.colorextraction_impl.jar
framework/com.sonyericsson.dlna_impl.jar
framework/com.sonyericsson.dtcpctrl_private_impl.jar
framework/com.sonyericsson.dtcpctrl_protected_impl.jar
framework/com.sonyericsson.psm.sysmonservice.thermal_impl.jar
framework/com.sonyericsson.system.jar
framework/com.sonyericsson.updatecenter.jar
framework/com.sonyericsson.uxp.jar
framework/com.sonyericsson.uxpres.jar
framework/com.sonyericsson.video.jar
framework/com.sonyericsson.video.player.service.jar
framework/com.sonyericsson.video.settings.jar
framework/com.sonymobile.album.jar
framework/com.sonymobile.home.resourceprovider.jar
framework/com.sonymobile.imageenhancer_impl.jar
framework/com.sonymobile.photoeditor.jar
framework/com.sonymobile.playanywhere.jar
framework/com.sonymobile.product_impl.jar
framework/sonyaudioeffect.jar
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
