##########################################################################################
#
# Magisk Module Template Config Script
# by topjohnwu
#
##########################################################################################
##########################################################################################
#
# Instructions:
#
# 1. Place your files into system folder (delete the placeholder file)
# 2. Fill in your module's info into module.prop
# 3. Configure the settings in this file (common/config.sh)
# 4. For advanced features, add shell commands into the script files under common:
#    post-fs-data.sh, service.sh
# 5. For changing props, add your additional/modified props into common/system.prop
#
##########################################################################################

#########################################################
#                                                       #
# PureZ Xperia MOD for all Devices                      #
# by ZawZaw @xda-developers                             #
#                                                       #
#########################################################

##########################################################################################
# Configs
##########################################################################################

# Set to true if you need to enable Magic Mount
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

##########################################################################################
# Permissions
##########################################################################################

set_permissions() {
  # Only some special files require specific permissions
  # The default permissions should be good enough for most cases

  # Here are some examples for the set_perm functions:

  # set_perm_recursive  <dirname>                <owner> <group> <dirpermission> <filepermission> <contexts> (default: u:object_r:system_file:s0)
  # set_perm_recursive  $MODPATH/system/lib       0       0       0755            0644

  # set_perm  <filename>                         <owner> <group> <permission> <contexts> (default: u:object_r:system_file:s0)
  # set_perm  $MODPATH/system/bin/app_process32   0       2000    0755         u:object_r:zygote_exec:s0
  # set_perm  $MODPATH/system/bin/dex2oat         0       2000    0755         u:object_r:dex2oat_exec:s0
  # set_perm  $MODPATH/system/lib/libart.so       0       0       0644

  # The following is default permissions, DO NOT remove
  set_perm_recursive  $MODPATH  0  0  0755  0644

  # Set purezxperia permission file
  set_perm $MODPATH/system/addon.d/purezxperia.sh  0  0  0755
}
