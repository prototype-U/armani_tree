# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := armani

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/armani/device_armani.mk)

# Device naming
PRODUCT_DEVICE := armani
PRODUCT_NAME := cm_armani
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := Lenovo A706
PRODUCT_MANUFACTURER := lenovo

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lenovo_armani BUILD_FINGERPRINT=Lenovo/armani_row/armani_row:4.1.2/JZO54K/A706_ROW_S113_130508:user/dev-keys PRIVATE_BUILD_DESC="=eng.release_admin.20130410.194851 test-keys" BUILD_NUMBER=96068
