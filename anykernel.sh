### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers
## Modified for Zen-X Kernel

### AnyKernel setup
properties() { '
kernel.string=Zen-X KERNEL BY SZYRYJN
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=violet
device.name2=VIOLET
device.name3=
device.name4=
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
ui_print "             Z E N            ";
ui_print "               X              ";
ui_print "==============================";
ui_print " ";
ui_print "##############################################";
ui_print "##                                          ##";
ui_print "##   Kernel   :  Zen-X Kernel               ##";
ui_print "##   Device   :  Redmi Note 7 Pro           ##";
ui_print "##   Codename :  Violet                     ##";
ui_print "##   Author   :  SZYRYJN                    ##";
ui_print "##   Build    :  2000-01-01                 ##";
ui_print "##   Feature  :  RESUKI-SU IMPLIMENTED      ##";
ui_print "##                                          ##";
ui_print "##############################################";
ui_print " ";
ui_print "- Checking device compatibility...";
ui_print " ";

# boot install
dump_boot;

ui_print "- Flashing Zen-X Kernel...";
ui_print " ";

write_boot;

ui_print " ";
ui_print "##############################################";
ui_print "##                                          ##";
ui_print "##   Flash Successful! Enjoy Zen-X!         ##";
ui_print "##   Please reboot to apply changes.        ##";
ui_print "##                                          ##";
ui_print "##############################################";
ui_print " ";
## end boot install
