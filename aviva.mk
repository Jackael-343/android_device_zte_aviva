# Copyright (C) 2009 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for sapphire hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Inherit from those products. Most specific first.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

#$(call inherit-product, device/common/gps/gps_eu_supl.mk)

#DEVICE_PACKAGE_OVERLAYS := device/ZTE/aviva/overlay

LOCAL_PATH:=device/ZTE/aviva

# Discard inherited values and use our own instead.
PRODUCT_NAME := aviva
PRODUCT_DEVICE := aviva
PRODUCT_MODEL := Z992

PRODUCT_PACKAGES += \
    libOmxCore \
    libOmxVidEnc \
    FM \
    Torch \
    make_ext4fs \
    FM \
    rzscontrol \
    SamsungServiceMode \
    bdaddr_read \
    toggleshutter \
    dexpreopt \
    e2fsck \
    brcm_patchram_plus \
    copybit.geim \
    lights.geim \
    gralloc.geim \
    setup_fs \
    screencap

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/ZTE/aviva/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

#PRODUCT_PACKAGES += \
       sec_touchscreen.kcm \
       sec_jack.kcm \
       sec_key.kcm

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# proprietary side of the device
#$(call inherit-product-if-exists, vendor/ZTE/aviva/geim-vendor.mk)

# fstab
PRODUCT_COPY_FILES += \
    device/ZTE/aviva/prebuilt/vold.fstab:system/etc/vold.fstab

# Init
PRODUCT_COPY_FILES += \
    device/ZTE/aviva/config/init.qcom.rc:root/init.qcom.rc \
    device/ZTE/aviva/recovery/rc/ueventd.rc:root/ueventd.rc \
    #device/ZTE/aviva/recovery/fix_reboot.sh:recovery/root/sbin/fix_reboot.sh 

# 3d
PRODUCT_COPY_FILES += \
    device/ZTE/aviva/egl.cfg:system/lib/egl/egl.cfg 

# Audio
#PRODUCT_COPY_FILES += \
    device/ZTE/aviva/prebuilt/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt

# WLAN + BT
PRODUCT_COPY_FILES += \
    device/ZTE/aviva/prebuilt/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/ZTE/aviva/prebuilt/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/ZTE/aviva/prebuilt/hostapd:system/bin/hostapd
    
# LPM Charger images
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/charger-images/battery_0.png:root/res/images/charger/battery_0.png \
    $(LOCAL_PATH)/charger-images/battery_1.png:root/res/images/charger/battery_1.png \
    $(LOCAL_PATH)/charger-images/battery_2.png:root/res/images/charger/battery_2.png \
    $(LOCAL_PATH)/charger-images/battery_3.png:root/res/images/charger/battery_3.png \
    $(LOCAL_PATH)/charger-images/battery_4.png:root/res/images/charger/battery_4.png \
    $(LOCAL_PATH)/charger-images/battery_5.png:root/res/images/charger/battery_5.png \
    $(LOCAL_PATH)/charger-images/battery_charge.png:root/res/images/charger/battery_charge.png \
    $(LOCAL_PATH)/charger-images/battery_fail.png:root/res/images/charger/battery_fail.png


# Install the features available on this device.
#PRODUCT_COPY_FILES += \
#    device/ZTE/aviva/prebuilt/Permissions/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
#    device/ZTE/aviva/prebuilt/Permissions/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
#    device/ZTE/aviva/prebuilt/Permissions/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
#    device/ZTE/aviva/prebuilt/Permissions/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
#    device/ZTE/aviva/prebuilt/Permissions/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
#    device/ZTE/aviva/prebuilt/Permissions/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
#    device/ZTE/aviva/prebuilt/Permissions/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
#   frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
#   device/ZTE/aviva/prebuilt/Permissions/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
#   device/ZTE/aviva/prebuilt/Permissions/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    

#Kernel Modules
 
