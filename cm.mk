## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := aviva

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/ZTE/aviva/full_aviva.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := aviva
PRODUCT_NAME := cm_aviva
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := aviva
PRODUCT_MANUFACTURER := ZTE
