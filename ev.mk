$(call inherit-product, device/samsung/manta/full_manta.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, vendor/ev/config/common_full_tablet_wifionly.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME    := ev_manta
PRODUCT_BRAND   := Google
PRODUCT_DEVICE  := manta
PRODUCT_MODEL   := Nexus 10
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=manta BUILD_FINGERPRINT=google/mantaray/manta:4.2/JOP40C/527662:user/release-keys PRIVATE_BUILD_DESC="manta-user 4.2 JOP40C 527662 release-keys"

#
# Set up the product codename, build version & MOTD.
#
PRODUCT_CODENAME := Stella
PRODUCT_VERSION_DEVICE_SPECIFIC := b1

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your Google Nexus 10\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"

# Copy compatible bootanimation
# XXX: Needs a 2560x1600 or compatible bootani
PRODUCT_COPY_FILES += \
    vendor/ev/prebuilt/xga/media/bootanimation.zip:system/media/bootanimation.zip

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += vendor/ev/overlay/hot_reboot

# Pull all dictionaries
TARGET_USE_KEYBOARD := international
