### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers
## Modified for SATORI Kernel

### AnyKernel setup
properties() { '
kernel.string=SATORI Kernel by Szyryjn
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=RMX2020
device.name2=RMX2027
device.name3=rmx2020
device.name4=rmx2027
device.name5=
device.name6=
device.name7=
device.name8=
supported.versions=
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties


### AnyKernel install
## boot files attributes
boot_attributes() {
set_perm_recursive 0 0 755 644 $RAMDISK/*;
set_perm_recursive 0 0 750 750 $RAMDISK/init* $RAMDISK/sbin;
} # end attributes

# boot shell variables
BLOCK=/dev/block/by-name/boot;
IS_SLOT_DEVICE=0;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh;

ui_print " ";
ui_print "==============================";
ui_print "        S A T O R I           ";
ui_print "        K E R N E L           ";
ui_print "==============================";
ui_print " ";
ui_print "##############################################";
ui_print "##                                          ##";
ui_print "##   Kernel   :  SATORI Kernel              ##";
ui_print "##   Device   :  Realme C3 / Narzo 10A      ##";
ui_print "##   Codename :  RMX2020 / RMX2027          ##";
ui_print "##   Author   :  SZYRYJN                    ##";
ui_print "##                                          ##";
ui_print "##############################################";
ui_print " ";
ui_print "- Checking device compatibility...";
ui_print " ";

# boot install
dump_boot;

ui_print "- Flashing SATORI Kernel...";
ui_print " ";

write_boot;

ui_print " ";
ui_print "##############################################";
ui_print "##                                          ##";
ui_print "##   Flash Successful! Enjoy SATORI!        ##";
ui_print "##   Please reboot to apply changes.        ##";
ui_print "##                                          ##";
ui_print "##############################################";
ui_print " ";
## end boot install