# Graphics for recovery
PRODUCT_COPY_FILES += \
#    bootable/recovery/res/images/icon_clockwork.png:recovery/root/res/images/icon_clockwork.png \
#    bootable/recovery/res/images/icon_error.png:recovery/root/res/images/icon_error.png \
#    bootable/recovery/res/images/icon_firmware_error.png:recovery/root/res/images/icon_firmware_error.png \
#    bootable/recovery/res/images/icon_firmware_install.png:recovery/root/res/images/icon_firmware_install.png \
#    bootable/recovery/res/images/icon_installing.png:recovery/root/res/images/icon_installing.png \
#    bootable/recovery/res/images/indeterminate1.png:recovery/root/res/images/indeterminate1.png \
#    bootable/recovery/res/images/indeterminate2.png:recovery/root/res/images/indeterminate2.png \
#    bootable/recovery/res/images/indeterminate3.png:recovery/root/res/images/indeterminate3.png \
#    bootable/recovery/res/images/indeterminate4.png:recovery/root/res/images/indeterminate4.png \
#    bootable/recovery/res/images/indeterminate5.png:recovery/root/res/images/indeterminate5.png \
#    bootable/recovery/res/images/indeterminate6.png:recovery/root/res/images/indeterminate6.png \
#    bootable/recovery/res/images/progress_empty.png:recovery/root/res/images/progress_empty.png \
#    bootable/recovery/res/images/progress_fill.png:recovery/root/res/images/progress_fill.png 

#Media profile
PRODUCT_COPY_FILES += \
    device/ZTE/aviva/prebuilt/media_profiles.xml:system/etc/media_profiles.xml \
    device/ZTE/aviva/prebuilt/audio.conf:system/etc/bluetooth/audio.conf \
    device/ZTE/aviva/prebuilt/audio_policy.conf:system/etc/audio_policy.conf \
    device/ZTE/aviva/prebuilt/audio_effects.conf:system/etc/audio_effects.conf
## keymap
PRODUCT_COPY_FILES += \
    device/ZTE/aviva/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl \
    device/ZTE/aviva/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/ZTE/aviva/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl

# Proprietary binaries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/rmt_storage_recovery:recovery/root/sbin/rmt_storage_recovery \
    $(LOCAL_PATH)/prebuilt/usbconfig:root/sbin/usbconfig \
    $(LOCAL_PATH)/recovery/init/init.qcom.class_core.sh:recovery/root/init.qcom.class_core.sh \
    $(LOCAL_PATH)/recovery/init/init.qcom.class_main.sh:recovery/root/init.qcom.class_main.sh \
    $(LOCAL_PATH)/recovery/init/init.qcom.ril.path.sh:recovery/root/init.qcom.ril.path.sh \
    $(LOCAL_PATH)/recovery/init/init.qcom.sh:recovery/root/init.qcom.sh \
    $(LOCAL_PATH)/recovery/init/init.qcom.usb.sh:recovery/root/init.qcom.usb.sh \
    $(LOCAL_PATH)/recovery/logo/logo.bmp:recovery/root/logo.bmp \
    $(LOCAL_PATH)/recovery/rc/ueventd.qcom.rc:recovery/root/ueventd.qcom.rc \
    $(LOCAL_PATH)/recovery/fstab/fstab.msm7627a:recovery/root/fstab.msm7627a \
    $(LOCAL_PATH)/recovery/fstab/recovery_nand.fstab:recovery/root/etc/recovery_nand.fstab

PRODUCT_PROPERTY_OVERRIDES := \
    keyguard.no_require_sim=true \
    ro.com.android.dateformat=dd-MM-yyyy \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \
    ro.media.dec.jpeg.memcap=10000000

PRODUCT_PROPERTY_OVERRIDES += \
    mobiledata.interfaces=pdp0,wlan0,gprs,ppp0 \
    ro.telephony.ril_class=ZTE \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15 \
    ro.com.android.dataroaming=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160 


# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# This should not be needed but on-screen keyboard uses the wrong density without it.
PRODUCT_PROPERTY_OVERRIDES += \
    qemu.sf.lcd_density=160

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enable_bypass=1 \
    ro.media.dec.jpeg.memcap=20000000 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y \
    dalvik.vm.heapsize=64m \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.dexopt-data-only=1 \
    ro.opengles.version=131072  \
    ro.compcache.default=0

# See comment at the top of this file. This is where the other
# half of the device-specific product definition file takes care
# of the aspects that require proprietary drivers that aren't
# commonly available
#$(call inherit-product-if-exists, vendor/ZTE/aviva/geim-vendor-blobs.mk)
