#
# Copyright (C) 2011 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# common msm7x27a configs

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardwardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.compass.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm7x27a \
    audio.primary.msm7x27a \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    tinymix

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    libgenlock \
    libhwcexternal \
    libhwcservice \
    libmemalloc \
    liboverlay \
    libqdutils \
    libtilerenderer

# Lights
PRODUCT_PACKAGES += \
    lights.msm7x27a
# OMX
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libI420colorconvert \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libstagefrighthw

# Power
PRODUCT_PACKAGES += \
    power.msm7x27a

# QCOM rngd
PRODUCT_PACKAGES += \
    qrngd

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Media config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml

# Common build properties
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true

PRODUCT_PROPERTY_OVERRIDES += \
    lpa.decode=true \
    persist.audio.fluence.mode=endfire \
    persist.audio.vr.enable=false \
    persist.audio.handset.mic=digital \
    persist.audio.speaker.location=high \
    ro.qc.sdk.audio.fluencetype=fluence \

PRODUCT_PROPERTY_OVERRIDES += \
    debug.composition.type=dyn \
    debug.egl.hw=1 \
    debug.mdpcomp.logs=0 \
    debug.sf.hw=1 \
    persist.hwc.mdpcomp.enable=true

PRODUCT_PROPERTY_OVERRIDES += \
    persist.thermal.monitor=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.call_ring.multiple=0

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

DEVICE_PACKAGE_OVERLAYS += device/lenovo/armani/overlay

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
    device/lenovo/armani/ramdisk/fstab.armani:root/fstab.armani \
    device/lenovo/armani/ramdisk/init.armani.rc:root/init.armani.rc \
    device/lenovo/armani/ramdisk/init.device.rc:root/init.device.rc \
    device/lenovo/armani/ramdisk/init.armani.usb.rc:root/init.armani.usb.rc \
    device/lenovo/armani/ramdisk/ueventd.armani.rc:root/ueventd.armani.rc

# recovery and custom charging
PRODUCT_COPY_FILES += \
    device/lenovo/armani/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    device/lenovo/armani/recovery/sbin/power_test:recovery/root/sbin/power_test \
    device/lenovo/armani/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    device/lenovo/armani/recovery/sbin/detect_key:recovery/root/sbin/detect_key

# MSM8960 firmware
PRODUCT_COPY_FILES += \
    device/lenovo/armani/firmware/yamato_pfp.fw:/system/etc/firmware/yamato_pfp.fw \
    device/lenovo/armani/firmware/yamato_pm4.fw:/system/etc/firmware/yamato_pm4.fw \

# QC thermald config
PRODUCT_COPY_FILES += device/lenovo/armani/configs/thermald.conf:system/etc/thermald.conf

# vold config
PRODUCT_COPY_FILES += \
    device/lenovo/armani/configs/vold.fstab:system/etc/vold.fstab

# wifi config
PRODUCT_COPY_FILES += \
    device/lenovo/armani/configs/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf


# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/lenovo/armani/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/lenovo/armani/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl \
    device/lenovo/armani/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    device/lenovo/armani/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/lenovo/armani/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    device/lenovo/armani/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/lenovo/armani/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \
    device/lenovo/armani/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl \
    device/lenovo/armani/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl

# Input device config
PRODUCT_COPY_FILES += \
    device/lenovo/armani/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/lenovo/armani/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \

# GPS
#PRODUCT_PACKAGES += \
#    gps.armani \

# Torch
PRODUCT_PACKAGES += \
    Torch

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_LOCALES += en_US hdpi

# call the proprietary setup
$(call inherit-product-if-exists, vendor/lenovo/armani/armani-vendor.mk)

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# Discard inherited values and use our own instead.
PRODUCT_DEVICE := armani
PRODUCT_NAME := armani
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := lenovo A706
PRODUCT_MANUFACTURER := lenovo
