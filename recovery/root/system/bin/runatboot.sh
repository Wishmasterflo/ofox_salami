
load_cn()
{
    resetprop "ro.boot.hardware.revision" "CN"
	resetprop "ro.build.product" "OnePlus11"
    resetprop "ro.display.series" "OnePlus 11"
    resetprop "ro.product.device" "OnePlus11"
    resetprop "ro.product.model" "OnePlus 11"
    resetprop "ro.product.name" "OnePlus11"
    resetprop "ro.product.odm.device" "OnePlus11"
    resetprop "ro.product.odm.model" "OnePlus 11"
    resetprop "ro.product.odm.name" "OnePlus11"
    resetprop "ro.product.product.device" "salami"
    resetprop "ro.product.product.model" "OnePlus 11"
    resetprop "ro.product.product.name" "OnePlus11"
    resetprop "ro.product.system.device" "OnePlus11"
    resetprop "ro.product.system_ext.device" "OnePlus11"
    resetprop "ro.product.system_ext.model" "OnePlus 11"
    resetprop "ro.product.system_ext.name" "OnePlus11"
    resetprop "ro.product.vendor.device" "OP591BL1"
    resetprop "ro.product.vendor.model" "OnePlus 11"
    resetprop "ro.product.vendor.name" "OnePlus11"
    resetprop "ro.product.system.brand" "OnePlus"
    resetprop "ro.product.system.manufacturer" "OnePlus"
    resetprop "ro.product.system.model" "PHB110"
    resetprop "ro.product.system.name" "OnePlus11"
}

load_in()
{
    resetprop "ro.boot.hardware.revision" "IN"
	resetprop "ro.build.product" "OnePlus11"
    resetprop "ro.display.series" "OnePlus 11"
    resetprop "ro.product.device" "OnePlus11"
    resetprop "ro.product.model" "OnePlus 11"
    resetprop "ro.product.name" "OnePlus11"
    resetprop "ro.product.odm.device" "OnePlus11"
    resetprop "ro.product.odm.model" "OnePlus 11"
    resetprop "ro.product.odm.name" "OnePlus11"
    resetprop "ro.product.product.device" "salami"
    resetprop "ro.product.product.model" "OnePlus 11"
    resetprop "ro.product.product.name" "OnePlus11"
    resetprop "ro.product.system_ext.device" "OnePlus11"
    resetprop "ro.product.system_ext.model" "OnePlus 11"
    resetprop "ro.product.system_ext.name" "OnePlus11"
    resetprop "ro.product.vendor.device" "OnePlus11"
    resetprop "ro.product.vendor.model" "OnePlus 11"
    resetprop "ro.product.vendor.name" "OnePlus11"
    resetprop "ro.product.system.brand" "OnePlus"
    resetprop "ro.product.system.manufacturer" "OnePlus"
    resetprop "ro.product.system.model" "CPH2447"
    resetprop "ro.product.system.name" "OnePlus11"
}

load_eu()
{
	resetprop "ro.boot.hardware.revision" "EU"
    resetprop "ro.build.product" "OnePlus11"
    resetprop "ro.display.series" "OnePlus 11"
    resetprop "ro.product.device" "OnePlus11"
    resetprop "ro.product.model" "OnePlus 11"
    resetprop "ro.product.name" "OnePlus11"
    resetprop "ro.product.odm.device" "OnePlus11"
    resetprop "ro.product.odm.model" "OnePlus 11"
    resetprop "ro.product.odm.name" "OnePlus11"
    resetprop "ro.product.product.device" "salami"
    resetprop "ro.product.product.model" "OnePlus 11"
    resetprop "ro.product.product.name" "OnePlus11"
    resetprop "ro.product.system.device" "OnePlus11"
    resetprop "ro.product.system_ext.device" "OnePlus11"
    resetprop "ro.product.system_ext.model" "OnePlus 11"
    resetprop "ro.product.system_ext.name" "OnePlus11"
    resetprop "ro.product.vendor.device" "OP594DL1"
    resetprop "ro.product.vendor.model" "OnePlus 11"
    resetprop "ro.product.vendor.name" "OnePlus11"
    resetprop "ro.product.system.brand" "OnePlus"
    resetprop "ro.product.system.manufacturer" "OnePlus"
    resetprop "ro.product.system.model" "CPH2449"
    resetprop "ro.product.system.name" "OnePlus11"
}

load_na()
{
	resetprop "ro.boot.hardware.revision" "NA"
    resetprop "ro.build.product" "OnePlus11"
    resetprop "ro.display.series" "OnePlus 11"
    resetprop "ro.product.device" "OnePlus11"
    resetprop "ro.product.model" "OnePlus 11"
    resetprop "ro.product.name" "OnePlus11"
    resetprop "ro.product.odm.device" "OnePlus11"
    resetprop "ro.product.odm.model" "OnePlus 11"
    resetprop "ro.product.odm.name" "OnePlus11"
    resetprop "ro.product.product.device" "salami"
    resetprop "ro.product.product.model" "OnePlus 11"
    resetprop "ro.product.product.name" "OnePlus11"
    resetprop "ro.product.system.device" "OnePlus11"
    resetprop "ro.product.system_ext.device" "OnePlus11"
    resetprop "ro.product.system_ext.model" "OnePlus 11"
    resetprop "ro.product.system_ext.name" "OnePlus11"
    resetprop "ro.product.vendor.device" "OnePlus11"
    resetprop "ro.product.vendor.model" "OnePlus 11"
    resetprop "ro.product.vendor.name" "OnePlus11"
    resetprop "ro.product.system.brand" "OnePlus"
    resetprop "ro.product.system.manufacturer" "OnePlus"
    resetprop "ro.product.system.model" "CPH2451"
    resetprop "ro.product.system.name" "OnePlus11"
}

project=$(getprop ro.boot.prj_version)
echo "Setting device props for device with $project..." >> /tmp/recovery.log

case $project in
    22811)
     load_cn
     ;;
    22861)
     load_in
     ;;
esac

region=$(ro.boot.hw_region_id)
echo "Setting Hardware region ID with $region..." >> /tmp/recovery.log

case $region in
	22)
	 load_eu
	 ;;
	23)
	 load_na
	 ;;
esac

exit 0
