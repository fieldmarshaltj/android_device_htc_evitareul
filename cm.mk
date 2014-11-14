# Release name
PRODUCT_RELEASE_NAME := evitareul

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/evitareul/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := evitareul
PRODUCT_NAME := cm_evitareul
PRODUCT_BRAND := htc
PRODUCT_MODEL := One X+
PRODUCT_MANUFACTURER := HTC
