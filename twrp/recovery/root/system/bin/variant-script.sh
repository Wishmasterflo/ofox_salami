#!/system/bin/sh
# This script is needed to automatically set device props.

variant=$(getprop ro.boot.prjname)
region=$(getprop ro.boot.hw_region_id)

echo $variant
echo $region

case $region in
    "21")
    #China
        case $variant in
            "22811")
            #China
                resetprop ro.product.device "OP591BL1"
                resetprop ro.product.vendor.device "OP591BL1"
                resetprop ro.product.odm.device "OP591BL1"
                resetprop ro.product.product.device "OP591BL1"
                resetprop ro.product.device "OP591BL1"
                resetprop ro.product.system_ext.device "OP591BL1"
                resetprop ro.product.product.model "PHB110"
                resetprop ro.product.model "PHB110"
                resetprop ro.product.system.model "PHB110"
                resetprop ro.product.system_ext.model "PHB110"
                resetprop ro.product.vendor.model "PHB110"
                resetprop ro.product.odm.model "PHB110"
                resetprop ro.boot.hardware.revision "CN"
                ;;
            "22861")
            #India
                resetprop ro.product.device "OP594DL1"
                resetprop ro.product.odm.device "OP594DL1"
                resetprop ro.product.product.device "OP594DL1"
                resetprop ro.product.system_ext.device "OP594DL1"
                resetprop ro.product.vendor.device "OP594DL1"
                resetprop ro.product.product.model "CPH2447"
                resetprop ro.product.product.model "CPH2447"
                resetprop ro.product.model "CPH2447"
                resetprop ro.product.system.model "CPH2447"
                resetprop ro.product.system_ext.model "CPH2447"
                resetprop ro.product.vendor.model "CPH2447"
                resetprop ro.product.odm.model "CPH2447"
                resetprop ro.boot.hardware.revision "IN"
                ;;
            *)
                resetprop ro.product.device "OP591BL1"
                resetprop ro.product.vendor.device "OP591BL1"
                resetprop ro.product.odm.device "OP591BL1"
                resetprop ro.product.product.device "OP591BL1"
                resetprop ro.product.device "OP591BL1"
                resetprop ro.product.system_ext.device "OP591BL1"
                resetprop ro.product.product.model "PHB110"
                resetprop ro.product.model "PHB110"
                resetprop ro.product.system.model "PHB110"
                resetprop ro.product.system_ext.model "PHB110"
                resetprop ro.product.vendor.model "PHB110"
                resetprop ro.product.odm.model "PHB110"
                resetprop ro.boot.hardware.revision "CN"
                ;;
        esac
        ;;
    "22")
    #Europe
            resetprop ro.product.device "OP594DL1"
            resetprop ro.product.odm.device "OP594DL1"
            resetprop ro.product.product.device "OP594DL1"
            resetprop ro.product.device "OP594DL1"
            resetprop ro.product.system_ext.device "OP594DL1"
            resetprop ro.product.vendor.device "OP594DL1"
            resetprop ro.product.product.model "CPH2449"
            resetprop ro.boot.hardware.revision "EU"
        ;;
    "23")
    #NA
            resetprop ro.product.device "OP594DL1"
            resetprop ro.product.odm.device "OP594DL1"
            resetprop ro.product.product.device "OP594DL1"
            resetprop ro.product.system_ext.device "OP594DL1"
            resetprop ro.product.vendor.device "OP594DL1"
            resetprop ro.product.product.model "CPH2451"
            resetprop ro.product.model "CPH2451"
            resetprop ro.product.system.model "CPH2451"
            resetprop ro.product.system_ext.model "CPH2451"
            resetprop ro.product.vendor.model "CPH2451"
            resetprop ro.product.odm.model "CPH2451"
            resetprop ro.boot.hardware.revision "NA"
        ;;
    *)
            resetprop ro.product.device "OP594DL1"
            resetprop ro.product.odm.device "OP594DL1"
            resetprop ro.product.product.device "OP594DL1"
            resetprop ro.product.system_ext.device "OP594DL1"
            resetprop ro.product.vendor.device "OP594DL1"
            resetprop ro.product.product.model "CPH2449"
            resetprop ro.boot.hardware.revision "EU"
        ;;
esac

exit 0 
