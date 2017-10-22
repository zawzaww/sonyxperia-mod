##########################################################################################
#
# Magisk Module Template Config Script
# by topjohnwu
#
##########################################################################################

#########################################################
#                                                       #
# PureZ Xperia MOD for all Devices                      #
# by ZawZaw @xda-developers                             #
#                                                       #
#########################################################


# This will be the folder name under /magisk
MODID=purezxperiamod

# Most mods would like it to be enabled
AUTOMOUNT=true

# Set to true if you need to load system.prop
PROPFILE=false

# Set to true if you need post-fs-data script
POSTFSDATA=false

# Set to true if you need late_start service script
LATESTARTSERVICE=false

print_modname() {
  ui_print "******************************************"
  ui_print "***  PureZ Xperia MOD for all Devices  ***"
  ui_print "***     ==========================     ***"
  ui_print "***      Magisk Moudle/Flashable       ***"
  ui_print "***                                    ***"
  ui_print "***           (version-2.0)            ***"
  ui_print "***                                    ***"
  ui_print "***                 BY                 ***"
  ui_print "***                                    ***"
  ui_print "***        ZawZaw @xda-developers      ***"
  ui_print "***                                    ***"
  ui_print "******************************************"
}
# You don't need to remove the example below, these values will be overwritten by your own list
REPLACE="
"
# Construct your own list here, it will overwrite
REPLACE="
/system/addon.d/purezxperia.sh
/system/app/SemcHome/XperiaHome.apk
/system/app/SemcIconPack/XperiaXIcon.apk
/system/etc/permissions/com.sony.device.xml
/system/etc/permissions/com.sonyericsson.colorextraction.xml
/system/etc/permissions/com.sonyericsson.dlna.xml
/system/etc/permissions/com.sonyericsson.dtcpctrl_private.xml
/system/etc/permissions/com.sonyericsson.dtcpctrl_protected.xml
/system/etc/permissions/com.sonyericsson.psm.sysmonservice.thermal.xml
/system/etc/permissions/com.sonyericsson.system.xml
/system/etc/permissions/com.sonyericsson.updatecenter.xml
/system/etc/permissions/com.sonyericsson.uxpres.xml
/system/etc/permissions/com.sonyericsson.video.player.service.xml
/system/etc/permissions/com.sonyericsson.video.settings.xml
/system/etc/permissions/com.sonymobile.home.resourceprovider.xml
/system/etc/permissions/com.sonymobile.imageenhancer.xml
/system/etc/permissions/com.sonymobile.playanywhere.xml
/system/etc/permissions/com.sonymobile.product.xml
/system/etc/permissions/com.sonymobile.sonyaudioeffect.xml
/system/framework/com.sony.device.jar
/system/framework/com.sonyericsson.colorextraction_impl.jar
/system/framework/com.sonyericsson.dlna_impl.jar
/system/framework/com.sonyericsson.dtcpctrl_private_impl.jar
/system/framework/com.sonyericsson.dtcpctrl_protected_impl.jar
/system/framework/com.sonyericsson.psm.sysmonservice.thermal_impl.jar
/system/framework/com.sonyericsson.system.jar
/system/framework/com.sonyericsson.updatecenter.jar
/system/framework/com.sonyericsson.uxp.jar
/system/framework/com.sonyericsson.uxpres.jar
/system/framework/com.sonyericsson.video.jar
/system/framework/com.sonyericsson.video.player.service.jar
/system/framework/com.sonyericsson.video.settings.jar
/system/framework/com.sonymobile.album.jar
/system/framework/com.sonymobile.home.resourceprovider.jar
/system/framework/com.sonymobile.imageenhancer_impl.jar
/system/framework/com.sonymobile.photoeditor.jar
/system/framework/com.sonymobile.playanywhere.jar
/system/framework/com.sonymobile.product_impl.jar
/system/framework/sonyaudioeffect.jar
"

set_permissions() {
  # Default permissions
  set_perm_recursive  $MODPATH  0  0  0755  0644

  # Set permission file
  set_perm  $MODPATH/system/addon.d/purezxperia.sh  0  0  0755
}
