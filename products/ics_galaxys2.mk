# Inherit AOSP device configuration for galaxys2.
$(call inherit-product, device/samsung/galaxys2/full_galaxys2.mk)

# Inherit some common ICS stuff.
$(call inherit-product, vendor/ics/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/ics/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := ics_galaxys2
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := galaxys2
PRODUCT_MODEL := GT-I9100
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9100 BUILD_ID=GRJ22 BUILD_FINGERPRINT=samsung/GT-I9100/GT-I9100:2.3.4/GINGERBREAD/XXKG2:user/release-keys PRIVATE_BUILD_DESC="GT-I9100-user 2.3.4 GINGERBREAD XXKG2 release-keys"

# Extra captivate overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/ics/overlay/galaxys2

# Add FM and Torch Apps
PRODUCT_PACKAGES += \
    Torch \
    FM

# Extra RIL settings
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.enable.managed.roaming=1 \
    ro.ril.oem.nosim.ecclist=911,112,999,000,08,118,120,122,110,119,995 \
    ro.ril.emc.mode=2

# Add additional mounts
PRODUCT_PROPERTY_OVERRIDES += \
    ro.additionalmounts=/mnt/emmc;/mnt/usbdisk \
    ro.vold.switchablepair=/mnt/sdcard,/mnt/emmc

# Release name and versioning
PRODUCT_RELEASE_NAME := GalaxyS2
